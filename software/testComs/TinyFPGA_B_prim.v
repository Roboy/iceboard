// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Mon Mar  9 10:38:20 2020
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
    
    wire tx_o, tx_enable, n6;
    wire [31:0]baudrate;   // verilog/TinyFPGA_B.v(88[15:23])
    
    wire n15050, data_ready, sda_out, sda_enable, scl, scl_enable;
    wire [31:0]delay_counter;   // verilog/TinyFPGA_B.v(143[11:24])
    
    wire read;
    wire [2:0]\ID_READOUT_FSM.state ;   // verilog/TinyFPGA_B.v(151[15:20])
    
    wire RX_N_2, n229, n230, n231, n232, n233, n234, n235, n236, 
        n237, n238, n239, n240, n241, n242, n243, n244, n245, 
        n246, n247, n248, n249, n250, n251, n252, n253, n254, 
        n255, n256, n257, n258, n259, n260, read_N_122, n340, 
        n21147;
    wire [31:0]timer;   // verilog/neopixel.v(9[12:17])
    wire [3:0]state;   // verilog/neopixel.v(16[11:16])
    wire [31:0]bit_ctr;   // verilog/neopixel.v(18[12:19])
    
    wire start, \neo_pixel_transmitter.done ;
    wire [31:0]\neo_pixel_transmitter.t0 ;   // verilog/neopixel.v(28[14:16])
    
    wire n24, n4, n37158, n37155, n37152;
    wire [31:0]one_wire_N_380;
    
    wire n37149, n37146, n21113, n12, n10845, n31667, n24_adj_4464, 
        n25, n4_adj_4465, n22, n2836, n2833, n15047, n29311, n15041, 
        n15038, n15035, n29313, n15633, n4_adj_4466, n15630, n15629, 
        n62, rx_data_ready;
    wire [7:0]rx_data;   // verilog/coms.v(94[13:20])
    wire [7:0]\data_in_frame[19] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[18] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[17] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[15] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[12] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[11] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[10] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[6] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[5] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[4] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[2] ;   // verilog/coms.v(99[12:25])
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
    wire [31:0]\FRAME_MATCHER.i ;   // verilog/coms.v(118[11:12])
    
    wire \FRAME_MATCHER.rx_data_ready_prev , n33483, n19958, n15625, 
        n15624, n15617, n15606, n1398, n1737, n30078, n29827, 
        n29828, n29829, n29830, n29831, n29833, n29837, n29838, 
        n29826, n29840, n29841, n29842, n29843, n29844, n29845, 
        n29846, n29847, n29848, n29849, n29850, n29851, n29852, 
        n29853, n29854, n29855, n29856, n29857, n29858, n29859, 
        n29860, n29861, n29862, n29863, n29864, n29865, n29866, 
        n29867, n29868, n29869, n29870, n29871, n29872, n29873, 
        n14253, n29874, n29875, n29876, n29877, n29878, n29879, 
        n14246, n14245, n29880, n29825, n14242, n29881, n29882, 
        n29883, n29839, n29884, n29836, n14235, n14234, n29885, 
        n29886, n29887, n14230, n14229, n29888, n29834, n14226, 
        n29889, n29835, n29890, n29832, n29891, n29892, n29911, 
        n14218, n29913, n29914, n29915, n29916, n29917, n29918, 
        n29912, n14210, n29919, n29920, n29921, n29910, n198, 
        n21042, n199, n179, n25682, n25681, n36796, n25680, n25679, 
        n25678, n25677, n25676, n25675, n25674, n25673, n1519, 
        n25672, n21178, n25671, n25670, n25669, n36747, n36665, 
        n36664, n31414, n11092, n37143, n17, n15029, n25668, n25667, 
        n15, n14, n23810, n23814, n40, n25666, n23821, n8, n7, 
        n23826, n7_adj_4467, n25665, n82, n25664, n21206, n25663, 
        n25662, \FRAME_MATCHER.i_31__N_2379 , n15026, n29315, n29321, 
        n15005, n15002, n31572, n29221, n14956, n14955, n14954, 
        n14952, n14951, n14950, n14949, n14947, n14945, n14944, 
        n14943, n14859, n14857, n14853, n14852, n14844, n14842, 
        n14841, n25661, n14830, n14824, n29929, n14820, n14817, 
        n14784, n14781, n14778, n14739, n14738, n14733, n14732, 
        n14731, n14730, n10919, n15435, n15421, n15418, n15369, 
        n15330, n29435, n15322, n29437, n29439, n29441, n15304, 
        n15298, n15293, n15290, n15286, n14729, n14728, n14727;
    wire [7:0]data_adj_4532;   // verilog/eeprom.v(23[12:16])
    
    wire rw;
    wire [7:0]state_adj_4533;   // verilog/eeprom.v(27[11:16])
    
    wire n11985, n8291, n6_adj_4470, n3178, n14720, n14717, n29377, 
        n14712, n14709, n14705, n14704, n14703, n29379, n15271, 
        data_ready_N_3670, n15268, n15262, n15259, n15256, n15253, 
        n25660, n25659, n15250, n15235, n10928, r_Rx_Data;
    wire [7:0]r_Clock_Count;   // verilog/uart_rx.v(33[17:30])
    wire [2:0]r_Bit_Index;   // verilog/uart_rx.v(34[17:28])
    wire [2:0]r_SM_Main;   // verilog/uart_rx.v(37[17:26])
    
    wire n25658;
    wire [24:0]o_Rx_DV_N_3358;
    
    wire n31238;
    wire [2:0]r_SM_Main_2__N_3316;
    
    wire n15217, n15214, n15211;
    wire [2:0]r_SM_Main_adj_4540;   // verilog/uart_tx.v(32[16:25])
    wire [8:0]r_Clock_Count_adj_4541;   // verilog/uart_tx.v(33[16:29])
    wire [2:0]r_Bit_Index_adj_4542;   // verilog/uart_tx.v(34[16:27])
    
    wire n25657, n4039, n15199;
    wire [2:0]r_SM_Main_2__N_3406;
    
    wire n15192, n15191, n15190, n15189, n15188, n15187, n15186, 
        n15185, n15184, n15183, n15182, n15181, n15180, n15179, 
        n15178, n1, n15177;
    wire [7:0]state_adj_4547;   // verilog/i2c_controller.v(33[12:17])
    
    wire n15176;
    wire [7:0]saved_addr;   // verilog/i2c_controller.v(34[12:22])
    
    wire n15175, n32855, enable_slow_N_3855, n15174, n15173, n15172, 
        n15171, n15170, n30097;
    wire [7:0]state_7__N_3752;
    
    wire n15169, n15168, n15167, n15166, n3876, n15165, n15164, 
        n15163, n15162, n29361;
    wire [7:0]state_7__N_3768;
    
    wire n40_adj_4484, n32849, n15147, n15144, n9, n15141, n31970, 
        n15138, n25656, n25655, n10933, n4_adj_4485, n29357, n29975, 
        n29353, n32843, n32837, n39, n25654, n25653, n29349, n29475, 
        n32831, n10850, n32825, n29467, n32819, n31646, n25652, 
        n29319, n14_adj_4486, n13, n32813, n29956, n13161, n35893, 
        n29309, n29163, n32807, n13157, n29433, n29922, n32801, 
        n8_adj_4487, n32795, n10649, n29909, n4_adj_4488, n32789, 
        n32262, n32787, n12_adj_4489, n32783, n7_adj_4490, n15134, 
        n32777, n32771, n15133, n32769, n6_adj_4491, n32765, n35235, 
        n32759, n36321, n32753, n32747, n32741, n35216, n32735, 
        n32729, n35214, n32723, n32717, n29824, n29249, n35205, 
        n29375, n29369, n4_adj_4492, n6_adj_4493, n8_adj_4494, n9_adj_4495, 
        n11, n13_adj_4496, n14_adj_4497, n15_adj_4498, n4_adj_4499, 
        n6_adj_4500, n8_adj_4501, n9_adj_4502, n13105, n13062, n13044, 
        n31946, n31508, n32017, n13776, n13763, n13760, n13754, 
        n13750, n13747, n13736, n14184, n29971, n30170, n13702, 
        n13700, n31509, n14675, n14674, n14673, n14668, n14661, 
        n14655, n14652, n14651, n14650, n33249, n6_adj_4503, n31895, 
        n27581, n14643, n14642, n30722, n14636, n14633, n14632, 
        n15071, n15068, n15_adj_4504, n31641, n14625, n14623, n15059, 
        n32559, n15056, n15053, n32553, n14_adj_4505, n33634, n30575, 
        n32477, n32471, n30551, n10, n32465, n32459, n31633, n29, 
        n27, n32415, n32198, n23, n32393, n32391, n37166, n32019, 
        n32353, n15_adj_4506, n35097, n32343, n10838, n36795, n35321, 
        n35288;
    
    VCC i2 (.Y(VCC_net));
    SB_IO sda_output (.PACKAGE_PIN(SDA), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(sda_enable), .D_OUT_1(GND_net), 
          .D_OUT_0(sda_out), .D_IN_0(state_7__N_3768[3])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
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
    SB_LUT4 i11211_3_lut (.I0(neopxl_color[23]), .I1(\data_in_frame[4] [7]), 
            .I2(n8291), .I3(GND_net), .O(n15199));   // verilog/coms.v(130[12] 305[6])
    defparam i11211_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR delay_counter__i31 (.Q(delay_counter[31]), .C(clk16MHz), .E(n13062), 
            .D(n229), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_CARRY add_4_23 (.CI(n25672), .I0(delay_counter[21]), .I1(GND_net), 
            .CO(n25673));
    SB_LUT4 add_4_22_lut (.I0(GND_net), .I1(delay_counter[20]), .I2(GND_net), 
            .I3(n25671), .O(n240)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11223_3_lut (.I0(\data_in_frame[15] [5]), .I1(rx_data[5]), 
            .I2(n13754), .I3(GND_net), .O(n15211));   // verilog/coms.v(130[12] 305[6])
    defparam i11223_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11226_3_lut (.I0(\data_in_frame[15] [6]), .I1(rx_data[6]), 
            .I2(n13754), .I3(GND_net), .O(n15214));   // verilog/coms.v(130[12] 305[6])
    defparam i11226_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11229_3_lut (.I0(\data_in_frame[15] [7]), .I1(rx_data[7]), 
            .I2(n13754), .I3(GND_net), .O(n15217));   // verilog/coms.v(130[12] 305[6])
    defparam i11229_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY add_4_22 (.CI(n25671), .I0(delay_counter[20]), .I1(GND_net), 
            .CO(n25672));
    SB_LUT4 i11247_3_lut (.I0(\data_in_frame[0] [0]), .I1(rx_data[0]), .I2(n13736), 
            .I3(GND_net), .O(n15235));   // verilog/coms.v(130[12] 305[6])
    defparam i11247_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 add_4_21_lut (.I0(GND_net), .I1(delay_counter[19]), .I2(GND_net), 
            .I3(n25670), .O(n241)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_21 (.CI(n25670), .I0(delay_counter[19]), .I1(GND_net), 
            .CO(n25671));
    SB_LUT4 i11262_3_lut (.I0(\data_in_frame[17] [1]), .I1(rx_data[1]), 
            .I2(n13750), .I3(GND_net), .O(n15250));   // verilog/coms.v(130[12] 305[6])
    defparam i11262_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11265_3_lut (.I0(\data_in_frame[17] [2]), .I1(rx_data[2]), 
            .I2(n13750), .I3(GND_net), .O(n15253));   // verilog/coms.v(130[12] 305[6])
    defparam i11265_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11268_3_lut (.I0(\data_in_frame[17] [3]), .I1(rx_data[3]), 
            .I2(n13750), .I3(GND_net), .O(n15256));   // verilog/coms.v(130[12] 305[6])
    defparam i11268_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 add_4_20_lut (.I0(GND_net), .I1(delay_counter[18]), .I2(GND_net), 
            .I3(n25669), .O(n242)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11271_3_lut (.I0(\data_in_frame[17] [4]), .I1(rx_data[4]), 
            .I2(n13750), .I3(GND_net), .O(n15259));   // verilog/coms.v(130[12] 305[6])
    defparam i11271_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY add_4_20 (.CI(n25669), .I0(delay_counter[18]), .I1(GND_net), 
            .CO(n25670));
    SB_LUT4 i11274_3_lut (.I0(\data_in_frame[17] [5]), .I1(rx_data[5]), 
            .I2(n13750), .I3(GND_net), .O(n15262));   // verilog/coms.v(130[12] 305[6])
    defparam i11274_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 add_4_19_lut (.I0(GND_net), .I1(delay_counter[17]), .I2(GND_net), 
            .I3(n25668), .O(n243)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_19 (.CI(n25668), .I0(delay_counter[17]), .I1(GND_net), 
            .CO(n25669));
    SB_LUT4 add_4_18_lut (.I0(GND_net), .I1(delay_counter[16]), .I2(GND_net), 
            .I3(n25667), .O(n244)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut (.I0(data_ready), .I1(\ID_READOUT_FSM.state [0]), .I2(GND_net), 
            .I3(GND_net), .O(n22));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i31257_4_lut (.I0(n24_adj_4464), .I1(n22), .I2(n4039), .I3(read_N_122), 
            .O(n35214));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i31257_4_lut.LUT_INIT = 16'h0800;
    SB_LUT4 i49_4_lut (.I0(n35214), .I1(n35216), .I2(\ID_READOUT_FSM.state [0]), 
            .I3(n4039), .O(n29221));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i49_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i11280_3_lut (.I0(\data_in_frame[17] [6]), .I1(rx_data[6]), 
            .I2(n13750), .I3(GND_net), .O(n15268));   // verilog/coms.v(130[12] 305[6])
    defparam i11280_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY add_4_18 (.CI(n25667), .I0(delay_counter[16]), .I1(GND_net), 
            .CO(n25668));
    SB_LUT4 i11283_3_lut (.I0(\data_in_frame[17] [7]), .I1(rx_data[7]), 
            .I2(n13750), .I3(GND_net), .O(n15271));   // verilog/coms.v(130[12] 305[6])
    defparam i11283_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 add_4_17_lut (.I0(GND_net), .I1(delay_counter[15]), .I2(GND_net), 
            .I3(n25666), .O(n245)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_17 (.CI(n25666), .I0(delay_counter[15]), .I1(GND_net), 
            .CO(n25667));
    SB_LUT4 add_4_16_lut (.I0(GND_net), .I1(delay_counter[14]), .I2(GND_net), 
            .I3(n25665), .O(n246)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_16 (.CI(n25665), .I0(delay_counter[14]), .I1(GND_net), 
            .CO(n25666));
    SB_LUT4 add_4_15_lut (.I0(GND_net), .I1(delay_counter[13]), .I2(GND_net), 
            .I3(n25664), .O(n247)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10832_3_lut (.I0(\data_in_frame[4] [6]), .I1(rx_data[6]), .I2(n13776), 
            .I3(GND_net), .O(n14820));   // verilog/coms.v(130[12] 305[6])
    defparam i10832_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12_4_lut (.I0(n13702), .I1(\data_in_frame[18] [0]), .I2(n198), 
            .I3(rx_data[0]), .O(n29379));   // verilog/coms.v(130[12] 305[6])
    defparam i12_4_lut.LUT_INIT = 16'hc5c0;
    SB_CARRY add_4_15 (.CI(n25664), .I0(delay_counter[13]), .I1(GND_net), 
            .CO(n25665));
    SB_LUT4 i12_4_lut_adj_1548 (.I0(n13702), .I1(\data_in_frame[18] [1]), 
            .I2(n198), .I3(rx_data[1]), .O(n29377));   // verilog/coms.v(130[12] 305[6])
    defparam i12_4_lut_adj_1548.LUT_INIT = 16'hc5c0;
    SB_LUT4 i12_4_lut_adj_1549 (.I0(\data_in_frame[18] [2]), .I1(n13702), 
            .I2(n198), .I3(rx_data[2]), .O(n29375));   // verilog/coms.v(130[12] 305[6])
    defparam i12_4_lut_adj_1549.LUT_INIT = 16'ha3a0;
    SB_LUT4 add_4_14_lut (.I0(GND_net), .I1(delay_counter[12]), .I2(GND_net), 
            .I3(n25663), .O(n248)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10829_3_lut (.I0(\data_in_frame[4] [5]), .I1(rx_data[5]), .I2(n13776), 
            .I3(GND_net), .O(n14817));   // verilog/coms.v(130[12] 305[6])
    defparam i10829_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i10796_3_lut (.I0(\data_in_frame[4] [4]), .I1(rx_data[4]), .I2(n13776), 
            .I3(GND_net), .O(n14784));   // verilog/coms.v(130[12] 305[6])
    defparam i10796_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12_4_lut_adj_1550 (.I0(\data_in_frame[18] [3]), .I1(n13702), 
            .I2(n198), .I3(rx_data[3]), .O(n29369));   // verilog/coms.v(130[12] 305[6])
    defparam i12_4_lut_adj_1550.LUT_INIT = 16'ha3a0;
    SB_LUT4 i15415_3_lut (.I0(n13736), .I1(rx_data[3]), .I2(\data_in_frame[0] [3]), 
            .I3(GND_net), .O(n15286));   // verilog/coms.v(94[13:20])
    defparam i15415_3_lut.LUT_INIT = 16'he4e4;
    SB_LUT4 i10793_3_lut (.I0(\data_in_frame[4] [3]), .I1(rx_data[3]), .I2(n13776), 
            .I3(GND_net), .O(n14781));   // verilog/coms.v(130[12] 305[6])
    defparam i10793_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i10790_3_lut (.I0(\data_in_frame[4] [2]), .I1(rx_data[2]), .I2(n13776), 
            .I3(GND_net), .O(n14778));   // verilog/coms.v(130[12] 305[6])
    defparam i10790_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY add_4_14 (.CI(n25663), .I0(delay_counter[12]), .I1(GND_net), 
            .CO(n25664));
    SB_LUT4 i32472_3_lut (.I0(rx_data[1]), .I1(\data_in_frame[4] [1]), .I2(n13776), 
            .I3(GND_net), .O(n29467));   // verilog/coms.v(94[13:20])
    defparam i32472_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11302_3_lut (.I0(\data_in_frame[18] [5]), .I1(rx_data[5]), 
            .I2(n198), .I3(GND_net), .O(n15290));   // verilog/coms.v(130[12] 305[6])
    defparam i11302_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11305_3_lut (.I0(\data_in_frame[18] [6]), .I1(rx_data[6]), 
            .I2(n198), .I3(GND_net), .O(n15293));   // verilog/coms.v(130[12] 305[6])
    defparam i11305_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11310_3_lut (.I0(\data_in_frame[18] [7]), .I1(rx_data[7]), 
            .I2(n198), .I3(GND_net), .O(n15298));   // verilog/coms.v(130[12] 305[6])
    defparam i11310_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12_4_lut_adj_1551 (.I0(\data_in_frame[19] [0]), .I1(n13700), 
            .I2(n13747), .I3(rx_data[0]), .O(n29441));   // verilog/coms.v(130[12] 305[6])
    defparam i12_4_lut_adj_1551.LUT_INIT = 16'h3a0a;
    SB_LUT4 i11316_4_lut (.I0(state_7__N_3768[3]), .I1(data_adj_4532[0]), 
            .I2(n10), .I3(n10919), .O(n15304));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i11316_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i12_4_lut_adj_1552 (.I0(\data_in_frame[19] [1]), .I1(n13700), 
            .I2(n13747), .I3(rx_data[1]), .O(n29439));   // verilog/coms.v(130[12] 305[6])
    defparam i12_4_lut_adj_1552.LUT_INIT = 16'h3a0a;
    SB_LUT4 i12_4_lut_adj_1553 (.I0(\data_in_frame[19] [2]), .I1(n13700), 
            .I2(n13747), .I3(rx_data[2]), .O(n29437));   // verilog/coms.v(130[12] 305[6])
    defparam i12_4_lut_adj_1553.LUT_INIT = 16'h3a0a;
    SB_LUT4 i12_4_lut_adj_1554 (.I0(\data_in_frame[19] [3]), .I1(n13700), 
            .I2(n13747), .I3(rx_data[3]), .O(n29435));   // verilog/coms.v(130[12] 305[6])
    defparam i12_4_lut_adj_1554.LUT_INIT = 16'h3a0a;
    SB_LUT4 add_4_13_lut (.I0(GND_net), .I1(delay_counter[11]), .I2(GND_net), 
            .I3(n25662), .O(n249)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10648_3_lut (.I0(\data_in_frame[0] [2]), .I1(rx_data[2]), .I2(n13736), 
            .I3(GND_net), .O(n14636));   // verilog/coms.v(130[12] 305[6])
    defparam i10648_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11334_3_lut (.I0(\data_in_frame[19] [6]), .I1(rx_data[6]), 
            .I2(n13747), .I3(GND_net), .O(n15322));   // verilog/coms.v(130[12] 305[6])
    defparam i11334_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_1555 (.I0(\data_in_frame[19] [7]), .I1(n13700), 
            .I2(n13747), .I3(rx_data[7]), .O(n29433));   // verilog/coms.v(130[12] 305[6])
    defparam i12_4_lut_adj_1555.LUT_INIT = 16'h3a0a;
    SB_LUT4 i11342_3_lut (.I0(n30575), .I1(r_Bit_Index_adj_4542[0]), .I2(n13157), 
            .I3(GND_net), .O(n15330));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i11342_3_lut.LUT_INIT = 16'h1414;
    SB_LUT4 i1_4_lut (.I0(o_Rx_DV_N_3358[12]), .I1(n2833), .I2(o_Rx_DV_N_3358[8]), 
            .I3(n32735), .O(n32741));
    defparam i1_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i11083_3_lut (.I0(\data_in_frame[12] [7]), .I1(rx_data[7]), 
            .I2(n13760), .I3(GND_net), .O(n15071));   // verilog/coms.v(130[12] 305[6])
    defparam i11083_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11080_3_lut (.I0(\data_in_frame[12] [6]), .I1(rx_data[6]), 
            .I2(n13760), .I3(GND_net), .O(n15068));   // verilog/coms.v(130[12] 305[6])
    defparam i11080_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_adj_1556 (.I0(o_Rx_DV_N_3358[24]), .I1(n29), .I2(n23), 
            .I3(n32741), .O(n32747));
    defparam i1_4_lut_adj_1556.LUT_INIT = 16'hfffe;
    SB_LUT4 i10955_4_lut (.I0(r_Rx_Data), .I1(rx_data[4]), .I2(n32747), 
            .I3(n27), .O(n14943));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i10955_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11071_3_lut (.I0(\data_in_frame[12] [3]), .I1(rx_data[3]), 
            .I2(n13760), .I3(GND_net), .O(n15059));   // verilog/coms.v(130[12] 305[6])
    defparam i11071_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11068_3_lut (.I0(\data_in_frame[12] [2]), .I1(rx_data[2]), 
            .I2(n13760), .I3(GND_net), .O(n15056));   // verilog/coms.v(130[12] 305[6])
    defparam i11068_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11065_3_lut (.I0(\data_in_frame[12] [1]), .I1(rx_data[1]), 
            .I2(n13760), .I3(GND_net), .O(n15053));   // verilog/coms.v(130[12] 305[6])
    defparam i11065_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11062_3_lut (.I0(\data_in_frame[12] [0]), .I1(rx_data[0]), 
            .I2(n13760), .I3(GND_net), .O(n15050));   // verilog/coms.v(130[12] 305[6])
    defparam i11062_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_adj_1557 (.I0(o_Rx_DV_N_3358[12]), .I1(n2833), .I2(o_Rx_DV_N_3358[8]), 
            .I3(n32789), .O(n32795));
    defparam i1_4_lut_adj_1557.LUT_INIT = 16'hfffe;
    SB_LUT4 i11381_3_lut (.I0(n30722), .I1(r_Bit_Index[0]), .I2(n13161), 
            .I3(GND_net), .O(n15369));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11381_3_lut.LUT_INIT = 16'h1414;
    SB_LUT4 i1_4_lut_adj_1558 (.I0(o_Rx_DV_N_3358[24]), .I1(n29), .I2(n23), 
            .I3(n32795), .O(n32801));
    defparam i1_4_lut_adj_1558.LUT_INIT = 16'hfffe;
    SB_LUT4 i10956_4_lut (.I0(r_Rx_Data), .I1(rx_data[5]), .I2(n32801), 
            .I3(n27), .O(n14944));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i10956_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1_4_lut_adj_1559 (.I0(o_Rx_DV_N_3358[12]), .I1(n2833), .I2(o_Rx_DV_N_3358[8]), 
            .I3(n32807), .O(n32813));
    defparam i1_4_lut_adj_1559.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_1560 (.I0(o_Rx_DV_N_3358[24]), .I1(n29), .I2(n23), 
            .I3(n32813), .O(n32819));
    defparam i1_4_lut_adj_1560.LUT_INIT = 16'hfffe;
    SB_LUT4 i10957_4_lut (.I0(r_Rx_Data), .I1(rx_data[6]), .I2(n32819), 
            .I3(n27), .O(n14945));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i10957_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i10645_3_lut (.I0(\data_in_frame[0] [1]), .I1(rx_data[1]), .I2(n13736), 
            .I3(GND_net), .O(n14633));   // verilog/coms.v(130[12] 305[6])
    defparam i10645_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_adj_1561 (.I0(o_Rx_DV_N_3358[12]), .I1(n2833), .I2(o_Rx_DV_N_3358[8]), 
            .I3(n32753), .O(n32759));
    defparam i1_4_lut_adj_1561.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_1562 (.I0(o_Rx_DV_N_3358[24]), .I1(n29), .I2(n23), 
            .I3(n32759), .O(n32765));
    defparam i1_4_lut_adj_1562.LUT_INIT = 16'hfffe;
    SB_LUT4 i10959_4_lut (.I0(r_Rx_Data), .I1(rx_data[7]), .I2(n32765), 
            .I3(n27), .O(n14947));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i10959_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i5_3_lut (.I0(r_SM_Main_adj_4540[0]), .I1(o_Rx_DV_N_3358[24]), 
            .I2(n27), .I3(GND_net), .O(n14_adj_4505));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i5_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i6_4_lut (.I0(n29), .I1(o_Rx_DV_N_3358[12]), .I2(n23), .I3(n2836), 
            .O(n15_adj_4504));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i6_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 i1_4_lut_adj_1563 (.I0(n4_adj_4466), .I1(r_SM_Main[1]), .I2(n6_adj_4470), 
            .I3(r_Bit_Index[0]), .O(n32843));
    defparam i1_4_lut_adj_1563.LUT_INIT = 16'hfffb;
    SB_LUT4 i8_4_lut (.I0(n15_adj_4504), .I1(n1), .I2(n14_adj_4505), .I3(r_SM_Main_adj_4540[1]), 
            .O(n37166));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i8_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i1_4_lut_adj_1564 (.I0(o_Rx_DV_N_3358[12]), .I1(n2833), .I2(o_Rx_DV_N_3358[8]), 
            .I3(n32843), .O(n32849));
    defparam i1_4_lut_adj_1564.LUT_INIT = 16'hfffe;
    SB_IO LED_pad (.PACKAGE_PIN(LED), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(LED_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam LED_pad.PIN_TYPE = 6'b011001;
    defparam LED_pad.PULLUP = 1'b0;
    defparam LED_pad.NEG_TRIGGER = 1'b0;
    defparam LED_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i1_4_lut_adj_1565 (.I0(o_Rx_DV_N_3358[24]), .I1(n29), .I2(n23), 
            .I3(n32849), .O(n32855));
    defparam i1_4_lut_adj_1565.LUT_INIT = 16'hfffe;
    SB_CARRY add_4_2 (.CI(VCC_net), .I0(delay_counter[0]), .I1(GND_net), 
            .CO(n25652));
    SB_LUT4 i11430_4_lut (.I0(r_Rx_Data), .I1(rx_data[0]), .I2(n32855), 
            .I3(n27), .O(n15418));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11430_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i10961_4_lut (.I0(state_7__N_3768[3]), .I1(data_adj_4532[1]), 
            .I2(n10), .I3(n10928), .O(n14949));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i10961_4_lut.LUT_INIT = 16'hccca;
    SB_GB_IO CLK_pad (.PACKAGE_PIN(CLK), .OUTPUT_ENABLE(VCC_net), .GLOBAL_BUFFER_OUTPUT(clk16MHz));   // verilog/TinyFPGA_B.v(3[9:12])
    defparam CLK_pad.PIN_TYPE = 6'b000001;
    defparam CLK_pad.PULLUP = 1'b0;
    defparam CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CLK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i30918_3_lut_4_lut (.I0(r_Clock_Count_adj_4541[3]), .I1(o_Rx_DV_N_3358[3]), 
            .I2(o_Rx_DV_N_3358[2]), .I3(r_Clock_Count_adj_4541[2]), .O(n35321));   // verilog/uart_tx.v(117[17:57])
    defparam i30918_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 LessThan_667_i6_3_lut_3_lut (.I0(r_Clock_Count_adj_4541[3]), .I1(o_Rx_DV_N_3358[3]), 
            .I2(o_Rx_DV_N_3358[2]), .I3(GND_net), .O(n6_adj_4493));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_667_i6_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 i10962_4_lut (.I0(state_7__N_3768[3]), .I1(data_adj_4532[2]), 
            .I2(n4_adj_4465), .I3(n10919), .O(n14950));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i10962_4_lut.LUT_INIT = 16'hccca;
    SB_CARRY add_4_13 (.CI(n25662), .I0(delay_counter[11]), .I1(GND_net), 
            .CO(n25663));
    SB_LUT4 i10963_4_lut (.I0(state_7__N_3768[3]), .I1(data_adj_4532[3]), 
            .I2(n4_adj_4465), .I3(n10928), .O(n14951));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i10963_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i10964_4_lut (.I0(state_7__N_3768[3]), .I1(data_adj_4532[4]), 
            .I2(n4), .I3(n10919), .O(n14952));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i10964_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11447_3_lut (.I0(neopxl_color[21]), .I1(\data_in_frame[4] [5]), 
            .I2(n8291), .I3(GND_net), .O(n15435));   // verilog/coms.v(130[12] 305[6])
    defparam i11447_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10966_4_lut (.I0(state_7__N_3768[3]), .I1(data_adj_4532[5]), 
            .I2(n4), .I3(n10928), .O(n14954));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i10966_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i10967_4_lut (.I0(state_7__N_3768[3]), .I1(data_adj_4532[6]), 
            .I2(n21147), .I3(n10919), .O(n14955));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i10967_4_lut.LUT_INIT = 16'hccac;
    SB_LUT4 i31301_3_lut (.I0(state_7__N_3752[0]), .I1(n21206), .I2(enable_slow_N_3855), 
            .I3(GND_net), .O(n35235));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i31301_3_lut.LUT_INIT = 16'h4c4c;
    SB_LUT4 i16_4_lut (.I0(state_adj_4547[0]), .I1(n35235), .I2(n3876), 
            .I3(n6_adj_4503), .O(n8_adj_4487));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i16_4_lut.LUT_INIT = 16'h3afa;
    SB_LUT4 i10968_4_lut (.I0(state_7__N_3768[3]), .I1(data_adj_4532[7]), 
            .I2(n21147), .I3(n10928), .O(n14956));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i10968_4_lut.LUT_INIT = 16'hccac;
    SB_LUT4 i293_2_lut (.I0(n340), .I1(n21042), .I2(GND_net), .I3(GND_net), 
            .O(n1398));   // verilog/TinyFPGA_B.v(175[18] 177[12])
    defparam i293_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 add_4_12_lut (.I0(GND_net), .I1(delay_counter[10]), .I2(GND_net), 
            .I3(n25661), .O(n250)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i29240_2_lut (.I0(data_ready), .I1(\ID_READOUT_FSM.state [0]), 
            .I2(GND_net), .I3(GND_net), .O(n33634));
    defparam i29240_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i32610_4_lut (.I0(\ID_READOUT_FSM.state [1]), .I1(n4039), .I2(n33634), 
            .I3(n25), .O(n17));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i32610_4_lut.LUT_INIT = 16'h88ba;
    SB_LUT4 i10729_3_lut (.I0(\data_in_frame[2] [7]), .I1(rx_data[7]), .I2(n29975), 
            .I3(GND_net), .O(n14717));   // verilog/coms.v(130[12] 305[6])
    defparam i10729_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i10724_3_lut (.I0(\data_in_frame[2] [6]), .I1(rx_data[6]), .I2(n29975), 
            .I3(GND_net), .O(n14712));   // verilog/coms.v(130[12] 305[6])
    defparam i10724_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i10721_3_lut (.I0(\data_in_frame[2] [5]), .I1(rx_data[5]), .I2(n29975), 
            .I3(GND_net), .O(n14709));   // verilog/coms.v(130[12] 305[6])
    defparam i10721_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY add_4_12 (.CI(n25661), .I0(delay_counter[10]), .I1(GND_net), 
            .CO(n25662));
    SB_LUT4 i14_4_lut (.I0(\data_in_frame[2] [3]), .I1(n31946), .I2(n29975), 
            .I3(rx_data[3]), .O(n29349));   // verilog/coms.v(130[12] 305[6])
    defparam i14_4_lut.LUT_INIT = 16'ha3a0;
    SB_LUT4 i14_4_lut_adj_1566 (.I0(\data_in_frame[2] [2]), .I1(n31946), 
            .I2(n29975), .I3(rx_data[2]), .O(n29353));   // verilog/coms.v(130[12] 305[6])
    defparam i14_4_lut_adj_1566.LUT_INIT = 16'ha3a0;
    SB_LUT4 i14_4_lut_adj_1567 (.I0(\data_in_frame[2] [1]), .I1(n31946), 
            .I2(n29975), .I3(rx_data[1]), .O(n29357));   // verilog/coms.v(130[12] 305[6])
    defparam i14_4_lut_adj_1567.LUT_INIT = 16'ha3a0;
    SB_LUT4 i14_4_lut_adj_1568 (.I0(\data_in_frame[2] [0]), .I1(n31946), 
            .I2(n29975), .I3(rx_data[0]), .O(n29361));   // verilog/coms.v(130[12] 305[6])
    defparam i14_4_lut_adj_1568.LUT_INIT = 16'ha3a0;
    SB_LUT4 n37155_bdd_4_lut (.I0(n37155), .I1(neopxl_color[18]), .I2(neopxl_color[16]), 
            .I3(bit_ctr[0]), .O(n37158));
    defparam n37155_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFE \ID_READOUT_FSM.state__i1  (.Q(\ID_READOUT_FSM.state [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n17));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_LUT4 add_4_11_lut (.I0(GND_net), .I1(delay_counter[9]), .I2(GND_net), 
            .I3(n25660), .O(n251)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_11 (.CI(n25660), .I0(delay_counter[9]), .I1(GND_net), 
            .CO(n25661));
    SB_LUT4 add_4_10_lut (.I0(GND_net), .I1(delay_counter[8]), .I2(GND_net), 
            .I3(n25659), .O(n252)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_IO RX_pad (.PACKAGE_PIN(RX), .OUTPUT_ENABLE(VCC_net), .D_IN_0(RX_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam RX_pad.PIN_TYPE = 6'b000001;
    defparam RX_pad.PULLUP = 1'b0;
    defparam RX_pad.NEG_TRIGGER = 1'b0;
    defparam RX_pad.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY add_4_10 (.CI(n25659), .I0(delay_counter[8]), .I1(GND_net), 
            .CO(n25660));
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut (.I0(byte_transmit_counter[0]), 
            .I1(\data_out_frame[26] [7]), .I2(\data_out_frame[27] [7]), 
            .I3(byte_transmit_counter[1]), .O(n37149));
    defparam byte_transmit_counter_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 add_4_9_lut (.I0(GND_net), .I1(delay_counter[7]), .I2(GND_net), 
            .I3(n25658), .O(n253)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11014_3_lut (.I0(\data_in_frame[10] [0]), .I1(rx_data[0]), 
            .I2(n199), .I3(GND_net), .O(n15002));   // verilog/coms.v(130[12] 305[6])
    defparam i11014_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11017_3_lut (.I0(\data_in_frame[10] [1]), .I1(rx_data[1]), 
            .I2(n199), .I3(GND_net), .O(n15005));   // verilog/coms.v(130[12] 305[6])
    defparam i11017_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i14_4_lut_adj_1569 (.I0(n31414), .I1(\data_in_frame[10] [2]), 
            .I2(n199), .I3(rx_data[2]), .O(n29321));   // verilog/coms.v(130[12] 305[6])
    defparam i14_4_lut_adj_1569.LUT_INIT = 16'hc5c0;
    SB_CARRY add_4_9 (.CI(n25658), .I0(delay_counter[7]), .I1(GND_net), 
            .CO(n25659));
    SB_LUT4 i14_4_lut_adj_1570 (.I0(n31414), .I1(\data_in_frame[10] [3]), 
            .I2(n199), .I3(rx_data[3]), .O(n29319));   // verilog/coms.v(130[12] 305[6])
    defparam i14_4_lut_adj_1570.LUT_INIT = 16'hc5c0;
    SB_LUT4 n37149_bdd_4_lut (.I0(n37149), .I1(\data_out_frame[25] [7]), 
            .I2(\data_out_frame[24] [7]), .I3(byte_transmit_counter[1]), 
            .O(n37152));
    defparam n37149_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_3_lut (.I0(n23), .I1(o_Rx_DV_N_3358[12]), .I2(n2836), .I3(GND_net), 
            .O(n32353));
    defparam i1_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut_adj_1571 (.I0(o_Rx_DV_N_3358[24]), .I1(n27), .I2(n29), 
            .I3(n32353), .O(r_SM_Main_2__N_3406[1]));
    defparam i1_4_lut_adj_1571.LUT_INIT = 16'hfffe;
    SB_LUT4 LessThan_667_i9_2_lut (.I0(r_Clock_Count_adj_4541[4]), .I1(o_Rx_DV_N_3358[4]), 
            .I2(GND_net), .I3(GND_net), .O(n9_adj_4495));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_667_i9_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 LessThan_667_i15_2_lut (.I0(r_Clock_Count_adj_4541[7]), .I1(o_Rx_DV_N_3358[7]), 
            .I2(GND_net), .I3(GND_net), .O(n15_adj_4498));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_667_i15_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 LessThan_667_i13_2_lut (.I0(r_Clock_Count_adj_4541[6]), .I1(o_Rx_DV_N_3358[6]), 
            .I2(GND_net), .I3(GND_net), .O(n13_adj_4496));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_667_i13_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 LessThan_667_i11_2_lut (.I0(r_Clock_Count_adj_4541[5]), .I1(o_Rx_DV_N_3358[5]), 
            .I2(GND_net), .I3(GND_net), .O(n11));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_667_i11_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_4_8_lut (.I0(GND_net), .I1(delay_counter[6]), .I2(GND_net), 
            .I3(n25657), .O(n254)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 LessThan_667_i4_4_lut (.I0(r_Clock_Count_adj_4541[0]), .I1(o_Rx_DV_N_3358[1]), 
            .I2(r_Clock_Count_adj_4541[1]), .I3(o_Rx_DV_N_3358[0]), .O(n4_adj_4492));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_667_i4_4_lut.LUT_INIT = 16'h4d0c;
    SB_LUT4 i32259_3_lut (.I0(n4_adj_4492), .I1(o_Rx_DV_N_3358[5]), .I2(n11), 
            .I3(GND_net), .O(n36664));   // verilog/uart_tx.v(117[17:57])
    defparam i32259_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32260_3_lut (.I0(n36664), .I1(o_Rx_DV_N_3358[6]), .I2(n13_adj_4496), 
            .I3(GND_net), .O(n36665));   // verilog/uart_tx.v(117[17:57])
    defparam i32260_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31490_4_lut (.I0(n13_adj_4496), .I1(n11), .I2(n9_adj_4495), 
            .I3(n35321), .O(n35893));
    defparam i31490_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 LessThan_667_i8_3_lut (.I0(n6_adj_4493), .I1(o_Rx_DV_N_3358[4]), 
            .I2(n9_adj_4495), .I3(GND_net), .O(n8_adj_4494));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_667_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32081_3_lut (.I0(n36665), .I1(o_Rx_DV_N_3358[7]), .I2(n15_adj_4498), 
            .I3(GND_net), .O(n14_adj_4497));   // verilog/uart_tx.v(117[17:57])
    defparam i32081_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31917_4_lut (.I0(n14_adj_4497), .I1(n8_adj_4494), .I2(n15_adj_4498), 
            .I3(n35893), .O(n36321));   // verilog/uart_tx.v(117[17:57])
    defparam i31917_4_lut.LUT_INIT = 16'haaac;
    SB_CARRY add_4_8 (.CI(n25657), .I0(delay_counter[6]), .I1(GND_net), 
            .CO(n25658));
    SB_LUT4 i31918_3_lut (.I0(n36321), .I1(o_Rx_DV_N_3358[8]), .I2(r_Clock_Count_adj_4541[8]), 
            .I3(GND_net), .O(n2836));   // verilog/uart_tx.v(117[17:57])
    defparam i31918_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_3_lut_adj_1572 (.I0(o_Rx_DV_N_3358[12]), .I1(n2836), .I2(n31646), 
            .I3(GND_net), .O(n32459));
    defparam i1_3_lut_adj_1572.LUT_INIT = 16'hefef;
    SB_LUT4 add_4_7_lut (.I0(GND_net), .I1(delay_counter[5]), .I2(GND_net), 
            .I3(n25656), .O(n255)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_1573 (.I0(o_Rx_DV_N_3358[24]), .I1(n29), .I2(n23), 
            .I3(n32459), .O(n32465));
    defparam i1_4_lut_adj_1573.LUT_INIT = 16'hfffe;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut_32724 (.I0(byte_transmit_counter[0]), 
            .I1(\data_out_frame[26] [0]), .I2(\data_out_frame[27] [0]), 
            .I3(byte_transmit_counter[1]), .O(n37143));
    defparam byte_transmit_counter_0__bdd_4_lut_32724.LUT_INIT = 16'he4aa;
    SB_LUT4 n37143_bdd_4_lut (.I0(n37143), .I1(\data_out_frame[25] [0]), 
            .I2(\data_out_frame[24] [0]), .I3(byte_transmit_counter[1]), 
            .O(n37146));
    defparam n37143_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 RX_I_0_1_lut (.I0(RX_c), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(RX_N_2));   // verilog/TinyFPGA_B.v(97[10:13])
    defparam RX_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY add_4_7 (.CI(n25656), .I0(delay_counter[5]), .I1(GND_net), 
            .CO(n25657));
    SB_LUT4 i1_2_lut_4_lut_4_lut (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[26] [0]), 
            .O(n29912));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut.LUT_INIT = 16'h5100;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1574 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[26] [1]), 
            .O(n29910));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1574.LUT_INIT = 16'h5100;
    SB_LUT4 i1_4_lut_adj_1575 (.I0(n23), .I1(o_Rx_DV_N_3358[12]), .I2(n2833), 
            .I3(o_Rx_DV_N_3358[8]), .O(n32343));
    defparam i1_4_lut_adj_1575.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1576 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[26] [2]), 
            .O(n14218));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1576.LUT_INIT = 16'h5100;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1577 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[26] [3]), 
            .O(n29913));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1577.LUT_INIT = 16'h5100;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1578 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[26] [4]), 
            .O(n29914));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1578.LUT_INIT = 16'h5100;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1579 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[26] [5]), 
            .O(n29915));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1579.LUT_INIT = 16'h5100;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1580 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[26] [6]), 
            .O(n29916));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1580.LUT_INIT = 16'h5100;
    SB_LUT4 i1_4_lut_adj_1581 (.I0(o_Rx_DV_N_3358[24]), .I1(n27), .I2(n29), 
            .I3(n32343), .O(r_SM_Main_2__N_3316[1]));
    defparam i1_4_lut_adj_1581.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1582 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[26] [7]), 
            .O(n29917));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1582.LUT_INIT = 16'h5100;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1583 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[27] [0]), 
            .O(n29918));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1583.LUT_INIT = 16'h5100;
    SB_LUT4 add_4_33_lut (.I0(GND_net), .I1(delay_counter[31]), .I2(GND_net), 
            .I3(n25682), .O(n229)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 LessThan_664_i9_2_lut (.I0(r_Clock_Count[4]), .I1(o_Rx_DV_N_3358[4]), 
            .I2(GND_net), .I3(GND_net), .O(n9_adj_4502));   // verilog/uart_rx.v(119[17:57])
    defparam LessThan_664_i9_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_4_32_lut (.I0(GND_net), .I1(delay_counter[30]), .I2(GND_net), 
            .I3(n25681), .O(n230)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_4_6_lut (.I0(GND_net), .I1(delay_counter[4]), .I2(GND_net), 
            .I3(n25655), .O(n256)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1584 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[27] [1]), 
            .O(n29911));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1584.LUT_INIT = 16'h5100;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1585 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[27] [2]), 
            .O(n14210));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1585.LUT_INIT = 16'h5100;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1586 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[27] [3]), 
            .O(n29919));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1586.LUT_INIT = 16'h5100;
    SB_LUT4 LessThan_664_i4_4_lut (.I0(r_Clock_Count[0]), .I1(o_Rx_DV_N_3358[1]), 
            .I2(r_Clock_Count[1]), .I3(o_Rx_DV_N_3358[0]), .O(n4_adj_4499));   // verilog/uart_rx.v(119[17:57])
    defparam LessThan_664_i4_4_lut.LUT_INIT = 16'h4d0c;
    SB_LUT4 LessThan_664_i8_3_lut (.I0(n6_adj_4500), .I1(o_Rx_DV_N_3358[4]), 
            .I2(n9_adj_4502), .I3(GND_net), .O(n8_adj_4501));   // verilog/uart_rx.v(119[17:57])
    defparam LessThan_664_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32390_4_lut (.I0(n8_adj_4501), .I1(n4_adj_4499), .I2(n9_adj_4502), 
            .I3(n35288), .O(n36795));   // verilog/uart_rx.v(119[17:57])
    defparam i32390_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32391_3_lut (.I0(n36795), .I1(o_Rx_DV_N_3358[5]), .I2(r_Clock_Count[5]), 
            .I3(GND_net), .O(n36796));   // verilog/uart_rx.v(119[17:57])
    defparam i32391_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32342_3_lut (.I0(n36796), .I1(o_Rx_DV_N_3358[6]), .I2(r_Clock_Count[6]), 
            .I3(GND_net), .O(n36747));   // verilog/uart_rx.v(119[17:57])
    defparam i32342_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32262_3_lut (.I0(n36747), .I1(o_Rx_DV_N_3358[7]), .I2(r_Clock_Count[7]), 
            .I3(GND_net), .O(n2833));   // verilog/uart_rx.v(119[17:57])
    defparam i32262_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_4_lut_adj_1587 (.I0(o_Rx_DV_N_3358[12]), .I1(n2833), .I2(o_Rx_DV_N_3358[8]), 
            .I3(n31572), .O(n32471));
    defparam i1_4_lut_adj_1587.LUT_INIT = 16'hfeff;
    SB_LUT4 i1_4_lut_adj_1588 (.I0(o_Rx_DV_N_3358[24]), .I1(n29), .I2(n23), 
            .I3(n32471), .O(n32477));
    defparam i1_4_lut_adj_1588.LUT_INIT = 16'hfffe;
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
    SB_LUT4 i4_4_lut (.I0(\data_out_frame[12] [1]), .I1(\data_out_frame[12] [0]), 
            .I2(\data_out_frame[5] [4]), .I3(n6), .O(n10649));   // verilog/coms.v(100[12:26])
    defparam i4_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1589 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[27] [4]), 
            .O(n29920));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1589.LUT_INIT = 16'h5100;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1590 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[27] [5]), 
            .O(n29921));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1590.LUT_INIT = 16'h5100;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1591 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[27] [6]), 
            .O(n29909));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1591.LUT_INIT = 16'h5100;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1592 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[27] [7]), 
            .O(n29922));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1592.LUT_INIT = 16'h5100;
    SB_CARRY add_4_32 (.CI(n25681), .I0(delay_counter[30]), .I1(GND_net), 
            .CO(n25682));
    SB_LUT4 i26204_2_lut_4_lut (.I0(\FRAME_MATCHER.i [3]), .I1(n9), .I2(\FRAME_MATCHER.i [0]), 
            .I3(n19958), .O(n30551));
    defparam i26204_2_lut_4_lut.LUT_INIT = 16'hffdf;
    SB_LUT4 i1_2_lut_adj_1593 (.I0(\data_out_frame[5] [3]), .I1(\data_out_frame[5] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n30170));   // verilog/coms.v(100[12:26])
    defparam i1_2_lut_adj_1593.LUT_INIT = 16'h6666;
    SB_LUT4 i10_2_lut (.I0(\data_out_frame[5] [5]), .I1(\data_out_frame[4] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n1519));   // verilog/coms.v(100[12:26])
    defparam i10_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1594 (.I0(delay_counter[12]), .I1(delay_counter[11]), 
            .I2(GND_net), .I3(GND_net), .O(n4_adj_4488));
    defparam i1_2_lut_adj_1594.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_1595 (.I0(n15_adj_4506), .I1(data_ready), .I2(data_ready_N_3670), 
            .I3(n31641), .O(n29475));   // verilog/eeprom.v(35[8] 83[4])
    defparam i1_4_lut_adj_1595.LUT_INIT = 16'heca0;
    SB_DFFESR delay_counter__i1 (.Q(delay_counter[1]), .C(clk16MHz), .E(n13062), 
            .D(n259), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i2 (.Q(delay_counter[2]), .C(clk16MHz), .E(n13062), 
            .D(n258), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i3 (.Q(delay_counter[3]), .C(clk16MHz), .E(n13062), 
            .D(n257), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i4 (.Q(delay_counter[4]), .C(clk16MHz), .E(n13062), 
            .D(n256), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i5 (.Q(delay_counter[5]), .C(clk16MHz), .E(n13062), 
            .D(n255), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i6 (.Q(delay_counter[6]), .C(clk16MHz), .E(n13062), 
            .D(n254), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFF read_34 (.Q(read), .C(clk16MHz), .D(n32198));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i7 (.Q(delay_counter[7]), .C(clk16MHz), .E(n13062), 
            .D(n253), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i8 (.Q(delay_counter[8]), .C(clk16MHz), .E(n13062), 
            .D(n252), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i9 (.Q(delay_counter[9]), .C(clk16MHz), .E(n13062), 
            .D(n251), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i10 (.Q(delay_counter[10]), .C(clk16MHz), .E(n13062), 
            .D(n250), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i11 (.Q(delay_counter[11]), .C(clk16MHz), .E(n13062), 
            .D(n249), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i12 (.Q(delay_counter[12]), .C(clk16MHz), .E(n13062), 
            .D(n248), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i13 (.Q(delay_counter[13]), .C(clk16MHz), .E(n13062), 
            .D(n247), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i14 (.Q(delay_counter[14]), .C(clk16MHz), .E(n13062), 
            .D(n246), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i15 (.Q(delay_counter[15]), .C(clk16MHz), .E(n13062), 
            .D(n245), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i16 (.Q(delay_counter[16]), .C(clk16MHz), .E(n13062), 
            .D(n244), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i17 (.Q(delay_counter[17]), .C(clk16MHz), .E(n13062), 
            .D(n243), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i18 (.Q(delay_counter[18]), .C(clk16MHz), .E(n13062), 
            .D(n242), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i19 (.Q(delay_counter[19]), .C(clk16MHz), .E(n13062), 
            .D(n241), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i20 (.Q(delay_counter[20]), .C(clk16MHz), .E(n13062), 
            .D(n240), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i21 (.Q(delay_counter[21]), .C(clk16MHz), .E(n13062), 
            .D(n239), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i22 (.Q(delay_counter[22]), .C(clk16MHz), .E(n13062), 
            .D(n238), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_LUT4 i2_4_lut (.I0(delay_counter[9]), .I1(n4_adj_4488), .I2(delay_counter[10]), 
            .I3(n10845), .O(n31633));
    defparam i2_4_lut.LUT_INIT = 16'hfcec;
    SB_LUT4 i10662_4_lut (.I0(rw), .I1(state_adj_4533[1]), .I2(state_adj_4533[2]), 
            .I3(n3178), .O(n14650));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10662_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 i2_4_lut_adj_1596 (.I0(n31633), .I1(n10850), .I2(delay_counter[13]), 
            .I3(delay_counter[14]), .O(n31509));
    defparam i2_4_lut_adj_1596.LUT_INIT = 16'hffec;
    SB_DFFESR delay_counter__i23 (.Q(delay_counter[23]), .C(clk16MHz), .E(n13062), 
            .D(n237), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_LUT4 i3_3_lut (.I0(delay_counter[20]), .I1(delay_counter[21]), .I2(delay_counter[23]), 
            .I3(GND_net), .O(n8));
    defparam i3_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i2_4_lut_adj_1597 (.I0(delay_counter[22]), .I1(n31509), .I2(delay_counter[19]), 
            .I3(delay_counter[18]), .O(n7));
    defparam i2_4_lut_adj_1597.LUT_INIT = 16'ha8a0;
    SB_LUT4 i14555_3_lut (.I0(neopxl_color[18]), .I1(\data_in_frame[4] [2]), 
            .I2(n8291), .I3(GND_net), .O(n14651));
    defparam i14555_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_1598 (.I0(n23), .I1(o_Rx_DV_N_3358[12]), .I2(n2836), 
            .I3(r_SM_Main_adj_4540[0]), .O(n32415));
    defparam i1_4_lut_adj_1598.LUT_INIT = 16'hfeff;
    SB_LUT4 i1_4_lut_adj_1599 (.I0(o_Rx_DV_N_3358[24]), .I1(n27), .I2(n29), 
            .I3(n32415), .O(n31238));
    defparam i1_4_lut_adj_1599.LUT_INIT = 16'hfffe;
    SB_LUT4 i14648_3_lut (.I0(neopxl_color[17]), .I1(\data_in_frame[4] [1]), 
            .I2(n8291), .I3(GND_net), .O(n14668));
    defparam i14648_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10685_3_lut (.I0(neopxl_color[15]), .I1(\data_in_frame[5] [7]), 
            .I2(n8291), .I3(GND_net), .O(n14673));   // verilog/coms.v(130[12] 305[6])
    defparam i10685_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10686_3_lut (.I0(neopxl_color[14]), .I1(\data_in_frame[5] [6]), 
            .I2(n8291), .I3(GND_net), .O(n14674));   // verilog/coms.v(130[12] 305[6])
    defparam i10686_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10687_3_lut (.I0(neopxl_color[13]), .I1(\data_in_frame[5] [5]), 
            .I2(n8291), .I3(GND_net), .O(n14675));   // verilog/coms.v(130[12] 305[6])
    defparam i10687_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE \ID_READOUT_FSM.state__i0  (.Q(\ID_READOUT_FSM.state [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n29221));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_LUT4 i14_4_lut_adj_1600 (.I0(n31414), .I1(\data_in_frame[10] [6]), 
            .I2(n199), .I3(rx_data[6]), .O(n29315));   // verilog/coms.v(130[12] 305[6])
    defparam i14_4_lut_adj_1600.LUT_INIT = 16'hc5c0;
    SB_LUT4 i1_4_lut_4_lut (.I0(\ID_READOUT_FSM.state [0]), .I1(\ID_READOUT_FSM.state [1]), 
            .I2(reset), .I3(n21042), .O(n29249));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hb1f1;
    SB_LUT4 i1_2_lut_adj_1601 (.I0(n32017), .I1(n32391), .I2(GND_net), 
            .I3(GND_net), .O(n32393));
    defparam i1_2_lut_adj_1601.LUT_INIT = 16'heeee;
    SB_DFFESR delay_counter__i24 (.Q(delay_counter[24]), .C(clk16MHz), .E(n13062), 
            .D(n236), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i0 (.Q(delay_counter[0]), .C(clk16MHz), .E(n13062), 
            .D(n260), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_LUT4 i17227_4_lut (.I0(n7), .I1(delay_counter[31]), .I2(n10838), 
            .I3(n8), .O(n340));   // verilog/TinyFPGA_B.v(171[14:38])
    defparam i17227_4_lut.LUT_INIT = 16'h3230;
    SB_LUT4 add_4_31_lut (.I0(GND_net), .I1(delay_counter[29]), .I2(GND_net), 
            .I3(n25680), .O(n231)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_31 (.CI(n25680), .I0(delay_counter[29]), .I1(GND_net), 
            .CO(n25681));
    SB_CARRY add_4_6 (.CI(n25655), .I0(delay_counter[4]), .I1(GND_net), 
            .CO(n25656));
    SB_LUT4 i5_4_lut (.I0(delay_counter[27]), .I1(delay_counter[29]), .I2(delay_counter[24]), 
            .I3(delay_counter[26]), .O(n12));
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i6_4_lut_adj_1602 (.I0(delay_counter[28]), .I1(n12), .I2(delay_counter[25]), 
            .I3(delay_counter[30]), .O(n10838));
    defparam i6_4_lut_adj_1602.LUT_INIT = 16'hfffe;
    SB_LUT4 i3081_4_lut (.I0(n10845), .I1(delay_counter[11]), .I2(delay_counter[10]), 
            .I3(delay_counter[9]), .O(n24));
    defparam i3081_4_lut.LUT_INIT = 16'hc8c0;
    SB_LUT4 i2_4_lut_adj_1603 (.I0(n24), .I1(delay_counter[14]), .I2(delay_counter[12]), 
            .I3(delay_counter[13]), .O(n31508));
    defparam i2_4_lut_adj_1603.LUT_INIT = 16'hc800;
    SB_DFFESR delay_counter__i25 (.Q(delay_counter[25]), .C(clk16MHz), .E(n13062), 
            .D(n235), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_LUT4 add_4_5_lut (.I0(GND_net), .I1(delay_counter[3]), .I2(GND_net), 
            .I3(n25654), .O(n257)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_4_30_lut (.I0(GND_net), .I1(delay_counter[28]), .I2(GND_net), 
            .I3(n25679), .O(n232)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_30 (.CI(n25679), .I0(delay_counter[28]), .I1(GND_net), 
            .CO(n25680));
    SB_LUT4 i2_3_lut (.I0(n31508), .I1(delay_counter[18]), .I2(n10850), 
            .I3(GND_net), .O(n31667));
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i2_4_lut_adj_1604 (.I0(delay_counter[23]), .I1(n31667), .I2(delay_counter[20]), 
            .I3(delay_counter[19]), .O(n7_adj_4490));
    defparam i2_4_lut_adj_1604.LUT_INIT = 16'heaaa;
    SB_LUT4 i4_4_lut_adj_1605 (.I0(n7_adj_4490), .I1(delay_counter[21]), 
            .I2(delay_counter[22]), .I3(n10838), .O(n62));
    defparam i4_4_lut_adj_1605.LUT_INIT = 16'hfffe;
    SB_LUT4 i14_4_lut_adj_1606 (.I0(n31414), .I1(\data_in_frame[10] [7]), 
            .I2(n199), .I3(rx_data[7]), .O(n29313));   // verilog/coms.v(130[12] 305[6])
    defparam i14_4_lut_adj_1606.LUT_INIT = 16'hc5c0;
    SB_CARRY add_4_5 (.CI(n25654), .I0(delay_counter[3]), .I1(GND_net), 
            .CO(n25655));
    SB_LUT4 i17249_2_lut (.I0(n62), .I1(delay_counter[31]), .I2(GND_net), 
            .I3(GND_net), .O(read_N_122));   // verilog/TinyFPGA_B.v(157[12:35])
    defparam i17249_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 add_4_4_lut (.I0(GND_net), .I1(delay_counter[2]), .I2(GND_net), 
            .I3(n25653), .O(n258)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter__i26 (.Q(delay_counter[26]), .C(clk16MHz), .E(n13062), 
            .D(n234), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i27 (.Q(delay_counter[27]), .C(clk16MHz), .E(n13062), 
            .D(n233), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_LUT4 i6_4_lut_adj_1607 (.I0(ID[7]), .I1(ID[4]), .I2(ID[5]), .I3(ID[6]), 
            .O(n14_adj_4486));   // verilog/TinyFPGA_B.v(169[12:17])
    defparam i6_4_lut_adj_1607.LUT_INIT = 16'hfffe;
    SB_LUT4 i5_4_lut_adj_1608 (.I0(ID[0]), .I1(ID[1]), .I2(ID[3]), .I3(ID[2]), 
            .O(n13));   // verilog/TinyFPGA_B.v(169[12:17])
    defparam i5_4_lut_adj_1608.LUT_INIT = 16'hfffe;
    SB_LUT4 add_4_29_lut (.I0(GND_net), .I1(delay_counter[27]), .I2(GND_net), 
            .I3(n25678), .O(n233)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1609 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[0] [2]), 
            .O(n29826));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1609.LUT_INIT = 16'h4500;
    SB_LUT4 i11038_3_lut (.I0(\data_in_frame[11] [0]), .I1(rx_data[0]), 
            .I2(n13763), .I3(GND_net), .O(n15026));   // verilog/coms.v(130[12] 305[6])
    defparam i11038_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11041_3_lut (.I0(\data_in_frame[11] [1]), .I1(rx_data[1]), 
            .I2(n13763), .I3(GND_net), .O(n15029));   // verilog/coms.v(130[12] 305[6])
    defparam i11041_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13_4_lut (.I0(\data_in_frame[11] [2]), .I1(n30551), .I2(n13763), 
            .I3(rx_data[2]), .O(n29311));   // verilog/coms.v(130[12] 305[6])
    defparam i13_4_lut.LUT_INIT = 16'h3a0a;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1610 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[0] [3]), 
            .O(n29827));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1610.LUT_INIT = 16'h4500;
    SB_CARRY add_4_29 (.CI(n25678), .I0(delay_counter[27]), .I1(GND_net), 
            .CO(n25679));
    SB_CARRY add_4_4 (.CI(n25653), .I0(delay_counter[2]), .I1(GND_net), 
            .CO(n25654));
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1611 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[0] [4]), 
            .O(n29828));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1611.LUT_INIT = 16'h4500;
    SB_LUT4 i11047_3_lut (.I0(\data_in_frame[11] [3]), .I1(rx_data[3]), 
            .I2(n13763), .I3(GND_net), .O(n15035));   // verilog/coms.v(130[12] 305[6])
    defparam i11047_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1612 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[1] [0]), 
            .O(n29829));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1612.LUT_INIT = 16'h4500;
    SB_LUT4 i17119_4_lut (.I0(n13), .I1(baudrate[0]), .I2(n14_adj_4486), 
            .I3(n10933), .O(n21042));
    defparam i17119_4_lut.LUT_INIT = 16'hc8fa;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1613 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[1] [1]), 
            .O(n29830));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1613.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1614 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[1] [3]), 
            .O(n29832));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1614.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1615 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[1] [5]), 
            .O(n29836));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1615.LUT_INIT = 16'h4500;
    SB_LUT4 i11050_3_lut (.I0(\data_in_frame[11] [4]), .I1(rx_data[4]), 
            .I2(n13763), .I3(GND_net), .O(n15038));   // verilog/coms.v(130[12] 305[6])
    defparam i11050_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1616 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[1] [6]), 
            .O(n29837));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1616.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1617 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[1] [7]), 
            .O(n29825));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1617.LUT_INIT = 16'h4500;
    SB_LUT4 add_4_3_lut (.I0(GND_net), .I1(delay_counter[1]), .I2(GND_net), 
            .I3(n25652), .O(n259)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_4_28_lut (.I0(GND_net), .I1(delay_counter[26]), .I2(GND_net), 
            .I3(n25677), .O(n234)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_28 (.CI(n25677), .I0(delay_counter[26]), .I1(GND_net), 
            .CO(n25678));
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1618 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[3] [1]), 
            .O(n29839));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1618.LUT_INIT = 16'h4500;
    SB_CARRY add_4_3 (.CI(n25652), .I0(delay_counter[1]), .I1(GND_net), 
            .CO(n25653));
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1619 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[3] [3]), 
            .O(n29840));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1619.LUT_INIT = 16'h4500;
    SB_LUT4 add_4_2_lut (.I0(GND_net), .I1(delay_counter[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n260)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter__i28 (.Q(delay_counter[28]), .C(clk16MHz), .E(n13062), 
            .D(n232), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_LUT4 add_4_27_lut (.I0(GND_net), .I1(delay_counter[25]), .I2(GND_net), 
            .I3(n25676), .O(n235)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1620 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[3] [4]), 
            .O(n29841));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1620.LUT_INIT = 16'h4500;
    SB_CARRY add_4_27 (.CI(n25676), .I0(delay_counter[25]), .I1(GND_net), 
            .CO(n25677));
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1621 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[3] [6]), 
            .O(n29842));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1621.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1622 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[3] [7]), 
            .O(n29843));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1622.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1623 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[4] [0]), 
            .O(n29844));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1623.LUT_INIT = 16'h4500;
    SB_LUT4 add_4_26_lut (.I0(GND_net), .I1(delay_counter[24]), .I2(GND_net), 
            .I3(n25675), .O(n236)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_26 (.CI(n25675), .I0(delay_counter[24]), .I1(GND_net), 
            .CO(n25676));
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1624 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[4] [1]), 
            .O(n29845));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1624.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1625 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[4] [2]), 
            .O(n29846));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1625.LUT_INIT = 16'h4500;
    SB_LUT4 add_4_25_lut (.I0(GND_net), .I1(delay_counter[23]), .I2(GND_net), 
            .I3(n25674), .O(n237)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_25 (.CI(n25674), .I0(delay_counter[23]), .I1(GND_net), 
            .CO(n25675));
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1626 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[4] [3]), 
            .O(n29847));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1626.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1627 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[4] [4]), 
            .O(n29848));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1627.LUT_INIT = 16'h4500;
    SB_LUT4 i32494_3_lut_3_lut (.I0(\ID_READOUT_FSM.state [0]), .I1(\ID_READOUT_FSM.state [1]), 
            .I2(n21042), .I3(GND_net), .O(n13062));
    defparam i32494_3_lut_3_lut.LUT_INIT = 16'h1515;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1628 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[4] [5]), 
            .O(n29849));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1628.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1629 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[4] [6]), 
            .O(n29850));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1629.LUT_INIT = 16'h4500;
    SB_LUT4 add_4_24_lut (.I0(GND_net), .I1(delay_counter[22]), .I2(GND_net), 
            .I3(n25673), .O(n238)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_24 (.CI(n25673), .I0(delay_counter[22]), .I1(GND_net), 
            .CO(n25674));
    SB_LUT4 i10715_3_lut (.I0(neopxl_color[12]), .I1(\data_in_frame[5] [4]), 
            .I2(n8291), .I3(GND_net), .O(n14703));   // verilog/coms.v(130[12] 305[6])
    defparam i10715_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1630 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[4] [7]), 
            .O(n29851));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1630.LUT_INIT = 16'h4500;
    SB_LUT4 i10716_3_lut (.I0(neopxl_color[11]), .I1(\data_in_frame[5] [3]), 
            .I2(n8291), .I3(GND_net), .O(n14704));   // verilog/coms.v(130[12] 305[6])
    defparam i10716_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10717_3_lut (.I0(neopxl_color[10]), .I1(\data_in_frame[5] [2]), 
            .I2(n8291), .I3(GND_net), .O(n14705));   // verilog/coms.v(130[12] 305[6])
    defparam i10717_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3_4_lut (.I0(\ID_READOUT_FSM.state [1]), .I1(n62), .I2(delay_counter[31]), 
            .I3(\ID_READOUT_FSM.state [0]), .O(n32198));
    defparam i3_4_lut.LUT_INIT = 16'h0004;
    SB_DFF reset_35 (.Q(reset), .C(clk16MHz), .D(n29249));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i29 (.Q(delay_counter[29]), .C(clk16MHz), .E(n13062), 
            .D(n231), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_LUT4 i14289_3_lut (.I0(neopxl_color[9]), .I1(\data_in_frame[5] [1]), 
            .I2(n8291), .I3(GND_net), .O(n14720));
    defparam i14289_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10739_3_lut (.I0(neopxl_color[8]), .I1(\data_in_frame[5] [0]), 
            .I2(n8291), .I3(GND_net), .O(n14727));   // verilog/coms.v(130[12] 305[6])
    defparam i10739_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10740_3_lut (.I0(neopxl_color[7]), .I1(\data_in_frame[6] [7]), 
            .I2(n8291), .I3(GND_net), .O(n14728));   // verilog/coms.v(130[12] 305[6])
    defparam i10740_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14416_3_lut (.I0(neopxl_color[6]), .I1(\data_in_frame[6] [6]), 
            .I2(n8291), .I3(GND_net), .O(n14729));
    defparam i14416_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10742_3_lut (.I0(neopxl_color[5]), .I1(\data_in_frame[6] [5]), 
            .I2(n8291), .I3(GND_net), .O(n14730));   // verilog/coms.v(130[12] 305[6])
    defparam i10742_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10743_3_lut (.I0(neopxl_color[4]), .I1(\data_in_frame[6] [4]), 
            .I2(n8291), .I3(GND_net), .O(n14731));   // verilog/coms.v(130[12] 305[6])
    defparam i10743_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10744_3_lut (.I0(neopxl_color[3]), .I1(\data_in_frame[6] [3]), 
            .I2(n8291), .I3(GND_net), .O(n14732));   // verilog/coms.v(130[12] 305[6])
    defparam i10744_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR delay_counter__i30 (.Q(delay_counter[30]), .C(clk16MHz), .E(n13062), 
            .D(n230), .R(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    GND i1 (.Y(GND_net));
    SB_LUT4 i31034_2_lut_3_lut (.I0(n62), .I1(delay_counter[31]), .I2(\ID_READOUT_FSM.state [0]), 
            .I3(GND_net), .O(n35097));
    defparam i31034_2_lut_3_lut.LUT_INIT = 16'hf2f2;
    SB_LUT4 add_4_23_lut (.I0(GND_net), .I1(delay_counter[21]), .I2(GND_net), 
            .I3(n25672), .O(n239)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10745_3_lut (.I0(\neo_pixel_transmitter.t0 [0]), .I1(timer[0]), 
            .I2(n1737), .I3(GND_net), .O(n14733));   // verilog/neopixel.v(35[12] 117[6])
    defparam i10745_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17190_2_lut_3_lut (.I0(\ID_READOUT_FSM.state [0]), .I1(\ID_READOUT_FSM.state [1]), 
            .I2(n21042), .I3(GND_net), .O(n21113));
    defparam i17190_2_lut_3_lut.LUT_INIT = 16'hfbfb;
    SB_LUT4 i10750_3_lut (.I0(neopxl_color[1]), .I1(\data_in_frame[6] [1]), 
            .I2(n8291), .I3(GND_net), .O(n14738));   // verilog/coms.v(130[12] 305[6])
    defparam i10750_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1631 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[5] [0]), 
            .O(n29852));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1631.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1632 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[5] [1]), 
            .O(n29853));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1632.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1633 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[5] [2]), 
            .O(n29854));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1633.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1634 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[5] [3]), 
            .O(n29892));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1634.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1635 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[5] [4]), 
            .O(n29855));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1635.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1636 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[5] [5]), 
            .O(n29856));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1636.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1637 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[5] [6]), 
            .O(n29857));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1637.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1638 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[5] [7]), 
            .O(n29858));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1638.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1639 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[12] [0]), 
            .O(n29859));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1639.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1640 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[12] [1]), 
            .O(n29860));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1640.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1641 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[12] [2]), 
            .O(n29861));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1641.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1642 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[12] [3]), 
            .O(n29862));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1642.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1643 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[12] [4]), 
            .O(n29863));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1643.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1644 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[12] [5]), 
            .O(n29864));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1644.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1645 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[12] [6]), 
            .O(n29865));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1645.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1646 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[12] [7]), 
            .O(n29866));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1646.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1647 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[13] [0]), 
            .O(n29867));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1647.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1648 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[13] [1]), 
            .O(n29868));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1648.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1649 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[13] [2]), 
            .O(n29869));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1649.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1650 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[13] [3]), 
            .O(n29870));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1650.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1651 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[13] [4]), 
            .O(n29871));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1651.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1652 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[13] [5]), 
            .O(n29872));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1652.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1653 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[13] [6]), 
            .O(n29873));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1653.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1654 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[13] [7]), 
            .O(n14253));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1654.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1655 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[14] [0]), 
            .O(n29874));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1655.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1656 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[14] [1]), 
            .O(n29875));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1656.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1657 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[14] [2]), 
            .O(n29876));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1657.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1658 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[14] [3]), 
            .O(n29877));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1658.LUT_INIT = 16'h4500;
    SB_LUT4 i10751_3_lut_3_lut (.I0(\FRAME_MATCHER.rx_data_ready_prev ), .I1(rx_data_ready), 
            .I2(reset), .I3(GND_net), .O(n14739));   // verilog/coms.v(130[12] 305[6])
    defparam i10751_3_lut_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1659 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[14] [4]), 
            .O(n29878));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1659.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1660 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[14] [5]), 
            .O(n29879));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1660.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1661 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[14] [6]), 
            .O(n14246));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1661.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1662 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[14] [7]), 
            .O(n14245));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1662.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1663 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[23] [0]), 
            .O(n29824));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1663.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1664 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[23] [1]), 
            .O(n29880));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1664.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1665 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[23] [2]), 
            .O(n14242));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1665.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1666 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[23] [3]), 
            .O(n29881));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1666.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1667 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[23] [4]), 
            .O(n29882));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1667.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1668 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[23] [5]), 
            .O(n29883));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1668.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1669 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[23] [6]), 
            .O(n29838));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1669.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1670 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[23] [7]), 
            .O(n29884));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1670.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1671 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[24] [0]), 
            .O(n29835));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1671.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1672 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[24] [1]), 
            .O(n14235));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1672.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1673 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[24] [2]), 
            .O(n14234));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1673.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1674 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[24] [3]), 
            .O(n29885));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1674.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1675 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[24] [4]), 
            .O(n29886));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1675.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_adj_1676 (.I0(r_SM_Main[1]), .I1(r_SM_Main[2]), .I2(GND_net), 
            .I3(GND_net), .O(n29929));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i1_2_lut_adj_1676.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1677 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[24] [5]), 
            .O(n29887));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1677.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1678 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[24] [6]), 
            .O(n14230));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1678.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1679 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[24] [7]), 
            .O(n14229));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1679.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1680 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[25] [0]), 
            .O(n29888));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1680.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1681 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[25] [1]), 
            .O(n29833));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1681.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1682 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[25] [2]), 
            .O(n14226));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1682.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1683 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[25] [3]), 
            .O(n29889));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1683.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1684 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[25] [4]), 
            .O(n29834));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1684.LUT_INIT = 16'h4500;
    SB_LUT4 i15417_3_lut (.I0(baudrate[31]), .I1(data_adj_4532[7]), .I2(n13105), 
            .I3(GND_net), .O(n14830));
    defparam i15417_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1685 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[25] [5]), 
            .O(n29890));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1685.LUT_INIT = 16'h4500;
    SB_LUT4 i10853_3_lut (.I0(baudrate[30]), .I1(data_adj_4532[6]), .I2(n13105), 
            .I3(GND_net), .O(n14841));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10853_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10854_3_lut (.I0(baudrate[29]), .I1(data_adj_4532[5]), .I2(n13105), 
            .I3(GND_net), .O(n14842));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10854_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1686 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[25] [6]), 
            .O(n29831));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1686.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1687 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[25] [7]), 
            .O(n29891));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1687.LUT_INIT = 16'h4500;
    SB_LUT4 i15418_3_lut (.I0(baudrate[28]), .I1(data_adj_4532[4]), .I2(n13105), 
            .I3(GND_net), .O(n14844));
    defparam i15418_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10864_3_lut (.I0(baudrate[27]), .I1(data_adj_4532[3]), .I2(n13105), 
            .I3(GND_net), .O(n14852));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10864_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10865_3_lut (.I0(baudrate[26]), .I1(data_adj_4532[2]), .I2(n13105), 
            .I3(GND_net), .O(n14853));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10865_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10196_4_lut (.I0(n13062), .I1(n340), .I2(n35097), .I3(n21113), 
            .O(n14184));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i10196_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i10869_3_lut (.I0(baudrate[25]), .I1(data_adj_4532[1]), .I2(n13105), 
            .I3(GND_net), .O(n14857));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10869_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10871_3_lut (.I0(baudrate[24]), .I1(data_adj_4532[0]), .I2(n13105), 
            .I3(GND_net), .O(n14859));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10871_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10673_4_lut_4_lut (.I0(tx_active), .I1(r_SM_Main_adj_4540[1]), 
            .I2(r_SM_Main_adj_4540[2]), .I3(n6_adj_4491), .O(n14661));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i10673_4_lut_4_lut.LUT_INIT = 16'ha3aa;
    SB_LUT4 i5_3_lut_adj_1688 (.I0(delay_counter[3]), .I1(delay_counter[5]), 
            .I2(delay_counter[4]), .I3(GND_net), .O(n14));
    defparam i5_3_lut_adj_1688.LUT_INIT = 16'hfefe;
    SB_LUT4 i6_4_lut_adj_1689 (.I0(delay_counter[8]), .I1(delay_counter[7]), 
            .I2(delay_counter[1]), .I3(delay_counter[0]), .O(n15));
    defparam i6_4_lut_adj_1689.LUT_INIT = 16'hfffe;
    SB_LUT4 i8_4_lut_adj_1690 (.I0(n15), .I1(delay_counter[2]), .I2(n14), 
            .I3(delay_counter[6]), .O(n10845));
    defparam i8_4_lut_adj_1690.LUT_INIT = 16'hfffe;
    SB_LUT4 i2_3_lut_adj_1691 (.I0(delay_counter[17]), .I1(delay_counter[16]), 
            .I2(delay_counter[15]), .I3(GND_net), .O(n10850));
    defparam i2_3_lut_adj_1691.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_adj_1692 (.I0(n2836), .I1(r_SM_Main_adj_4540[0]), .I2(GND_net), 
            .I3(GND_net), .O(n32553));
    defparam i1_2_lut_adj_1692.LUT_INIT = 16'h4444;
    SB_LUT4 i1_4_lut_adj_1693 (.I0(n29), .I1(n23), .I2(o_Rx_DV_N_3358[12]), 
            .I3(n32553), .O(n32559));
    defparam i1_4_lut_adj_1693.LUT_INIT = 16'h0100;
    SB_LUT4 i1_4_lut_4_lut_adj_1694 (.I0(\ID_READOUT_FSM.state [0]), .I1(\ID_READOUT_FSM.state [1]), 
            .I2(read_N_122), .I3(n1398), .O(n25));   // verilog/TinyFPGA_B.v(168[7:11])
    defparam i1_4_lut_4_lut_adj_1694.LUT_INIT = 16'h5450;
    SB_LUT4 i1_2_lut_4_lut (.I0(\data_out_frame[5] [5]), .I1(\data_out_frame[5] [1]), 
            .I2(\data_out_frame[4] [6]), .I3(\data_out_frame[5] [0]), .O(n6));   // verilog/coms.v(100[12:26])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'h6996;
    EEPROM eeprom (.GND_net(GND_net), .clk16MHz(clk16MHz), .enable_slow_N_3855(enable_slow_N_3855), 
           .n3177({n3178}), .\state[2] (state_adj_4533[2]), .\state[1] (state_adj_4533[1]), 
           .\state[0] (state_adj_4533[0]), .data_ready_N_3670(data_ready_N_3670), 
           .n32019(n32019), .read(read), .n15(n15_adj_4506), .n14859(n14859), 
           .baudrate({baudrate}), .n14857(n14857), .n14853(n14853), .n14852(n14852), 
           .n14844(n14844), .n14842(n14842), .n14841(n14841), .n14830(n14830), 
           .ID({ID}), .n14650(n14650), .rw(rw), .n29475(n29475), .data_ready(data_ready), 
           .n15421(n15421), .VCC_net(VCC_net), .\state[0]_adj_20 (state_adj_4547[0]), 
           .n29956(n29956), .data({data_adj_4532}), .n13105(n13105), .n31641(n31641), 
           .scl_enable(scl_enable), .n3876(n3876), .\state_7__N_3768[3] (state_7__N_3768[3]), 
           .\saved_addr[0] (saved_addr[0]), .n4(n4_adj_4465), .n4_adj_21(n4), 
           .n10919(n10919), .n10928(n10928), .n21206(n21206), .n6(n6_adj_4503), 
           .n21147(n21147), .\state_7__N_3752[0] (state_7__N_3752[0]), .n14956(n14956), 
           .n14955(n14955), .n14954(n14954), .n14952(n14952), .n14951(n14951), 
           .n14950(n14950), .n14949(n14949), .n10(n10), .n8(n8_adj_4487), 
           .n15304(n15304), .sda_enable(sda_enable), .n14623(n14623), 
           .scl(scl), .sda_out(sda_out)) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(182[10] 194[6])
    SB_LUT4 i10635_4_lut (.I0(saved_addr[0]), .I1(rw), .I2(n29956), .I3(state_7__N_3752[0]), 
            .O(n14623));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i10635_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 i14646_3_lut (.I0(neopxl_color[20]), .I1(\data_in_frame[4] [4]), 
            .I2(n8291), .I3(GND_net), .O(n14625));
    defparam i14646_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14554_3_lut (.I0(neopxl_color[19]), .I1(\data_in_frame[4] [3]), 
            .I2(n8291), .I3(GND_net), .O(n14632));
    defparam i14554_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10654_3_lut (.I0(neopxl_color[0]), .I1(\data_in_frame[6] [0]), 
            .I2(n8291), .I3(GND_net), .O(n14642));   // verilog/coms.v(130[12] 305[6])
    defparam i10654_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11053_3_lut (.I0(\data_in_frame[11] [5]), .I1(rx_data[5]), 
            .I2(n13763), .I3(GND_net), .O(n15041));   // verilog/coms.v(130[12] 305[6])
    defparam i11053_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13_4_lut_adj_1695 (.I0(\data_in_frame[11] [6]), .I1(n30551), 
            .I2(n13763), .I3(rx_data[6]), .O(n29309));   // verilog/coms.v(130[12] 305[6])
    defparam i13_4_lut_adj_1695.LUT_INIT = 16'h3a0a;
    SB_LUT4 i10836_3_lut (.I0(\data_in_frame[4] [7]), .I1(rx_data[7]), .I2(n13776), 
            .I3(GND_net), .O(n14824));   // verilog/coms.v(130[12] 305[6])
    defparam i10836_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1045_4_lut_4_lut (.I0(\ID_READOUT_FSM.state [0]), .I1(\ID_READOUT_FSM.state [1]), 
            .I2(n340), .I3(n21042), .O(n4039));   // verilog/TinyFPGA_B.v(153[5] 179[12])
    defparam i1045_4_lut_4_lut.LUT_INIT = 16'hcc8c;
    SB_LUT4 color_bit_N_423_1__bdd_4_lut_4_lut (.I0(bit_ctr[1]), .I1(bit_ctr[0]), 
            .I2(neopxl_color[17]), .I3(neopxl_color[19]), .O(n37155));
    defparam color_bit_N_423_1__bdd_4_lut_4_lut.LUT_INIT = 16'he6a2;
    SB_LUT4 i11433_4_lut_4_lut (.I0(state_adj_4533[2]), .I1(state_adj_4533[0]), 
            .I2(state_adj_4533[1]), .I3(n32019), .O(n15421));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11433_4_lut_4_lut.LUT_INIT = 16'h31cc;
    SB_LUT4 i12_3_lut_4_lut (.I0(rx_data_ready), .I1(r_SM_Main[1]), .I2(r_SM_Main[2]), 
            .I3(n13044), .O(n27581));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i12_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i10667_3_lut (.I0(\data_in_frame[0] [6]), .I1(rx_data[6]), .I2(n13736), 
            .I3(GND_net), .O(n14655));   // verilog/coms.v(130[12] 305[6])
    defparam i10667_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_3_lut_4_lut (.I0(r_Bit_Index[0]), .I1(r_SM_Main[1]), .I2(r_SM_Main[0]), 
            .I3(r_SM_Main[2]), .O(n32787));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hfff7;
    SB_LUT4 i10664_3_lut (.I0(\data_in_frame[0] [5]), .I1(rx_data[5]), .I2(n13736), 
            .I3(GND_net), .O(n14652));   // verilog/coms.v(130[12] 305[6])
    defparam i10664_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_adj_1696 (.I0(r_SM_Main[1]), .I1(n6_adj_4470), .I2(r_Bit_Index[0]), 
            .I3(n4_adj_4466), .O(n32717));
    defparam i1_4_lut_adj_1696.LUT_INIT = 16'hffdf;
    SB_LUT4 i1_4_lut_adj_1697 (.I0(o_Rx_DV_N_3358[12]), .I1(n2833), .I2(o_Rx_DV_N_3358[8]), 
            .I3(n32717), .O(n32723));
    defparam i1_4_lut_adj_1697.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_1698 (.I0(o_Rx_DV_N_3358[24]), .I1(n29), .I2(n23), 
            .I3(n32723), .O(n32729));
    defparam i1_4_lut_adj_1698.LUT_INIT = 16'hfffe;
    SB_LUT4 i11145_4_lut (.I0(r_Rx_Data), .I1(rx_data[1]), .I2(n32729), 
            .I3(n27), .O(n15133));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11145_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1_4_lut_adj_1699 (.I0(o_Rx_DV_N_3358[12]), .I1(n2833), .I2(o_Rx_DV_N_3358[8]), 
            .I3(n32771), .O(n32777));
    defparam i1_4_lut_adj_1699.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_1700 (.I0(o_Rx_DV_N_3358[24]), .I1(n29), .I2(n23), 
            .I3(n32777), .O(n32783));
    defparam i1_4_lut_adj_1700.LUT_INIT = 16'hfffe;
    SB_LUT4 i11146_4_lut (.I0(r_Rx_Data), .I1(rx_data[2]), .I2(n32783), 
            .I3(n27), .O(n15134));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11146_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1_3_lut_4_lut_adj_1701 (.I0(r_SM_Main[0]), .I1(r_SM_Main[2]), 
            .I2(r_SM_Main[1]), .I3(r_Bit_Index[0]), .O(n32769));
    defparam i1_3_lut_4_lut_adj_1701.LUT_INIT = 16'hffef;
    SB_LUT4 i1_4_lut_adj_1702 (.I0(o_Rx_DV_N_3358[12]), .I1(n2833), .I2(o_Rx_DV_N_3358[8]), 
            .I3(n32825), .O(n32831));
    defparam i1_4_lut_adj_1702.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_1703 (.I0(o_Rx_DV_N_3358[24]), .I1(n29), .I2(n23), 
            .I3(n32831), .O(n32837));
    defparam i1_4_lut_adj_1703.LUT_INIT = 16'hfffe;
    SB_LUT4 i11150_4_lut (.I0(r_Rx_Data), .I1(rx_data[3]), .I2(n32837), 
            .I3(n27), .O(n15138));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11150_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i10655_3_lut (.I0(\data_in_frame[0] [4]), .I1(rx_data[4]), .I2(n13736), 
            .I3(GND_net), .O(n14643));   // verilog/coms.v(130[12] 305[6])
    defparam i10655_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i2_3_lut_adj_1704 (.I0(reset), .I1(n21178), .I2(\FRAME_MATCHER.i [0]), 
            .I3(GND_net), .O(n179));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i2_3_lut_adj_1704.LUT_INIT = 16'h4040;
    SB_LUT4 i31282_2_lut_3_lut (.I0(data_ready), .I1(\ID_READOUT_FSM.state [0]), 
            .I2(n24_adj_4464), .I3(GND_net), .O(n35216));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i31282_2_lut_3_lut.LUT_INIT = 16'h4040;
    SB_LUT4 i11059_3_lut (.I0(\data_in_frame[11] [7]), .I1(rx_data[7]), 
            .I2(n13763), .I3(GND_net), .O(n15047));   // verilog/coms.v(130[12] 305[6])
    defparam i11059_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11159_3_lut (.I0(\data_in_frame[15] [4]), .I1(rx_data[4]), 
            .I2(n13754), .I3(GND_net), .O(n15147));   // verilog/coms.v(130[12] 305[6])
    defparam i11159_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11156_3_lut (.I0(\data_in_frame[15] [3]), .I1(rx_data[3]), 
            .I2(n13754), .I3(GND_net), .O(n15144));   // verilog/coms.v(130[12] 305[6])
    defparam i11156_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11153_3_lut (.I0(\data_in_frame[15] [2]), .I1(rx_data[2]), 
            .I2(n13754), .I3(GND_net), .O(n15141));   // verilog/coms.v(130[12] 305[6])
    defparam i11153_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11174_3_lut (.I0(\neo_pixel_transmitter.t0 [31]), .I1(timer[31]), 
            .I2(n1737), .I3(GND_net), .O(n15162));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11174_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11645_2_lut_2_lut_4_lut (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[25] [2]), 
            .O(n15633));   // verilog/coms.v(130[12] 305[6])
    defparam i11645_2_lut_2_lut_4_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i11175_3_lut (.I0(\neo_pixel_transmitter.t0 [30]), .I1(timer[30]), 
            .I2(n1737), .I3(GND_net), .O(n15163));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11175_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11176_3_lut (.I0(\neo_pixel_transmitter.t0 [29]), .I1(timer[29]), 
            .I2(n1737), .I3(GND_net), .O(n15164));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11176_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11177_3_lut (.I0(\neo_pixel_transmitter.t0 [28]), .I1(timer[28]), 
            .I2(n1737), .I3(GND_net), .O(n15165));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11177_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11178_3_lut (.I0(\neo_pixel_transmitter.t0 [27]), .I1(timer[27]), 
            .I2(n1737), .I3(GND_net), .O(n15166));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11178_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11179_3_lut (.I0(\neo_pixel_transmitter.t0 [26]), .I1(timer[26]), 
            .I2(n1737), .I3(GND_net), .O(n15167));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11179_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11642_2_lut_2_lut_4_lut (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[24] [7]), 
            .O(n15630));   // verilog/coms.v(130[12] 305[6])
    defparam i11642_2_lut_2_lut_4_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i11180_3_lut (.I0(\neo_pixel_transmitter.t0 [25]), .I1(timer[25]), 
            .I2(n1737), .I3(GND_net), .O(n15168));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11180_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11641_2_lut_2_lut_4_lut (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[24] [6]), 
            .O(n15629));   // verilog/coms.v(130[12] 305[6])
    defparam i11641_2_lut_2_lut_4_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i11181_3_lut (.I0(\neo_pixel_transmitter.t0 [24]), .I1(timer[24]), 
            .I2(n1737), .I3(GND_net), .O(n15169));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11181_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11182_3_lut (.I0(\neo_pixel_transmitter.t0 [23]), .I1(timer[23]), 
            .I2(n1737), .I3(GND_net), .O(n15170));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11182_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_adj_1705 (.I0(\ID_READOUT_FSM.state [0]), .I1(\ID_READOUT_FSM.state [1]), 
            .I2(n340), .I3(n21042), .O(n24_adj_4464));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_adj_1705.LUT_INIT = 16'hffbf;
    SB_LUT4 i1_2_lut_4_lut_adj_1706 (.I0(\data_out_frame[5] [3]), .I1(\data_out_frame[5] [7]), 
            .I2(\data_out_frame[12] [3]), .I3(n11092), .O(n30097));   // verilog/coms.v(100[12:26])
    defparam i1_2_lut_4_lut_adj_1706.LUT_INIT = 16'h6996;
    SB_LUT4 i11183_3_lut (.I0(\neo_pixel_transmitter.t0 [22]), .I1(timer[22]), 
            .I2(n1737), .I3(GND_net), .O(n15171));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11183_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11184_3_lut (.I0(\neo_pixel_transmitter.t0 [21]), .I1(timer[21]), 
            .I2(n1737), .I3(GND_net), .O(n15172));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11184_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11185_3_lut (.I0(\neo_pixel_transmitter.t0 [20]), .I1(timer[20]), 
            .I2(n1737), .I3(GND_net), .O(n15173));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11185_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11186_3_lut (.I0(\neo_pixel_transmitter.t0 [19]), .I1(timer[19]), 
            .I2(n1737), .I3(GND_net), .O(n15174));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11186_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11187_3_lut (.I0(\neo_pixel_transmitter.t0 [18]), .I1(timer[18]), 
            .I2(n1737), .I3(GND_net), .O(n15175));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11187_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_adj_1707 (.I0(\data_out_frame[5] [3]), .I1(\data_out_frame[5] [7]), 
            .I2(\data_out_frame[12] [3]), .I3(n30078), .O(n11985));   // verilog/coms.v(100[12:26])
    defparam i1_2_lut_4_lut_adj_1707.LUT_INIT = 16'h6996;
    SB_LUT4 i11188_3_lut (.I0(\neo_pixel_transmitter.t0 [17]), .I1(timer[17]), 
            .I2(n1737), .I3(GND_net), .O(n15176));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11188_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11189_3_lut (.I0(\neo_pixel_transmitter.t0 [16]), .I1(timer[16]), 
            .I2(n1737), .I3(GND_net), .O(n15177));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11189_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11190_3_lut (.I0(\neo_pixel_transmitter.t0 [15]), .I1(timer[15]), 
            .I2(n1737), .I3(GND_net), .O(n15178));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11190_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11191_3_lut (.I0(\neo_pixel_transmitter.t0 [14]), .I1(timer[14]), 
            .I2(n1737), .I3(GND_net), .O(n15179));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11191_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11192_3_lut (.I0(\neo_pixel_transmitter.t0 [13]), .I1(timer[13]), 
            .I2(n1737), .I3(GND_net), .O(n15180));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11192_3_lut.LUT_INIT = 16'hcaca;
    \neopixel(CLOCK_SPEED_HZ=16000000)  nx (.\neo_pixel_transmitter.t0 ({\neo_pixel_transmitter.t0 }), 
            .GND_net(GND_net), .\neo_pixel_transmitter.done (\neo_pixel_transmitter.done ), 
            .clk16MHz(clk16MHz), .n40(n40_adj_4484), .timer({timer}), 
            .\state[0] (state[0]), .n35205(n35205), .\bit_ctr[0] (bit_ctr[0]), 
            .\bit_ctr[1] (bit_ctr[1]), .LED_c(LED_c), .\state[1] (state[1]), 
            .n31970(n31970), .\one_wire_N_380[10] (one_wire_N_380[10]), 
            .VCC_net(VCC_net), .\neopxl_color[21] (neopxl_color[21]), .\neopxl_color[20] (neopxl_color[20]), 
            .n23821(n23821), .n23826(n23826), .\one_wire_N_380[9] (one_wire_N_380[9]), 
            .\neopxl_color[10] (neopxl_color[10]), .\neopxl_color[11] (neopxl_color[11]), 
            .start(start), .\one_wire_N_380[8] (one_wire_N_380[8]), .n12(n12_adj_4489), 
            .n14733(n14733), .\neopxl_color[14] (neopxl_color[14]), .\neopxl_color[15] (neopxl_color[15]), 
            .\one_wire_N_380[3] (one_wire_N_380[3]), .\one_wire_N_380[2] (one_wire_N_380[2]), 
            .n15192(n15192), .n15191(n15191), .n15190(n15190), .n15189(n15189), 
            .n15188(n15188), .n15187(n15187), .n15186(n15186), .n15185(n15185), 
            .n15184(n15184), .n15183(n15183), .n15182(n15182), .n15181(n15181), 
            .n15180(n15180), .n15179(n15179), .n15178(n15178), .n15177(n15177), 
            .n15176(n15176), .n4(n4_adj_4485), .n15175(n15175), .n15174(n15174), 
            .n15173(n15173), .n15172(n15172), .n15171(n15171), .n15170(n15170), 
            .n15169(n15169), .n15168(n15168), .n15167(n15167), .n15166(n15166), 
            .n15165(n15165), .n15164(n15164), .n15163(n15163), .n15162(n15162), 
            .n82(n82), .n29163(n29163), .n23814(n23814), .NEOPXL_c(NEOPXL_c), 
            .n23810(n23810), .n33483(n33483), .n1737(n1737), .n7(n7_adj_4467), 
            .n40_adj_18(n40), .\neopxl_color[13] (neopxl_color[13]), .\neopxl_color[12] (neopxl_color[12]), 
            .n31895(n31895), .n33249(n33249), .n39(n39), .n37158(n37158), 
            .\neopxl_color[0] (neopxl_color[0]), .\neopxl_color[1] (neopxl_color[1]), 
            .\neopxl_color[2] (neopxl_color[2]), .\neopxl_color[3] (neopxl_color[3]), 
            .\neopxl_color[6] (neopxl_color[6]), .\neopxl_color[7] (neopxl_color[7]), 
            .\neopxl_color[4] (neopxl_color[4]), .\neopxl_color[5] (neopxl_color[5]), 
            .n32262(n32262), .\neopxl_color[22] (neopxl_color[22]), .\neopxl_color[23] (neopxl_color[23]), 
            .n29971(n29971), .\neopxl_color[9] (neopxl_color[9]), .\neopxl_color[8] (neopxl_color[8])) /* synthesis syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(51[24] 57[2])
    SB_LUT4 i30885_3_lut_4_lut (.I0(r_Clock_Count[3]), .I1(o_Rx_DV_N_3358[3]), 
            .I2(o_Rx_DV_N_3358[2]), .I3(r_Clock_Count[2]), .O(n35288));   // verilog/uart_rx.v(119[17:57])
    defparam i30885_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 LessThan_664_i6_3_lut_3_lut (.I0(r_Clock_Count[3]), .I1(o_Rx_DV_N_3358[3]), 
            .I2(o_Rx_DV_N_3358[2]), .I3(GND_net), .O(n6_adj_4500));   // verilog/uart_rx.v(119[17:57])
    defparam LessThan_664_i6_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 i11193_3_lut (.I0(\neo_pixel_transmitter.t0 [12]), .I1(timer[12]), 
            .I2(n1737), .I3(GND_net), .O(n15181));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11193_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11194_3_lut (.I0(\neo_pixel_transmitter.t0 [11]), .I1(timer[11]), 
            .I2(n1737), .I3(GND_net), .O(n15182));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11194_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11195_3_lut (.I0(\neo_pixel_transmitter.t0 [10]), .I1(timer[10]), 
            .I2(n1737), .I3(GND_net), .O(n15183));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11195_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11196_3_lut (.I0(\neo_pixel_transmitter.t0 [9]), .I1(timer[9]), 
            .I2(n1737), .I3(GND_net), .O(n15184));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11196_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11637_2_lut_2_lut_4_lut (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[24] [2]), 
            .O(n15625));   // verilog/coms.v(130[12] 305[6])
    defparam i11637_2_lut_2_lut_4_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i11197_3_lut (.I0(\neo_pixel_transmitter.t0 [8]), .I1(timer[8]), 
            .I2(n1737), .I3(GND_net), .O(n15185));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11197_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11198_3_lut (.I0(\neo_pixel_transmitter.t0 [7]), .I1(timer[7]), 
            .I2(n1737), .I3(GND_net), .O(n15186));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11198_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11636_2_lut_2_lut_4_lut (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[24] [1]), 
            .O(n15624));   // verilog/coms.v(130[12] 305[6])
    defparam i11636_2_lut_2_lut_4_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i11199_3_lut (.I0(\neo_pixel_transmitter.t0 [6]), .I1(timer[6]), 
            .I2(n1737), .I3(GND_net), .O(n15187));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11199_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11629_2_lut_2_lut_4_lut (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[23] [2]), 
            .O(n15617));   // verilog/coms.v(130[12] 305[6])
    defparam i11629_2_lut_2_lut_4_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i11200_3_lut (.I0(\neo_pixel_transmitter.t0 [5]), .I1(timer[5]), 
            .I2(n1737), .I3(GND_net), .O(n15188));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11200_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11201_3_lut (.I0(\neo_pixel_transmitter.t0 [4]), .I1(timer[4]), 
            .I2(n1737), .I3(GND_net), .O(n15189));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11201_3_lut.LUT_INIT = 16'hcaca;
    coms neopxl_color_23__I_0 (.GND_net(GND_net), .\data_out_frame[24] ({\data_out_frame[24] }), 
         .\data_out_frame[23] ({\data_out_frame[23] }), .clk16MHz(clk16MHz), 
         .reset(reset), .n15047(n15047), .VCC_net(VCC_net), .\data_in_frame[11] ({\data_in_frame[11] }), 
         .n29309(n29309), .n15041(n15041), .\FRAME_MATCHER.i[0] (\FRAME_MATCHER.i [0]), 
         .n15038(n15038), .n15035(n15035), .\data_in_frame[15] ({\data_in_frame[15] [7:2], 
         Open_0, Open_1}), .n13750(n13750), .rx_data({rx_data}), .n29311(n29311), 
         .n15029(n15029), .\data_in_frame[18] ({Open_2, Open_3, \data_in_frame[18] [5], 
         Open_4, Open_5, Open_6, Open_7, Open_8}), .n15026(n15026), 
         .n29313(n29313), .\data_in_frame[10] ({\data_in_frame[10] [7:6], 
         Open_9, Open_10, Open_11, Open_12, Open_13, Open_14}), 
         .n13702(n13702), .n198(n198), .n29315(n29315), .n13776(n13776), 
         .neopxl_color({neopxl_color}), .\data_in_frame[4] ({Open_15, \data_in_frame[4] [6], 
         Open_16, Open_17, Open_18, Open_19, Open_20, Open_21}), 
         .n8291(n8291), .n13700(n13700), .\data_in_frame[18][2] (\data_in_frame[18] [2]), 
         .\data_in_frame[5] ({\data_in_frame[5] }), .n13760(n13760), .\data_out_frame[13] ({\data_out_frame[13] }), 
         .\data_in_frame[12][7] (\data_in_frame[12] [7]), .\data_in_frame[17][7] (\data_in_frame[17] [7]), 
         .\data_in_frame[17][6] (\data_in_frame[17] [6]), .\data_in_frame[17][1] (\data_in_frame[17] [1]), 
         .n13736(n13736), .n29319(n29319), .\data_in_frame[10][3] (\data_in_frame[10] [3]), 
         .n29321(n29321), .\data_in_frame[10][2] (\data_in_frame[10] [2]), 
         .n15005(n15005), .\data_in_frame[10][1] (\data_in_frame[10] [1]), 
         .\data_out_frame[25] ({\data_out_frame[25] }), .\FRAME_MATCHER.state[3] (\FRAME_MATCHER.state [3]), 
         .n15002(n15002), .\data_in_frame[10][0] (\data_in_frame[10] [0]), 
         .\FRAME_MATCHER.i_31__N_2379 (\FRAME_MATCHER.i_31__N_2379 ), .DE_c(DE_c), 
         .\FRAME_MATCHER.i[3] (\FRAME_MATCHER.i [3]), .n21178(n21178), .n9(n9), 
         .n179(n179), .n13763(n13763), .n29975(n29975), .\data_in_frame[6] ({\data_in_frame[6] [7:3], 
         Open_22, Open_23, \data_in_frame[6] [0]}), .\data_in_frame[4][7] (\data_in_frame[4] [7]), 
         .LED_c(LED_c), .\data_in_frame[12][0] (\data_in_frame[12] [0]), 
         .tx_active(tx_active), .\data_in_frame[19][0] (\data_in_frame[19] [0]), 
         .\data_in_frame[18][1] (\data_in_frame[18] [1]), .n29361(n29361), 
         .\data_in_frame[2][0] (\data_in_frame[2] [0]), .n29357(n29357), 
         .\data_in_frame[2][1] (\data_in_frame[2] [1]), .n29353(n29353), 
         .\data_in_frame[2][2] (\data_in_frame[2] [2]), .n29349(n29349), 
         .\data_in_frame[2][3] (\data_in_frame[2] [3]), .\data_in_frame[19][7] (\data_in_frame[19] [7]), 
         .n14709(n14709), .\data_in_frame[2][5] (\data_in_frame[2] [5]), 
         .n14712(n14712), .\data_in_frame[2][6] (\data_in_frame[2] [6]), 
         .n14717(n14717), .\data_in_frame[2][7] (\data_in_frame[2] [7]), 
         .\data_in_frame[18][7] (\data_in_frame[18] [7]), .n199(n199), .n23810(n23810), 
         .n31895(n31895), .n33249(n33249), .\state[0] (state[0]), .n7(n7_adj_4467), 
         .start(start), .\neo_pixel_transmitter.done (\neo_pixel_transmitter.done ), 
         .\byte_transmit_counter[0] (byte_transmit_counter[0]), .\data_out_frame[14] ({\data_out_frame[14] }), 
         .\state[1] (state[1]), .n31970(n31970), .n29467(n29467), .\data_in_frame[4][1] (\data_in_frame[4] [1]), 
         .n14778(n14778), .\data_in_frame[4][2] (\data_in_frame[4] [2]), 
         .n14781(n14781), .\data_in_frame[4][3] (\data_in_frame[4] [3]), 
         .n14784(n14784), .\data_in_frame[4][4] (\data_in_frame[4] [4]), 
         .n14817(n14817), .\data_in_frame[4][5] (\data_in_frame[4] [5]), 
         .n14820(n14820), .n11985(n11985), .\data_out_frame[4] ({\data_out_frame[4] }), 
         .\data_out_frame[5] ({\data_out_frame[5] }), .\data_out_frame[1][1] (\data_out_frame[1] [1]), 
         .\data_out_frame[3][1] (\data_out_frame[3] [1]), .\byte_transmit_counter[1] (byte_transmit_counter[1]), 
         .\data_out_frame[12] ({\data_out_frame[12] }), .\data_in_frame[0] ({Open_24, 
         \data_in_frame[0] [6:3], Open_25, \data_in_frame[0] [1:0]}), 
         .n30078(n30078), .n30097(n30097), .n14824(n14824), .\data_in_frame[18][6] (\data_in_frame[18] [6]), 
         .n30170(n30170), .n11092(n11092), .\data_in_frame[19][1] (\data_in_frame[19] [1]), 
         .\data_in_frame[18][0] (\data_in_frame[18] [0]), .rx_data_ready(rx_data_ready), 
         .\FRAME_MATCHER.rx_data_ready_prev (\FRAME_MATCHER.rx_data_ready_prev ), 
         .\data_in_frame[6][1] (\data_in_frame[6] [1]), .\data_out_frame[26] ({\data_out_frame[26] }), 
         .\data_out_frame[27] ({\data_out_frame[27] }), .n1519(n1519), .\data_out_frame[0][2] (\data_out_frame[0] [2]), 
         .n29826(n29826), .n19958(n19958), .n31946(n31946), .\data_out_frame[0][3] (\data_out_frame[0] [3]), 
         .n29827(n29827), .n10649(n10649), .\data_out_frame[0][4] (\data_out_frame[0] [4]), 
         .n29828(n29828), .\data_out_frame[1][0] (\data_out_frame[1] [0]), 
         .n29829(n29829), .n29830(n29830), .\data_out_frame[1][3] (\data_out_frame[1] [3]), 
         .n29832(n29832), .\data_out_frame[1][5] (\data_out_frame[1] [5]), 
         .n29836(n29836), .n13747(n13747), .\data_in_frame[17][2] (\data_in_frame[17] [2]), 
         .\data_in_frame[12][2] (\data_in_frame[12] [2]), .\data_in_frame[12][3] (\data_in_frame[12] [3]), 
         .\data_out_frame[1][7] (\data_out_frame[1] [7]), .\data_out_frame[3][7] (\data_out_frame[3] [7]), 
         .n31414(n31414), .n37152(n37152), .n14739(n14739), .n14738(n14738), 
         .n14732(n14732), .n14731(n14731), .n14730(n14730), .n14729(n14729), 
         .n14728(n14728), .n14727(n14727), .n14720(n14720), .n14705(n14705), 
         .n14704(n14704), .n14703(n14703), .\data_out_frame[1][6] (\data_out_frame[1] [6]), 
         .n29837(n29837), .\data_in_frame[19][2] (\data_in_frame[19] [2]), 
         .n29825(n29825), .n29839(n29839), .\data_out_frame[3][3] (\data_out_frame[3] [3]), 
         .n29840(n29840), .\data_out_frame[3][4] (\data_out_frame[3] [4]), 
         .n29841(n29841), .\data_out_frame[3][6] (\data_out_frame[3] [6]), 
         .n29842(n29842), .n29843(n29843), .n29844(n29844), .n29845(n29845), 
         .n29846(n29846), .n29847(n29847), .n29848(n29848), .n29849(n29849), 
         .n29850(n29850), .n29851(n29851), .n29852(n29852), .n29853(n29853), 
         .n29854(n29854), .n29892(n29892), .n29855(n29855), .n29856(n29856), 
         .n29857(n29857), .n29858(n29858), .n29859(n29859), .n29860(n29860), 
         .n29861(n29861), .n29862(n29862), .n29863(n29863), .n29864(n29864), 
         .n29865(n29865), .n29866(n29866), .n29867(n29867), .n29868(n29868), 
         .n29869(n29869), .n29870(n29870), .n29871(n29871), .n29872(n29872), 
         .n29873(n29873), .n15606(n15606), .n14253(n14253), .n29874(n29874), 
         .n29875(n29875), .n29876(n29876), .n29877(n29877), .n29878(n29878), 
         .n29879(n29879), .n14246(n14246), .n14245(n14245), .n29824(n29824), 
         .n29880(n29880), .n15617(n15617), .n14242(n14242), .n29881(n29881), 
         .n29882(n29882), .n29883(n29883), .n29838(n29838), .n29884(n29884), 
         .n29835(n29835), .n14675(n14675), .n14674(n14674), .n14673(n14673), 
         .n14668(n14668), .n14651(n14651), .n15624(n15624), .n14235(n14235), 
         .n15625(n15625), .n14234(n14234), .n29885(n29885), .n29886(n29886), 
         .n29887(n29887), .n15629(n15629), .n14230(n14230), .n15630(n15630), 
         .n14229(n14229), .n29888(n29888), .n29833(n29833), .n15633(n15633), 
         .n14226(n14226), .n29889(n29889), .n29834(n29834), .n29890(n29890), 
         .n29831(n29831), .n29891(n29891), .n29912(n29912), .n29910(n29910), 
         .n14218(n14218), .n29913(n29913), .n29914(n29914), .n29915(n29915), 
         .n29916(n29916), .n29917(n29917), .n29918(n29918), .n29911(n29911), 
         .n14210(n14210), .n29919(n29919), .n29920(n29920), .n29921(n29921), 
         .n29909(n29909), .n29922(n29922), .n15435(n15435), .n14633(n14633), 
         .n15050(n15050), .n15053(n15053), .\data_in_frame[12][1] (\data_in_frame[12] [1]), 
         .n15056(n15056), .n15059(n15059), .n15068(n15068), .\data_in_frame[12][6] (\data_in_frame[12] [6]), 
         .n15071(n15071), .n29433(n29433), .n15322(n15322), .\data_in_frame[19][6] (\data_in_frame[19] [6]), 
         .n14636(n14636), .\data_in_frame[0][2] (\data_in_frame[0] [2]), 
         .n29435(n29435), .\data_in_frame[19][3] (\data_in_frame[19] [3]), 
         .n29437(n29437), .n29439(n29439), .n29441(n29441), .n15298(n15298), 
         .n15293(n15293), .n15290(n15290), .n15286(n15286), .n29369(n29369), 
         .\data_in_frame[18][3] (\data_in_frame[18] [3]), .n29375(n29375), 
         .n29377(n29377), .n29379(n29379), .n15271(n15271), .n15268(n15268), 
         .n15262(n15262), .\data_in_frame[17][5] (\data_in_frame[17] [5]), 
         .n15259(n15259), .\data_in_frame[17][4] (\data_in_frame[17] [4]), 
         .n15256(n15256), .\data_in_frame[17][3] (\data_in_frame[17] [3]), 
         .n15253(n15253), .n15250(n15250), .n15235(n15235), .n15217(n15217), 
         .n15214(n15214), .n15211(n15211), .n15199(n15199), .n15141(n15141), 
         .n15144(n15144), .n15147(n15147), .n14643(n14643), .n14652(n14652), 
         .n14655(n14655), .n14642(n14642), .n14632(n14632), .ID({ID}), 
         .n14625(n14625), .n33483(n33483), .n35205(n35205), .n40(n40), 
         .n12(n12_adj_4489), .\one_wire_N_380[10] (one_wire_N_380[10]), 
         .\one_wire_N_380[8] (one_wire_N_380[8]), .\one_wire_N_380[9] (one_wire_N_380[9]), 
         .n29971(n29971), .n82(n82), .n37146(n37146), .n32262(n32262), 
         .n23814(n23814), .n40_adj_1(n40_adj_4484), .n39(n39), .n13754(n13754), 
         .n29163(n29163), .\one_wire_N_380[3] (one_wire_N_380[3]), .n4(n4_adj_4485), 
         .n23821(n23821), .\one_wire_N_380[2] (one_wire_N_380[2]), .n23826(n23826), 
         .n1(n1), .tx_o(tx_o), .r_SM_Main({r_SM_Main_adj_4540}), .r_Clock_Count({r_Clock_Count_adj_4541}), 
         .n37166(n37166), .\r_SM_Main_2__N_3406[1] (r_SM_Main_2__N_3406[1]), 
         .\r_Bit_Index[0] (r_Bit_Index_adj_4542[0]), .n31646(n31646), .n32465(n32465), 
         .n27(n27), .n13157(n13157), .n30575(n30575), .n14661(n14661), 
         .n31238(n31238), .n6(n6_adj_4491), .n15330(n15330), .tx_enable(tx_enable), 
         .\o_Rx_DV_N_3358[24] (o_Rx_DV_N_3358[24]), .n32559(n32559), .baudrate({baudrate}), 
         .n10933(n10933), .n29(n29), .n23(n23), .n32393(n32393), .r_SM_Main_adj_16({r_SM_Main}), 
         .n6_adj_5(n6_adj_4470), .n32017(n32017), .\o_Rx_DV_N_3358[8] (o_Rx_DV_N_3358[8]), 
         .\o_Rx_DV_N_3358[12] (o_Rx_DV_N_3358[12]), .n2833(n2833), .n29929(n29929), 
         .n13044(n13044), .n4_adj_6(n4_adj_4466), .r_Rx_Data(r_Rx_Data), 
         .RX_N_2(RX_N_2), .r_Clock_Count_adj_17({r_Clock_Count}), .n32391(n32391), 
         .n14947(n14947), .n14945(n14945), .n14944(n14944), .n14943(n14943), 
         .\r_SM_Main_2__N_3316[1] (r_SM_Main_2__N_3316[1]), .\o_Rx_DV_N_3358[7] (o_Rx_DV_N_3358[7]), 
         .\o_Rx_DV_N_3358[6] (o_Rx_DV_N_3358[6]), .\o_Rx_DV_N_3358[5] (o_Rx_DV_N_3358[5]), 
         .\o_Rx_DV_N_3358[4] (o_Rx_DV_N_3358[4]), .\o_Rx_DV_N_3358[3] (o_Rx_DV_N_3358[3]), 
         .\o_Rx_DV_N_3358[2] (o_Rx_DV_N_3358[2]), .\o_Rx_DV_N_3358[1] (o_Rx_DV_N_3358[1]), 
         .\o_Rx_DV_N_3358[0] (o_Rx_DV_N_3358[0]), .\r_Bit_Index[0]_adj_15 (r_Bit_Index[0]), 
         .n31572(n31572), .n32477(n32477), .n32769(n32769), .n32771(n32771), 
         .n32787(n32787), .n32825(n32825), .n13161(n13161), .n30722(n30722), 
         .n15418(n15418), .n27581(n27581), .n15369(n15369), .n15138(n15138), 
         .n15134(n15134), .n15133(n15133), .n32807(n32807), .n32753(n32753), 
         .n32735(n32735), .n32789(n32789)) /* synthesis syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(90[22] 115[4])
    SB_LUT4 i11202_3_lut (.I0(\neo_pixel_transmitter.t0 [3]), .I1(timer[3]), 
            .I2(n1737), .I3(GND_net), .O(n15190));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11202_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11203_3_lut (.I0(\neo_pixel_transmitter.t0 [2]), .I1(timer[2]), 
            .I2(n1737), .I3(GND_net), .O(n15191));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11203_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11204_3_lut (.I0(\neo_pixel_transmitter.t0 [1]), .I1(timer[1]), 
            .I2(n1737), .I3(GND_net), .O(n15192));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11204_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11618_2_lut_2_lut_4_lut (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[13] [7]), 
            .O(n15606));   // verilog/coms.v(130[12] 305[6])
    defparam i11618_2_lut_2_lut_4_lut.LUT_INIT = 16'h5555;
    
endmodule
//
// Verilog Description of module EEPROM
//

module EEPROM (GND_net, clk16MHz, enable_slow_N_3855, n3177, \state[2] , 
            \state[1] , \state[0] , data_ready_N_3670, n32019, read, 
            n15, n14859, baudrate, n14857, n14853, n14852, n14844, 
            n14842, n14841, n14830, ID, n14650, rw, n29475, data_ready, 
            n15421, VCC_net, \state[0]_adj_20 , n29956, data, n13105, 
            n31641, scl_enable, n3876, \state_7__N_3768[3] , \saved_addr[0] , 
            n4, n4_adj_21, n10919, n10928, n21206, n6, n21147, 
            \state_7__N_3752[0] , n14956, n14955, n14954, n14952, 
            n14951, n14950, n14949, n10, n8, n15304, sda_enable, 
            n14623, scl, sda_out) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;
    input GND_net;
    input clk16MHz;
    output enable_slow_N_3855;
    output [0:0]n3177;
    output \state[2] ;
    output \state[1] ;
    output \state[0] ;
    output data_ready_N_3670;
    output n32019;
    input read;
    output n15;
    input n14859;
    output [31:0]baudrate;
    input n14857;
    input n14853;
    input n14852;
    input n14844;
    input n14842;
    input n14841;
    input n14830;
    output [7:0]ID;
    input n14650;
    output rw;
    input n29475;
    output data_ready;
    input n15421;
    input VCC_net;
    output \state[0]_adj_20 ;
    output n29956;
    output [7:0]data;
    output n13105;
    output n31641;
    output scl_enable;
    output n3876;
    input \state_7__N_3768[3] ;
    output \saved_addr[0] ;
    output n4;
    output n4_adj_21;
    output n10919;
    output n10928;
    output n21206;
    output n6;
    output n21147;
    output \state_7__N_3752[0] ;
    input n14956;
    input n14955;
    input n14954;
    input n14952;
    input n14951;
    input n14950;
    input n14949;
    output n10;
    input n8;
    input n15304;
    output sda_enable;
    input n14623;
    output scl;
    output sda_out;
    
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(33[6:14])
    
    wire n3987;
    wire [15:0]delay_counter;   // verilog/eeprom.v(28[12:25])
    wire [15:0]n2912;
    
    wire n25713, n24328, n25714, n3986, n25712;
    wire [15:0]delay_counter_15__N_3598;
    
    wire n25711, n3984, n25710, n25709, n25708, n25707, n13020, 
        n24325, n24344, ready_prev, enable, n95, n31839, n4_c, 
        n5, n4_adj_4453;
    wire [7:0]byte_counter;   // verilog/eeprom.v(30[11:23])
    
    wire n4_adj_4454, n3988, n3989, n3990;
    wire [7:0]n37;
    
    wire n13111, n14320;
    wire [7:0]state_7__N_3512;
    wire [7:0]n3082;
    
    wire n31679, n10833;
    wire [7:0]state;   // verilog/i2c_controller.v(33[12:17])
    
    wire n7, n14770, n14769, n14768, n14767, n14766, n14765, n14764, 
        n14763, n14762, n14746, n14745, n14744, n14741, n14740, 
        n26103, n15434, n15433, n14647, n15432, n15431, n26102, 
        n15424, n15411, n15392, n15364, n26101, n26100, n15317, 
        n15296, n26099, n15210, n26098, n26097, n15198, n15161, 
        n15157, n15156, n15154, n15153, n29926, n5_adj_4458, n25721, 
        n25720, n25719, n25718, n25717, n25716, n25715, n29952, 
        n24358, n30577, n24329, n29955, n8_c, n18, n8_adj_4459, 
        n7_adj_4460, n28, n26, n27, n25;
    
    SB_LUT4 add_678_9_lut (.I0(n24328), .I1(delay_counter[7]), .I2(n2912[7]), 
            .I3(n25713), .O(n3987)) /* synthesis syn_instantiated=1 */ ;
    defparam add_678_9_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_678_9 (.CI(n25713), .I0(delay_counter[7]), .I1(n2912[7]), 
            .CO(n25714));
    SB_LUT4 add_678_8_lut (.I0(n24328), .I1(delay_counter[6]), .I2(n2912[7]), 
            .I3(n25712), .O(n3986)) /* synthesis syn_instantiated=1 */ ;
    defparam add_678_8_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_678_8 (.CI(n25712), .I0(delay_counter[6]), .I1(n2912[7]), 
            .CO(n25713));
    SB_LUT4 add_678_7_lut (.I0(GND_net), .I1(delay_counter[5]), .I2(n2912[7]), 
            .I3(n25711), .O(delay_counter_15__N_3598[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_678_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_678_7 (.CI(n25711), .I0(delay_counter[5]), .I1(n2912[7]), 
            .CO(n25712));
    SB_LUT4 add_678_6_lut (.I0(n24328), .I1(delay_counter[4]), .I2(n2912[7]), 
            .I3(n25710), .O(n3984)) /* synthesis syn_instantiated=1 */ ;
    defparam add_678_6_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_678_6 (.CI(n25710), .I0(delay_counter[4]), .I1(n2912[7]), 
            .CO(n25711));
    SB_LUT4 add_678_5_lut (.I0(GND_net), .I1(delay_counter[3]), .I2(n2912[7]), 
            .I3(n25709), .O(delay_counter_15__N_3598[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_678_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_678_5 (.CI(n25709), .I0(delay_counter[3]), .I1(n2912[7]), 
            .CO(n25710));
    SB_LUT4 add_678_4_lut (.I0(GND_net), .I1(delay_counter[2]), .I2(n2912[7]), 
            .I3(n25708), .O(delay_counter_15__N_3598[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_678_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_678_4 (.CI(n25708), .I0(delay_counter[2]), .I1(n2912[7]), 
            .CO(n25709));
    SB_LUT4 add_678_3_lut (.I0(GND_net), .I1(delay_counter[1]), .I2(n2912[7]), 
            .I3(n25707), .O(delay_counter_15__N_3598[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_678_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_678_3 (.CI(n25707), .I0(delay_counter[1]), .I1(n2912[7]), 
            .CO(n25708));
    SB_LUT4 add_678_2_lut (.I0(GND_net), .I1(delay_counter[0]), .I2(n2912[7]), 
            .I3(GND_net), .O(delay_counter_15__N_3598[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_678_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_678_2 (.CI(GND_net), .I0(delay_counter[0]), .I1(n2912[7]), 
            .CO(n25707));
    SB_DFFESR delay_counter_i0_i3 (.Q(delay_counter[3]), .C(clk16MHz), .E(n13020), 
            .D(delay_counter_15__N_3598[3]), .R(n24325));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESS delay_counter_i0_i4 (.Q(delay_counter[4]), .C(clk16MHz), .E(n13020), 
            .D(n3984), .S(n24344));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF ready_prev_59 (.Q(ready_prev), .C(clk16MHz), .D(enable_slow_N_3855));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFSR enable_58 (.Q(enable), .C(clk16MHz), .D(n3177[0]), .R(\state[2] ));   // verilog/eeprom.v(35[8] 83[4])
    SB_LUT4 i1_4_lut (.I0(\state[1] ), .I1(n95), .I2(n31839), .I3(\state[0] ), 
            .O(n4_c));
    defparam i1_4_lut.LUT_INIT = 16'hdd5f;
    SB_LUT4 i2_4_lut (.I0(n5), .I1(n4_adj_4453), .I2(\state[1] ), .I3(data_ready_N_3670), 
            .O(n32019));
    defparam i2_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 equal_107_i4_2_lut (.I0(byte_counter[1]), .I1(byte_counter[2]), 
            .I2(GND_net), .I3(GND_net), .O(n4_adj_4454));   // verilog/eeprom.v(66[9:28])
    defparam equal_107_i4_2_lut.LUT_INIT = 16'hdddd;
    SB_DFFESR delay_counter_i0_i5 (.Q(delay_counter[5]), .C(clk16MHz), .E(n13020), 
            .D(delay_counter_15__N_3598[5]), .R(n24325));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESS delay_counter_i0_i6 (.Q(delay_counter[6]), .C(clk16MHz), .E(n13020), 
            .D(n3986), .S(n24344));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESS delay_counter_i0_i7 (.Q(delay_counter[7]), .C(clk16MHz), .E(n13020), 
            .D(n3987), .S(n24344));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESS delay_counter_i0_i8 (.Q(delay_counter[8]), .C(clk16MHz), .E(n13020), 
            .D(n3988), .S(n24344));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESS delay_counter_i0_i9 (.Q(delay_counter[9]), .C(clk16MHz), .E(n13020), 
            .D(n3989), .S(n24344));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESS delay_counter_i0_i10 (.Q(delay_counter[10]), .C(clk16MHz), 
            .E(n13020), .D(n3990), .S(n24325));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESR delay_counter_i0_i11 (.Q(delay_counter[11]), .C(clk16MHz), 
            .E(n13020), .D(delay_counter_15__N_3598[11]), .R(n24325));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESR delay_counter_i0_i12 (.Q(delay_counter[12]), .C(clk16MHz), 
            .E(n13020), .D(delay_counter_15__N_3598[12]), .R(n24325));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESR delay_counter_i0_i13 (.Q(delay_counter[13]), .C(clk16MHz), 
            .E(n13020), .D(delay_counter_15__N_3598[13]), .R(n24344));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESR delay_counter_i0_i14 (.Q(delay_counter[14]), .C(clk16MHz), 
            .E(n13020), .D(delay_counter_15__N_3598[14]), .R(n24325));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESR delay_counter_i0_i15 (.Q(delay_counter[15]), .C(clk16MHz), 
            .E(n13020), .D(delay_counter_15__N_3598[15]), .R(n24344));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESR byte_counter_1114__i0 (.Q(byte_counter[0]), .C(clk16MHz), 
            .E(n13111), .D(n37[0]), .R(n14320));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1114__i1 (.Q(byte_counter[1]), .C(clk16MHz), 
            .E(n13111), .D(n37[1]), .R(n14320));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1114__i2 (.Q(byte_counter[2]), .C(clk16MHz), 
            .E(n13111), .D(n37[2]), .R(n14320));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1114__i3 (.Q(byte_counter[3]), .C(clk16MHz), 
            .E(n13111), .D(n37[3]), .R(n14320));   // verilog/eeprom.v(68[25:39])
    SB_LUT4 i10370_4_lut (.I0(n13111), .I1(\state[0] ), .I2(\state[2] ), 
            .I3(\state[1] ), .O(n14320));   // verilog/eeprom.v(68[25:39])
    defparam i10370_4_lut.LUT_INIT = 16'ha2aa;
    SB_LUT4 i1_4_lut_adj_1537 (.I0(\state[2] ), .I1(read), .I2(\state[1] ), 
            .I3(\state[0] ), .O(n13111));
    defparam i1_4_lut_adj_1537.LUT_INIT = 16'h5004;
    SB_DFFESR byte_counter_1114__i4 (.Q(byte_counter[4]), .C(clk16MHz), 
            .E(n13111), .D(n37[4]), .R(n14320));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1114__i5 (.Q(byte_counter[5]), .C(clk16MHz), 
            .E(n13111), .D(n37[5]), .R(n14320));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1114__i6 (.Q(byte_counter[6]), .C(clk16MHz), 
            .E(n13111), .D(n37[6]), .R(n14320));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1114__i7 (.Q(byte_counter[7]), .C(clk16MHz), 
            .E(n13111), .D(n37[7]), .R(n14320));   // verilog/eeprom.v(68[25:39])
    SB_LUT4 i20433_4_lut_4_lut_4_lut (.I0(\state[2] ), .I1(\state[1] ), 
            .I2(\state[0] ), .I3(n15), .O(n24325));
    defparam i20433_4_lut_4_lut_4_lut.LUT_INIT = 16'h1012;
    SB_LUT4 i1_3_lut_4_lut_4_lut (.I0(\state[2] ), .I1(\state[1] ), .I2(\state[0] ), 
            .I3(n15), .O(state_7__N_3512[1]));
    defparam i1_3_lut_4_lut_4_lut.LUT_INIT = 16'h9c9e;
    SB_DFFSR state_i2 (.Q(\state[2] ), .C(clk16MHz), .D(n3082[2]), .R(data_ready_N_3670));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFE state_i1 (.Q(\state[1] ), .C(clk16MHz), .E(n31679), .D(state_7__N_3512[1]));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i33 (.Q(baudrate[24]), .C(clk16MHz), .D(n14859));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i34 (.Q(baudrate[25]), .C(clk16MHz), .D(n14857));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i35 (.Q(baudrate[26]), .C(clk16MHz), .D(n14853));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i36 (.Q(baudrate[27]), .C(clk16MHz), .D(n14852));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i37 (.Q(baudrate[28]), .C(clk16MHz), .D(n14844));   // verilog/eeprom.v(35[8] 83[4])
    SB_LUT4 i1_4_lut_3_lut_4_lut (.I0(\state[2] ), .I1(\state[0] ), .I2(\state[1] ), 
            .I3(n4_c), .O(n4_adj_4453));
    defparam i1_4_lut_3_lut_4_lut.LUT_INIT = 16'h5702;
    SB_DFF bytes_0___i38 (.Q(baudrate[29]), .C(clk16MHz), .D(n14842));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i39 (.Q(baudrate[30]), .C(clk16MHz), .D(n14841));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i40 (.Q(baudrate[31]), .C(clk16MHz), .D(n14830));   // verilog/eeprom.v(35[8] 83[4])
    SB_LUT4 mux_770_Mux_0_i3_4_lut (.I0(\state[0] ), .I1(n10833), .I2(\state[1] ), 
            .I3(enable_slow_N_3855), .O(n3177[0]));   // verilog/eeprom.v(38[3] 82[10])
    defparam mux_770_Mux_0_i3_4_lut.LUT_INIT = 16'h1a0a;
    SB_LUT4 i2_2_lut (.I0(state[1]), .I1(state[2]), .I2(GND_net), .I3(GND_net), 
            .O(n7));   // verilog/eeprom.v(55[12:28])
    defparam i2_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_1538 (.I0(\state[1] ), .I1(\state[0] ), .I2(n15), 
            .I3(\state[2] ), .O(n24344));
    defparam i1_4_lut_adj_1538.LUT_INIT = 16'h0144;
    SB_LUT4 i1_4_lut_adj_1539 (.I0(\state[0] ), .I1(n24325), .I2(\state[2] ), 
            .I3(\state[1] ), .O(n13020));   // verilog/eeprom.v(27[11:16])
    defparam i1_4_lut_adj_1539.LUT_INIT = 16'hcdcc;
    SB_DFF bytes_0___i3 (.Q(ID[2]), .C(clk16MHz), .D(n14770));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i4 (.Q(ID[3]), .C(clk16MHz), .D(n14769));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i5 (.Q(ID[4]), .C(clk16MHz), .D(n14768));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i6 (.Q(ID[5]), .C(clk16MHz), .D(n14767));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i7 (.Q(ID[6]), .C(clk16MHz), .D(n14766));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i8 (.Q(ID[7]), .C(clk16MHz), .D(n14765));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i9 (.Q(baudrate[0]), .C(clk16MHz), .D(n14764));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i10 (.Q(baudrate[1]), .C(clk16MHz), .D(n14763));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i11 (.Q(baudrate[2]), .C(clk16MHz), .D(n14762));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i12 (.Q(baudrate[3]), .C(clk16MHz), .D(n14746));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i13 (.Q(baudrate[4]), .C(clk16MHz), .D(n14745));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i14 (.Q(baudrate[5]), .C(clk16MHz), .D(n14744));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i15 (.Q(baudrate[6]), .C(clk16MHz), .D(n14741));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i16 (.Q(baudrate[7]), .C(clk16MHz), .D(n14740));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF rw_64 (.Q(rw), .C(clk16MHz), .D(n14650));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF data_ready_61 (.Q(data_ready), .C(clk16MHz), .D(n29475));   // verilog/eeprom.v(35[8] 83[4])
    SB_LUT4 byte_counter_1114_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(byte_counter[7]), 
            .I3(n26103), .O(n37[7])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1114_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_DFF bytes_0___i17 (.Q(baudrate[8]), .C(clk16MHz), .D(n15434));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i18 (.Q(baudrate[9]), .C(clk16MHz), .D(n15433));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i1 (.Q(ID[0]), .C(clk16MHz), .D(n14647));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i19 (.Q(baudrate[10]), .C(clk16MHz), .D(n15432));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i20 (.Q(baudrate[11]), .C(clk16MHz), .D(n15431));   // verilog/eeprom.v(35[8] 83[4])
    SB_LUT4 byte_counter_1114_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(byte_counter[6]), 
            .I3(n26102), .O(n37[6])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1114_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_DFF bytes_0___i21 (.Q(baudrate[12]), .C(clk16MHz), .D(n15424));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFE state_i0 (.Q(\state[0] ), .C(clk16MHz), .E(VCC_net), .D(n15421));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i22 (.Q(baudrate[13]), .C(clk16MHz), .D(n15411));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i23 (.Q(baudrate[14]), .C(clk16MHz), .D(n15392));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i24 (.Q(baudrate[15]), .C(clk16MHz), .D(n15364));   // verilog/eeprom.v(35[8] 83[4])
    SB_CARRY byte_counter_1114_add_4_8 (.CI(n26102), .I0(GND_net), .I1(byte_counter[6]), 
            .CO(n26103));
    SB_LUT4 byte_counter_1114_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(byte_counter[5]), 
            .I3(n26101), .O(n37[5])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1114_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1114_add_4_7 (.CI(n26101), .I0(GND_net), .I1(byte_counter[5]), 
            .CO(n26102));
    SB_LUT4 byte_counter_1114_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(byte_counter[4]), 
            .I3(n26100), .O(n37[4])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1114_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1114_add_4_6 (.CI(n26100), .I0(GND_net), .I1(byte_counter[4]), 
            .CO(n26101));
    SB_DFF bytes_0___i25 (.Q(baudrate[16]), .C(clk16MHz), .D(n15317));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i26 (.Q(baudrate[17]), .C(clk16MHz), .D(n15296));   // verilog/eeprom.v(35[8] 83[4])
    SB_LUT4 byte_counter_1114_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(byte_counter[3]), 
            .I3(n26099), .O(n37[3])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1114_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_DFF bytes_0___i27 (.Q(baudrate[18]), .C(clk16MHz), .D(n15210));   // verilog/eeprom.v(35[8] 83[4])
    SB_CARRY byte_counter_1114_add_4_5 (.CI(n26099), .I0(GND_net), .I1(byte_counter[3]), 
            .CO(n26100));
    SB_LUT4 byte_counter_1114_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(byte_counter[2]), 
            .I3(n26098), .O(n37[2])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1114_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1114_add_4_4 (.CI(n26098), .I0(GND_net), .I1(byte_counter[2]), 
            .CO(n26099));
    SB_LUT4 byte_counter_1114_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(byte_counter[1]), 
            .I3(n26097), .O(n37[1])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1114_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1114_add_4_3 (.CI(n26097), .I0(GND_net), .I1(byte_counter[1]), 
            .CO(n26098));
    SB_LUT4 byte_counter_1114_add_4_2_lut (.I0(GND_net), .I1(n95), .I2(byte_counter[0]), 
            .I3(GND_net), .O(n37[0])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1114_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1114_add_4_2 (.CI(GND_net), .I0(n95), .I1(byte_counter[0]), 
            .CO(n26097));
    SB_DFF bytes_0___i28 (.Q(baudrate[19]), .C(clk16MHz), .D(n15198));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i29 (.Q(baudrate[20]), .C(clk16MHz), .D(n15161));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i30 (.Q(baudrate[21]), .C(clk16MHz), .D(n15157));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i31 (.Q(baudrate[22]), .C(clk16MHz), .D(n15156));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i2 (.Q(ID[1]), .C(clk16MHz), .D(n15154));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i32 (.Q(baudrate[23]), .C(clk16MHz), .D(n15153));   // verilog/eeprom.v(35[8] 83[4])
    SB_LUT4 i1_3_lut_4_lut (.I0(enable_slow_N_3855), .I1(ready_prev), .I2(\state[2] ), 
            .I3(n29926), .O(n3082[2]));   // verilog/eeprom.v(27[11:16])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hf2f0;
    SB_LUT4 i32496_2_lut_3_lut (.I0(\state[2] ), .I1(\state[0] ), .I2(\state[1] ), 
            .I3(GND_net), .O(data_ready_N_3670));   // verilog/eeprom.v(71[5:15])
    defparam i32496_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_2_lut_3_lut (.I0(state[1]), .I1(state[2]), .I2(\state[0]_adj_20 ), 
            .I3(GND_net), .O(n5_adj_4458));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_DFFESR delay_counter_i0_i1 (.Q(delay_counter[1]), .C(clk16MHz), .E(n13020), 
            .D(delay_counter_15__N_3598[1]), .R(n24325));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESR delay_counter_i0_i2 (.Q(delay_counter[2]), .C(clk16MHz), .E(n13020), 
            .D(delay_counter_15__N_3598[2]), .R(n24325));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESR delay_counter_i0_i0 (.Q(delay_counter[0]), .C(clk16MHz), .E(n13020), 
            .D(delay_counter_15__N_3598[0]), .R(n24325));   // verilog/eeprom.v(35[8] 83[4])
    SB_LUT4 add_678_17_lut (.I0(GND_net), .I1(delay_counter[15]), .I2(n2912[7]), 
            .I3(n25721), .O(delay_counter_15__N_3598[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_678_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_678_16_lut (.I0(GND_net), .I1(delay_counter[14]), .I2(n2912[7]), 
            .I3(n25720), .O(delay_counter_15__N_3598[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_678_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_678_16 (.CI(n25720), .I0(delay_counter[14]), .I1(n2912[7]), 
            .CO(n25721));
    SB_LUT4 add_678_15_lut (.I0(GND_net), .I1(delay_counter[13]), .I2(n2912[7]), 
            .I3(n25719), .O(delay_counter_15__N_3598[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_678_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_678_15 (.CI(n25719), .I0(delay_counter[13]), .I1(n2912[7]), 
            .CO(n25720));
    SB_LUT4 add_678_14_lut (.I0(GND_net), .I1(delay_counter[12]), .I2(n2912[7]), 
            .I3(n25718), .O(delay_counter_15__N_3598[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_678_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_678_14 (.CI(n25718), .I0(delay_counter[12]), .I1(n2912[7]), 
            .CO(n25719));
    SB_LUT4 add_678_13_lut (.I0(GND_net), .I1(delay_counter[11]), .I2(n2912[7]), 
            .I3(n25717), .O(delay_counter_15__N_3598[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_678_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_678_13 (.CI(n25717), .I0(delay_counter[11]), .I1(n2912[7]), 
            .CO(n25718));
    SB_LUT4 add_678_12_lut (.I0(n24328), .I1(delay_counter[10]), .I2(n2912[7]), 
            .I3(n25716), .O(n3990)) /* synthesis syn_instantiated=1 */ ;
    defparam add_678_12_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i2_3_lut_4_lut (.I0(state[1]), .I1(\state[0]_adj_20 ), .I2(state[2]), 
            .I3(state[3]), .O(n29956));
    defparam i2_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY add_678_12 (.CI(n25716), .I0(delay_counter[10]), .I1(n2912[7]), 
            .CO(n25717));
    SB_LUT4 add_678_11_lut (.I0(n24328), .I1(delay_counter[9]), .I2(n2912[7]), 
            .I3(n25715), .O(n3989)) /* synthesis syn_instantiated=1 */ ;
    defparam add_678_11_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_678_11 (.CI(n25715), .I0(delay_counter[9]), .I1(n2912[7]), 
            .CO(n25716));
    SB_LUT4 add_678_10_lut (.I0(n24328), .I1(delay_counter[8]), .I2(n2912[7]), 
            .I3(n25714), .O(n3988)) /* synthesis syn_instantiated=1 */ ;
    defparam add_678_10_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i11376_3_lut_4_lut (.I0(n4_adj_4454), .I1(n29952), .I2(data[7]), 
            .I3(baudrate[15]), .O(n15364));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11376_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11404_3_lut_4_lut (.I0(n4_adj_4454), .I1(n29952), .I2(data[6]), 
            .I3(baudrate[14]), .O(n15392));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11404_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_CARRY add_678_10 (.CI(n25714), .I0(delay_counter[8]), .I1(n2912[7]), 
            .CO(n25715));
    SB_LUT4 i11423_3_lut_4_lut (.I0(n4_adj_4454), .I1(n29952), .I2(data[5]), 
            .I3(baudrate[13]), .O(n15411));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11423_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11436_3_lut_4_lut (.I0(n4_adj_4454), .I1(n29952), .I2(data[4]), 
            .I3(baudrate[12]), .O(n15424));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11436_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i26224_2_lut (.I0(n24358), .I1(byte_counter[0]), .I2(GND_net), 
            .I3(GND_net), .O(n30577));
    defparam i26224_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut (.I0(byte_counter[0]), .I1(n24358), .I2(GND_net), 
            .I3(GND_net), .O(n29952));   // verilog/eeprom.v(35[8] 83[4])
    defparam i1_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_2_lut_adj_1540 (.I0(byte_counter[2]), .I1(byte_counter[1]), 
            .I2(GND_net), .I3(GND_net), .O(n24329));   // verilog/eeprom.v(68[25:39])
    defparam i1_2_lut_adj_1540.LUT_INIT = 16'heeee;
    SB_LUT4 i11443_3_lut_4_lut (.I0(n4_adj_4454), .I1(n29952), .I2(data[3]), 
            .I3(baudrate[11]), .O(n15431));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11443_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11444_3_lut_4_lut (.I0(n4_adj_4454), .I1(n29952), .I2(data[2]), 
            .I3(baudrate[10]), .O(n15432));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11444_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11445_3_lut_4_lut (.I0(n4_adj_4454), .I1(n29952), .I2(data[1]), 
            .I3(baudrate[9]), .O(n15433));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11445_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11446_3_lut_4_lut (.I0(n4_adj_4454), .I1(n29952), .I2(data[0]), 
            .I3(baudrate[8]), .O(n15434));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11446_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_1541 (.I0(\state[0]_adj_20 ), .I1(state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n29955));
    defparam i1_2_lut_adj_1541.LUT_INIT = 16'heeee;
    SB_LUT4 i3_4_lut (.I0(n29956), .I1(n29926), .I2(\state[2] ), .I3(ready_prev), 
            .O(n24358));
    defparam i3_4_lut.LUT_INIT = 16'h0004;
    SB_LUT4 i3_4_lut_adj_1542 (.I0(byte_counter[0]), .I1(n24358), .I2(byte_counter[2]), 
            .I3(byte_counter[1]), .O(n13105));
    defparam i3_4_lut_adj_1542.LUT_INIT = 16'h0040;
    SB_LUT4 i2_2_lut_3_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(\state[2] ), 
            .I3(GND_net), .O(n31641));   // verilog/eeprom.v(38[3] 82[10])
    defparam i2_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_adj_1543 (.I0(\state[0] ), .I1(read), .I2(GND_net), 
            .I3(GND_net), .O(n5));
    defparam i1_2_lut_adj_1543.LUT_INIT = 16'heeee;
    SB_LUT4 i3_3_lut (.I0(n10833), .I1(\state[1] ), .I2(state[3]), .I3(GND_net), 
            .O(n8_c));
    defparam i3_3_lut.LUT_INIT = 16'h0404;
    SB_LUT4 i25_4_lut (.I0(n5_adj_4458), .I1(n95), .I2(\state[0] ), .I3(n8_c), 
            .O(n18));
    defparam i25_4_lut.LUT_INIT = 16'hc5c0;
    SB_LUT4 i2_4_lut_adj_1544 (.I0(n18), .I1(\state[2] ), .I2(\state[1] ), 
            .I3(n5), .O(n31679));
    defparam i2_4_lut_adj_1544.LUT_INIT = 16'hefee;
    SB_LUT4 i1_2_lut_adj_1545 (.I0(\state[0] ), .I1(\state[1] ), .I2(GND_net), 
            .I3(GND_net), .O(n29926));   // verilog/eeprom.v(27[11:16])
    defparam i1_2_lut_adj_1545.LUT_INIT = 16'h8888;
    SB_LUT4 i11166_3_lut_4_lut (.I0(n24329), .I1(n29952), .I2(data[1]), 
            .I3(ID[1]), .O(n15154));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11166_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i10659_3_lut_4_lut (.I0(n24329), .I1(n29952), .I2(data[0]), 
            .I3(ID[0]), .O(n14647));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10659_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i15416_3_lut_4_lut (.I0(n24329), .I1(n29952), .I2(data[7]), 
            .I3(ID[7]), .O(n14765));   // verilog/eeprom.v(35[8] 83[4])
    defparam i15416_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i10778_3_lut_4_lut (.I0(n24329), .I1(n29952), .I2(data[6]), 
            .I3(ID[6]), .O(n14766));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10778_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i10779_3_lut_4_lut (.I0(n24329), .I1(n29952), .I2(data[5]), 
            .I3(ID[5]), .O(n14767));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10779_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i10780_3_lut_4_lut (.I0(n24329), .I1(n29952), .I2(data[4]), 
            .I3(ID[4]), .O(n14768));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10780_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i10781_3_lut_4_lut (.I0(n24329), .I1(n29952), .I2(data[3]), 
            .I3(ID[3]), .O(n14769));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10781_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i10782_3_lut_4_lut (.I0(n24329), .I1(n29952), .I2(data[2]), 
            .I3(ID[2]), .O(n14770));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10782_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i10752_3_lut_4_lut (.I0(n24329), .I1(n30577), .I2(data[7]), 
            .I3(baudrate[7]), .O(n14740));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10752_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i10753_3_lut_4_lut (.I0(n24329), .I1(n30577), .I2(data[6]), 
            .I3(baudrate[6]), .O(n14741));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10753_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i10756_3_lut_4_lut (.I0(n24329), .I1(n30577), .I2(data[5]), 
            .I3(baudrate[5]), .O(n14744));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10756_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i10757_3_lut_4_lut (.I0(n24329), .I1(n30577), .I2(data[4]), 
            .I3(baudrate[4]), .O(n14745));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10757_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i10758_3_lut_4_lut (.I0(n24329), .I1(n30577), .I2(data[3]), 
            .I3(baudrate[3]), .O(n14746));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10758_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i10774_3_lut_4_lut (.I0(n24329), .I1(n30577), .I2(data[2]), 
            .I3(baudrate[2]), .O(n14762));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10774_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i10775_3_lut_4_lut (.I0(n24329), .I1(n30577), .I2(data[1]), 
            .I3(baudrate[1]), .O(n14763));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10775_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i10776_3_lut_4_lut (.I0(n24329), .I1(n30577), .I2(data[0]), 
            .I3(baudrate[0]), .O(n14764));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10776_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i2_2_lut_adj_1546 (.I0(byte_counter[5]), .I1(byte_counter[4]), 
            .I2(GND_net), .I3(GND_net), .O(n8_adj_4459));   // verilog/eeprom.v(30[11:23])
    defparam i2_2_lut_adj_1546.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_1547 (.I0(byte_counter[0]), .I1(byte_counter[7]), 
            .I2(byte_counter[2]), .I3(byte_counter[1]), .O(n7_adj_4460));   // verilog/eeprom.v(30[11:23])
    defparam i1_4_lut_adj_1547.LUT_INIT = 16'hfcec;
    SB_LUT4 i5_4_lut (.I0(byte_counter[3]), .I1(n7_adj_4460), .I2(byte_counter[6]), 
            .I3(n8_adj_4459), .O(n15));   // verilog/eeprom.v(30[11:23])
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut (.I0(delay_counter[6]), .I1(delay_counter[10]), .I2(delay_counter[12]), 
            .I3(delay_counter[8]), .O(n28));   // verilog/eeprom.v(55[12:28])
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut (.I0(delay_counter[11]), .I1(delay_counter[2]), .I2(delay_counter[7]), 
            .I3(delay_counter[5]), .O(n26));   // verilog/eeprom.v(55[12:28])
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut (.I0(delay_counter[15]), .I1(delay_counter[3]), .I2(delay_counter[14]), 
            .I3(delay_counter[1]), .O(n27));   // verilog/eeprom.v(55[12:28])
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut (.I0(delay_counter[4]), .I1(delay_counter[9]), .I2(delay_counter[13]), 
            .I3(delay_counter[0]), .O(n25));   // verilog/eeprom.v(55[12:28])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i15_4_lut (.I0(n25), .I1(n27), .I2(n26), .I3(n28), .O(n10833));   // verilog/eeprom.v(55[12:28])
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i3_3_lut_4_lut (.I0(n7), .I1(\state[0]_adj_20 ), .I2(state[3]), 
            .I3(n10833), .O(n31839));
    defparam i3_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i24_2_lut (.I0(\state[2] ), .I1(n15), .I2(GND_net), .I3(GND_net), 
            .O(n24328));
    defparam i24_2_lut.LUT_INIT = 16'h7777;
    SB_LUT4 i32513_2_lut (.I0(n10833), .I1(enable_slow_N_3855), .I2(GND_net), 
            .I3(GND_net), .O(n2912[7]));   // verilog/eeprom.v(59[18] 61[12])
    defparam i32513_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i11165_3_lut_4_lut (.I0(n4_adj_4454), .I1(n30577), .I2(data[7]), 
            .I3(baudrate[23]), .O(n15153));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11165_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i11168_3_lut_4_lut (.I0(n4_adj_4454), .I1(n30577), .I2(data[6]), 
            .I3(baudrate[22]), .O(n15156));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11168_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i11169_3_lut_4_lut (.I0(n4_adj_4454), .I1(n30577), .I2(data[5]), 
            .I3(baudrate[21]), .O(n15157));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11169_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i11173_3_lut_4_lut (.I0(n4_adj_4454), .I1(n30577), .I2(data[4]), 
            .I3(baudrate[20]), .O(n15161));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11173_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i11210_3_lut_4_lut (.I0(n4_adj_4454), .I1(n30577), .I2(data[3]), 
            .I3(baudrate[19]), .O(n15198));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11210_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i11222_3_lut_4_lut (.I0(n4_adj_4454), .I1(n30577), .I2(data[2]), 
            .I3(baudrate[18]), .O(n15210));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11222_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i11308_3_lut_4_lut (.I0(n4_adj_4454), .I1(n30577), .I2(data[1]), 
            .I3(baudrate[17]), .O(n15296));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11308_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i11329_3_lut_4_lut (.I0(n4_adj_4454), .I1(n30577), .I2(data[0]), 
            .I3(baudrate[16]), .O(n15317));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11329_3_lut_4_lut.LUT_INIT = 16'hfb40;
    i2c_controller i2c (.VCC_net(VCC_net), .GND_net(GND_net), .clk16MHz(clk16MHz), 
            .scl_enable(scl_enable), .n3876(n3876), .\state_7__N_3768[3] (\state_7__N_3768[3] ), 
            .\state[0] (\state[0]_adj_20 ), .n7(n7), .\saved_addr[0] (\saved_addr[0] ), 
            .n4(n4), .n4_adj_19(n4_adj_21), .n10919(n10919), .\state[1] (state[1]), 
            .n10928(n10928), .n21206(n21206), .n6(n6), .n21147(n21147), 
            .\state_7__N_3752[0] (\state_7__N_3752[0] ), .enable_slow_N_3855(enable_slow_N_3855), 
            .n14956(n14956), .data({data}), .n14955(n14955), .n14954(n14954), 
            .n14952(n14952), .n14951(n14951), .n14950(n14950), .n14949(n14949), 
            .n10(n10), .\state[3] (state[3]), .\state[2] (state[2]), .n8(n8), 
            .n15304(n15304), .sda_enable(sda_enable), .n14623(n14623), 
            .scl(scl), .ready_prev(ready_prev), .n95(n95), .enable(enable), 
            .n29955(n29955), .sda_out(sda_out)) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;   // verilog/eeprom.v(85[16] 99[4])
    
endmodule
//
// Verilog Description of module i2c_controller
//

module i2c_controller (VCC_net, GND_net, clk16MHz, scl_enable, n3876, 
            \state_7__N_3768[3] , \state[0] , n7, \saved_addr[0] , n4, 
            n4_adj_19, n10919, \state[1] , n10928, n21206, n6, n21147, 
            \state_7__N_3752[0] , enable_slow_N_3855, n14956, data, 
            n14955, n14954, n14952, n14951, n14950, n14949, n10, 
            \state[3] , \state[2] , n8, n15304, sda_enable, n14623, 
            scl, ready_prev, n95, enable, n29955, sda_out) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;
    input VCC_net;
    input GND_net;
    input clk16MHz;
    output scl_enable;
    output n3876;
    input \state_7__N_3768[3] ;
    output \state[0] ;
    input n7;
    output \saved_addr[0] ;
    output n4;
    output n4_adj_19;
    output n10919;
    output \state[1] ;
    output n10928;
    output n21206;
    output n6;
    output n21147;
    output \state_7__N_3752[0] ;
    output enable_slow_N_3855;
    input n14956;
    output [7:0]data;
    input n14955;
    input n14954;
    input n14952;
    input n14951;
    input n14950;
    input n14949;
    output n10;
    output \state[3] ;
    output \state[2] ;
    input n8;
    input n15304;
    output sda_enable;
    input n14623;
    output scl;
    input ready_prev;
    output n95;
    input enable;
    input n29955;
    output sda_out;
    
    wire i2c_clk /* synthesis is_clock=1, SET_AS_NETWORK=\eeprom/i2c/i2c_clk */ ;   // verilog/i2c_controller.v(41[6:13])
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(33[6:14])
    wire [7:0]n119;
    wire [7:0]counter;   // verilog/i2c_controller.v(36[12:19])
    
    wire n25761, n25762, n25760, n13140, n14186, i2c_clk_N_3841, 
        scl_enable_N_3842, n15, n11, n21441, n11_adj_4444, n21334, 
        n11_adj_4445, n21443, n11_adj_4446, n5, n9, state_7__N_3751, 
        n3869, enable_slow_N_3854, n13078;
    wire [7:0]counter2;   // verilog/i2c_controller.v(37[12:20])
    
    wire n10_c, n14300;
    wire [5:0]n29;
    
    wire n12, n31758, n35249, n4210, n4_adj_4449, n26123, n26122, 
        n26121, n26120, n26119;
    wire [1:0]n3922;
    
    wire n31381, n11_adj_4450, n32184, n31912, n13076, n29489, n13074, 
        sda_out_adj_4451, n25766, n25765, n25764, n25763, n4_adj_4452, 
        n28, n36890;
    
    SB_LUT4 sub_39_add_2_4_lut (.I0(GND_net), .I1(counter[2]), .I2(VCC_net), 
            .I3(n25761), .O(n119[2])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_4 (.CI(n25761), .I0(counter[2]), .I1(VCC_net), 
            .CO(n25762));
    SB_LUT4 sub_39_add_2_3_lut (.I0(GND_net), .I1(counter[1]), .I2(VCC_net), 
            .I3(n25760), .O(n119[1])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_3 (.CI(n25760), .I0(counter[1]), .I1(VCC_net), 
            .CO(n25761));
    SB_LUT4 sub_39_add_2_2_lut (.I0(GND_net), .I1(counter[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n119[0])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_2 (.CI(VCC_net), .I0(counter[0]), .I1(GND_net), 
            .CO(n25760));
    SB_DFFESS counter_i1 (.Q(counter[1]), .C(i2c_clk), .E(n13140), .D(n119[1]), 
            .S(n14186));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESS counter_i2 (.Q(counter[2]), .C(i2c_clk), .E(n13140), .D(n119[2]), 
            .S(n14186));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF i2c_clk_122 (.Q(i2c_clk), .C(clk16MHz), .D(i2c_clk_N_3841));   // verilog/i2c_controller.v(58[9] 71[5])
    SB_DFFN i2c_scl_enable_124 (.Q(scl_enable), .C(i2c_clk), .D(scl_enable_N_3842));   // verilog/i2c_controller.v(76[12] 82[6])
    SB_DFFESR counter_i3 (.Q(counter[3]), .C(i2c_clk), .E(n13140), .D(n119[3]), 
            .R(n14186));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESR counter_i4 (.Q(counter[4]), .C(i2c_clk), .E(n13140), .D(n119[4]), 
            .R(n14186));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESR counter_i5 (.Q(counter[5]), .C(i2c_clk), .E(n13140), .D(n119[5]), 
            .R(n14186));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESR counter_i6 (.Q(counter[6]), .C(i2c_clk), .E(n13140), .D(n119[6]), 
            .R(n14186));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESR counter_i7 (.Q(counter[7]), .C(i2c_clk), .E(n13140), .D(n119[7]), 
            .R(n14186));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 i32509_3_lut (.I0(n3876), .I1(n15), .I2(n11), .I3(GND_net), 
            .O(n21441));
    defparam i32509_3_lut.LUT_INIT = 16'h2a2a;
    SB_LUT4 i32563_2_lut (.I0(\state_7__N_3768[3] ), .I1(n11_adj_4444), 
            .I2(GND_net), .I3(GND_net), .O(n21334));
    defparam i32563_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 i32511_4_lut (.I0(n3876), .I1(\state[0] ), .I2(n11_adj_4445), 
            .I3(n7), .O(n21443));
    defparam i32511_4_lut.LUT_INIT = 16'h0a8a;
    SB_LUT4 i1_4_lut (.I0(n11_adj_4446), .I1(n11_adj_4444), .I2(\state_7__N_3768[3] ), 
            .I3(\saved_addr[0] ), .O(n5));   // verilog/i2c_controller.v(92[4] 172[11])
    defparam i1_4_lut.LUT_INIT = 16'h5755;
    SB_LUT4 equal_124_i4_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n4));   // verilog/i2c_controller.v(153[6:23])
    defparam equal_124_i4_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 equal_121_i4_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n4_adj_19));   // verilog/i2c_controller.v(153[6:23])
    defparam equal_121_i4_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_2_lut (.I0(counter[0]), .I1(n15), .I2(GND_net), .I3(GND_net), 
            .O(n10919));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 state_7__I_0_139_i9_2_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(GND_net), .I3(GND_net), .O(n9));   // verilog/i2c_controller.v(109[5:12])
    defparam state_7__I_0_139_i9_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_2_lut_adj_1527 (.I0(n15), .I1(counter[0]), .I2(GND_net), 
            .I3(GND_net), .O(n10928));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i1_2_lut_adj_1527.LUT_INIT = 16'hbbbb;
    SB_LUT4 i32589_4_lut (.I0(state_7__N_3751), .I1(n3869), .I2(n11_adj_4445), 
            .I3(n21206), .O(n3876));
    defparam i32589_4_lut.LUT_INIT = 16'h5111;
    SB_LUT4 i2_2_lut (.I0(n11_adj_4445), .I1(n11), .I2(GND_net), .I3(GND_net), 
            .O(n6));
    defparam i2_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i17224_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n21147));
    defparam i17224_2_lut.LUT_INIT = 16'h8888;
    SB_DFFE enable_slow_121 (.Q(\state_7__N_3752[0] ), .C(clk16MHz), .E(n13078), 
            .D(enable_slow_N_3854));   // verilog/i2c_controller.v(58[9] 71[5])
    SB_LUT4 i32503_2_lut (.I0(\state_7__N_3752[0] ), .I1(enable_slow_N_3855), 
            .I2(GND_net), .I3(GND_net), .O(enable_slow_N_3854));   // verilog/i2c_controller.v(62[6:32])
    defparam i32503_2_lut.LUT_INIT = 16'hdddd;
    SB_DFF data_out_i0_i7 (.Q(data[7]), .C(i2c_clk), .D(n14956));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF data_out_i0_i6 (.Q(data[6]), .C(i2c_clk), .D(n14955));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF data_out_i0_i5 (.Q(data[5]), .C(i2c_clk), .D(n14954));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF data_out_i0_i4 (.Q(data[4]), .C(i2c_clk), .D(n14952));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF data_out_i0_i3 (.Q(data[3]), .C(i2c_clk), .D(n14951));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF data_out_i0_i2 (.Q(data[2]), .C(i2c_clk), .D(n14950));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF data_out_i0_i1 (.Q(data[1]), .C(i2c_clk), .D(n14949));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 i4_4_lut (.I0(counter2[3]), .I1(counter2[5]), .I2(counter2[2]), 
            .I3(counter2[4]), .O(n10_c));
    defparam i4_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i5_3_lut (.I0(counter2[1]), .I1(n10_c), .I2(counter2[0]), 
            .I3(GND_net), .O(n14300));
    defparam i5_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i1_2_lut_adj_1528 (.I0(i2c_clk), .I1(n14300), .I2(GND_net), 
            .I3(GND_net), .O(i2c_clk_N_3841));
    defparam i1_2_lut_adj_1528.LUT_INIT = 16'h6666;
    SB_DFFSR counter2_1119_1120__i5 (.Q(counter2[4]), .C(clk16MHz), .D(n29[4]), 
            .R(n14300));   // verilog/i2c_controller.v(69[20:35])
    SB_DFFSR counter2_1119_1120__i4 (.Q(counter2[3]), .C(clk16MHz), .D(n29[3]), 
            .R(n14300));   // verilog/i2c_controller.v(69[20:35])
    SB_DFFSR counter2_1119_1120__i3 (.Q(counter2[2]), .C(clk16MHz), .D(n29[2]), 
            .R(n14300));   // verilog/i2c_controller.v(69[20:35])
    SB_DFFSR counter2_1119_1120__i2 (.Q(counter2[1]), .C(clk16MHz), .D(n29[1]), 
            .R(n14300));   // verilog/i2c_controller.v(69[20:35])
    SB_DFFSR counter2_1119_1120__i6 (.Q(counter2[5]), .C(clk16MHz), .D(n29[5]), 
            .R(n14300));   // verilog/i2c_controller.v(69[20:35])
    SB_LUT4 i2_2_lut_adj_1529 (.I0(counter[2]), .I1(counter[1]), .I2(GND_net), 
            .I3(GND_net), .O(n10));   // verilog/i2c_controller.v(110[10:22])
    defparam i2_2_lut_adj_1529.LUT_INIT = 16'heeee;
    SB_LUT4 i5_4_lut (.I0(counter[3]), .I1(counter[5]), .I2(counter[0]), 
            .I3(counter[4]), .O(n12));   // verilog/i2c_controller.v(110[10:22])
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i6_4_lut (.I0(counter[6]), .I1(n12), .I2(counter[7]), .I3(n10), 
            .O(n3869));   // verilog/i2c_controller.v(110[10:22])
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i2_3_lut_4_lut (.I0(\state[3] ), .I1(\state[1] ), .I2(\state[0] ), 
            .I3(\state[2] ), .O(n31758));   // verilog/i2c_controller.v(181[4] 217[11])
    defparam i2_3_lut_4_lut.LUT_INIT = 16'h1110;
    SB_LUT4 i14_4_lut (.I0(n3869), .I1(n35249), .I2(n4210), .I3(n4_adj_4449), 
            .O(n13140));
    defparam i14_4_lut.LUT_INIT = 16'h303a;
    SB_LUT4 counter2_1119_1120_add_4_7_lut (.I0(GND_net), .I1(GND_net), 
            .I2(counter2[5]), .I3(n26123), .O(n29[5])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_1119_1120_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 counter2_1119_1120_add_4_6_lut (.I0(GND_net), .I1(GND_net), 
            .I2(counter2[4]), .I3(n26122), .O(n29[4])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_1119_1120_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_1119_1120_add_4_6 (.CI(n26122), .I0(GND_net), .I1(counter2[4]), 
            .CO(n26123));
    SB_LUT4 counter2_1119_1120_add_4_5_lut (.I0(GND_net), .I1(GND_net), 
            .I2(counter2[3]), .I3(n26121), .O(n29[3])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_1119_1120_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_1119_1120_add_4_5 (.CI(n26121), .I0(GND_net), .I1(counter2[3]), 
            .CO(n26122));
    SB_LUT4 counter2_1119_1120_add_4_4_lut (.I0(GND_net), .I1(GND_net), 
            .I2(counter2[2]), .I3(n26120), .O(n29[2])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_1119_1120_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_1119_1120_add_4_4 (.CI(n26120), .I0(GND_net), .I1(counter2[2]), 
            .CO(n26121));
    SB_LUT4 counter2_1119_1120_add_4_3_lut (.I0(GND_net), .I1(GND_net), 
            .I2(counter2[1]), .I3(n26119), .O(n29[1])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_1119_1120_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_1119_1120_add_4_3 (.CI(n26119), .I0(GND_net), .I1(counter2[1]), 
            .CO(n26120));
    SB_LUT4 counter2_1119_1120_add_4_2_lut (.I0(GND_net), .I1(GND_net), 
            .I2(counter2[0]), .I3(VCC_net), .O(n29[0])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_1119_1120_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_1119_1120_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(counter2[0]), 
            .CO(n26119));
    SB_LUT4 i2_3_lut_4_lut_adj_1530 (.I0(\state[2] ), .I1(\state[3] ), .I2(n3922[1]), 
            .I3(\state[1] ), .O(n31381));   // verilog/i2c_controller.v(44[32:47])
    defparam i2_3_lut_4_lut_adj_1530.LUT_INIT = 16'h1000;
    SB_LUT4 i1_2_lut_3_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(\state[0] ), 
            .I3(GND_net), .O(n4210));   // verilog/i2c_controller.v(44[32:47])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_LUT4 i32523_3_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(\state[0] ), 
            .I3(\state[1] ), .O(enable_slow_N_3855));   // verilog/i2c_controller.v(44[32:47])
    defparam i32523_3_lut_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 state_7__I_0_140_i11_2_lut_3_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), 
            .I2(\state[1] ), .I3(\state[0] ), .O(n11_adj_4444));   // verilog/i2c_controller.v(44[32:47])
    defparam state_7__I_0_140_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hefff;
    SB_DFFSR counter2_1119_1120__i1 (.Q(counter2[0]), .C(clk16MHz), .D(n29[0]), 
            .R(n14300));   // verilog/i2c_controller.v(69[20:35])
    SB_DFFE state_i0_i0 (.Q(\state[0] ), .C(i2c_clk), .E(VCC_net), .D(n8));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESS state_i0_i1 (.Q(\state[1] ), .C(i2c_clk), .E(n3876), .D(n5), 
            .S(n21443));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESS state_i0_i2 (.Q(\state[2] ), .C(i2c_clk), .E(n3876), .D(n21334), 
            .S(n21441));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 i17510_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(\state[2] ), 
            .I3(\state[3] ), .O(state_7__N_3751));
    defparam i17510_3_lut_4_lut.LUT_INIT = 16'hf800;
    SB_DFF data_out_i0_i0 (.Q(data[0]), .C(i2c_clk), .D(n15304));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 state_7__I_0_143_i11_2_lut_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(\state[3] ), .I3(\state[2] ), .O(n11_adj_4450));
    defparam state_7__I_0_143_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hf7ff;
    SB_DFFESS state_i0_i3 (.Q(\state[3] ), .C(i2c_clk), .E(n3876), .D(n32184), 
            .S(n31912));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFNESS write_enable_132 (.Q(sda_enable), .C(i2c_clk), .E(n13076), 
            .D(n31758), .S(n29489));   // verilog/i2c_controller.v(180[12] 218[6])
    SB_DFFNESS sda_out_133 (.Q(sda_out_adj_4451), .C(i2c_clk), .E(n13074), 
            .D(n31381), .S(n29489));   // verilog/i2c_controller.v(180[12] 218[6])
    SB_DFFESS counter_i0 (.Q(counter[0]), .C(i2c_clk), .E(n13140), .D(n119[0]), 
            .S(n14186));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 i32506_3_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(n3876), 
            .I3(\state[1] ), .O(n31912));   // verilog/i2c_controller.v(143[5:14])
    defparam i32506_3_lut_4_lut.LUT_INIT = 16'h0020;
    SB_LUT4 sub_39_add_2_9_lut (.I0(GND_net), .I1(counter[7]), .I2(VCC_net), 
            .I3(n25766), .O(n119[7])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_9_lut.LUT_INIT = 16'hC33C;
    SB_DFF saved_addr__i1 (.Q(\saved_addr[0] ), .C(i2c_clk), .D(n14623));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 sub_39_add_2_8_lut (.I0(GND_net), .I1(counter[6]), .I2(VCC_net), 
            .I3(n25765), .O(n119[6])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_8 (.CI(n25765), .I0(counter[6]), .I1(VCC_net), 
            .CO(n25766));
    SB_LUT4 sub_39_add_2_7_lut (.I0(GND_net), .I1(counter[5]), .I2(VCC_net), 
            .I3(n25764), .O(n119[5])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_7 (.CI(n25764), .I0(counter[5]), .I1(VCC_net), 
            .CO(n25765));
    SB_LUT4 i17282_2_lut_3_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(\state[0] ), 
            .I3(GND_net), .O(n21206));   // verilog/i2c_controller.v(143[5:14])
    defparam i17282_2_lut_3_lut.LUT_INIT = 16'hfdfd;
    SB_LUT4 sub_39_add_2_6_lut (.I0(GND_net), .I1(counter[4]), .I2(VCC_net), 
            .I3(n25763), .O(n119[4])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_3_lut_4_lut_adj_1531 (.I0(\state[2] ), .I1(\state[3] ), .I2(n4_adj_4452), 
            .I3(n9), .O(n32184));   // verilog/i2c_controller.v(139[9:14])
    defparam i2_3_lut_4_lut_adj_1531.LUT_INIT = 16'hf0f4;
    SB_CARRY sub_39_add_2_6 (.CI(n25763), .I0(counter[4]), .I1(VCC_net), 
            .CO(n25764));
    SB_LUT4 sub_39_add_2_5_lut (.I0(GND_net), .I1(counter[3]), .I2(VCC_net), 
            .I3(n25762), .O(n119[3])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_5 (.CI(n25762), .I0(counter[3]), .I1(VCC_net), 
            .CO(n25763));
    SB_LUT4 state_7__I_0_144_i11_2_lut_3_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), 
            .I2(\state[0] ), .I3(\state[1] ), .O(n15));   // verilog/i2c_controller.v(143[5:14])
    defparam state_7__I_0_144_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hfdff;
    SB_LUT4 i17195_2_lut (.I0(i2c_clk), .I1(scl_enable), .I2(GND_net), 
            .I3(GND_net), .O(scl));   // verilog/i2c_controller.v(45[19:61])
    defparam i17195_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 state_7__I_0_139_i11_2_lut_3_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), 
            .I2(\state[0] ), .I3(\state[1] ), .O(n11_adj_4445));   // verilog/i2c_controller.v(44[32:47])
    defparam state_7__I_0_139_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i32560_2_lut (.I0(enable_slow_N_3855), .I1(ready_prev), .I2(GND_net), 
            .I3(GND_net), .O(n95));
    defparam i32560_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_4_lut (.I0(\state[1] ), .I1(\state[2] ), .I2(\state[3] ), 
            .I3(\state[0] ), .O(n4_adj_4449));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hfcf1;
    SB_LUT4 i10198_2_lut_4_lut (.I0(n13140), .I1(\state[2] ), .I2(\state[3] ), 
            .I3(\state[0] ), .O(n14186));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i10198_2_lut_4_lut.LUT_INIT = 16'h0200;
    SB_LUT4 i26333_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(\state[2] ), 
            .I3(\state[3] ), .O(scl_enable_N_3842));
    defparam i26333_3_lut_4_lut.LUT_INIT = 16'hfefc;
    SB_LUT4 i1_2_lut_3_lut_adj_1532 (.I0(enable), .I1(\state_7__N_3752[0] ), 
            .I2(enable_slow_N_3855), .I3(GND_net), .O(n13078));
    defparam i1_2_lut_3_lut_adj_1532.LUT_INIT = 16'haeae;
    SB_LUT4 i1_4_lut_adj_1533 (.I0(\state[3] ), .I1(\state[1] ), .I2(\state[0] ), 
            .I3(\state[2] ), .O(n28));
    defparam i1_4_lut_adj_1533.LUT_INIT = 16'h5110;
    SB_LUT4 i32485_2_lut (.I0(\state[3] ), .I1(\state[1] ), .I2(GND_net), 
            .I3(GND_net), .O(n36890));
    defparam i32485_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_1534 (.I0(n11_adj_4450), .I1(n36890), .I2(n28), 
            .I3(n29955), .O(n13074));
    defparam i1_4_lut_adj_1534.LUT_INIT = 16'ha0a8;
    SB_LUT4 mux_944_Mux_1_i7_4_lut (.I0(counter[1]), .I1(counter[0]), .I2(counter[2]), 
            .I3(\saved_addr[0] ), .O(n3922[1]));   // verilog/i2c_controller.v(201[28:35])
    defparam mux_944_Mux_1_i7_4_lut.LUT_INIT = 16'hc1c0;
    SB_LUT4 i3_4_lut (.I0(\state[0] ), .I1(n7), .I2(\state[3] ), .I3(n11_adj_4450), 
            .O(n29489));
    defparam i3_4_lut.LUT_INIT = 16'h1000;
    SB_LUT4 i1_4_lut_adj_1535 (.I0(n11_adj_4450), .I1(\state[1] ), .I2(\state[3] ), 
            .I3(n29955), .O(n13076));
    defparam i1_4_lut_adj_1535.LUT_INIT = 16'h0a22;
    SB_LUT4 i1_4_lut_adj_1536 (.I0(\state_7__N_3768[3] ), .I1(n11_adj_4444), 
            .I2(n11_adj_4450), .I3(enable), .O(n4_adj_4452));
    defparam i1_4_lut_adj_1536.LUT_INIT = 16'h2a2f;
    SB_LUT4 i1414_2_lut (.I0(sda_out_adj_4451), .I1(sda_enable), .I2(GND_net), 
            .I3(GND_net), .O(sda_out));   // verilog/i2c_controller.v(46[9:20])
    defparam i1414_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 state_7__I_0_145_i11_2_lut_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(\state[3] ), .I3(\state[2] ), .O(n11_adj_4446));   // verilog/i2c_controller.v(77[27:43])
    defparam state_7__I_0_145_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hfdff;
    SB_LUT4 state_7__I_0_142_i11_2_lut_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(\state[3] ), .I3(\state[2] ), .O(n11));   // verilog/i2c_controller.v(77[27:43])
    defparam state_7__I_0_142_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hffdf;
    SB_LUT4 i31209_2_lut_3_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(\state_7__N_3768[3] ), 
            .I3(GND_net), .O(n35249));   // verilog/i2c_controller.v(77[27:43])
    defparam i31209_2_lut_3_lut.LUT_INIT = 16'hd0d0;
    
endmodule
//
// Verilog Description of module \neopixel(CLOCK_SPEED_HZ=16000000) 
//

module \neopixel(CLOCK_SPEED_HZ=16000000)  (\neo_pixel_transmitter.t0 , GND_net, 
            \neo_pixel_transmitter.done , clk16MHz, n40, timer, \state[0] , 
            n35205, \bit_ctr[0] , \bit_ctr[1] , LED_c, \state[1] , 
            n31970, \one_wire_N_380[10] , VCC_net, \neopxl_color[21] , 
            \neopxl_color[20] , n23821, n23826, \one_wire_N_380[9] , 
            \neopxl_color[10] , \neopxl_color[11] , start, \one_wire_N_380[8] , 
            n12, n14733, \neopxl_color[14] , \neopxl_color[15] , \one_wire_N_380[3] , 
            \one_wire_N_380[2] , n15192, n15191, n15190, n15189, n15188, 
            n15187, n15186, n15185, n15184, n15183, n15182, n15181, 
            n15180, n15179, n15178, n15177, n15176, n4, n15175, 
            n15174, n15173, n15172, n15171, n15170, n15169, n15168, 
            n15167, n15166, n15165, n15164, n15163, n15162, n82, 
            n29163, n23814, NEOPXL_c, n23810, n33483, n1737, n7, 
            n40_adj_18, \neopxl_color[13] , \neopxl_color[12] , n31895, 
            n33249, n39, n37158, \neopxl_color[0] , \neopxl_color[1] , 
            \neopxl_color[2] , \neopxl_color[3] , \neopxl_color[6] , \neopxl_color[7] , 
            \neopxl_color[4] , \neopxl_color[5] , n32262, \neopxl_color[22] , 
            \neopxl_color[23] , n29971, \neopxl_color[9] , \neopxl_color[8] ) /* synthesis syn_module_defined=1 */ ;
    output [31:0]\neo_pixel_transmitter.t0 ;
    input GND_net;
    output \neo_pixel_transmitter.done ;
    input clk16MHz;
    output n40;
    output [31:0]timer;
    output \state[0] ;
    output n35205;
    output \bit_ctr[0] ;
    output \bit_ctr[1] ;
    input LED_c;
    output \state[1] ;
    input n31970;
    output \one_wire_N_380[10] ;
    input VCC_net;
    input \neopxl_color[21] ;
    input \neopxl_color[20] ;
    input n23821;
    input n23826;
    output \one_wire_N_380[9] ;
    input \neopxl_color[10] ;
    input \neopxl_color[11] ;
    output start;
    output \one_wire_N_380[8] ;
    input n12;
    input n14733;
    input \neopxl_color[14] ;
    input \neopxl_color[15] ;
    output \one_wire_N_380[3] ;
    output \one_wire_N_380[2] ;
    input n15192;
    input n15191;
    input n15190;
    input n15189;
    input n15188;
    input n15187;
    input n15186;
    input n15185;
    input n15184;
    input n15183;
    input n15182;
    input n15181;
    input n15180;
    input n15179;
    input n15178;
    input n15177;
    input n15176;
    output n4;
    input n15175;
    input n15174;
    input n15173;
    input n15172;
    input n15171;
    input n15170;
    input n15169;
    input n15168;
    input n15167;
    input n15166;
    input n15165;
    input n15164;
    input n15163;
    input n15162;
    input n82;
    input n29163;
    input n23814;
    output NEOPXL_c;
    output n23810;
    input n33483;
    output n1737;
    input n7;
    output n40_adj_18;
    input \neopxl_color[13] ;
    input \neopxl_color[12] ;
    output n31895;
    input n33249;
    output n39;
    input n37158;
    input \neopxl_color[0] ;
    input \neopxl_color[1] ;
    input \neopxl_color[2] ;
    input \neopxl_color[3] ;
    input \neopxl_color[6] ;
    input \neopxl_color[7] ;
    input \neopxl_color[4] ;
    input \neopxl_color[5] ;
    output n32262;
    input \neopxl_color[22] ;
    input \neopxl_color[23] ;
    input n29971;
    input \neopxl_color[9] ;
    input \neopxl_color[8] ;
    
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(33[6:14])
    wire [31:0]n1;
    
    wire \neo_pixel_transmitter.done_N_437 , n29935;
    wire [31:0]n133;
    wire [31:0]bit_ctr;   // verilog/neopixel.v(18[12:19])
    
    wire n26065, n26064, n26063, n25759, n33233, n25758, n33231, 
        n26062, n26061, n25757, n33229, n26060, n26059, n25756, 
        n33227, n25755, n33225, n26058, n26057, n25754, n33223, 
        n26056, n25753, n33221, n26055, n26054, n26053, n26052, 
        n26051, n26050, n26049;
    wire [31:0]n133_adj_4443;
    
    wire n25797, n25796, n25795, n25752, n33219, n25751, n33217, 
        n25794, n26048, n25793, n26047, n26046, n26045, n25792, 
        n25750, n33215, n26044, n27211, n23024, n4129, n14328, 
        n26043, n25791, n9_adj_4407, n25749;
    wire [31:0]one_wire_N_380;
    
    wire n26042, n25790, n12_adj_4409, n25748, n26041, n25789, n10_adj_4412, 
        n25747, n26040, n46, n44, n45, n43, n42, n41, n52, 
        n47, n25788, n25746, n25745, n11_adj_4414, n25744, n25787, 
        n25743, n4126, n25786, n25742, n26039, n25785, n25784;
    wire [31:0]color_bit_N_423;
    
    wire n25783, n25782, n25781, n25741, n33213, n26038, n25780, 
        n25740, n25779, n26037, n25739, n26036, n25778, n25738, 
        n26035, n37131, n37134, n25777, n29_adj_4426, n25737, n37047, 
        n25736, n33239, n25735, n33237, n21158, n37137, n37140, 
        n25776, n25734, n33235, n25733, n25775, n25732, n25731, 
        n25774, n25730, n25729, n25773, n25772, n25771, n25770, 
        n32196, n25769, n25768, n25767, n33766, n33767, n37065, 
        n33764, n33763, n37068;
    wire [3:0]state_3__N_229;
    
    wire n7_adj_4439, \neo_pixel_transmitter.done_N_443 , n30688, n45_adj_4440, 
        n36385, n35209, n30684, n36156, n30549, n37050, n36367, 
        n37611, n26713, n36433, n35067, n33241;
    
    SB_LUT4 sub_14_inv_0_i3_1_lut (.I0(\neo_pixel_transmitter.t0 [2]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[2]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i3_1_lut.LUT_INIT = 16'h5555;
    SB_DFFE \neo_pixel_transmitter.done_104  (.Q(\neo_pixel_transmitter.done ), 
            .C(clk16MHz), .E(n29935), .D(\neo_pixel_transmitter.done_N_437 ));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 sub_14_inv_0_i4_1_lut (.I0(\neo_pixel_transmitter.t0 [3]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[3]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i4_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 bit_ctr_1111_add_4_33_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[31]), 
            .I3(n26065), .O(n133[31])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_ctr_1111_add_4_32_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[30]), 
            .I3(n26064), .O(n133[30])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1111_add_4_32 (.CI(n26064), .I0(GND_net), .I1(bit_ctr[30]), 
            .CO(n26065));
    SB_LUT4 bit_ctr_1111_add_4_31_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[29]), 
            .I3(n26063), .O(n133[29])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_33_lut (.I0(n33233), .I1(timer[31]), .I2(n1[31]), 
            .I3(n25759), .O(n40)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_33_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 sub_14_add_2_32_lut (.I0(n33231), .I1(timer[30]), .I2(n1[30]), 
            .I3(n25758), .O(n33233)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_32_lut.LUT_INIT = 16'hebbe;
    SB_CARRY bit_ctr_1111_add_4_31 (.CI(n26063), .I0(GND_net), .I1(bit_ctr[29]), 
            .CO(n26064));
    SB_LUT4 sub_14_inv_0_i14_1_lut (.I0(\neo_pixel_transmitter.t0 [13]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[13]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i14_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 bit_ctr_1111_add_4_30_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[28]), 
            .I3(n26062), .O(n133[28])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1111_add_4_30 (.CI(n26062), .I0(GND_net), .I1(bit_ctr[28]), 
            .CO(n26063));
    SB_LUT4 bit_ctr_1111_add_4_29_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[27]), 
            .I3(n26061), .O(n133[27])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_32 (.CI(n25758), .I0(timer[30]), .I1(n1[30]), 
            .CO(n25759));
    SB_LUT4 sub_14_add_2_31_lut (.I0(n33229), .I1(timer[29]), .I2(n1[29]), 
            .I3(n25757), .O(n33231)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_31_lut.LUT_INIT = 16'hebbe;
    SB_CARRY bit_ctr_1111_add_4_29 (.CI(n26061), .I0(GND_net), .I1(bit_ctr[27]), 
            .CO(n26062));
    SB_LUT4 bit_ctr_1111_add_4_28_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[26]), 
            .I3(n26060), .O(n133[26])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_31 (.CI(n25757), .I0(timer[29]), .I1(n1[29]), 
            .CO(n25758));
    SB_CARRY bit_ctr_1111_add_4_28 (.CI(n26060), .I0(GND_net), .I1(bit_ctr[26]), 
            .CO(n26061));
    SB_LUT4 bit_ctr_1111_add_4_27_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[25]), 
            .I3(n26059), .O(n133[25])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1111_add_4_27 (.CI(n26059), .I0(GND_net), .I1(bit_ctr[25]), 
            .CO(n26060));
    SB_LUT4 sub_14_add_2_30_lut (.I0(n33227), .I1(timer[28]), .I2(n1[28]), 
            .I3(n25756), .O(n33229)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_30_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_30 (.CI(n25756), .I0(timer[28]), .I1(n1[28]), 
            .CO(n25757));
    SB_LUT4 sub_14_add_2_29_lut (.I0(n33225), .I1(timer[27]), .I2(n1[27]), 
            .I3(n25755), .O(n33227)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_29_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 bit_ctr_1111_add_4_26_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[24]), 
            .I3(n26058), .O(n133[24])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1111_add_4_26 (.CI(n26058), .I0(GND_net), .I1(bit_ctr[24]), 
            .CO(n26059));
    SB_LUT4 bit_ctr_1111_add_4_25_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[23]), 
            .I3(n26057), .O(n133[23])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1111_add_4_25 (.CI(n26057), .I0(GND_net), .I1(bit_ctr[23]), 
            .CO(n26058));
    SB_CARRY sub_14_add_2_29 (.CI(n25755), .I0(timer[27]), .I1(n1[27]), 
            .CO(n25756));
    SB_LUT4 sub_14_add_2_28_lut (.I0(n33223), .I1(timer[26]), .I2(n1[26]), 
            .I3(n25754), .O(n33225)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_28_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 bit_ctr_1111_add_4_24_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[22]), 
            .I3(n26056), .O(n133[22])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_inv_0_i5_1_lut (.I0(\neo_pixel_transmitter.t0 [4]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[4]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i5_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY sub_14_add_2_28 (.CI(n25754), .I0(timer[26]), .I1(n1[26]), 
            .CO(n25755));
    SB_LUT4 sub_14_add_2_27_lut (.I0(n33221), .I1(timer[25]), .I2(n1[25]), 
            .I3(n25753), .O(n33223)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_27_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_27 (.CI(n25753), .I0(timer[25]), .I1(n1[25]), 
            .CO(n25754));
    SB_CARRY bit_ctr_1111_add_4_24 (.CI(n26056), .I0(GND_net), .I1(bit_ctr[22]), 
            .CO(n26057));
    SB_LUT4 bit_ctr_1111_add_4_23_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[21]), 
            .I3(n26055), .O(n133[21])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1111_add_4_23 (.CI(n26055), .I0(GND_net), .I1(bit_ctr[21]), 
            .CO(n26056));
    SB_LUT4 bit_ctr_1111_add_4_22_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[20]), 
            .I3(n26054), .O(n133[20])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1111_add_4_22 (.CI(n26054), .I0(GND_net), .I1(bit_ctr[20]), 
            .CO(n26055));
    SB_LUT4 bit_ctr_1111_add_4_21_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[19]), 
            .I3(n26053), .O(n133[19])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1111_add_4_21 (.CI(n26053), .I0(GND_net), .I1(bit_ctr[19]), 
            .CO(n26054));
    SB_LUT4 bit_ctr_1111_add_4_20_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[18]), 
            .I3(n26052), .O(n133[18])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1111_add_4_20 (.CI(n26052), .I0(GND_net), .I1(bit_ctr[18]), 
            .CO(n26053));
    SB_LUT4 bit_ctr_1111_add_4_19_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[17]), 
            .I3(n26051), .O(n133[17])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1111_add_4_19 (.CI(n26051), .I0(GND_net), .I1(bit_ctr[17]), 
            .CO(n26052));
    SB_LUT4 sub_14_inv_0_i6_1_lut (.I0(\neo_pixel_transmitter.t0 [5]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[5]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i6_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 bit_ctr_1111_add_4_18_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[16]), 
            .I3(n26050), .O(n133[16])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_inv_0_i15_1_lut (.I0(\neo_pixel_transmitter.t0 [14]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[14]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i15_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY bit_ctr_1111_add_4_18 (.CI(n26050), .I0(GND_net), .I1(bit_ctr[16]), 
            .CO(n26051));
    SB_LUT4 bit_ctr_1111_add_4_17_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[15]), 
            .I3(n26049), .O(n133[15])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_1110_add_4_33_lut (.I0(GND_net), .I1(GND_net), .I2(timer[31]), 
            .I3(n25797), .O(n133_adj_4443[31])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_1110_add_4_32_lut (.I0(GND_net), .I1(GND_net), .I2(timer[30]), 
            .I3(n25796), .O(n133_adj_4443[30])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1111_add_4_17 (.CI(n26049), .I0(GND_net), .I1(bit_ctr[15]), 
            .CO(n26050));
    SB_LUT4 sub_14_inv_0_i16_1_lut (.I0(\neo_pixel_transmitter.t0 [15]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[15]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i16_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i17_1_lut (.I0(\neo_pixel_transmitter.t0 [16]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[16]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i17_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i18_1_lut (.I0(\neo_pixel_transmitter.t0 [17]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[17]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i18_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i19_1_lut (.I0(\neo_pixel_transmitter.t0 [18]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[18]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i19_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i7_1_lut (.I0(\neo_pixel_transmitter.t0 [6]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[6]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i7_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY timer_1110_add_4_32 (.CI(n25796), .I0(GND_net), .I1(timer[30]), 
            .CO(n25797));
    SB_LUT4 timer_1110_add_4_31_lut (.I0(GND_net), .I1(GND_net), .I2(timer[29]), 
            .I3(n25795), .O(n133_adj_4443[29])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1110_add_4_31 (.CI(n25795), .I0(GND_net), .I1(timer[29]), 
            .CO(n25796));
    SB_LUT4 sub_14_add_2_26_lut (.I0(n33219), .I1(timer[24]), .I2(n1[24]), 
            .I3(n25752), .O(n33221)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_26_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_26 (.CI(n25752), .I0(timer[24]), .I1(n1[24]), 
            .CO(n25753));
    SB_LUT4 sub_14_add_2_25_lut (.I0(n33217), .I1(timer[23]), .I2(n1[23]), 
            .I3(n25751), .O(n33219)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_25_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 timer_1110_add_4_30_lut (.I0(GND_net), .I1(GND_net), .I2(timer[28]), 
            .I3(n25794), .O(n133_adj_4443[28])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1110_add_4_30 (.CI(n25794), .I0(GND_net), .I1(timer[28]), 
            .CO(n25795));
    SB_LUT4 bit_ctr_1111_add_4_16_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[14]), 
            .I3(n26048), .O(n133[14])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_1110_add_4_29_lut (.I0(GND_net), .I1(GND_net), .I2(timer[27]), 
            .I3(n25793), .O(n133_adj_4443[27])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1111_add_4_16 (.CI(n26048), .I0(GND_net), .I1(bit_ctr[14]), 
            .CO(n26049));
    SB_LUT4 bit_ctr_1111_add_4_15_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[13]), 
            .I3(n26047), .O(n133[13])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1110_add_4_29 (.CI(n25793), .I0(GND_net), .I1(timer[27]), 
            .CO(n25794));
    SB_CARRY sub_14_add_2_25 (.CI(n25751), .I0(timer[23]), .I1(n1[23]), 
            .CO(n25752));
    SB_CARRY bit_ctr_1111_add_4_15 (.CI(n26047), .I0(GND_net), .I1(bit_ctr[13]), 
            .CO(n26048));
    SB_LUT4 bit_ctr_1111_add_4_14_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[12]), 
            .I3(n26046), .O(n133[12])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1111_add_4_14 (.CI(n26046), .I0(GND_net), .I1(bit_ctr[12]), 
            .CO(n26047));
    SB_LUT4 bit_ctr_1111_add_4_13_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[11]), 
            .I3(n26045), .O(n133[11])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1111_add_4_13 (.CI(n26045), .I0(GND_net), .I1(bit_ctr[11]), 
            .CO(n26046));
    SB_LUT4 timer_1110_add_4_28_lut (.I0(GND_net), .I1(GND_net), .I2(timer[26]), 
            .I3(n25792), .O(n133_adj_4443[26])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_24_lut (.I0(n33215), .I1(timer[22]), .I2(n1[22]), 
            .I3(n25750), .O(n33217)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_24_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 bit_ctr_1111_add_4_12_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[10]), 
            .I3(n26044), .O(n133[10])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1111_add_4_12 (.CI(n26044), .I0(GND_net), .I1(bit_ctr[10]), 
            .CO(n26045));
    SB_LUT4 i1_2_lut_3_lut (.I0(bit_ctr[3]), .I1(bit_ctr[4]), .I2(n27211), 
            .I3(GND_net), .O(n23024));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hf8f8;
    SB_LUT4 sub_14_inv_0_i20_1_lut (.I0(\neo_pixel_transmitter.t0 [19]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[19]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i20_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i31250_3_lut_4_lut (.I0(bit_ctr[3]), .I1(bit_ctr[4]), .I2(n27211), 
            .I3(\state[0] ), .O(n35205));
    defparam i31250_3_lut_4_lut.LUT_INIT = 16'h0700;
    SB_DFFESR bit_ctr_1111__i0 (.Q(\bit_ctr[0] ), .C(clk16MHz), .E(n4129), 
            .D(n133[0]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1111__i1 (.Q(\bit_ctr[1] ), .C(clk16MHz), .E(n4129), 
            .D(n133[1]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1111__i2 (.Q(bit_ctr[2]), .C(clk16MHz), .E(n4129), 
            .D(n133[2]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1111__i3 (.Q(bit_ctr[3]), .C(clk16MHz), .E(n4129), 
            .D(n133[3]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1111__i4 (.Q(bit_ctr[4]), .C(clk16MHz), .E(n4129), 
            .D(n133[4]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1111__i5 (.Q(bit_ctr[5]), .C(clk16MHz), .E(n4129), 
            .D(n133[5]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1111__i6 (.Q(bit_ctr[6]), .C(clk16MHz), .E(n4129), 
            .D(n133[6]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1111__i7 (.Q(bit_ctr[7]), .C(clk16MHz), .E(n4129), 
            .D(n133[7]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1111__i8 (.Q(bit_ctr[8]), .C(clk16MHz), .E(n4129), 
            .D(n133[8]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1111__i9 (.Q(bit_ctr[9]), .C(clk16MHz), .E(n4129), 
            .D(n133[9]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1111__i10 (.Q(bit_ctr[10]), .C(clk16MHz), .E(n4129), 
            .D(n133[10]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1111__i11 (.Q(bit_ctr[11]), .C(clk16MHz), .E(n4129), 
            .D(n133[11]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1111__i12 (.Q(bit_ctr[12]), .C(clk16MHz), .E(n4129), 
            .D(n133[12]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1111__i13 (.Q(bit_ctr[13]), .C(clk16MHz), .E(n4129), 
            .D(n133[13]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1111__i14 (.Q(bit_ctr[14]), .C(clk16MHz), .E(n4129), 
            .D(n133[14]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1111__i15 (.Q(bit_ctr[15]), .C(clk16MHz), .E(n4129), 
            .D(n133[15]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1111__i16 (.Q(bit_ctr[16]), .C(clk16MHz), .E(n4129), 
            .D(n133[16]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1111__i17 (.Q(bit_ctr[17]), .C(clk16MHz), .E(n4129), 
            .D(n133[17]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_LUT4 bit_ctr_1111_add_4_11_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[9]), 
            .I3(n26043), .O(n133[9])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1110_add_4_28 (.CI(n25792), .I0(GND_net), .I1(timer[26]), 
            .CO(n25793));
    SB_CARRY sub_14_add_2_24 (.CI(n25750), .I0(timer[22]), .I1(n1[22]), 
            .CO(n25751));
    SB_CARRY bit_ctr_1111_add_4_11 (.CI(n26043), .I0(GND_net), .I1(bit_ctr[9]), 
            .CO(n26044));
    SB_LUT4 timer_1110_add_4_27_lut (.I0(GND_net), .I1(GND_net), .I2(timer[25]), 
            .I3(n25791), .O(n133_adj_4443[25])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_23_lut (.I0(one_wire_N_380[15]), .I1(timer[21]), 
            .I2(n1[21]), .I3(n25749), .O(n9_adj_4407)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_23_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_23 (.CI(n25749), .I0(timer[21]), .I1(n1[21]), 
            .CO(n25750));
    SB_LUT4 bit_ctr_1111_add_4_10_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[8]), 
            .I3(n26042), .O(n133[8])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1110_add_4_27 (.CI(n25791), .I0(GND_net), .I1(timer[25]), 
            .CO(n25792));
    SB_DFFESR bit_ctr_1111__i18 (.Q(bit_ctr[18]), .C(clk16MHz), .E(n4129), 
            .D(n133[18]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_LUT4 timer_1110_add_4_26_lut (.I0(GND_net), .I1(GND_net), .I2(timer[24]), 
            .I3(n25790), .O(n133_adj_4443[24])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_22_lut (.I0(one_wire_N_380[17]), .I1(timer[20]), 
            .I2(n1[20]), .I3(n25748), .O(n12_adj_4409)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_22_lut.LUT_INIT = 16'hebbe;
    SB_DFFESR bit_ctr_1111__i19 (.Q(bit_ctr[19]), .C(clk16MHz), .E(n4129), 
            .D(n133[19]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_CARRY bit_ctr_1111_add_4_10 (.CI(n26042), .I0(GND_net), .I1(bit_ctr[8]), 
            .CO(n26043));
    SB_DFFESR bit_ctr_1111__i20 (.Q(bit_ctr[20]), .C(clk16MHz), .E(n4129), 
            .D(n133[20]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1111__i21 (.Q(bit_ctr[21]), .C(clk16MHz), .E(n4129), 
            .D(n133[21]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1111__i22 (.Q(bit_ctr[22]), .C(clk16MHz), .E(n4129), 
            .D(n133[22]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1111__i23 (.Q(bit_ctr[23]), .C(clk16MHz), .E(n4129), 
            .D(n133[23]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_LUT4 bit_ctr_1111_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[7]), 
            .I3(n26041), .O(n133[7])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR bit_ctr_1111__i24 (.Q(bit_ctr[24]), .C(clk16MHz), .E(n4129), 
            .D(n133[24]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1111__i25 (.Q(bit_ctr[25]), .C(clk16MHz), .E(n4129), 
            .D(n133[25]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1111__i26 (.Q(bit_ctr[26]), .C(clk16MHz), .E(n4129), 
            .D(n133[26]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1111__i27 (.Q(bit_ctr[27]), .C(clk16MHz), .E(n4129), 
            .D(n133[27]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1111__i28 (.Q(bit_ctr[28]), .C(clk16MHz), .E(n4129), 
            .D(n133[28]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_CARRY bit_ctr_1111_add_4_9 (.CI(n26041), .I0(GND_net), .I1(bit_ctr[7]), 
            .CO(n26042));
    SB_DFFESR bit_ctr_1111__i29 (.Q(bit_ctr[29]), .C(clk16MHz), .E(n4129), 
            .D(n133[29]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1111__i30 (.Q(bit_ctr[30]), .C(clk16MHz), .E(n4129), 
            .D(n133[30]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_LUT4 sub_14_inv_0_i21_1_lut (.I0(\neo_pixel_transmitter.t0 [20]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[20]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i21_1_lut.LUT_INIT = 16'h5555;
    SB_DFFESR bit_ctr_1111__i31 (.Q(bit_ctr[31]), .C(clk16MHz), .E(n4129), 
            .D(n133[31]), .R(n14328));   // verilog/neopixel.v(69[23:32])
    SB_LUT4 sub_14_inv_0_i22_1_lut (.I0(\neo_pixel_transmitter.t0 [21]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[21]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i22_1_lut.LUT_INIT = 16'h5555;
    SB_DFF timer_1110__i0 (.Q(timer[0]), .C(clk16MHz), .D(n133_adj_4443[0]));   // verilog/neopixel.v(12[12:21])
    SB_CARRY timer_1110_add_4_26 (.CI(n25790), .I0(GND_net), .I1(timer[24]), 
            .CO(n25791));
    SB_CARRY sub_14_add_2_22 (.CI(n25748), .I0(timer[20]), .I1(n1[20]), 
            .CO(n25749));
    SB_LUT4 timer_1110_add_4_25_lut (.I0(GND_net), .I1(GND_net), .I2(timer[23]), 
            .I3(n25789), .O(n133_adj_4443[23])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_21_lut (.I0(one_wire_N_380[18]), .I1(timer[19]), 
            .I2(n1[19]), .I3(n25747), .O(n10_adj_4412)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_21_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 bit_ctr_1111_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[6]), 
            .I3(n26040), .O(n133[6])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i19_4_lut (.I0(bit_ctr[22]), .I1(bit_ctr[29]), .I2(bit_ctr[11]), 
            .I3(bit_ctr[19]), .O(n46));
    defparam i19_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i17_4_lut (.I0(bit_ctr[8]), .I1(bit_ctr[14]), .I2(bit_ctr[5]), 
            .I3(bit_ctr[24]), .O(n44));
    defparam i17_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i18_4_lut (.I0(bit_ctr[25]), .I1(bit_ctr[26]), .I2(bit_ctr[20]), 
            .I3(bit_ctr[10]), .O(n45));
    defparam i18_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY timer_1110_add_4_25 (.CI(n25789), .I0(GND_net), .I1(timer[23]), 
            .CO(n25790));
    SB_LUT4 i16_4_lut (.I0(bit_ctr[18]), .I1(bit_ctr[15]), .I2(bit_ctr[31]), 
            .I3(bit_ctr[9]), .O(n43));
    defparam i16_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i15_4_lut (.I0(bit_ctr[23]), .I1(bit_ctr[12]), .I2(bit_ctr[27]), 
            .I3(bit_ctr[16]), .O(n42));
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i14_3_lut (.I0(bit_ctr[17]), .I1(bit_ctr[28]), .I2(bit_ctr[6]), 
            .I3(GND_net), .O(n41));
    defparam i14_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i25_4_lut (.I0(n43), .I1(n45), .I2(n44), .I3(n46), .O(n52));
    defparam i25_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i20_4_lut (.I0(bit_ctr[13]), .I1(bit_ctr[30]), .I2(bit_ctr[7]), 
            .I3(bit_ctr[21]), .O(n47));
    defparam i20_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 timer_1110_add_4_24_lut (.I0(GND_net), .I1(GND_net), .I2(timer[22]), 
            .I3(n25788), .O(n133_adj_4443[22])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_21 (.CI(n25747), .I0(timer[19]), .I1(n1[19]), 
            .CO(n25748));
    SB_CARRY timer_1110_add_4_24 (.CI(n25788), .I0(GND_net), .I1(timer[22]), 
            .CO(n25789));
    SB_LUT4 sub_14_add_2_20_lut (.I0(GND_net), .I1(timer[18]), .I2(n1[18]), 
            .I3(n25746), .O(one_wire_N_380[18])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_20 (.CI(n25746), .I0(timer[18]), .I1(n1[18]), 
            .CO(n25747));
    SB_LUT4 i26_4_lut (.I0(n47), .I1(n52), .I2(n41), .I3(n42), .O(n27211));
    defparam i26_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 sub_14_add_2_19_lut (.I0(GND_net), .I1(timer[17]), .I2(n1[17]), 
            .I3(n25745), .O(one_wire_N_380[17])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_19 (.CI(n25745), .I0(timer[17]), .I1(n1[17]), 
            .CO(n25746));
    SB_LUT4 sub_14_add_2_18_lut (.I0(one_wire_N_380[14]), .I1(timer[16]), 
            .I2(n1[16]), .I3(n25744), .O(n11_adj_4414)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_18_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 timer_1110_add_4_23_lut (.I0(GND_net), .I1(GND_net), .I2(timer[21]), 
            .I3(n25787), .O(n133_adj_4443[21])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_18 (.CI(n25744), .I0(timer[16]), .I1(n1[16]), 
            .CO(n25745));
    SB_LUT4 sub_14_add_2_17_lut (.I0(GND_net), .I1(timer[15]), .I2(n1[15]), 
            .I3(n25743), .O(one_wire_N_380[15])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_17 (.CI(n25743), .I0(timer[15]), .I1(n1[15]), 
            .CO(n25744));
    SB_LUT4 i3_4_lut (.I0(n23024), .I1(\state[0] ), .I2(LED_c), .I3(\state[1] ), 
            .O(n4126));   // verilog/neopixel.v(35[12] 117[6])
    defparam i3_4_lut.LUT_INIT = 16'h8000;
    SB_CARRY timer_1110_add_4_23 (.CI(n25787), .I0(GND_net), .I1(timer[21]), 
            .CO(n25788));
    SB_LUT4 i10369_2_lut (.I0(n4129), .I1(n4126), .I2(GND_net), .I3(GND_net), 
            .O(n14328));   // verilog/neopixel.v(69[23:32])
    defparam i10369_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 timer_1110_add_4_22_lut (.I0(GND_net), .I1(GND_net), .I2(timer[20]), 
            .I3(n25786), .O(n133_adj_4443[20])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1110_add_4_22 (.CI(n25786), .I0(GND_net), .I1(timer[20]), 
            .CO(n25787));
    SB_LUT4 sub_14_add_2_16_lut (.I0(GND_net), .I1(timer[14]), .I2(n1[14]), 
            .I3(n25742), .O(one_wire_N_380[14])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1111_add_4_8 (.CI(n26040), .I0(GND_net), .I1(bit_ctr[6]), 
            .CO(n26041));
    SB_LUT4 i1073_4_lut (.I0(n31970), .I1(\state[1] ), .I2(n4126), .I3(\state[0] ), 
            .O(n4129));
    defparam i1073_4_lut.LUT_INIT = 16'hfa32;
    SB_LUT4 bit_ctr_1111_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[5]), 
            .I3(n26039), .O(n133[5])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_1110_add_4_21_lut (.I0(GND_net), .I1(GND_net), .I2(timer[19]), 
            .I3(n25785), .O(n133_adj_4443[19])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1110_add_4_21 (.CI(n25785), .I0(GND_net), .I1(timer[19]), 
            .CO(n25786));
    SB_LUT4 timer_1110_add_4_20_lut (.I0(GND_net), .I1(GND_net), .I2(timer[18]), 
            .I3(n25784), .O(n133_adj_4443[18])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1110_add_4_20 (.CI(n25784), .I0(GND_net), .I1(timer[18]), 
            .CO(n25785));
    SB_LUT4 i1_2_lut (.I0(\bit_ctr[1] ), .I1(\bit_ctr[0] ), .I2(GND_net), 
            .I3(GND_net), .O(color_bit_N_423[1]));
    defparam i1_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 timer_1110_add_4_19_lut (.I0(GND_net), .I1(GND_net), .I2(timer[17]), 
            .I3(n25783), .O(n133_adj_4443[17])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_16 (.CI(n25742), .I0(timer[14]), .I1(n1[14]), 
            .CO(n25743));
    SB_CARRY timer_1110_add_4_19 (.CI(n25783), .I0(GND_net), .I1(timer[17]), 
            .CO(n25784));
    SB_LUT4 timer_1110_add_4_18_lut (.I0(GND_net), .I1(GND_net), .I2(timer[16]), 
            .I3(n25782), .O(n133_adj_4443[16])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_inv_0_i23_1_lut (.I0(\neo_pixel_transmitter.t0 [22]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[22]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i23_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY timer_1110_add_4_18 (.CI(n25782), .I0(GND_net), .I1(timer[16]), 
            .CO(n25783));
    SB_LUT4 timer_1110_add_4_17_lut (.I0(GND_net), .I1(GND_net), .I2(timer[15]), 
            .I3(n25781), .O(n133_adj_4443[15])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1110_add_4_17 (.CI(n25781), .I0(GND_net), .I1(timer[15]), 
            .CO(n25782));
    SB_LUT4 sub_14_add_2_15_lut (.I0(n33213), .I1(timer[13]), .I2(n1[13]), 
            .I3(n25741), .O(n33215)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_15_lut.LUT_INIT = 16'hebbe;
    SB_CARRY bit_ctr_1111_add_4_7 (.CI(n26039), .I0(GND_net), .I1(bit_ctr[5]), 
            .CO(n26040));
    SB_LUT4 bit_ctr_1111_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[4]), 
            .I3(n26038), .O(n133[4])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_1110_add_4_16_lut (.I0(GND_net), .I1(GND_net), .I2(timer[14]), 
            .I3(n25780), .O(n133_adj_4443[14])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1110_add_4_16 (.CI(n25780), .I0(GND_net), .I1(timer[14]), 
            .CO(n25781));
    SB_CARRY bit_ctr_1111_add_4_6 (.CI(n26038), .I0(GND_net), .I1(bit_ctr[4]), 
            .CO(n26039));
    SB_CARRY sub_14_add_2_15 (.CI(n25741), .I0(timer[13]), .I1(n1[13]), 
            .CO(n25742));
    SB_LUT4 sub_14_add_2_14_lut (.I0(one_wire_N_380[11]), .I1(timer[12]), 
            .I2(n1[12]), .I3(n25740), .O(n33213)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_14_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_14 (.CI(n25740), .I0(timer[12]), .I1(n1[12]), 
            .CO(n25741));
    SB_LUT4 timer_1110_add_4_15_lut (.I0(GND_net), .I1(GND_net), .I2(timer[13]), 
            .I3(n25779), .O(n133_adj_4443[13])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_ctr_1111_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[3]), 
            .I3(n26037), .O(n133[3])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1111_add_4_5 (.CI(n26037), .I0(GND_net), .I1(bit_ctr[3]), 
            .CO(n26038));
    SB_CARRY timer_1110_add_4_15 (.CI(n25779), .I0(GND_net), .I1(timer[13]), 
            .CO(n25780));
    SB_LUT4 sub_14_add_2_13_lut (.I0(GND_net), .I1(timer[11]), .I2(n1[11]), 
            .I3(n25739), .O(one_wire_N_380[11])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_ctr_1111_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[2]), 
            .I3(n26036), .O(n133[2])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_13 (.CI(n25739), .I0(timer[11]), .I1(n1[11]), 
            .CO(n25740));
    SB_CARRY bit_ctr_1111_add_4_4 (.CI(n26036), .I0(GND_net), .I1(bit_ctr[2]), 
            .CO(n26037));
    SB_LUT4 timer_1110_add_4_14_lut (.I0(GND_net), .I1(GND_net), .I2(timer[12]), 
            .I3(n25778), .O(n133_adj_4443[12])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_12_lut (.I0(GND_net), .I1(timer[10]), .I2(n1[10]), 
            .I3(n25738), .O(\one_wire_N_380[10] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_ctr_1111_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(\bit_ctr[1] ), 
            .I3(n26035), .O(n133[1])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1111_add_4_3 (.CI(n26035), .I0(GND_net), .I1(\bit_ctr[1] ), 
            .CO(n26036));
    SB_LUT4 bit_ctr_1111_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(\bit_ctr[0] ), 
            .I3(VCC_net), .O(n133[0])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1111_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1110_add_4_14 (.CI(n25778), .I0(GND_net), .I1(timer[12]), 
            .CO(n25779));
    SB_CARRY bit_ctr_1111_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(\bit_ctr[0] ), 
            .CO(n26035));
    SB_CARRY sub_14_add_2_12 (.CI(n25738), .I0(timer[10]), .I1(n1[10]), 
            .CO(n25739));
    SB_LUT4 n37131_bdd_4_lut (.I0(n37131), .I1(\neopxl_color[21] ), .I2(\neopxl_color[20] ), 
            .I3(color_bit_N_423[1]), .O(n37134));
    defparam n37131_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 timer_1110_add_4_13_lut (.I0(GND_net), .I1(GND_net), .I2(timer[11]), 
            .I3(n25777), .O(n133_adj_4443[11])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut (.I0(n23821), .I1(n23826), .I2(\state[0] ), .I3(\neo_pixel_transmitter.done ), 
            .O(n29_adj_4426));
    defparam i1_4_lut.LUT_INIT = 16'h3553;
    SB_LUT4 sub_14_add_2_11_lut (.I0(GND_net), .I1(timer[9]), .I2(n1[9]), 
            .I3(n25737), .O(\one_wire_N_380[9] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_ctr_0__bdd_4_lut_32709_4_lut (.I0(\bit_ctr[0] ), .I1(\neopxl_color[10] ), 
            .I2(\neopxl_color[11] ), .I3(\bit_ctr[1] ), .O(n37047));
    defparam bit_ctr_0__bdd_4_lut_32709_4_lut.LUT_INIT = 16'heea0;
    SB_CARRY sub_14_add_2_11 (.CI(n25737), .I0(timer[9]), .I1(n1[9]), 
            .CO(n25738));
    SB_LUT4 mux_719_Mux_0_i3_3_lut (.I0(start), .I1(\neo_pixel_transmitter.done ), 
            .I2(\state[1] ), .I3(GND_net), .O(\neo_pixel_transmitter.done_N_437 ));   // verilog/neopixel.v(36[4] 116[11])
    defparam mux_719_Mux_0_i3_3_lut.LUT_INIT = 16'hc1c1;
    SB_LUT4 sub_14_add_2_10_lut (.I0(GND_net), .I1(timer[8]), .I2(n1[8]), 
            .I3(n25736), .O(\one_wire_N_380[8] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_10 (.CI(n25736), .I0(timer[8]), .I1(n1[8]), 
            .CO(n25737));
    SB_LUT4 sub_14_add_2_9_lut (.I0(n33237), .I1(timer[7]), .I2(n1[7]), 
            .I3(n25735), .O(n33239)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_9_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_9 (.CI(n25735), .I0(timer[7]), .I1(n1[7]), .CO(n25736));
    SB_CARRY timer_1110_add_4_13 (.CI(n25777), .I0(GND_net), .I1(timer[11]), 
            .CO(n25778));
    SB_DFFE state_i1 (.Q(\state[1] ), .C(clk16MHz), .E(VCC_net), .D(n12));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i0  (.Q(\neo_pixel_transmitter.t0 [0]), 
           .C(clk16MHz), .D(n14733));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 sub_14_inv_0_i24_1_lut (.I0(\neo_pixel_transmitter.t0 [23]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[23]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i24_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i25_1_lut (.I0(\neo_pixel_transmitter.t0 [24]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[24]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i25_1_lut.LUT_INIT = 16'h5555;
    SB_DFF timer_1110__i31 (.Q(timer[31]), .C(clk16MHz), .D(n133_adj_4443[31]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i30 (.Q(timer[30]), .C(clk16MHz), .D(n133_adj_4443[30]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i29 (.Q(timer[29]), .C(clk16MHz), .D(n133_adj_4443[29]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i28 (.Q(timer[28]), .C(clk16MHz), .D(n133_adj_4443[28]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i27 (.Q(timer[27]), .C(clk16MHz), .D(n133_adj_4443[27]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i26 (.Q(timer[26]), .C(clk16MHz), .D(n133_adj_4443[26]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i25 (.Q(timer[25]), .C(clk16MHz), .D(n133_adj_4443[25]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i24 (.Q(timer[24]), .C(clk16MHz), .D(n133_adj_4443[24]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i23 (.Q(timer[23]), .C(clk16MHz), .D(n133_adj_4443[23]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i22 (.Q(timer[22]), .C(clk16MHz), .D(n133_adj_4443[22]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i21 (.Q(timer[21]), .C(clk16MHz), .D(n133_adj_4443[21]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i20 (.Q(timer[20]), .C(clk16MHz), .D(n133_adj_4443[20]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i19 (.Q(timer[19]), .C(clk16MHz), .D(n133_adj_4443[19]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i18 (.Q(timer[18]), .C(clk16MHz), .D(n133_adj_4443[18]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i17 (.Q(timer[17]), .C(clk16MHz), .D(n133_adj_4443[17]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i16 (.Q(timer[16]), .C(clk16MHz), .D(n133_adj_4443[16]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i15 (.Q(timer[15]), .C(clk16MHz), .D(n133_adj_4443[15]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i14 (.Q(timer[14]), .C(clk16MHz), .D(n133_adj_4443[14]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i13 (.Q(timer[13]), .C(clk16MHz), .D(n133_adj_4443[13]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i12 (.Q(timer[12]), .C(clk16MHz), .D(n133_adj_4443[12]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i11 (.Q(timer[11]), .C(clk16MHz), .D(n133_adj_4443[11]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i10 (.Q(timer[10]), .C(clk16MHz), .D(n133_adj_4443[10]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i9 (.Q(timer[9]), .C(clk16MHz), .D(n133_adj_4443[9]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i8 (.Q(timer[8]), .C(clk16MHz), .D(n133_adj_4443[8]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i7 (.Q(timer[7]), .C(clk16MHz), .D(n133_adj_4443[7]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i6 (.Q(timer[6]), .C(clk16MHz), .D(n133_adj_4443[6]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i5 (.Q(timer[5]), .C(clk16MHz), .D(n133_adj_4443[5]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i4 (.Q(timer[4]), .C(clk16MHz), .D(n133_adj_4443[4]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i3 (.Q(timer[3]), .C(clk16MHz), .D(n133_adj_4443[3]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i2 (.Q(timer[2]), .C(clk16MHz), .D(n133_adj_4443[2]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1110__i1 (.Q(timer[1]), .C(clk16MHz), .D(n133_adj_4443[1]));   // verilog/neopixel.v(12[12:21])
    SB_LUT4 i17235_2_lut_3_lut (.I0(\bit_ctr[1] ), .I1(\bit_ctr[0] ), .I2(bit_ctr[2]), 
            .I3(GND_net), .O(n21158));
    defparam i17235_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_3_lut_adj_1521 (.I0(\bit_ctr[1] ), .I1(\bit_ctr[0] ), 
            .I2(bit_ctr[2]), .I3(GND_net), .O(color_bit_N_423[2]));
    defparam i1_2_lut_3_lut_adj_1521.LUT_INIT = 16'h1e1e;
    SB_LUT4 n37137_bdd_4_lut_4_lut (.I0(color_bit_N_423[1]), .I1(\neopxl_color[14] ), 
            .I2(\neopxl_color[15] ), .I3(n37137), .O(n37140));   // verilog/neopixel.v(19[6:15])
    defparam n37137_bdd_4_lut_4_lut.LUT_INIT = 16'hf588;
    SB_LUT4 timer_1110_add_4_12_lut (.I0(GND_net), .I1(GND_net), .I2(timer[10]), 
            .I3(n25776), .O(n133_adj_4443[10])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_8_lut (.I0(n33235), .I1(timer[6]), .I2(n1[6]), 
            .I3(n25734), .O(n33237)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_8_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_8 (.CI(n25734), .I0(timer[6]), .I1(n1[6]), .CO(n25735));
    SB_CARRY timer_1110_add_4_12 (.CI(n25776), .I0(GND_net), .I1(timer[10]), 
            .CO(n25777));
    SB_LUT4 sub_14_add_2_7_lut (.I0(one_wire_N_380[4]), .I1(timer[5]), .I2(n1[5]), 
            .I3(n25733), .O(n33235)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_7_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_7 (.CI(n25733), .I0(timer[5]), .I1(n1[5]), .CO(n25734));
    SB_LUT4 timer_1110_add_4_11_lut (.I0(GND_net), .I1(GND_net), .I2(timer[9]), 
            .I3(n25775), .O(n133_adj_4443[9])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_6_lut (.I0(GND_net), .I1(timer[4]), .I2(n1[4]), 
            .I3(n25732), .O(one_wire_N_380[4])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_6 (.CI(n25732), .I0(timer[4]), .I1(n1[4]), .CO(n25733));
    SB_CARRY timer_1110_add_4_11 (.CI(n25775), .I0(GND_net), .I1(timer[9]), 
            .CO(n25776));
    SB_LUT4 sub_14_add_2_5_lut (.I0(GND_net), .I1(timer[3]), .I2(n1[3]), 
            .I3(n25731), .O(\one_wire_N_380[3] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_5 (.CI(n25731), .I0(timer[3]), .I1(n1[3]), .CO(n25732));
    SB_LUT4 timer_1110_add_4_10_lut (.I0(GND_net), .I1(GND_net), .I2(timer[8]), 
            .I3(n25774), .O(n133_adj_4443[8])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_4_lut (.I0(GND_net), .I1(timer[2]), .I2(n1[2]), 
            .I3(n25730), .O(\one_wire_N_380[2] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_4 (.CI(n25730), .I0(timer[2]), .I1(n1[2]), .CO(n25731));
    SB_DFF \neo_pixel_transmitter.t0_i0_i1  (.Q(\neo_pixel_transmitter.t0 [1]), 
           .C(clk16MHz), .D(n15192));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i2  (.Q(\neo_pixel_transmitter.t0 [2]), 
           .C(clk16MHz), .D(n15191));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i3  (.Q(\neo_pixel_transmitter.t0 [3]), 
           .C(clk16MHz), .D(n15190));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i4  (.Q(\neo_pixel_transmitter.t0 [4]), 
           .C(clk16MHz), .D(n15189));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i5  (.Q(\neo_pixel_transmitter.t0 [5]), 
           .C(clk16MHz), .D(n15188));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i6  (.Q(\neo_pixel_transmitter.t0 [6]), 
           .C(clk16MHz), .D(n15187));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i7  (.Q(\neo_pixel_transmitter.t0 [7]), 
           .C(clk16MHz), .D(n15186));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i8  (.Q(\neo_pixel_transmitter.t0 [8]), 
           .C(clk16MHz), .D(n15185));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i9  (.Q(\neo_pixel_transmitter.t0 [9]), 
           .C(clk16MHz), .D(n15184));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i10  (.Q(\neo_pixel_transmitter.t0 [10]), 
           .C(clk16MHz), .D(n15183));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i11  (.Q(\neo_pixel_transmitter.t0 [11]), 
           .C(clk16MHz), .D(n15182));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i12  (.Q(\neo_pixel_transmitter.t0 [12]), 
           .C(clk16MHz), .D(n15181));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i13  (.Q(\neo_pixel_transmitter.t0 [13]), 
           .C(clk16MHz), .D(n15180));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i14  (.Q(\neo_pixel_transmitter.t0 [14]), 
           .C(clk16MHz), .D(n15179));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i15  (.Q(\neo_pixel_transmitter.t0 [15]), 
           .C(clk16MHz), .D(n15178));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i16  (.Q(\neo_pixel_transmitter.t0 [16]), 
           .C(clk16MHz), .D(n15177));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i17  (.Q(\neo_pixel_transmitter.t0 [17]), 
           .C(clk16MHz), .D(n15176));   // verilog/neopixel.v(35[12] 117[6])
    SB_CARRY timer_1110_add_4_10 (.CI(n25774), .I0(GND_net), .I1(timer[8]), 
            .CO(n25775));
    SB_LUT4 sub_14_add_2_3_lut (.I0(\one_wire_N_380[2] ), .I1(timer[1]), 
            .I2(n1[1]), .I3(n25729), .O(n4)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_3_lut.LUT_INIT = 16'h8228;
    SB_CARRY sub_14_add_2_3 (.CI(n25729), .I0(timer[1]), .I1(n1[1]), .CO(n25730));
    SB_LUT4 timer_1110_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(timer[7]), 
            .I3(n25773), .O(n133_adj_4443[7])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_2 (.CI(VCC_net), .I0(timer[0]), .I1(n1[0]), 
            .CO(n25729));
    SB_DFF \neo_pixel_transmitter.t0_i0_i18  (.Q(\neo_pixel_transmitter.t0 [18]), 
           .C(clk16MHz), .D(n15175));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i19  (.Q(\neo_pixel_transmitter.t0 [19]), 
           .C(clk16MHz), .D(n15174));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i20  (.Q(\neo_pixel_transmitter.t0 [20]), 
           .C(clk16MHz), .D(n15173));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i21  (.Q(\neo_pixel_transmitter.t0 [21]), 
           .C(clk16MHz), .D(n15172));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i22  (.Q(\neo_pixel_transmitter.t0 [22]), 
           .C(clk16MHz), .D(n15171));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i23  (.Q(\neo_pixel_transmitter.t0 [23]), 
           .C(clk16MHz), .D(n15170));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i24  (.Q(\neo_pixel_transmitter.t0 [24]), 
           .C(clk16MHz), .D(n15169));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i25  (.Q(\neo_pixel_transmitter.t0 [25]), 
           .C(clk16MHz), .D(n15168));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i26  (.Q(\neo_pixel_transmitter.t0 [26]), 
           .C(clk16MHz), .D(n15167));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i27  (.Q(\neo_pixel_transmitter.t0 [27]), 
           .C(clk16MHz), .D(n15166));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i28  (.Q(\neo_pixel_transmitter.t0 [28]), 
           .C(clk16MHz), .D(n15165));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i29  (.Q(\neo_pixel_transmitter.t0 [29]), 
           .C(clk16MHz), .D(n15164));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i30  (.Q(\neo_pixel_transmitter.t0 [30]), 
           .C(clk16MHz), .D(n15163));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i31  (.Q(\neo_pixel_transmitter.t0 [31]), 
           .C(clk16MHz), .D(n15162));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 sub_14_inv_0_i26_1_lut (.I0(\neo_pixel_transmitter.t0 [25]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[25]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i26_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY timer_1110_add_4_9 (.CI(n25773), .I0(GND_net), .I1(timer[7]), 
            .CO(n25774));
    SB_LUT4 timer_1110_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(timer[6]), 
            .I3(n25772), .O(n133_adj_4443[6])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_inv_0_i27_1_lut (.I0(\neo_pixel_transmitter.t0 [26]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[26]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i27_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY timer_1110_add_4_8 (.CI(n25772), .I0(GND_net), .I1(timer[6]), 
            .CO(n25773));
    SB_LUT4 timer_1110_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(timer[5]), 
            .I3(n25771), .O(n133_adj_4443[5])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1110_add_4_7 (.CI(n25771), .I0(GND_net), .I1(timer[5]), 
            .CO(n25772));
    SB_LUT4 timer_1110_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(timer[4]), 
            .I3(n25770), .O(n133_adj_4443[4])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1110_add_4_6 (.CI(n25770), .I0(GND_net), .I1(timer[4]), 
            .CO(n25771));
    SB_LUT4 i3_4_lut_4_lut (.I0(n82), .I1(\state[1] ), .I2(\state[0] ), 
            .I3(\neo_pixel_transmitter.done ), .O(n32196));
    defparam i3_4_lut_4_lut.LUT_INIT = 16'h0004;
    SB_LUT4 sub_14_inv_0_i28_1_lut (.I0(\neo_pixel_transmitter.t0 [27]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[27]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i28_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 timer_1110_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(timer[3]), 
            .I3(n25769), .O(n133_adj_4443[3])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1110_add_4_5 (.CI(n25769), .I0(GND_net), .I1(timer[3]), 
            .CO(n25770));
    SB_LUT4 timer_1110_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(timer[2]), 
            .I3(n25768), .O(n133_adj_4443[2])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1110_add_4_4 (.CI(n25768), .I0(GND_net), .I1(timer[2]), 
            .CO(n25769));
    SB_LUT4 sub_14_inv_0_i29_1_lut (.I0(\neo_pixel_transmitter.t0 [28]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[28]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i29_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i30_1_lut (.I0(\neo_pixel_transmitter.t0 [29]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[29]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i30_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i31_1_lut (.I0(\neo_pixel_transmitter.t0 [30]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[30]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i31_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i32_1_lut (.I0(\neo_pixel_transmitter.t0 [31]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[31]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i32_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 timer_1110_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(timer[1]), 
            .I3(n25767), .O(n133_adj_4443[1])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1110_add_4_3 (.CI(n25767), .I0(GND_net), .I1(timer[1]), 
            .CO(n25768));
    SB_LUT4 timer_1110_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(timer[0]), 
            .I3(VCC_net), .O(n133_adj_4443[0])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1110_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1110_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(timer[0]), 
            .CO(n25767));
    SB_DFF start_103 (.Q(start), .C(clk16MHz), .D(n29163));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 color_bit_N_423_1__bdd_4_lut_32729 (.I0(color_bit_N_423[1]), .I1(n33766), 
            .I2(n33767), .I3(color_bit_N_423[2]), .O(n37065));
    defparam color_bit_N_423_1__bdd_4_lut_32729.LUT_INIT = 16'he4aa;
    SB_LUT4 n37065_bdd_4_lut (.I0(n37065), .I1(n33764), .I2(n33763), .I3(color_bit_N_423[2]), 
            .O(n37068));
    defparam n37065_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFESS state_i0 (.Q(\state[0] ), .C(clk16MHz), .E(n7_adj_4439), 
            .D(state_3__N_229[0]), .S(n23814));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR one_wire_108 (.Q(NEOPXL_c), .C(clk16MHz), .E(n30688), .D(\neo_pixel_transmitter.done_N_443 ), 
            .R(n32196));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 i1_4_lut_adj_1522 (.I0(\state[1] ), .I1(start), .I2(n23810), 
            .I3(n33483), .O(n1737));   // verilog/neopixel.v(35[12] 117[6])
    defparam i1_4_lut_adj_1522.LUT_INIT = 16'h5554;
    SB_LUT4 i1_3_lut (.I0(\one_wire_N_380[10] ), .I1(\one_wire_N_380[8] ), 
            .I2(\one_wire_N_380[9] ), .I3(GND_net), .O(n45_adj_4440));   // verilog/neopixel.v(53[15:25])
    defparam i1_3_lut.LUT_INIT = 16'ha8a8;
    SB_LUT4 i1_2_lut_3_lut_adj_1523 (.I0(start), .I1(\neo_pixel_transmitter.done ), 
            .I2(n7), .I3(GND_net), .O(n40_adj_18));   // verilog/neopixel.v(35[12] 117[6])
    defparam i1_2_lut_3_lut_adj_1523.LUT_INIT = 16'h4040;
    SB_LUT4 sub_14_inv_0_i8_1_lut (.I0(\neo_pixel_transmitter.t0 [7]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[7]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i8_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i9_1_lut (.I0(\neo_pixel_transmitter.t0 [8]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[8]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i9_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i10_1_lut (.I0(\neo_pixel_transmitter.t0 [9]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[9]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i10_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 bit_ctr_0__bdd_4_lut_4_lut_4_lut (.I0(\bit_ctr[1] ), .I1(\bit_ctr[0] ), 
            .I2(\neopxl_color[13] ), .I3(\neopxl_color[12] ), .O(n37137));   // verilog/neopixel.v(19[6:15])
    defparam bit_ctr_0__bdd_4_lut_4_lut_4_lut.LUT_INIT = 16'hd5c4;
    SB_LUT4 i2_2_lut (.I0(\one_wire_N_380[3] ), .I1(n4), .I2(GND_net), 
            .I3(GND_net), .O(n31895));   // verilog/neopixel.v(53[15:25])
    defparam i2_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i32166_4_lut (.I0(n31895), .I1(n33249), .I2(\neo_pixel_transmitter.done ), 
            .I3(\state[0] ), .O(n36385));
    defparam i32166_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i31251_3_lut (.I0(n45_adj_4440), .I1(n40), .I2(n39), .I3(GND_net), 
            .O(n35209));
    defparam i31251_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i47_4_lut (.I0(n23826), .I1(n35209), .I2(\state[1] ), .I3(start), 
            .O(n30684));
    defparam i47_4_lut.LUT_INIT = 16'hcfca;
    SB_LUT4 i44_4_lut (.I0(n30684), .I1(n36156), .I2(\state[0] ), .I3(\neo_pixel_transmitter.done ), 
            .O(n30688));
    defparam i44_4_lut.LUT_INIT = 16'h3335;
    SB_LUT4 i74_1_lut (.I0(\neo_pixel_transmitter.done ), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(\neo_pixel_transmitter.done_N_443 ));   // verilog/neopixel.v(35[12] 117[6])
    defparam i74_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i7_4_lut (.I0(n9_adj_4407), .I1(n11_adj_4414), .I2(n10_adj_4412), 
            .I3(n12_adj_4409), .O(n39));   // verilog/neopixel.v(104[14:39])
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i15_3_lut (.I0(n40_adj_18), .I1(n30549), .I2(\state[1] ), 
            .I3(GND_net), .O(n7_adj_4439));
    defparam i15_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31963_3_lut (.I0(n37140), .I1(n37050), .I2(color_bit_N_423[2]), 
            .I3(GND_net), .O(n36367));
    defparam i31963_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_rep_475_2_lut (.I0(bit_ctr[3]), .I1(n21158), .I2(GND_net), 
            .I3(GND_net), .O(n37611));
    defparam i1_rep_475_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_adj_1524 (.I0(bit_ctr[4]), .I1(bit_ctr[3]), .I2(n21158), 
            .I3(GND_net), .O(n26713));
    defparam i1_3_lut_adj_1524.LUT_INIT = 16'h6a6a;
    SB_LUT4 i32028_4_lut (.I0(n36367), .I1(n37068), .I2(bit_ctr[3]), .I3(n21158), 
            .O(n36433));   // verilog/neopixel.v(22[26:38])
    defparam i32028_4_lut.LUT_INIT = 16'hacca;
    SB_LUT4 i30961_4_lut (.I0(n37158), .I1(n37611), .I2(n37134), .I3(color_bit_N_423[2]), 
            .O(n35067));
    defparam i30961_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i17206_4_lut (.I0(n35067), .I1(n23024), .I2(n36433), .I3(n26713), 
            .O(state_3__N_229[0]));   // verilog/neopixel.v(40[18] 45[12])
    defparam i17206_4_lut.LUT_INIT = 16'h3022;
    SB_LUT4 i29360_3_lut (.I0(\neopxl_color[0] ), .I1(\neopxl_color[1] ), 
            .I2(\bit_ctr[0] ), .I3(GND_net), .O(n33763));
    defparam i29360_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i29361_3_lut (.I0(\neopxl_color[2] ), .I1(\neopxl_color[3] ), 
            .I2(\bit_ctr[0] ), .I3(GND_net), .O(n33764));
    defparam i29361_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i29364_3_lut (.I0(\neopxl_color[6] ), .I1(\neopxl_color[7] ), 
            .I2(\bit_ctr[0] ), .I3(GND_net), .O(n33767));
    defparam i29364_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i29363_3_lut (.I0(\neopxl_color[4] ), .I1(\neopxl_color[5] ), 
            .I2(\bit_ctr[0] ), .I3(GND_net), .O(n33766));
    defparam i29363_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i26202_2_lut_3_lut (.I0(\neo_pixel_transmitter.done ), .I1(n82), 
            .I2(\state[0] ), .I3(GND_net), .O(n30549));   // verilog/neopixel.v(35[12] 117[6])
    defparam i26202_2_lut_3_lut.LUT_INIT = 16'hf4f4;
    SB_LUT4 i2_2_lut_3_lut (.I0(\neo_pixel_transmitter.done ), .I1(n82), 
            .I2(\state[0] ), .I3(GND_net), .O(n32262));   // verilog/neopixel.v(35[12] 117[6])
    defparam i2_2_lut_3_lut.LUT_INIT = 16'h0404;
    SB_LUT4 bit_ctr_0__bdd_4_lut_32714_4_lut (.I0(\bit_ctr[0] ), .I1(\neopxl_color[22] ), 
            .I2(\neopxl_color[23] ), .I3(\bit_ctr[1] ), .O(n37131));
    defparam bit_ctr_0__bdd_4_lut_32714_4_lut.LUT_INIT = 16'heea0;
    SB_LUT4 sub_14_inv_0_i11_1_lut (.I0(\neo_pixel_transmitter.t0 [10]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[10]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i11_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i12_1_lut (.I0(\neo_pixel_transmitter.t0 [11]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[11]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i12_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_2_lut_adj_1525 (.I0(\one_wire_N_380[8] ), .I1(n33239), .I2(GND_net), 
            .I3(GND_net), .O(n33241));   // verilog/neopixel.v(53[15:25])
    defparam i1_2_lut_adj_1525.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_1526 (.I0(\one_wire_N_380[10] ), .I1(n29971), .I2(\one_wire_N_380[9] ), 
            .I3(n33241), .O(n23810));   // verilog/neopixel.v(53[15:25])
    defparam i1_4_lut_adj_1526.LUT_INIT = 16'hfffe;
    SB_LUT4 n37047_bdd_4_lut (.I0(n37047), .I1(\neopxl_color[9] ), .I2(\neopxl_color[8] ), 
            .I3(color_bit_N_423[1]), .O(n37050));
    defparam n37047_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 sub_14_inv_0_i13_1_lut (.I0(\neo_pixel_transmitter.t0 [12]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[12]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i13_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i1_1_lut (.I0(\neo_pixel_transmitter.t0 [0]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[0]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i1_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i2_1_lut (.I0(\neo_pixel_transmitter.t0 [1]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[1]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i2_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i31752_3_lut_4_lut (.I0(start), .I1(\state[1] ), .I2(n36385), 
            .I3(n23810), .O(n36156));
    defparam i31752_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i32604_2_lut_3_lut (.I0(start), .I1(\state[1] ), .I2(n29_adj_4426), 
            .I3(GND_net), .O(n29935));
    defparam i32604_2_lut_3_lut.LUT_INIT = 16'hefef;
    
endmodule
//
// Verilog Description of module coms
//

module coms (GND_net, \data_out_frame[24] , \data_out_frame[23] , clk16MHz, 
            reset, n15047, VCC_net, \data_in_frame[11] , n29309, n15041, 
            \FRAME_MATCHER.i[0] , n15038, n15035, \data_in_frame[15] , 
            n13750, rx_data, n29311, n15029, \data_in_frame[18] , 
            n15026, n29313, \data_in_frame[10] , n13702, n198, n29315, 
            n13776, neopxl_color, \data_in_frame[4] , n8291, n13700, 
            \data_in_frame[18][2] , \data_in_frame[5] , n13760, \data_out_frame[13] , 
            \data_in_frame[12][7] , \data_in_frame[17][7] , \data_in_frame[17][6] , 
            \data_in_frame[17][1] , n13736, n29319, \data_in_frame[10][3] , 
            n29321, \data_in_frame[10][2] , n15005, \data_in_frame[10][1] , 
            \data_out_frame[25] , \FRAME_MATCHER.state[3] , n15002, \data_in_frame[10][0] , 
            \FRAME_MATCHER.i_31__N_2379 , DE_c, \FRAME_MATCHER.i[3] , 
            n21178, n9, n179, n13763, n29975, \data_in_frame[6] , 
            \data_in_frame[4][7] , LED_c, \data_in_frame[12][0] , tx_active, 
            \data_in_frame[19][0] , \data_in_frame[18][1] , n29361, \data_in_frame[2][0] , 
            n29357, \data_in_frame[2][1] , n29353, \data_in_frame[2][2] , 
            n29349, \data_in_frame[2][3] , \data_in_frame[19][7] , n14709, 
            \data_in_frame[2][5] , n14712, \data_in_frame[2][6] , n14717, 
            \data_in_frame[2][7] , \data_in_frame[18][7] , n199, n23810, 
            n31895, n33249, \state[0] , n7, start, \neo_pixel_transmitter.done , 
            \byte_transmit_counter[0] , \data_out_frame[14] , \state[1] , 
            n31970, n29467, \data_in_frame[4][1] , n14778, \data_in_frame[4][2] , 
            n14781, \data_in_frame[4][3] , n14784, \data_in_frame[4][4] , 
            n14817, \data_in_frame[4][5] , n14820, n11985, \data_out_frame[4] , 
            \data_out_frame[5] , \data_out_frame[1][1] , \data_out_frame[3][1] , 
            \byte_transmit_counter[1] , \data_out_frame[12] , \data_in_frame[0] , 
            n30078, n30097, n14824, \data_in_frame[18][6] , n30170, 
            n11092, \data_in_frame[19][1] , \data_in_frame[18][0] , rx_data_ready, 
            \FRAME_MATCHER.rx_data_ready_prev , \data_in_frame[6][1] , \data_out_frame[26] , 
            \data_out_frame[27] , n1519, \data_out_frame[0][2] , n29826, 
            n19958, n31946, \data_out_frame[0][3] , n29827, n10649, 
            \data_out_frame[0][4] , n29828, \data_out_frame[1][0] , n29829, 
            n29830, \data_out_frame[1][3] , n29832, \data_out_frame[1][5] , 
            n29836, n13747, \data_in_frame[17][2] , \data_in_frame[12][2] , 
            \data_in_frame[12][3] , \data_out_frame[1][7] , \data_out_frame[3][7] , 
            n31414, n37152, n14739, n14738, n14732, n14731, n14730, 
            n14729, n14728, n14727, n14720, n14705, n14704, n14703, 
            \data_out_frame[1][6] , n29837, \data_in_frame[19][2] , n29825, 
            n29839, \data_out_frame[3][3] , n29840, \data_out_frame[3][4] , 
            n29841, \data_out_frame[3][6] , n29842, n29843, n29844, 
            n29845, n29846, n29847, n29848, n29849, n29850, n29851, 
            n29852, n29853, n29854, n29892, n29855, n29856, n29857, 
            n29858, n29859, n29860, n29861, n29862, n29863, n29864, 
            n29865, n29866, n29867, n29868, n29869, n29870, n29871, 
            n29872, n29873, n15606, n14253, n29874, n29875, n29876, 
            n29877, n29878, n29879, n14246, n14245, n29824, n29880, 
            n15617, n14242, n29881, n29882, n29883, n29838, n29884, 
            n29835, n14675, n14674, n14673, n14668, n14651, n15624, 
            n14235, n15625, n14234, n29885, n29886, n29887, n15629, 
            n14230, n15630, n14229, n29888, n29833, n15633, n14226, 
            n29889, n29834, n29890, n29831, n29891, n29912, n29910, 
            n14218, n29913, n29914, n29915, n29916, n29917, n29918, 
            n29911, n14210, n29919, n29920, n29921, n29909, n29922, 
            n15435, n14633, n15050, n15053, \data_in_frame[12][1] , 
            n15056, n15059, n15068, \data_in_frame[12][6] , n15071, 
            n29433, n15322, \data_in_frame[19][6] , n14636, \data_in_frame[0][2] , 
            n29435, \data_in_frame[19][3] , n29437, n29439, n29441, 
            n15298, n15293, n15290, n15286, n29369, \data_in_frame[18][3] , 
            n29375, n29377, n29379, n15271, n15268, n15262, \data_in_frame[17][5] , 
            n15259, \data_in_frame[17][4] , n15256, \data_in_frame[17][3] , 
            n15253, n15250, n15235, n15217, n15214, n15211, n15199, 
            n15141, n15144, n15147, n14643, n14652, n14655, n14642, 
            n14632, ID, n14625, n33483, n35205, n40, n12, \one_wire_N_380[10] , 
            \one_wire_N_380[8] , \one_wire_N_380[9] , n29971, n82, n37146, 
            n32262, n23814, n40_adj_1, n39, n13754, n29163, \one_wire_N_380[3] , 
            n4, n23821, \one_wire_N_380[2] , n23826, n1, tx_o, r_SM_Main, 
            r_Clock_Count, n37166, \r_SM_Main_2__N_3406[1] , \r_Bit_Index[0] , 
            n31646, n32465, n27, n13157, n30575, n14661, n31238, 
            n6, n15330, tx_enable, \o_Rx_DV_N_3358[24] , n32559, baudrate, 
            n10933, n29, n23, n32393, r_SM_Main_adj_16, n6_adj_5, 
            n32017, \o_Rx_DV_N_3358[8] , \o_Rx_DV_N_3358[12] , n2833, 
            n29929, n13044, n4_adj_6, r_Rx_Data, RX_N_2, r_Clock_Count_adj_17, 
            n32391, n14947, n14945, n14944, n14943, \r_SM_Main_2__N_3316[1] , 
            \o_Rx_DV_N_3358[7] , \o_Rx_DV_N_3358[6] , \o_Rx_DV_N_3358[5] , 
            \o_Rx_DV_N_3358[4] , \o_Rx_DV_N_3358[3] , \o_Rx_DV_N_3358[2] , 
            \o_Rx_DV_N_3358[1] , \o_Rx_DV_N_3358[0] , \r_Bit_Index[0]_adj_15 , 
            n31572, n32477, n32769, n32771, n32787, n32825, n13161, 
            n30722, n15418, n27581, n15369, n15138, n15134, n15133, 
            n32807, n32753, n32735, n32789) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output [7:0]\data_out_frame[24] ;
    output [7:0]\data_out_frame[23] ;
    input clk16MHz;
    input reset;
    input n15047;
    input VCC_net;
    output [7:0]\data_in_frame[11] ;
    input n29309;
    input n15041;
    output \FRAME_MATCHER.i[0] ;
    input n15038;
    input n15035;
    output [7:0]\data_in_frame[15] ;
    output n13750;
    output [7:0]rx_data;
    input n29311;
    input n15029;
    output [7:0]\data_in_frame[18] ;
    input n15026;
    input n29313;
    output [7:0]\data_in_frame[10] ;
    output n13702;
    output n198;
    input n29315;
    output n13776;
    output [23:0]neopxl_color;
    output [7:0]\data_in_frame[4] ;
    output n8291;
    output n13700;
    output \data_in_frame[18][2] ;
    output [7:0]\data_in_frame[5] ;
    output n13760;
    output [7:0]\data_out_frame[13] ;
    output \data_in_frame[12][7] ;
    output \data_in_frame[17][7] ;
    output \data_in_frame[17][6] ;
    output \data_in_frame[17][1] ;
    output n13736;
    input n29319;
    output \data_in_frame[10][3] ;
    input n29321;
    output \data_in_frame[10][2] ;
    input n15005;
    output \data_in_frame[10][1] ;
    output [7:0]\data_out_frame[25] ;
    output \FRAME_MATCHER.state[3] ;
    input n15002;
    output \data_in_frame[10][0] ;
    output \FRAME_MATCHER.i_31__N_2379 ;
    output DE_c;
    output \FRAME_MATCHER.i[3] ;
    output n21178;
    output n9;
    input n179;
    output n13763;
    output n29975;
    output [7:0]\data_in_frame[6] ;
    output \data_in_frame[4][7] ;
    output LED_c;
    output \data_in_frame[12][0] ;
    output tx_active;
    output \data_in_frame[19][0] ;
    output \data_in_frame[18][1] ;
    input n29361;
    output \data_in_frame[2][0] ;
    input n29357;
    output \data_in_frame[2][1] ;
    input n29353;
    output \data_in_frame[2][2] ;
    input n29349;
    output \data_in_frame[2][3] ;
    output \data_in_frame[19][7] ;
    input n14709;
    output \data_in_frame[2][5] ;
    input n14712;
    output \data_in_frame[2][6] ;
    input n14717;
    output \data_in_frame[2][7] ;
    output \data_in_frame[18][7] ;
    output n199;
    input n23810;
    input n31895;
    output n33249;
    input \state[0] ;
    output n7;
    input start;
    input \neo_pixel_transmitter.done ;
    output \byte_transmit_counter[0] ;
    output [7:0]\data_out_frame[14] ;
    input \state[1] ;
    output n31970;
    input n29467;
    output \data_in_frame[4][1] ;
    input n14778;
    output \data_in_frame[4][2] ;
    input n14781;
    output \data_in_frame[4][3] ;
    input n14784;
    output \data_in_frame[4][4] ;
    input n14817;
    output \data_in_frame[4][5] ;
    input n14820;
    input n11985;
    output [7:0]\data_out_frame[4] ;
    output [7:0]\data_out_frame[5] ;
    output \data_out_frame[1][1] ;
    output \data_out_frame[3][1] ;
    output \byte_transmit_counter[1] ;
    output [7:0]\data_out_frame[12] ;
    output [7:0]\data_in_frame[0] ;
    output n30078;
    input n30097;
    input n14824;
    output \data_in_frame[18][6] ;
    input n30170;
    output n11092;
    output \data_in_frame[19][1] ;
    output \data_in_frame[18][0] ;
    output rx_data_ready;
    output \FRAME_MATCHER.rx_data_ready_prev ;
    output \data_in_frame[6][1] ;
    output [7:0]\data_out_frame[26] ;
    output [7:0]\data_out_frame[27] ;
    input n1519;
    output \data_out_frame[0][2] ;
    input n29826;
    output n19958;
    output n31946;
    output \data_out_frame[0][3] ;
    input n29827;
    input n10649;
    output \data_out_frame[0][4] ;
    input n29828;
    output \data_out_frame[1][0] ;
    input n29829;
    input n29830;
    output \data_out_frame[1][3] ;
    input n29832;
    output \data_out_frame[1][5] ;
    input n29836;
    output n13747;
    output \data_in_frame[17][2] ;
    output \data_in_frame[12][2] ;
    output \data_in_frame[12][3] ;
    output \data_out_frame[1][7] ;
    output \data_out_frame[3][7] ;
    output n31414;
    input n37152;
    input n14739;
    input n14738;
    input n14732;
    input n14731;
    input n14730;
    input n14729;
    input n14728;
    input n14727;
    input n14720;
    input n14705;
    input n14704;
    input n14703;
    output \data_out_frame[1][6] ;
    input n29837;
    output \data_in_frame[19][2] ;
    input n29825;
    input n29839;
    output \data_out_frame[3][3] ;
    input n29840;
    output \data_out_frame[3][4] ;
    input n29841;
    output \data_out_frame[3][6] ;
    input n29842;
    input n29843;
    input n29844;
    input n29845;
    input n29846;
    input n29847;
    input n29848;
    input n29849;
    input n29850;
    input n29851;
    input n29852;
    input n29853;
    input n29854;
    input n29892;
    input n29855;
    input n29856;
    input n29857;
    input n29858;
    input n29859;
    input n29860;
    input n29861;
    input n29862;
    input n29863;
    input n29864;
    input n29865;
    input n29866;
    input n29867;
    input n29868;
    input n29869;
    input n29870;
    input n29871;
    input n29872;
    input n29873;
    input n15606;
    input n14253;
    input n29874;
    input n29875;
    input n29876;
    input n29877;
    input n29878;
    input n29879;
    input n14246;
    input n14245;
    input n29824;
    input n29880;
    input n15617;
    input n14242;
    input n29881;
    input n29882;
    input n29883;
    input n29838;
    input n29884;
    input n29835;
    input n14675;
    input n14674;
    input n14673;
    input n14668;
    input n14651;
    input n15624;
    input n14235;
    input n15625;
    input n14234;
    input n29885;
    input n29886;
    input n29887;
    input n15629;
    input n14230;
    input n15630;
    input n14229;
    input n29888;
    input n29833;
    input n15633;
    input n14226;
    input n29889;
    input n29834;
    input n29890;
    input n29831;
    input n29891;
    input n29912;
    input n29910;
    input n14218;
    input n29913;
    input n29914;
    input n29915;
    input n29916;
    input n29917;
    input n29918;
    input n29911;
    input n14210;
    input n29919;
    input n29920;
    input n29921;
    input n29909;
    input n29922;
    input n15435;
    input n14633;
    input n15050;
    input n15053;
    output \data_in_frame[12][1] ;
    input n15056;
    input n15059;
    input n15068;
    output \data_in_frame[12][6] ;
    input n15071;
    input n29433;
    input n15322;
    output \data_in_frame[19][6] ;
    input n14636;
    output \data_in_frame[0][2] ;
    input n29435;
    output \data_in_frame[19][3] ;
    input n29437;
    input n29439;
    input n29441;
    input n15298;
    input n15293;
    input n15290;
    input n15286;
    input n29369;
    output \data_in_frame[18][3] ;
    input n29375;
    input n29377;
    input n29379;
    input n15271;
    input n15268;
    input n15262;
    output \data_in_frame[17][5] ;
    input n15259;
    output \data_in_frame[17][4] ;
    input n15256;
    output \data_in_frame[17][3] ;
    input n15253;
    input n15250;
    input n15235;
    input n15217;
    input n15214;
    input n15211;
    input n15199;
    input n15141;
    input n15144;
    input n15147;
    input n14643;
    input n14652;
    input n14655;
    input n14642;
    input n14632;
    input [7:0]ID;
    input n14625;
    output n33483;
    input n35205;
    input n40;
    output n12;
    input \one_wire_N_380[10] ;
    input \one_wire_N_380[8] ;
    input \one_wire_N_380[9] ;
    output n29971;
    output n82;
    input n37146;
    input n32262;
    output n23814;
    input n40_adj_1;
    input n39;
    output n13754;
    output n29163;
    input \one_wire_N_380[3] ;
    input n4;
    output n23821;
    input \one_wire_N_380[2] ;
    output n23826;
    output n1;
    output tx_o;
    output [2:0]r_SM_Main;
    output [8:0]r_Clock_Count;
    input n37166;
    input \r_SM_Main_2__N_3406[1] ;
    output \r_Bit_Index[0] ;
    output n31646;
    input n32465;
    output n27;
    output n13157;
    output n30575;
    input n14661;
    input n31238;
    output n6;
    input n15330;
    output tx_enable;
    output \o_Rx_DV_N_3358[24] ;
    input n32559;
    input [31:0]baudrate;
    output n10933;
    output n29;
    output n23;
    input n32393;
    output [2:0]r_SM_Main_adj_16;
    output n6_adj_5;
    output n32017;
    output \o_Rx_DV_N_3358[8] ;
    output \o_Rx_DV_N_3358[12] ;
    input n2833;
    input n29929;
    output n13044;
    output n4_adj_6;
    output r_Rx_Data;
    input RX_N_2;
    output [7:0]r_Clock_Count_adj_17;
    output n32391;
    input n14947;
    input n14945;
    input n14944;
    input n14943;
    input \r_SM_Main_2__N_3316[1] ;
    output \o_Rx_DV_N_3358[7] ;
    output \o_Rx_DV_N_3358[6] ;
    output \o_Rx_DV_N_3358[5] ;
    output \o_Rx_DV_N_3358[4] ;
    output \o_Rx_DV_N_3358[3] ;
    output \o_Rx_DV_N_3358[2] ;
    output \o_Rx_DV_N_3358[1] ;
    output \o_Rx_DV_N_3358[0] ;
    output \r_Bit_Index[0]_adj_15 ;
    output n31572;
    input n32477;
    input n32769;
    output n32771;
    input n32787;
    output n32825;
    output n13161;
    output n30722;
    input n15418;
    input n27581;
    input n15369;
    input n15138;
    input n15134;
    input n15133;
    output n32807;
    output n32753;
    output n32735;
    output n32789;
    
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(33[6:14])
    wire [31:0]\FRAME_MATCHER.i ;   // verilog/coms.v(118[11:12])
    
    wire \FRAME_MATCHER.i_31__N_2377 , n35123, n13305, n37045, n26067, 
        n35133, n26908, n27443, n30273, n35124;
    wire [23:0]n2743;
    
    wire n12991;
    wire [23:0]setpoint;   // verilog/coms.v(16[27:35])
    
    wire n11738, n11877, n12116, n35125, n26068;
    wire [7:0]\data_in_frame[9] ;   // verilog/coms.v(99[12:25])
    
    wire n30094, n11386, Kp_23__N_950, n30406;
    wire [7:0]\data_in_frame[8] ;   // verilog/coms.v(99[12:25])
    
    wire Kp_23__N_863, n26728, n13307, n26066, n35132;
    wire [31:0]n133;
    
    wire n161;
    wire [7:0]\data_in_frame[16] ;   // verilog/coms.v(99[12:25])
    
    wire n30469, n30026, n6_c;
    wire [7:0]\data_in_frame[13] ;   // verilog/coms.v(99[12:25])
    
    wire n30347, n11708, n9324;
    wire [7:0]\data_in_frame[17] ;   // verilog/coms.v(99[12:25])
    
    wire n15249;
    wire [7:0]\data_in_frame[14] ;   // verilog/coms.v(99[12:25])
    
    wire n27496, n31639, n10695, n10701, n10;
    wire [7:0]\data_in_frame[20] ;   // verilog/coms.v(99[12:25])
    
    wire n30403;
    wire [7:0]\data_in_frame[18]_c ;   // verilog/coms.v(99[12:25])
    
    wire n29387, n6_adj_4133, n26695, n26632, n30397, n27347, n31460, 
        n30284;
    wire [7:0]\data_in_frame[1] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[3] ;   // verilog/coms.v(99[12:25])
    
    wire n11319, n8, n29995, n15297;
    wire [7:0]\data_in_frame[4]_c ;   // verilog/coms.v(99[12:25])
    
    wire n29453, n116;
    wire [7:0]\data_in_frame[19] ;   // verilog/coms.v(99[12:25])
    
    wire n19976, n15316, n30436;
    wire [7:0]\data_in_frame[22] ;   // verilog/coms.v(99[12:25])
    
    wire n8_adj_4134, n15019;
    wire [7:0]\data_in_frame[10]_c ;   // verilog/coms.v(99[12:25])
    
    wire n10_adj_4135, n172, n19991, n15320, n15016, n11758, n11785, 
        n30463, n30388;
    wire [7:0]\data_in_frame[7] ;   // verilog/coms.v(99[12:25])
    
    wire n9266, n11342, n12234, n4_c;
    wire [7:0]\data_in_frame[12] ;   // verilog/coms.v(99[12:25])
    
    wire n11459, n30045, n15065, n15361, n12155, n26669, n26774, 
        n11107, n8_adj_4136, n30324, n26562, Kp_23__N_1259, n27142, 
        n30188, n11904, n30394, n8_adj_4137;
    wire [7:0]\data_in_frame[21] ;   // verilog/coms.v(99[12:25])
    
    wire n26558, n30197, n27399, n30185, n27494, n30293, n26638, 
        n30154;
    wire [7:0]byte_transmit_counter;   // verilog/coms.v(105[12:33])
    
    wire n35201, n35202, n37161, n35203, n7_c;
    wire [7:0]tx_data;   // verilog/coms.v(108[13:20])
    
    wire n30490, n32, n22, n30451, n36, n30356, n30448, n27555, 
        n30457, n26806, n27549, n11187, n30241, n30151, Kp_23__N_937, 
        n34, n35, n33, n32146, n796, Kp_23__N_1618, n30030, n26719, 
        n3, n6_adj_4138, n26725, n2520, n32044, n31725, n8_adj_4139, 
        n5, n8_adj_4140, n29983, n14978, \FRAME_MATCHER.i_31__N_2383 , 
        n23008, \FRAME_MATCHER.i_31__N_2382 , n6_adj_4141, n14981, n36_adj_4142, 
        n12344, n30033, n14984, n14987, n14990, n14999, n14996, 
        n14993, Kp_23__N_642, n21, n29986, n10_adj_4143;
    wire [7:0]\data_in_frame[2] ;   // verilog/coms.v(99[12:25])
    
    wire n29968, n4_adj_4144, n29383, n11750, n30353, n27337, n28, 
        n30427, Kp_23__N_745, n30166, n26, LED_N_3278, n32_adj_4145, 
        n30487, n30350, n30415, n30136, n27_c, n30062, n25;
    wire [31:0]\FRAME_MATCHER.state_31__N_2482 ;
    
    wire n3_adj_4146, n23006, n5_adj_4147, n14975, n4_adj_4148, n31571, 
        n21495;
    wire [2:0]r_SM_Main_2__N_3415;
    
    wire n21062, tx_transmit_N_3286, \FRAME_MATCHER.i_31__N_2381 , n1_c, 
        n14972, n26595, n31769, n27349, n27490, n31795, n30200, 
        n13718, n14682, n14685, n14688, n6_adj_4149, n30073, n33405, 
        n26647, n30276, n3_adj_4150, n14721, n14724, n10541, n3_adj_4151, 
        n30042, n30287, n10_adj_4152, n33407, n30424, n30191, n3_adj_4153, 
        n14734, n3_adj_4154, n11996, n27394, n14747, n14750, n14753, 
        n197, n30259, n13, n14, n3_adj_4155, n33247, n1_adj_4157, 
        n14756, n12023, n30460, n11609, n12_c, n35068, n30314, 
        n30330, n1_adj_4158, n14759, n12_adj_4159, n27408, n30307, 
        n27353, n29699, n15220, n27541, n26681, \FRAME_MATCHER.i_31__N_2384 , 
        n1_adj_4160, n30379, n30107, n33411, n1_adj_4161, n1_adj_4162, 
        n3_adj_4163, n4_adj_4164, n35176, n7_adj_4165, n27380, n33417, 
        n35175, n1_adj_4166, n1_adj_4167, n33423, n1_adj_4168, n15223, 
        n11, n14912, n35190, n30409, n27488, n3_adj_4169, n26619, 
        n14916, n15226, n44, n6_adj_4170, n30182, n3_adj_4171, n6_adj_4172, 
        n42, n43, n41, n40_c, n14919, n39_c, n50, n45, n30285, 
        n10579, n3_adj_4173, n10916, n27513, n30211, n3_adj_4174, 
        n27335, n14922, n27422, n3_adj_4175, n6_adj_4176, n4452, 
        n26621, n30023, n10_adj_4177, n14928, n14925, n30250, n30299, 
        n3_adj_4178, n30304, n27459, n10581, n30205, n26789, n12_adj_4179, 
        n26645, n26679, n27373, n30439, n30296, n27021, n32065, 
        n11920, n11743, n30002, n30335, n27505, n26691, n27435, 
        n3_adj_4180, n26769, n27410, n27366, n26709, n10_adj_4181, 
        n15229, n6_adj_4182, n26966, n27388, Kp_23__N_940, n6_adj_4183, 
        n11746, n14909, n30116, n26685, n7_adj_4184, n7_adj_4185, 
        n26749, n14679, n14906, n14903, n14900, n14897, n14894, 
        n14676, n30229, n26408, n14_adj_4186, n4_adj_4187, n11835, 
        n13_adj_4188, n14669, n9413, n9417, n11893, n30365, n14891, 
        n14665, n29896, n14888, n14885, n29539, n14882, n1959, 
        n36_adj_4189, n34_adj_4190, n14879, n26_adj_4191, n40_adj_4192, 
        n14876, n14873, n14870;
    wire [7:0]\data_in_frame[6]_c ;   // verilog/coms.v(99[12:25])
    
    wire n39_adj_4193, n37, n38, n11204, n14867, n14864, n12_adj_4194, 
        n37125, n8_adj_4195, n3_adj_4196, n14827, n14860, n14858;
    wire [7:0]control_mode;   // verilog/coms.v(17[19:31])
    
    wire n14854, n6_adj_4197, n37128, n30442, n30373, n14831, n13237, 
        n37119, n6_adj_4198, n1516, n14848, n16, n37122, n14845, 
        n27516, n13239, n13241, n13243, n13245, n13247, n13249, 
        n11795, n13251, n1668, n1191, n30018, n13253, n13255, 
        n13257, n13259, n13261, n2, n1450, n14834, n30087, n27406, 
        n13263, n13265, n13267, n13269, n32071, n13281, n14837, 
        n37113, n37116, n13283, n6_adj_4199, n30341, n8_adj_4200, 
        n11334, n30065, n31442, n13285, n13287, n13289, n13291, 
        n13293, n13295, n30222, n36880, n37107, n6_adj_4201, n30144, 
        n13297, n2_adj_4202, n30362, n12088, n30161, n2_adj_4203, 
        n2_adj_4204, n1699, n2_adj_4205, n13299, n12125, n37110, 
        n10_adj_4206, Kp_23__N_739, n13301, n13303, n2_adj_4207, n2_adj_4208, 
        n10_adj_4209, n15232, n10101, n33343, n13720, n15098, n7_adj_4210, 
        n127;
    wire [7:0]\data_in_frame[23] ;   // verilog/coms.v(99[12:25])
    
    wire n14629, n14626, n9068, n26605, n11102, n15437, n11772, 
        n6_adj_4211, n30267, n32_adj_4212, n22_adj_4213, n36_adj_4214, 
        n34_adj_4215, n26721, n33_adj_4216, n35_adj_4217, n9232, n6_adj_4218, 
        n11163, n37101, n11603, n37104, n11848, n37095;
    wire [7:0]\data_in_frame[0]_c ;   // verilog/coms.v(99[12:25])
    
    wire n27537, n30270, n10_adj_4219, n15440, n33_adj_4220, n30009, 
        Kp_23__N_742, n4_adj_4221, n6_adj_4222, n37098, n14816;
    wire [7:0]\data_in[0] ;   // verilog/coms.v(98[12:19])
    
    wire n30385, n36884, n3_adj_4223, n35195, n7_adj_4224, n35148, 
        n35149, n37089, n19953, n2_adj_4225, n35184, n35183, n35126, 
        n14_adj_4226, n30472, n2_adj_4227, n2_adj_4228, n15443, n682, 
        n679, n685, n31592, n2_adj_4229, n2_adj_4230, n15448, n14815, 
        n14814, n14813, n14812, n14811, n14810, n14809;
    wire [7:0]\data_in[1] ;   // verilog/coms.v(98[12:19])
    
    wire n14808, n14807, n2_adj_4231, n14806, n14805, n14804, n14803, 
        n14802, n14801;
    wire [7:0]\data_in[2] ;   // verilog/coms.v(98[12:19])
    
    wire n14800, n14799, n14798, n14797, n15451, n14796, n14795, 
        n14794, n14793;
    wire [7:0]\data_in[3] ;   // verilog/coms.v(98[12:19])
    
    wire n14792, n14791, n14790, n14789, n14788, n14787, n14777, 
        n2_adj_4232, n15454, n14737, n2_adj_4233, n13490, n192, 
        n29974, n2_adj_4234, n2_adj_4235, n2_adj_4236, n2_adj_4237, 
        n2_adj_4238, n2_adj_4239, n2_adj_4240, n2_adj_4241, n2_adj_4242, 
        n2_adj_4243, n2_adj_4244, n2_adj_4245, n2_adj_4246, n2_adj_4247, 
        n2_adj_4248, n2_adj_4249, n2_adj_4250, n2_adj_4251, n2_adj_4252, 
        n2_adj_4253, n2_adj_4254, n2_adj_4255, n2_adj_4256, n2_adj_4257, 
        n2_adj_4258, n2_adj_4259, n2_adj_4260, n2_adj_4261, n2_adj_4262, 
        n2_adj_4263, n2_adj_4264, n2_adj_4265, n2_adj_4266, n2_adj_4267, 
        n2_adj_4268, n2_adj_4269, n2_adj_4270, n2_adj_4271, n2_adj_4272, 
        n2_adj_4273, n2_adj_4274, n2_adj_4275, n2_adj_4276, n2_adj_4277, 
        n2_adj_4278, n2_adj_4279, n2_adj_4280, n2_adj_4281, n2_adj_4282, 
        n2_adj_4283, n2_adj_4284, n2_adj_4285, n2_adj_4286, n2_adj_4287, 
        n2_adj_4288, n2_adj_4289, n2_adj_4290, n2_adj_4291, n15238, 
        n35129, n35130, n37071, n15241, n2_adj_4292, n2_adj_4293, 
        n136, n117, n20021, n14672, n13311, n2_adj_4294, n2_adj_4295, 
        n2_adj_4296, n14649, n3303, n733, n3_adj_4297, n10903, n29898, 
        n29899, n29900, n5_adj_4298, n29901, n29902, n14199, n29903, 
        n14197, n20006, n8_adj_4299, n33457, n32110, n15436, n745, 
        n14196, n29904, n14646, n15428, n15425, n15412, n15408, 
        n15405, n15402, n15399, n15396, n15393, n15389, n15386, 
        n15383, n15380, n15376, n15373, n15370, n29497, n15077, 
        n15080, n15352, n15349, n15346, n15343, n15340, n15337, 
        n15334, n15331, n15244, n771, \FRAME_MATCHER.i_31__N_2378 , 
        n748, n15083, n15086, n15089, n15092, n15095, n15101, 
        n15104, n15115, n15118, n30478, n26096, n26095, n26094, 
        n15121, n29517, n29513, n15130;
    wire [7:0]\data_in_frame[15]_c ;   // verilog/coms.v(99[12:25])
    
    wire n15193, n30139, n26093, n35122, n5_adj_4300, n26092, n35120, 
        n26091, n35119, n8_adj_4301, n26090, n35118, n26089, n35117, 
        n15155, n25728, n25727, n15152, n26088, n35116, n15150, 
        n15140, n15139, n26087, n35111, n26086, n35108, n26085, 
        n35107, n26084, n35106, n26083, n35098, n11256, n26082, 
        n35096, n14658, n26081, n35087, n26080, n35076, n11181, 
        n27185, n10_adj_4302, n26079, n35147, n25726, n26078, n35146, 
        n30039, n26077, n35145, n25725, n30006, n25724, n30013, 
        n30052, n30376, n25723, n26076, n35144, n25722, n26075, 
        n35143, n23007, n30430, n33367, n29897, n33371, n26074, 
        n35142, n33375, n30126, n33383, n26073, n35141, n33393, 
        n33387, n30101, Kp_23__N_618, n33399, n11718, n10_adj_4303, 
        n30338, n30481, n26072, n35140, n12029, n37176, n26071, 
        n35139, n26732, n27363, n30173, n31471, n30321, n32103, 
        n31910, n33257, n33259, n26070, n35136, n31562, n33485, 
        n31497, n30368, n31447, n33267, n26676, n30234, n31694, 
        n31454, n33273, n30279, n5_adj_4304, n10_adj_4305, n26810, 
        n10_adj_4306, n23_c, n26069, n35135, n12980, n776, n777, 
        n6838, n29289, n788, n12356, n12_adj_4307, n30475, n10_adj_4308, 
        n35134, n33275, n5_adj_4309, n27076, n30207, n6_adj_4310, 
        n11267, n33359, n30318, n33347, n33353, n27382, n30421, 
        n33439, n30232, n31615, n4_adj_4313, n27403, n6_adj_4314, 
        n30445, n30301, n12_adj_4315, n30454, n27447, n11356, n6_adj_4316, 
        n30104, n11119, n11874, n11367, n26683, n11201, n31770, 
        n31892, n33277, n27420, n7_adj_4317, n8_adj_4318, n30418, 
        n4_adj_4319, n10_adj_4320, n35265, n11312, n30344, n35121, 
        n11_adj_4321, n31899, n33433, n30433, n14_adj_4322, n15, 
        n14_adj_4323, Kp_23__N_1141, n33287, n11698, n33293, n27451, 
        n33299, n30256, n26667, n31804, n11907, n31591, n27453, 
        n30070, n30084, n30147, n10_adj_4324, n30412, n27104, n5_adj_4325, 
        n16_adj_4326, n22_adj_4327, n20, n33313, n33281, n24, n33315, 
        n33535, n30400, n33321, n33327, n30262, n33333, n6_adj_4328, 
        n30158, n30219, n26_adj_4329, n24_adj_4330, n25_adj_4331, 
        n30359, n11868, n12_adj_4332, n16_adj_4333, n17, n10_adj_4334, 
        n11689, n12_adj_4335, n35266, n35193, n35191, n11_adj_4336, 
        n35194, n35110, n35109, n4_adj_4337, n3_adj_4338, n36337, 
        n35185, n11_adj_4339, n35187, n35113, n35112, n34_adj_4340, 
        n46, n43_adj_4341, n18, n35254, n31, n37_adj_4342, n40_adj_4343, 
        n11_adj_4346, n35114, n35182, n13_adj_4347, n3_adj_4348, n35337, 
        n1_adj_4349, n7_adj_4350, n33776, n36309, n27492, n31999, 
        n39_adj_4351, n48, n36_adj_4352, n35259, n51, n42_adj_4353, 
        n30, n45_adj_4354, n28_adj_4355, n33624, n13722, n27_adj_4356, 
        n32138, n736, n683, n10825, n8254, n12351, n4_adj_4357, 
        n12979, n10_adj_4358, n14_adj_4359, n10963, n20_adj_4360, 
        n10828, n19, n33602, n11029, n18_adj_4361, n10966, n20_adj_4362, 
        n15_adj_4363, n16_adj_4364, n17_adj_4365, n10_adj_4366, n14_adj_4367, 
        n15_adj_4368, n16_adj_4369, n17_adj_4370, n6_adj_4371, n56, 
        n37059, n37053, n27376, n12_adj_4373, n10_adj_4374, n11_adj_4375, 
        n9_adj_4376, n30048, n6_adj_4377, n6_adj_4378, Kp_23__N_955, 
        n26793, n10_adj_4379;
    
    SB_LUT4 i31065_2_lut (.I0(\FRAME_MATCHER.i [29]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35123));   // verilog/coms.v(158[12:15])
    defparam i31065_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_4_lut  (.I0(n35133), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [2]), .I3(n26067), .O(n13305)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_4_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 i2_3_lut_4_lut (.I0(n26908), .I1(n27443), .I2(\data_out_frame[24] [1]), 
            .I3(\data_out_frame[23] [6]), .O(n30273));
    defparam i2_3_lut_4_lut.LUT_INIT = 16'h9669;
    SB_LUT4 i31073_2_lut (.I0(\FRAME_MATCHER.i [30]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35124));   // verilog/coms.v(158[12:15])
    defparam i31073_2_lut.LUT_INIT = 16'h2222;
    SB_DFFER setpoint_i0_i2 (.Q(setpoint[2]), .C(clk16MHz), .E(n12991), 
            .D(n2743[2]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut (.I0(n11738), .I1(n11877), .I2(GND_net), .I3(GND_net), 
            .O(n12116));   // verilog/coms.v(76[16:42])
    defparam i1_2_lut.LUT_INIT = 16'h6666;
    SB_DFFER setpoint_i0_i1 (.Q(setpoint[1]), .C(clk16MHz), .E(n12991), 
            .D(n2743[1]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i31078_2_lut (.I0(\FRAME_MATCHER.i [31]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35125));   // verilog/coms.v(158[12:15])
    defparam i31078_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE data_in_frame_0___i96 (.Q(\data_in_frame[11] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15047));   // verilog/coms.v(130[12] 305[6])
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_4  (.CI(n26067), .I0(n37045), .I1(\FRAME_MATCHER.i [2]), 
            .CO(n26068));
    SB_LUT4 i2_3_lut (.I0(\data_in_frame[9] [3]), .I1(n30094), .I2(\data_in_frame[11] [4]), 
            .I3(GND_net), .O(n11386));   // verilog/coms.v(76[16:42])
    defparam i2_3_lut.LUT_INIT = 16'h9696;
    SB_DFFE data_in_frame_0___i95 (.Q(\data_in_frame[11] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n29309));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i2_3_lut_4_lut_adj_1011 (.I0(Kp_23__N_950), .I1(n30406), .I2(\data_in_frame[8] [7]), 
            .I3(Kp_23__N_863), .O(n26728));
    defparam i2_3_lut_4_lut_adj_1011.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i94 (.Q(\data_in_frame[11] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15041));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_3_lut  (.I0(n35132), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [1]), .I3(n26066), .O(n13307)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_3_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_3  (.CI(n26066), .I0(n37045), .I1(\FRAME_MATCHER.i [1]), 
            .CO(n26067));
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_2_lut  (.I0(GND_net), .I1(n161), 
            .I2(\FRAME_MATCHER.i[0] ), .I3(GND_net), .O(n133[0])) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_2_lut .LUT_INIT = 16'hC33C;
    SB_DFFE data_in_frame_0___i93 (.Q(\data_in_frame[11] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15038));   // verilog/coms.v(130[12] 305[6])
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_2  (.CI(GND_net), .I0(n161), .I1(\FRAME_MATCHER.i[0] ), 
            .CO(n26066));
    SB_LUT4 i1_2_lut_adj_1012 (.I0(\data_in_frame[16] [1]), .I1(\data_in_frame[16] [0]), 
            .I2(GND_net), .I3(GND_net), .O(n30469));
    defparam i1_2_lut_adj_1012.LUT_INIT = 16'h6666;
    SB_DFFE data_in_frame_0___i92 (.Q(\data_in_frame[11] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15035));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1013 (.I0(\data_in_frame[15] [6]), .I1(n30026), 
            .I2(GND_net), .I3(GND_net), .O(n6_c));   // verilog/coms.v(78[16:43])
    defparam i1_2_lut_adj_1013.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut (.I0(\data_in_frame[13] [5]), .I1(\data_in_frame[13] [4]), 
            .I2(n11386), .I3(n6_c), .O(n30347));   // verilog/coms.v(78[16:43])
    defparam i4_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_1014 (.I0(n30347), .I1(n30469), .I2(n11708), 
            .I3(GND_net), .O(n9324));
    defparam i2_3_lut_adj_1014.LUT_INIT = 16'h9696;
    SB_LUT4 i15072_3_lut (.I0(n13750), .I1(rx_data[0]), .I2(\data_in_frame[17] [0]), 
            .I3(GND_net), .O(n15249));   // verilog/coms.v(94[13:20])
    defparam i15072_3_lut.LUT_INIT = 16'he4e4;
    SB_DFFE data_in_frame_0___i91 (.Q(\data_in_frame[11] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n29311));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i90 (.Q(\data_in_frame[11] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15029));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i2_3_lut_adj_1015 (.I0(\data_in_frame[14] [2]), .I1(n27496), 
            .I2(n31639), .I3(GND_net), .O(n10695));
    defparam i2_3_lut_adj_1015.LUT_INIT = 16'h6969;
    SB_LUT4 i4_4_lut_adj_1016 (.I0(\data_in_frame[16] [4]), .I1(\data_in_frame[16] [3]), 
            .I2(\data_in_frame[18] [5]), .I3(n10701), .O(n10));
    defparam i4_4_lut_adj_1016.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i89 (.Q(\data_in_frame[11] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15026));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i88 (.Q(\data_in_frame[10] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n29313));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i5_3_lut (.I0(\data_in_frame[20] [6]), .I1(n10), .I2(n10695), 
            .I3(GND_net), .O(n30403));
    defparam i5_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i11_4_lut (.I0(n13702), .I1(\data_in_frame[18]_c [4]), .I2(n198), 
            .I3(rx_data[4]), .O(n29387));   // verilog/coms.v(94[13:20])
    defparam i11_4_lut.LUT_INIT = 16'hc5c0;
    SB_LUT4 i4_4_lut_adj_1017 (.I0(\data_in_frame[20] [5]), .I1(\data_in_frame[18]_c [4]), 
            .I2(\data_in_frame[20] [4]), .I3(n6_adj_4133), .O(n26695));
    defparam i4_4_lut_adj_1017.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i87 (.Q(\data_in_frame[10] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n29315));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_4_lut (.I0(n26632), .I1(n30397), .I2(n27347), .I3(n31460), 
            .O(n30284));
    defparam i1_2_lut_4_lut.LUT_INIT = 16'h9669;
    SB_LUT4 i2_3_lut_adj_1018 (.I0(\data_in_frame[1] [3]), .I1(\data_in_frame[1] [2]), 
            .I2(\data_in_frame[3] [4]), .I3(GND_net), .O(n11319));   // verilog/coms.v(79[16:43])
    defparam i2_3_lut_adj_1018.LUT_INIT = 16'h9696;
    SB_LUT4 i26161_3_lut (.I0(reset), .I1(n8), .I2(n29995), .I3(GND_net), 
            .O(n13776));
    defparam i26161_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i16845_3_lut (.I0(neopxl_color[22]), .I1(\data_in_frame[4] [6]), 
            .I2(n8291), .I3(GND_net), .O(n15297));
    defparam i16845_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32471_3_lut (.I0(rx_data[0]), .I1(\data_in_frame[4]_c [0]), 
            .I2(n13776), .I3(GND_net), .O(n29453));   // verilog/coms.v(94[13:20])
    defparam i32471_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16032_4_lut (.I0(n13700), .I1(n116), .I2(rx_data[4]), .I3(\data_in_frame[19] [4]), 
            .O(n19976));   // verilog/coms.v(94[13:20])
    defparam i16032_4_lut.LUT_INIT = 16'hfac0;
    SB_LUT4 i16033_3_lut (.I0(n19976), .I1(\data_in_frame[19] [4]), .I2(reset), 
            .I3(GND_net), .O(n15316));   // verilog/TinyFPGA_B.v(47[5:10])
    defparam i16033_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3_3_lut_4_lut (.I0(\data_in_frame[18][2] ), .I1(n9324), .I2(n30436), 
            .I3(\data_in_frame[22] [4]), .O(n8_adj_4134));
    defparam i3_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i86 (.Q(\data_in_frame[10]_c [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15019));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i2_3_lut_adj_1019 (.I0(\FRAME_MATCHER.i[0] ), .I1(n10_adj_4135), 
            .I2(n172), .I3(GND_net), .O(n116));
    defparam i2_3_lut_adj_1019.LUT_INIT = 16'h2020;
    SB_LUT4 i16047_4_lut (.I0(n13700), .I1(n116), .I2(rx_data[5]), .I3(\data_in_frame[19] [5]), 
            .O(n19991));   // verilog/coms.v(94[13:20])
    defparam i16047_4_lut.LUT_INIT = 16'hfac0;
    SB_LUT4 i16048_3_lut (.I0(n19991), .I1(\data_in_frame[19] [5]), .I2(reset), 
            .I3(GND_net), .O(n15320));   // verilog/TinyFPGA_B.v(47[5:10])
    defparam i16048_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE data_in_frame_0___i85 (.Q(\data_in_frame[10]_c [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15016));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i2_3_lut_adj_1020 (.I0(\data_in_frame[5] [5]), .I1(n11758), 
            .I2(n11319), .I3(GND_net), .O(n11785));
    defparam i2_3_lut_adj_1020.LUT_INIT = 16'h9696;
    SB_LUT4 i3_4_lut (.I0(n11785), .I1(n30463), .I2(n30388), .I3(\data_in_frame[7] [7]), 
            .O(n9266));   // verilog/coms.v(78[16:27])
    defparam i3_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_1021 (.I0(n11342), .I1(n12234), .I2(\data_in_frame[8] [2]), 
            .I3(GND_net), .O(n4_c));   // verilog/coms.v(79[16:43])
    defparam i2_3_lut_adj_1021.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1022 (.I0(\data_in_frame[12] [5]), .I1(n11459), 
            .I2(GND_net), .I3(GND_net), .O(n30045));   // verilog/coms.v(99[12:25])
    defparam i1_2_lut_adj_1022.LUT_INIT = 16'h6666;
    SB_LUT4 i11077_3_lut (.I0(\data_in_frame[12] [5]), .I1(rx_data[5]), 
            .I2(n13760), .I3(GND_net), .O(n15065));   // verilog/coms.v(130[12] 305[6])
    defparam i11077_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i15455_3_lut (.I0(n13760), .I1(rx_data[4]), .I2(\data_in_frame[12] [4]), 
            .I3(GND_net), .O(n15361));   // verilog/coms.v(94[13:20])
    defparam i15455_3_lut.LUT_INIT = 16'he4e4;
    SB_LUT4 i1_2_lut_4_lut_adj_1023 (.I0(n26632), .I1(n30397), .I2(n27347), 
            .I3(n12155), .O(n26669));
    defparam i1_2_lut_4_lut_adj_1023.LUT_INIT = 16'h9669;
    SB_LUT4 i2_3_lut_4_lut_adj_1024 (.I0(n26774), .I1(\data_out_frame[13] [7]), 
            .I2(n11107), .I3(n26632), .O(n31460));
    defparam i2_3_lut_4_lut_adj_1024.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut (.I0(\data_in_frame[15] [3]), .I1(\data_in_frame[12][7] ), 
            .I2(n8_adj_4136), .I3(n30324), .O(n26562));
    defparam i1_4_lut.LUT_INIT = 16'h9669;
    SB_LUT4 data_in_frame_17__7__I_0_4040_2_lut (.I0(\data_in_frame[17][7] ), 
            .I1(\data_in_frame[17][6] ), .I2(GND_net), .I3(GND_net), .O(Kp_23__N_1259));   // verilog/coms.v(73[16:27])
    defparam data_in_frame_17__7__I_0_4040_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1025 (.I0(\data_in_frame[17][1] ), .I1(n27142), 
            .I2(GND_net), .I3(GND_net), .O(n30188));
    defparam i1_2_lut_adj_1025.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1026 (.I0(n11904), .I1(\data_in_frame[15] [7]), 
            .I2(GND_net), .I3(GND_net), .O(n30394));
    defparam i1_2_lut_adj_1026.LUT_INIT = 16'h6666;
    SB_LUT4 i9748_3_lut (.I0(n8_adj_4137), .I1(reset), .I2(n29995), .I3(GND_net), 
            .O(n13736));
    defparam i9748_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i3_4_lut_adj_1027 (.I0(\data_in_frame[21] [6]), .I1(n26558), 
            .I2(n30197), .I3(n27399), .O(n30185));
    defparam i3_4_lut_adj_1027.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_3_lut (.I0(n26774), .I1(\data_out_frame[13] [7]), .I2(n27494), 
            .I3(GND_net), .O(n30293));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h6969;
    SB_LUT4 i1_2_lut_adj_1028 (.I0(\data_in_frame[21] [5]), .I1(n26638), 
            .I2(GND_net), .I3(GND_net), .O(n30154));
    defparam i1_2_lut_adj_1028.LUT_INIT = 16'h6666;
    SB_LUT4 byte_transmit_counter_3__bdd_4_lut (.I0(byte_transmit_counter[3]), 
            .I1(n35201), .I2(n35202), .I3(byte_transmit_counter[4]), .O(n37161));
    defparam byte_transmit_counter_3__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n37161_bdd_4_lut (.I0(n37161), .I1(n35203), .I2(n7_c), .I3(byte_transmit_counter[4]), 
            .O(tx_data[7]));
    defparam n37161_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut (.I0(n30490), .I1(\data_in_frame[15] [4]), .I2(n30469), 
            .I3(\data_in_frame[12] [4]), .O(n32));
    defparam i12_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i16_4_lut (.I0(\data_in_frame[13] [6]), .I1(n32), .I2(n22), 
            .I3(n30451), .O(n36));
    defparam i16_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1029 (.I0(n30293), .I1(n30356), .I2(\data_out_frame[23] [1]), 
            .I3(GND_net), .O(n30448));
    defparam i1_2_lut_3_lut_adj_1029.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_adj_1030 (.I0(n30293), .I1(n30356), .I2(n31460), 
            .I3(GND_net), .O(n27555));
    defparam i1_2_lut_3_lut_adj_1030.LUT_INIT = 16'h6969;
    SB_LUT4 i1_2_lut_3_lut_adj_1031 (.I0(n27443), .I1(n30457), .I2(n26806), 
            .I3(GND_net), .O(n27549));
    defparam i1_2_lut_3_lut_adj_1031.LUT_INIT = 16'h6969;
    SB_LUT4 i14_4_lut (.I0(n11187), .I1(n30241), .I2(n30151), .I3(Kp_23__N_937), 
            .O(n34));
    defparam i14_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i15_4_lut (.I0(n30394), .I1(\data_in_frame[15] [2]), .I2(n30188), 
            .I3(n10701), .O(n35));
    defparam i15_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i13_4_lut (.I0(Kp_23__N_1259), .I1(\data_in_frame[15] [6]), 
            .I2(n26562), .I3(\data_in_frame[16] [4]), .O(n33));
    defparam i13_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i19_4_lut (.I0(n33), .I1(n35), .I2(n34), .I3(n36), .O(n32146));
    defparam i19_4_lut.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i84 (.Q(\data_in_frame[10][3] ), .C(clk16MHz), 
            .E(VCC_net), .D(n29319));   // verilog/coms.v(130[12] 305[6])
    SB_DFFR \FRAME_MATCHER.state_FSM_i1  (.Q(Kp_23__N_1618), .C(clk16MHz), 
            .D(n796), .R(reset));   // verilog/coms.v(148[4] 304[11])
    SB_DFFE data_in_frame_0___i83 (.Q(\data_in_frame[10][2] ), .C(clk16MHz), 
            .E(VCC_net), .D(n29321));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i82 (.Q(\data_in_frame[10][1] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15005));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1032 (.I0(\data_in_frame[1] [3]), .I1(\data_in_frame[1] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n30030));   // verilog/coms.v(81[16:27])
    defparam i1_2_lut_adj_1032.LUT_INIT = 16'h6666;
    SB_LUT4 select_442_Select_223_i3_3_lut_4_lut (.I0(\data_out_frame[25] [5]), 
            .I1(\data_out_frame[25] [6]), .I2(\FRAME_MATCHER.state[3] ), 
            .I3(n26719), .O(n3));
    defparam select_442_Select_223_i3_3_lut_4_lut.LUT_INIT = 16'h9060;
    SB_DFFE data_in_frame_0___i81 (.Q(\data_in_frame[10][0] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15002));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_3_lut_adj_1033 (.I0(\data_out_frame[25] [5]), .I1(\data_out_frame[25] [6]), 
            .I2(\data_out_frame[25] [1]), .I3(GND_net), .O(n6_adj_4138));
    defparam i1_2_lut_3_lut_adj_1033.LUT_INIT = 16'h9696;
    SB_LUT4 i3_3_lut_4_lut_adj_1034 (.I0(n26725), .I1(n2520), .I2(n32044), 
            .I3(n31725), .O(n8_adj_4139));
    defparam i3_3_lut_4_lut_adj_1034.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1035 (.I0(n26725), .I1(n2520), .I2(\data_out_frame[24] [6]), 
            .I3(GND_net), .O(n5));
    defparam i1_2_lut_3_lut_adj_1035.LUT_INIT = 16'h9696;
    SB_LUT4 i10990_3_lut_4_lut (.I0(n8_adj_4140), .I1(n29983), .I2(rx_data[0]), 
            .I3(\data_in_frame[9] [0]), .O(n14978));
    defparam i10990_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_1036 (.I0(Kp_23__N_1618), .I1(\FRAME_MATCHER.i_31__N_2383 ), 
            .I2(GND_net), .I3(GND_net), .O(n23008));   // verilog/coms.v(148[4] 304[11])
    defparam i1_2_lut_adj_1036.LUT_INIT = 16'heeee;
    SB_LUT4 i2_2_lut (.I0(\FRAME_MATCHER.i_31__N_2382 ), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_4141));   // verilog/coms.v(148[4] 304[11])
    defparam i2_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i10993_3_lut_4_lut (.I0(n8_adj_4140), .I1(n29983), .I2(rx_data[1]), 
            .I3(\data_in_frame[9] [1]), .O(n14981));
    defparam i10993_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_4_lut_adj_1037 (.I0(DE_c), .I1(n23008), .I2(n6_adj_4141), 
            .I3(n36_adj_4142), .O(n12344));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1037.LUT_INIT = 16'haaa8;
    SB_LUT4 i1_2_lut_adj_1038 (.I0(\data_in_frame[1] [1]), .I1(\data_in_frame[1] [2]), 
            .I2(GND_net), .I3(GND_net), .O(n30033));   // verilog/coms.v(76[16:34])
    defparam i1_2_lut_adj_1038.LUT_INIT = 16'h6666;
    SB_LUT4 i10996_3_lut_4_lut (.I0(n8_adj_4140), .I1(n29983), .I2(rx_data[2]), 
            .I3(\data_in_frame[9] [2]), .O(n14984));
    defparam i10996_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i10999_3_lut_4_lut (.I0(n8_adj_4140), .I1(n29983), .I2(rx_data[3]), 
            .I3(\data_in_frame[9] [3]), .O(n14987));
    defparam i10999_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11002_3_lut_4_lut (.I0(n8_adj_4140), .I1(n29983), .I2(rx_data[4]), 
            .I3(\data_in_frame[9] [4]), .O(n14990));
    defparam i11002_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFE data_in_frame_0___i80 (.Q(\data_in_frame[9] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n14999));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i79 (.Q(\data_in_frame[9] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n14996));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11005_3_lut_4_lut (.I0(n8_adj_4140), .I1(n29983), .I2(rx_data[5]), 
            .I3(\data_in_frame[9] [5]), .O(n14993));
    defparam i11005_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFE data_in_frame_0___i78 (.Q(\data_in_frame[9] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n14993));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i77 (.Q(\data_in_frame[9] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n14990));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 data_in_frame_1__7__I_0_2_lut (.I0(\data_in_frame[1] [7]), .I1(\data_in_frame[1] [6]), 
            .I2(GND_net), .I3(GND_net), .O(Kp_23__N_642));   // verilog/coms.v(81[16:27])
    defparam data_in_frame_1__7__I_0_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_adj_1039 (.I0(\FRAME_MATCHER.i[3] ), .I1(\FRAME_MATCHER.i [4]), 
            .I2(\FRAME_MATCHER.i [5]), .I3(GND_net), .O(n10_adj_4135));   // verilog/coms.v(157[7:23])
    defparam i2_3_lut_adj_1039.LUT_INIT = 16'hfbfb;
    SB_LUT4 i11008_3_lut_4_lut (.I0(n8_adj_4140), .I1(n29983), .I2(rx_data[6]), 
            .I3(\data_in_frame[9] [6]), .O(n14996));
    defparam i11008_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_4_lut_adj_1040 (.I0(Kp_23__N_642), .I1(n30033), .I2(n30030), 
            .I3(\data_in_frame[1] [5]), .O(n21));   // verilog/coms.v(78[16:27])
    defparam i1_4_lut_adj_1040.LUT_INIT = 16'h6996;
    SB_LUT4 i11011_3_lut_4_lut (.I0(n8_adj_4140), .I1(n29983), .I2(rx_data[7]), 
            .I3(\data_in_frame[9] [7]), .O(n14999));
    defparam i11011_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(reset), .I1(n21178), .I2(n9), .I3(\FRAME_MATCHER.i[3] ), 
            .O(n29986));
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1041 (.I0(n10_adj_4143), .I1(\FRAME_MATCHER.i [2]), 
            .I2(\FRAME_MATCHER.i [1]), .I3(n179), .O(n13763));
    defparam i1_2_lut_3_lut_4_lut_adj_1041.LUT_INIT = 16'h1000;
    SB_DFFE data_in_frame_0___i76 (.Q(\data_in_frame[9] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n14987));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i12_4_lut_adj_1042 (.I0(\data_in_frame[2] [4]), .I1(n29968), 
            .I2(n29975), .I3(n4_adj_4144), .O(n29383));
    defparam i12_4_lut_adj_1042.LUT_INIT = 16'ha3a0;
    SB_LUT4 i1_2_lut_adj_1043 (.I0(\data_in_frame[5] [0]), .I1(n11750), 
            .I2(GND_net), .I3(GND_net), .O(n30353));
    defparam i1_2_lut_adj_1043.LUT_INIT = 16'h6666;
    SB_LUT4 i12_4_lut_adj_1044 (.I0(\data_in_frame[6] [0]), .I1(n27337), 
            .I2(\data_in_frame[11] [6]), .I3(n11785), .O(n28));
    defparam i12_4_lut_adj_1044.LUT_INIT = 16'h6996;
    SB_LUT4 i10_4_lut (.I0(n30427), .I1(Kp_23__N_745), .I2(n30166), .I3(\data_in_frame[4][7] ), 
            .O(n26));
    defparam i10_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1045 (.I0(LED_c), .I1(LED_N_3278), .I2(GND_net), 
            .I3(GND_net), .O(n32_adj_4145));
    defparam i1_2_lut_adj_1045.LUT_INIT = 16'heeee;
    SB_LUT4 i11_4_lut_adj_1046 (.I0(n30487), .I1(n30350), .I2(n30415), 
            .I3(n30136), .O(n27_c));
    defparam i11_4_lut_adj_1046.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i75 (.Q(\data_in_frame[9] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n14984));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i9_4_lut (.I0(\data_in_frame[12][0] ), .I1(n30353), .I2(n30062), 
            .I3(\data_in_frame[9] [3]), .O(n25));
    defparam i9_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 select_864_Select_0_i3_3_lut (.I0(LED_c), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n3_adj_4146));   // verilog/coms.v(148[4] 304[11])
    defparam select_864_Select_0_i3_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i1_4_lut_adj_1047 (.I0(Kp_23__N_1618), .I1(n3_adj_4146), .I2(LED_c), 
            .I3(n23006), .O(n5_adj_4147));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1047.LUT_INIT = 16'heeec;
    SB_LUT4 i15_4_lut_adj_1048 (.I0(n25), .I1(n27_c), .I2(n26), .I3(n28), 
            .O(n27496));
    defparam i15_4_lut_adj_1048.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i74 (.Q(\data_in_frame[9] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n14981));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i73 (.Q(\data_in_frame[9] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n14978));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 equal_104_i8_2_lut_3_lut (.I0(\FRAME_MATCHER.i [2]), .I1(\FRAME_MATCHER.i [1]), 
            .I2(\FRAME_MATCHER.i[0] ), .I3(GND_net), .O(n8_adj_4140));   // verilog/coms.v(158[12:15])
    defparam equal_104_i8_2_lut_3_lut.LUT_INIT = 16'hefef;
    SB_DFFE data_in_frame_0___i72 (.Q(\data_in_frame[8] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n14975));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i2_4_lut (.I0(byte_transmit_counter[3]), .I1(byte_transmit_counter[4]), 
            .I2(n4_adj_4148), .I3(byte_transmit_counter[2]), .O(n31571));
    defparam i2_4_lut.LUT_INIT = 16'h8880;
    SB_LUT4 i3_4_lut_adj_1049 (.I0(n31571), .I1(byte_transmit_counter[5]), 
            .I2(byte_transmit_counter[6]), .I3(byte_transmit_counter[7]), 
            .O(n21495));   // verilog/coms.v(217[11:56])
    defparam i3_4_lut_adj_1049.LUT_INIT = 16'hfffe;
    SB_LUT4 i17139_2_lut (.I0(tx_active), .I1(r_SM_Main_2__N_3415[0]), .I2(GND_net), 
            .I3(GND_net), .O(n21062));
    defparam i17139_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 select_862_Select_0_i1_2_lut (.I0(tx_transmit_N_3286), .I1(\FRAME_MATCHER.i_31__N_2381 ), 
            .I2(GND_net), .I3(GND_net), .O(n1_c));   // verilog/coms.v(148[4] 304[11])
    defparam select_862_Select_0_i1_2_lut.LUT_INIT = 16'h8888;
    SB_DFFE data_in_frame_0___i71 (.Q(\data_in_frame[8] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n14972));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i2_3_lut_adj_1050 (.I0(n26595), .I1(n31769), .I2(\data_in_frame[19][0] ), 
            .I3(GND_net), .O(n27349));
    defparam i2_3_lut_adj_1050.LUT_INIT = 16'h6969;
    SB_LUT4 i3_4_lut_adj_1051 (.I0(\data_in_frame[18][1] ), .I1(n27490), 
            .I2(n31795), .I3(\data_in_frame[20] [3]), .O(n30200));
    defparam i3_4_lut_adj_1051.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1052 (.I0(n8_adj_4140), .I1(n29995), .I2(GND_net), 
            .I3(GND_net), .O(n13718));
    defparam i1_2_lut_adj_1052.LUT_INIT = 16'heeee;
    SB_DFF data_in_frame_0___i14 (.Q(\data_in_frame[1] [5]), .C(clk16MHz), 
           .D(n14682));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i15 (.Q(\data_in_frame[1] [6]), .C(clk16MHz), 
           .D(n14685));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i16 (.Q(\data_in_frame[1] [7]), .C(clk16MHz), 
           .D(n14688));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i17 (.Q(\data_in_frame[2][0] ), .C(clk16MHz), 
           .D(n29361));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i18 (.Q(\data_in_frame[2][1] ), .C(clk16MHz), 
           .D(n29357));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i19 (.Q(\data_in_frame[2][2] ), .C(clk16MHz), 
           .D(n29353));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i20 (.Q(\data_in_frame[2][3] ), .C(clk16MHz), 
           .D(n29349));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i4_4_lut_adj_1053 (.I0(\data_in_frame[19] [5]), .I1(\data_in_frame[19][7] ), 
            .I2(\data_in_frame[21] [7]), .I3(n6_adj_4149), .O(n30073));
    defparam i4_4_lut_adj_1053.LUT_INIT = 16'h6996;
    SB_DFF data_in_frame_0___i21 (.Q(\data_in_frame[2] [4]), .C(clk16MHz), 
           .D(n29383));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i22 (.Q(\data_in_frame[2][5] ), .C(clk16MHz), 
           .D(n14709));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i23 (.Q(\data_in_frame[2][6] ), .C(clk16MHz), 
           .D(n14712));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i24 (.Q(\data_in_frame[2][7] ), .C(clk16MHz), 
           .D(n14717));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_4_lut_adj_1054 (.I0(\data_in_frame[18][7] ), .I1(\data_in_frame[20] [7]), 
            .I2(\data_in_frame[21] [3]), .I3(\data_in_frame[21] [4]), .O(n33405));
    defparam i1_4_lut_adj_1054.LUT_INIT = 16'h6996;
    SB_LUT4 select_442_Select_222_i3_4_lut (.I0(n26647), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n30276), .I3(\data_out_frame[25] [5]), .O(n3_adj_4150));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_222_i3_4_lut.LUT_INIT = 16'h8448;
    SB_DFF data_in_frame_0___i25 (.Q(\data_in_frame[3] [0]), .C(clk16MHz), 
           .D(n14721));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i26 (.Q(\data_in_frame[3] [1]), .C(clk16MHz), 
           .D(n14724));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_442_Select_221_i3_4_lut (.I0(n10541), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n30276), .I3(\data_out_frame[25] [3]), .O(n3_adj_4151));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_221_i3_4_lut.LUT_INIT = 16'h8448;
    SB_LUT4 i4_4_lut_adj_1055 (.I0(n30042), .I1(n10541), .I2(n27555), 
            .I3(n30287), .O(n10_adj_4152));
    defparam i4_4_lut_adj_1055.LUT_INIT = 16'h9669;
    SB_LUT4 i1_3_lut (.I0(\data_in_frame[21] [1]), .I1(n33405), .I2(\data_in_frame[21] [2]), 
            .I3(GND_net), .O(n33407));
    defparam i1_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 select_442_Select_220_i3_4_lut (.I0(n30424), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n10_adj_4152), .I3(n30191), .O(n3_adj_4153));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_220_i3_4_lut.LUT_INIT = 16'h8448;
    SB_DFF data_in_frame_0___i27 (.Q(\data_in_frame[3] [2]), .C(clk16MHz), 
           .D(n14734));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_442_Select_219_i3_4_lut (.I0(n31725), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(\data_out_frame[25] [2]), .I3(\data_out_frame[25] [1]), 
            .O(n3_adj_4154));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_219_i3_4_lut.LUT_INIT = 16'h8448;
    SB_LUT4 i2_3_lut_adj_1056 (.I0(n11996), .I1(n27394), .I2(\data_out_frame[23] [0]), 
            .I3(GND_net), .O(n30424));
    defparam i2_3_lut_adj_1056.LUT_INIT = 16'h9696;
    SB_DFF data_in_frame_0___i28 (.Q(\data_in_frame[3] [3]), .C(clk16MHz), 
           .D(n14747));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i29 (.Q(\data_in_frame[3] [4]), .C(clk16MHz), 
           .D(n14750));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i30 (.Q(\data_in_frame[3] [5]), .C(clk16MHz), 
           .D(n14753));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 equal_105_i8_2_lut_3_lut (.I0(\FRAME_MATCHER.i [2]), .I1(\FRAME_MATCHER.i [1]), 
            .I2(\FRAME_MATCHER.i[0] ), .I3(GND_net), .O(n8_adj_4137));   // verilog/coms.v(158[12:15])
    defparam equal_105_i8_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1057 (.I0(n10_adj_4143), .I1(\FRAME_MATCHER.i [2]), 
            .I2(\FRAME_MATCHER.i [1]), .I3(n197), .O(n199));
    defparam i1_2_lut_3_lut_4_lut_adj_1057.LUT_INIT = 16'hffef;
    SB_LUT4 i5_4_lut (.I0(\data_out_frame[25] [1]), .I1(n30259), .I2(n26806), 
            .I3(\data_out_frame[24] [6]), .O(n13));
    defparam i5_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 select_442_Select_218_i3_3_lut (.I0(n13), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n14), .I3(GND_net), .O(n3_adj_4155));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_218_i3_3_lut.LUT_INIT = 16'h4848;
    SB_LUT4 i29090_4_lut (.I0(n23810), .I1(n31895), .I2(n33249), .I3(\state[0] ), 
            .O(n7));   // verilog/neopixel.v(16[11:16])
    defparam i29090_4_lut.LUT_INIT = 16'hfaee;
    SB_LUT4 i1_2_lut_adj_1058 (.I0(start), .I1(\neo_pixel_transmitter.done ), 
            .I2(GND_net), .I3(GND_net), .O(n33247));   // verilog/neopixel.v(16[11:16])
    defparam i1_2_lut_adj_1058.LUT_INIT = 16'h4444;
    SB_LUT4 i1_2_lut_3_lut_adj_1059 (.I0(\FRAME_MATCHER.i_31__N_2381 ), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(\byte_transmit_counter[0] ), .I3(GND_net), .O(n1_adj_4157));
    defparam i1_2_lut_3_lut_adj_1059.LUT_INIT = 16'h1010;
    SB_DFF data_in_frame_0___i31 (.Q(\data_in_frame[3] [6]), .C(clk16MHz), 
           .D(n14756));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i5_4_lut_adj_1060 (.I0(\data_out_frame[14] [4]), .I1(n12023), 
            .I2(n30460), .I3(n11609), .O(n12_c));
    defparam i5_4_lut_adj_1060.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1061 (.I0(n33247), .I1(n7), .I2(n35068), .I3(\state[1] ), 
            .O(n31970));   // verilog/neopixel.v(16[11:16])
    defparam i1_4_lut_adj_1061.LUT_INIT = 16'ha088;
    SB_LUT4 i6_4_lut (.I0(n30314), .I1(n12_c), .I2(n30330), .I3(n27443), 
            .O(n11996));
    defparam i6_4_lut.LUT_INIT = 16'h9669;
    SB_LUT4 select_444_Select_7_i1_2_lut_3_lut (.I0(\FRAME_MATCHER.i_31__N_2381 ), 
            .I1(\FRAME_MATCHER.state[3] ), .I2(byte_transmit_counter[7]), 
            .I3(GND_net), .O(n1_adj_4158));
    defparam select_444_Select_7_i1_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_DFF data_in_frame_0___i32 (.Q(\data_in_frame[3] [7]), .C(clk16MHz), 
           .D(n14759));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i5_4_lut_adj_1062 (.I0(n11996), .I1(n30293), .I2(n26806), 
            .I3(\data_out_frame[23] [1]), .O(n12_adj_4159));
    defparam i5_4_lut_adj_1062.LUT_INIT = 16'h6996;
    SB_DFF data_in_frame_0___i33 (.Q(\data_in_frame[4]_c [0]), .C(clk16MHz), 
           .D(n29453));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i34 (.Q(\data_in_frame[4][1] ), .C(clk16MHz), 
           .D(n29467));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i6_4_lut_adj_1063 (.I0(n27408), .I1(n12_adj_4159), .I2(n30307), 
            .I3(n27353), .O(n10541));
    defparam i6_4_lut_adj_1063.LUT_INIT = 16'h9669;
    SB_LUT4 i11232_3_lut_4_lut (.I0(n8_adj_4137), .I1(n29699), .I2(rx_data[0]), 
            .I3(\data_in_frame[16] [0]), .O(n15220));
    defparam i11232_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_3_lut_adj_1064 (.I0(n27541), .I1(n26681), .I2(n26647), 
            .I3(GND_net), .O(n26719));
    defparam i2_3_lut_adj_1064.LUT_INIT = 16'h6969;
    SB_DFF data_in_frame_0___i35 (.Q(\data_in_frame[4][2] ), .C(clk16MHz), 
           .D(n14778));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i36 (.Q(\data_in_frame[4][3] ), .C(clk16MHz), 
           .D(n14781));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i37 (.Q(\data_in_frame[4][4] ), .C(clk16MHz), 
           .D(n14784));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_3_lut_adj_1065 (.I0(\FRAME_MATCHER.i_31__N_2381 ), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(\FRAME_MATCHER.i_31__N_2384 ), .I3(GND_net), .O(n36_adj_4142));
    defparam i1_2_lut_3_lut_adj_1065.LUT_INIT = 16'hfefe;
    SB_DFF data_in_frame_0___i38 (.Q(\data_in_frame[4][5] ), .C(clk16MHz), 
           .D(n14817));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i39 (.Q(\data_in_frame[4] [6]), .C(clk16MHz), 
           .D(n14820));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i2_3_lut_adj_1066 (.I0(\data_out_frame[23] [3]), .I1(n30307), 
            .I2(n27394), .I3(GND_net), .O(n32044));
    defparam i2_3_lut_adj_1066.LUT_INIT = 16'h9696;
    SB_DFFER setpoint_i0_i6 (.Q(setpoint[6]), .C(clk16MHz), .E(n12991), 
            .D(n2743[6]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_444_Select_6_i1_2_lut_3_lut (.I0(\FRAME_MATCHER.i_31__N_2381 ), 
            .I1(\FRAME_MATCHER.state[3] ), .I2(byte_transmit_counter[6]), 
            .I3(GND_net), .O(n1_adj_4160));
    defparam select_444_Select_6_i1_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_LUT4 i1_2_lut_3_lut_adj_1067 (.I0(\data_out_frame[14] [3]), .I1(n11609), 
            .I2(n11985), .I3(GND_net), .O(n30330));
    defparam i1_2_lut_3_lut_adj_1067.LUT_INIT = 16'h6969;
    SB_LUT4 i1_4_lut_adj_1068 (.I0(\data_in_frame[20] [1]), .I1(n33407), 
            .I2(n30379), .I3(n30107), .O(n33411));
    defparam i1_4_lut_adj_1068.LUT_INIT = 16'h6996;
    SB_LUT4 select_444_Select_5_i1_2_lut_3_lut (.I0(\FRAME_MATCHER.i_31__N_2381 ), 
            .I1(\FRAME_MATCHER.state[3] ), .I2(byte_transmit_counter[5]), 
            .I3(GND_net), .O(n1_adj_4161));
    defparam select_444_Select_5_i1_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_LUT4 select_444_Select_4_i1_2_lut_3_lut (.I0(\FRAME_MATCHER.i_31__N_2381 ), 
            .I1(\FRAME_MATCHER.state[3] ), .I2(byte_transmit_counter[4]), 
            .I3(GND_net), .O(n1_adj_4162));
    defparam select_444_Select_4_i1_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_LUT4 select_442_Select_217_i3_4_lut (.I0(n26719), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n8_adj_4139), .I3(n10541), .O(n3_adj_4163));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_217_i3_4_lut.LUT_INIT = 16'h4884;
    SB_LUT4 i20053_3_lut (.I0(\data_out_frame[4] [1]), .I1(\data_out_frame[5] [1]), 
            .I2(\byte_transmit_counter[0] ), .I3(GND_net), .O(n4_adj_4164));   // verilog/coms.v(105[12:33])
    defparam i20053_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31140_4_lut (.I0(\data_out_frame[1][1] ), .I1(\byte_transmit_counter[0] ), 
            .I2(\data_out_frame[3][1] ), .I3(\byte_transmit_counter[1] ), 
            .O(n35176));   // verilog/coms.v(109[34:55])
    defparam i31140_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_1_i7_4_lut (.I0(n35176), .I1(n4_adj_4164), 
            .I2(byte_transmit_counter[2]), .I3(\byte_transmit_counter[1] ), 
            .O(n7_adj_4165));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_1_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_1069 (.I0(n26695), .I1(n30403), .I2(n27380), 
            .I3(n33411), .O(n33417));
    defparam i1_4_lut_adj_1069.LUT_INIT = 16'h9669;
    SB_DFFER setpoint_i0_i5 (.Q(setpoint[5]), .C(clk16MHz), .E(n12991), 
            .D(n2743[5]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i16 (.Q(setpoint[16]), .C(clk16MHz), .E(n12991), 
            .D(n2743[16]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i4 (.Q(setpoint[4]), .C(clk16MHz), .E(n12991), 
            .D(n2743[4]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i31414_2_lut (.I0(\data_out_frame[14] [1]), .I1(\byte_transmit_counter[0] ), 
            .I2(GND_net), .I3(GND_net), .O(n35175));   // verilog/coms.v(109[34:55])
    defparam i31414_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 select_444_Select_3_i1_2_lut_3_lut (.I0(\FRAME_MATCHER.i_31__N_2381 ), 
            .I1(\FRAME_MATCHER.state[3] ), .I2(byte_transmit_counter[3]), 
            .I3(GND_net), .O(n1_adj_4166));
    defparam select_444_Select_3_i1_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_LUT4 select_444_Select_2_i1_2_lut_3_lut (.I0(\FRAME_MATCHER.i_31__N_2381 ), 
            .I1(\FRAME_MATCHER.state[3] ), .I2(byte_transmit_counter[2]), 
            .I3(GND_net), .O(n1_adj_4167));
    defparam select_444_Select_2_i1_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_LUT4 i1_4_lut_adj_1070 (.I0(n30073), .I1(n30200), .I2(n27349), 
            .I3(n33417), .O(n33423));
    defparam i1_4_lut_adj_1070.LUT_INIT = 16'h6996;
    SB_LUT4 select_444_Select_1_i1_2_lut_3_lut (.I0(\FRAME_MATCHER.i_31__N_2381 ), 
            .I1(\FRAME_MATCHER.state[3] ), .I2(\byte_transmit_counter[1] ), 
            .I3(GND_net), .O(n1_adj_4168));
    defparam select_444_Select_1_i1_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_LUT4 i11235_3_lut_4_lut (.I0(n8_adj_4137), .I1(n29699), .I2(rx_data[1]), 
            .I3(\data_in_frame[16] [1]), .O(n15223));
    defparam i11235_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_1_i11_3_lut (.I0(\data_out_frame[12] [1]), 
            .I1(\data_out_frame[13] [1]), .I2(\byte_transmit_counter[0] ), 
            .I3(GND_net), .O(n11));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_1_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10924_3_lut_4_lut (.I0(n8_adj_4137), .I1(n29983), .I2(rx_data[0]), 
            .I3(\data_in_frame[8] [0]), .O(n14912));
    defparam i10924_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i31154_4_lut (.I0(n11), .I1(byte_transmit_counter[2]), .I2(n35175), 
            .I3(\byte_transmit_counter[1] ), .O(n35190));
    defparam i31154_4_lut.LUT_INIT = 16'hc088;
    SB_DFFER setpoint_i0_i3 (.Q(setpoint[3]), .C(clk16MHz), .E(n12991), 
            .D(n2743[3]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i15 (.Q(setpoint[15]), .C(clk16MHz), .E(n12991), 
            .D(n2743[15]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i14 (.Q(setpoint[14]), .C(clk16MHz), .E(n12991), 
            .D(n2743[14]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i13 (.Q(setpoint[13]), .C(clk16MHz), .E(n12991), 
            .D(n2743[13]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_442_Select_216_i3_4_lut (.I0(n5), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n30409), .I3(n27488), .O(n3_adj_4169));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_216_i3_4_lut.LUT_INIT = 16'h4884;
    SB_LUT4 i1_2_lut_adj_1071 (.I0(\data_out_frame[25] [3]), .I1(\data_out_frame[25] [2]), 
            .I2(GND_net), .I3(GND_net), .O(n30042));
    defparam i1_2_lut_adj_1071.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_1072 (.I0(n32146), .I1(n30154), .I2(n30185), 
            .I3(n33423), .O(n26619));
    defparam i1_4_lut_adj_1072.LUT_INIT = 16'h9669;
    SB_LUT4 i10928_3_lut_4_lut (.I0(n8_adj_4137), .I1(n29983), .I2(rx_data[1]), 
            .I3(\data_in_frame[8] [1]), .O(n14916));
    defparam i10928_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i4_4_lut_adj_1073 (.I0(\data_out_frame[25] [4]), .I1(\data_out_frame[25] [7]), 
            .I2(n30042), .I3(n6_adj_4138), .O(n2520));
    defparam i4_4_lut_adj_1073.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1074 (.I0(\data_out_frame[25] [0]), .I1(n27541), 
            .I2(GND_net), .I3(GND_net), .O(n30409));
    defparam i1_2_lut_adj_1074.LUT_INIT = 16'h9999;
    SB_LUT4 i11238_3_lut_4_lut (.I0(n8_adj_4137), .I1(n29699), .I2(rx_data[2]), 
            .I3(\data_in_frame[16] [2]), .O(n15226));
    defparam i11238_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFER setpoint_i0_i12 (.Q(setpoint[12]), .C(clk16MHz), .E(n12991), 
            .D(n2743[12]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i11 (.Q(setpoint[11]), .C(clk16MHz), .E(n12991), 
            .D(n2743[11]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i18_4_lut (.I0(\FRAME_MATCHER.i [30]), .I1(\FRAME_MATCHER.i [21]), 
            .I2(\FRAME_MATCHER.i [24]), .I3(\FRAME_MATCHER.i [17]), .O(n44));
    defparam i18_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 select_442_Select_215_i3_4_lut (.I0(n2520), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n6_adj_4170), .I3(n30182), .O(n3_adj_4171));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_215_i3_4_lut.LUT_INIT = 16'h4884;
    SB_LUT4 i2_2_lut_adj_1075 (.I0(\data_out_frame[24] [4]), .I1(\data_out_frame[24] [5]), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_4172));
    defparam i2_2_lut_adj_1075.LUT_INIT = 16'h6666;
    SB_LUT4 i16_4_lut_adj_1076 (.I0(\FRAME_MATCHER.i [29]), .I1(\FRAME_MATCHER.i [6]), 
            .I2(\FRAME_MATCHER.i [18]), .I3(\FRAME_MATCHER.i [23]), .O(n42));
    defparam i16_4_lut_adj_1076.LUT_INIT = 16'hfffe;
    SB_LUT4 i17_4_lut (.I0(\FRAME_MATCHER.i [7]), .I1(\FRAME_MATCHER.i [20]), 
            .I2(\FRAME_MATCHER.i [12]), .I3(\FRAME_MATCHER.i [14]), .O(n43));
    defparam i17_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i15_4_lut_adj_1077 (.I0(\FRAME_MATCHER.i [22]), .I1(\FRAME_MATCHER.i [11]), 
            .I2(\FRAME_MATCHER.i [26]), .I3(\FRAME_MATCHER.i [16]), .O(n41));
    defparam i15_4_lut_adj_1077.LUT_INIT = 16'hfffe;
    SB_LUT4 i14_4_lut_adj_1078 (.I0(\FRAME_MATCHER.i [13]), .I1(\FRAME_MATCHER.i [15]), 
            .I2(\FRAME_MATCHER.i [10]), .I3(\FRAME_MATCHER.i [28]), .O(n40_c));
    defparam i14_4_lut_adj_1078.LUT_INIT = 16'hfffe;
    SB_LUT4 i10931_3_lut_4_lut (.I0(n8_adj_4137), .I1(n29983), .I2(rx_data[2]), 
            .I3(\data_in_frame[8] [2]), .O(n14919));
    defparam i10931_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i13_2_lut (.I0(\FRAME_MATCHER.i [9]), .I1(\FRAME_MATCHER.i [27]), 
            .I2(GND_net), .I3(GND_net), .O(n39_c));
    defparam i13_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i24_4_lut (.I0(n41), .I1(n43), .I2(n42), .I3(n44), .O(n50));
    defparam i24_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19_4_lut_adj_1079 (.I0(\FRAME_MATCHER.i [8]), .I1(\FRAME_MATCHER.i [25]), 
            .I2(\FRAME_MATCHER.i [5]), .I3(\FRAME_MATCHER.i [19]), .O(n45));
    defparam i19_4_lut_adj_1079.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_1080 (.I0(\FRAME_MATCHER.state[3] ), .I1(n30285), 
            .I2(n6_adj_4172), .I3(n10579), .O(n3_adj_4173));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1080.LUT_INIT = 16'h8228;
    SB_LUT4 i25_4_lut (.I0(n45), .I1(n50), .I2(n39_c), .I3(n40_c), .O(n10916));
    defparam i25_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFER setpoint_i0_i10 (.Q(setpoint[10]), .C(clk16MHz), .E(n12991), 
            .D(n2743[10]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i9 (.Q(setpoint[9]), .C(clk16MHz), .E(n12991), 
            .D(n2743[9]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_442_Select_212_i3_4_lut (.I0(n27513), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n30211), .I3(\data_out_frame[24] [3]), .O(n3_adj_4174));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_212_i3_4_lut.LUT_INIT = 16'h4884;
    SB_LUT4 i1_2_lut_adj_1081 (.I0(\data_out_frame[24] [2]), .I1(n27335), 
            .I2(GND_net), .I3(GND_net), .O(n30211));
    defparam i1_2_lut_adj_1081.LUT_INIT = 16'h6666;
    SB_LUT4 i10934_3_lut_4_lut (.I0(n8_adj_4137), .I1(n29983), .I2(rx_data[3]), 
            .I3(\data_in_frame[8] [3]), .O(n14922));
    defparam i10934_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 select_442_Select_211_i3_4_lut (.I0(\data_out_frame[24] [1]), 
            .I1(\FRAME_MATCHER.state[3] ), .I2(n30211), .I3(n27422), .O(n3_adj_4175));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_211_i3_4_lut.LUT_INIT = 16'h8448;
    SB_LUT4 i2_2_lut_adj_1082 (.I0(n30273), .I1(\data_out_frame[24] [0]), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_4176));
    defparam i2_2_lut_adj_1082.LUT_INIT = 16'h6666;
    SB_LUT4 i17268_4_lut (.I0(\FRAME_MATCHER.i[3] ), .I1(\FRAME_MATCHER.i [31]), 
            .I2(n10916), .I3(\FRAME_MATCHER.i [4]), .O(n4452));   // verilog/coms.v(262[9:58])
    defparam i17268_4_lut.LUT_INIT = 16'h3230;
    SB_LUT4 i4_4_lut_adj_1083 (.I0(n31769), .I1(\data_in_frame[20] [6]), 
            .I2(n26621), .I3(n30023), .O(n10_adj_4177));
    defparam i4_4_lut_adj_1083.LUT_INIT = 16'h9669;
    SB_LUT4 i235_2_lut (.I0(n4452), .I1(\FRAME_MATCHER.i_31__N_2384 ), .I2(GND_net), 
            .I3(GND_net), .O(n796));   // verilog/coms.v(148[4] 304[11])
    defparam i235_2_lut.LUT_INIT = 16'h8888;
    SB_DFFER setpoint_i0_i8 (.Q(setpoint[8]), .C(clk16MHz), .E(n12991), 
            .D(n2743[8]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i70 (.Q(\data_in_frame[8] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n14928));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10937_3_lut_4_lut (.I0(n8_adj_4137), .I1(n29983), .I2(rx_data[4]), 
            .I3(\data_in_frame[8] [4]), .O(n14925));
    defparam i10937_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 select_442_Select_210_i3_4_lut (.I0(n30250), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n6_adj_4176), .I3(n30299), .O(n3_adj_4178));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_210_i3_4_lut.LUT_INIT = 16'h4884;
    SB_LUT4 i2_3_lut_adj_1084 (.I0(n31460), .I1(n30304), .I2(n27459), 
            .I3(GND_net), .O(n27513));
    defparam i2_3_lut_adj_1084.LUT_INIT = 16'h6969;
    SB_LUT4 i5_4_lut_adj_1085 (.I0(n10581), .I1(n30299), .I2(n30205), 
            .I3(n26789), .O(n12_adj_4179));
    defparam i5_4_lut_adj_1085.LUT_INIT = 16'h9669;
    SB_LUT4 i6_4_lut_adj_1086 (.I0(n26645), .I1(n12_adj_4179), .I2(n30457), 
            .I3(n26669), .O(n27335));
    defparam i6_4_lut_adj_1086.LUT_INIT = 16'h6996;
    SB_LUT4 i5_3_lut_adj_1087 (.I0(n26679), .I1(n10_adj_4177), .I2(\data_in_frame[21] [0]), 
            .I3(GND_net), .O(n27373));
    defparam i5_3_lut_adj_1087.LUT_INIT = 16'h9696;
    SB_LUT4 i3_4_lut_adj_1088 (.I0(n27353), .I1(n30439), .I2(n30296), 
            .I3(n27494), .O(n27021));
    defparam i3_4_lut_adj_1088.LUT_INIT = 16'h9669;
    SB_LUT4 i2_3_lut_adj_1089 (.I0(n32065), .I1(n30250), .I2(\data_out_frame[23] [5]), 
            .I3(GND_net), .O(n27541));
    defparam i2_3_lut_adj_1089.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1090 (.I0(n26789), .I1(n30284), .I2(GND_net), 
            .I3(GND_net), .O(n30285));
    defparam i1_2_lut_adj_1090.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_1091 (.I0(n30205), .I1(n11920), .I2(\data_out_frame[24] [0]), 
            .I3(n27541), .O(n26725));
    defparam i3_4_lut_adj_1091.LUT_INIT = 16'h9669;
    SB_LUT4 i10940_3_lut_4_lut (.I0(n8_adj_4137), .I1(n29983), .I2(rx_data[5]), 
            .I3(\data_in_frame[8] [5]), .O(n14928));
    defparam i10940_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_3_lut_adj_1092 (.I0(n11743), .I1(n30002), .I2(\data_in_frame[6] [6]), 
            .I3(GND_net), .O(n30335));   // verilog/coms.v(80[16:43])
    defparam i2_3_lut_adj_1092.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1093 (.I0(n26806), .I1(n27505), .I2(GND_net), 
            .I3(GND_net), .O(n30287));
    defparam i1_2_lut_adj_1093.LUT_INIT = 16'h9999;
    SB_LUT4 i3_4_lut_adj_1094 (.I0(n26691), .I1(n12023), .I2(\data_out_frame[13] [0]), 
            .I3(n27435), .O(n30299));
    defparam i3_4_lut_adj_1094.LUT_INIT = 16'h9669;
    SB_LUT4 i2_3_lut_adj_1095 (.I0(\data_in_frame[2][2] ), .I1(\data_in_frame[0] [0]), 
            .I2(\data_in_frame[0] [1]), .I3(GND_net), .O(n3_adj_4180));   // verilog/coms.v(169[9:87])
    defparam i2_3_lut_adj_1095.LUT_INIT = 16'h9696;
    SB_LUT4 i10984_3_lut_4_lut (.I0(n8_adj_4137), .I1(n29983), .I2(rx_data[6]), 
            .I3(\data_in_frame[8] [6]), .O(n14972));
    defparam i10984_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i3_4_lut_adj_1096 (.I0(n30078), .I1(n11107), .I2(n26769), 
            .I3(n27410), .O(n30460));
    defparam i3_4_lut_adj_1096.LUT_INIT = 16'h9669;
    SB_DFFE data_in_frame_0___i69 (.Q(\data_in_frame[8] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n14925));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i4_4_lut_adj_1097 (.I0(n27366), .I1(\data_out_frame[14] [3]), 
            .I2(n26709), .I3(n30460), .O(n10_adj_4181));
    defparam i4_4_lut_adj_1097.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i68 (.Q(\data_in_frame[8] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n14922));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i5_4_lut_adj_1098 (.I0(n30097), .I1(n10_adj_4181), .I2(n27494), 
            .I3(n26709), .O(n30457));
    defparam i5_4_lut_adj_1098.LUT_INIT = 16'h6996;
    SB_LUT4 i10987_3_lut_4_lut (.I0(n8_adj_4137), .I1(n29983), .I2(rx_data[7]), 
            .I3(\data_in_frame[8] [7]), .O(n14975));
    defparam i10987_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11241_3_lut_4_lut (.I0(n8_adj_4137), .I1(n29699), .I2(rx_data[3]), 
            .I3(\data_in_frame[16] [3]), .O(n15229));
    defparam i11241_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_3_lut_adj_1099 (.I0(\data_in_frame[2][5] ), .I1(\data_in_frame[0] [3]), 
            .I2(\data_in_frame[0] [4]), .I3(GND_net), .O(n6_adj_4182));   // verilog/coms.v(169[9:87])
    defparam i2_3_lut_adj_1099.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1100 (.I0(n26691), .I1(n10581), .I2(GND_net), 
            .I3(GND_net), .O(n27408));
    defparam i1_2_lut_adj_1100.LUT_INIT = 16'h6666;
    SB_DFFE data_in_frame_0___i67 (.Q(\data_in_frame[8] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n14919));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i66 (.Q(\data_in_frame[8] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n14916));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i40 (.Q(\data_in_frame[4][7] ), .C(clk16MHz), 
           .D(n14824));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i65 (.Q(\data_in_frame[8] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n14912));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_3_lut_adj_1101 (.I0(n26966), .I1(Kp_23__N_950), .I2(n27388), 
            .I3(GND_net), .O(Kp_23__N_940));
    defparam i1_2_lut_3_lut_adj_1101.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_4_lut_adj_1102 (.I0(\data_in_frame[14] [2]), .I1(n27496), 
            .I2(n31639), .I3(\data_in_frame[18][6] ), .O(n6_adj_4183));
    defparam i1_2_lut_4_lut_adj_1102.LUT_INIT = 16'h9669;
    SB_LUT4 i3_4_lut_adj_1103 (.I0(n11746), .I1(\data_in_frame[4] [6]), 
            .I2(\data_in_frame[7] [0]), .I3(\data_in_frame[6] [6]), .O(n30136));   // verilog/coms.v(77[16:43])
    defparam i3_4_lut_adj_1103.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i64 (.Q(\data_in_frame[7] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n14909));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1104 (.I0(\data_out_frame[24] [4]), .I1(\data_out_frame[24] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n30116));
    defparam i1_2_lut_adj_1104.LUT_INIT = 16'h6666;
    SB_LUT4 i2_2_lut_4_lut (.I0(\data_in_frame[10][2] ), .I1(\data_in_frame[8] [1]), 
            .I2(n9266), .I3(n26685), .O(n7_adj_4184));
    defparam i2_2_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i4_4_lut_adj_1105 (.I0(n7_adj_4185), .I1(n26749), .I2(n27549), 
            .I3(n27505), .O(n30304));
    defparam i4_4_lut_adj_1105.LUT_INIT = 16'h6996;
    SB_LUT4 i10691_3_lut_4_lut (.I0(n13718), .I1(reset), .I2(rx_data[4]), 
            .I3(\data_in_frame[1] [4]), .O(n14679));
    defparam i10691_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFE data_in_frame_0___i63 (.Q(\data_in_frame[7] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n14906));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i62 (.Q(\data_in_frame[7] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n14903));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i61 (.Q(\data_in_frame[7] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n14900));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i60 (.Q(\data_in_frame[7] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n14897));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i59 (.Q(\data_in_frame[7] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n14894));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10688_3_lut_4_lut (.I0(n13718), .I1(reset), .I2(rx_data[3]), 
            .I3(\data_in_frame[1] [3]), .O(n14676));
    defparam i10688_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_1106 (.I0(\data_out_frame[23] [4]), .I1(\data_out_frame[23] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n30229));
    defparam i1_2_lut_adj_1106.LUT_INIT = 16'h6666;
    SB_LUT4 i6_4_lut_adj_1107 (.I0(n30170), .I1(n26408), .I2(\data_out_frame[4] [3]), 
            .I3(\data_out_frame[4] [1]), .O(n14_adj_4186));
    defparam i6_4_lut_adj_1107.LUT_INIT = 16'h6996;
    SB_LUT4 i5_4_lut_adj_1108 (.I0(\data_out_frame[13] [7]), .I1(n4_adj_4187), 
            .I2(\data_out_frame[12] [0]), .I3(n11835), .O(n13_adj_4188));
    defparam i5_4_lut_adj_1108.LUT_INIT = 16'h9669;
    SB_LUT4 i1_3_lut_adj_1109 (.I0(\data_out_frame[14] [1]), .I1(n13_adj_4188), 
            .I2(n14_adj_4186), .I3(GND_net), .O(n27494));
    defparam i1_3_lut_adj_1109.LUT_INIT = 16'h6969;
    SB_LUT4 i10681_3_lut_4_lut (.I0(n13718), .I1(reset), .I2(rx_data[2]), 
            .I3(\data_in_frame[1] [2]), .O(n14669));
    defparam i10681_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_4_lut_adj_1110 (.I0(\data_in_frame[9] [7]), .I1(\data_in_frame[9] [6]), 
            .I2(n9413), .I3(n9417), .O(n11893));
    defparam i1_2_lut_4_lut_adj_1110.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1111 (.I0(n26769), .I1(n11092), .I2(\data_out_frame[14] [3]), 
            .I3(n27494), .O(n27505));
    defparam i1_2_lut_3_lut_4_lut_adj_1111.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1112 (.I0(\data_out_frame[5] [2]), .I1(\data_out_frame[5] [1]), 
            .I2(\data_out_frame[5] [7]), .I3(\data_out_frame[5] [6]), .O(n30365));   // verilog/coms.v(76[16:34])
    defparam i1_2_lut_3_lut_4_lut_adj_1112.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1113 (.I0(\data_out_frame[13] [0]), .I1(n27435), 
            .I2(\data_out_frame[14] [4]), .I3(n30097), .O(n30250));
    defparam i1_2_lut_3_lut_4_lut_adj_1113.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i58 (.Q(\data_in_frame[7] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n14891));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10677_3_lut_4_lut (.I0(n13718), .I1(reset), .I2(rx_data[1]), 
            .I3(\data_in_frame[1] [1]), .O(n14665));
    defparam i10677_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 mux_647_i2_3_lut_4_lut (.I0(\data_in_frame[19][1] ), .I1(\data_in_frame[3] [1]), 
            .I2(Kp_23__N_1618), .I3(n23006), .O(n2743[1]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_647_i2_3_lut_4_lut.LUT_INIT = 16'haccc;
    SB_LUT4 i1_2_lut_adj_1114 (.I0(n27555), .I1(n30284), .I2(GND_net), 
            .I3(GND_net), .O(n30205));
    defparam i1_2_lut_adj_1114.LUT_INIT = 16'h9999;
    SB_LUT4 i1_2_lut_2_lut (.I0(reset), .I1(\FRAME_MATCHER.i_31__N_2381 ), 
            .I2(GND_net), .I3(GND_net), .O(n29896));   // verilog/coms.v(130[12] 305[6])
    defparam i1_2_lut_2_lut.LUT_INIT = 16'h4444;
    SB_DFFE data_in_frame_0___i57 (.Q(\data_in_frame[7] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n14888));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 mux_647_i9_3_lut_4_lut (.I0(\data_in_frame[18][0] ), .I1(\data_in_frame[2][0] ), 
            .I2(Kp_23__N_1618), .I3(n23006), .O(n2743[8]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_647_i9_3_lut_4_lut.LUT_INIT = 16'haccc;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1115 (.I0(\data_in_frame[6] [0]), .I1(\data_in_frame[1] [5]), 
            .I2(\data_in_frame[3] [6]), .I3(\data_in_frame[5] [7]), .O(n30388));   // verilog/coms.v(78[16:27])
    defparam i1_2_lut_3_lut_4_lut_adj_1115.LUT_INIT = 16'h6996;
    SB_LUT4 equal_96_i10_2_lut_3_lut (.I0(\FRAME_MATCHER.i[3] ), .I1(\FRAME_MATCHER.i [4]), 
            .I2(\FRAME_MATCHER.i [5]), .I3(GND_net), .O(n10_adj_4143));   // verilog/coms.v(157[7:23])
    defparam equal_96_i10_2_lut_3_lut.LUT_INIT = 16'hfdfd;
    SB_DFFE data_in_frame_0___i56 (.Q(\data_in_frame[6] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n14885));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11_4_lut_4_lut (.I0(n13718), .I1(reset), .I2(rx_data[0]), 
            .I3(\data_in_frame[1] [0]), .O(n29539));
    defparam i11_4_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFE data_in_frame_0___i55 (.Q(\data_in_frame[6] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n14882));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i17255_2_lut_3_lut (.I0(rx_data_ready), .I1(\FRAME_MATCHER.rx_data_ready_prev ), 
            .I2(n1959), .I3(GND_net), .O(n21178));
    defparam i17255_2_lut_3_lut.LUT_INIT = 16'h2020;
    SB_LUT4 i14_4_lut_adj_1116 (.I0(\data_out_frame[24] [7]), .I1(n30229), 
            .I2(n30304), .I3(n30116), .O(n36_adj_4189));
    defparam i14_4_lut_adj_1116.LUT_INIT = 16'h6996;
    SB_LUT4 i12_4_lut_adj_1117 (.I0(\data_out_frame[24] [5]), .I1(n30273), 
            .I2(\data_out_frame[24] [2]), .I3(n26789), .O(n34_adj_4190));
    defparam i12_4_lut_adj_1117.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i54 (.Q(\data_in_frame[6] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n14879));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i18_4_lut_adj_1118 (.I0(n30448), .I1(n36_adj_4189), .I2(n26_adj_4191), 
            .I3(n30205), .O(n40_adj_4192));
    defparam i18_4_lut_adj_1118.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i53 (.Q(\data_in_frame[6] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n14876));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i52 (.Q(\data_in_frame[6] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n14873));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i51 (.Q(\data_in_frame[6]_c [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n14870));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i17_3_lut (.I0(n26645), .I1(n34_adj_4190), .I2(n30299), .I3(GND_net), 
            .O(n39_adj_4193));
    defparam i17_3_lut.LUT_INIT = 16'h6969;
    SB_LUT4 i15_4_lut_adj_1119 (.I0(\data_out_frame[23] [2]), .I1(\data_out_frame[23] [5]), 
            .I2(\data_out_frame[24] [6]), .I3(\data_out_frame[23] [0]), 
            .O(n37));
    defparam i15_4_lut_adj_1119.LUT_INIT = 16'h6996;
    SB_LUT4 i21_4_lut (.I0(n37), .I1(n39_adj_4193), .I2(n38), .I3(n40_adj_4192), 
            .O(n11920));
    defparam i21_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_1120 (.I0(\data_in_frame[4][4] ), .I1(n11204), 
            .I2(n3_adj_4180), .I3(GND_net), .O(n11743));   // verilog/coms.v(78[16:43])
    defparam i2_3_lut_adj_1120.LUT_INIT = 16'h9696;
    SB_DFFE data_in_frame_0___i50 (.Q(\data_in_frame[6][1] ), .C(clk16MHz), 
            .E(VCC_net), .D(n14867));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i49 (.Q(\data_in_frame[6] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n14864));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10700_3_lut_4_lut (.I0(n13718), .I1(reset), .I2(rx_data[7]), 
            .I3(\data_in_frame[1] [7]), .O(n14688));
    defparam i10700_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_1121 (.I0(n27555), .I1(n26669), .I2(GND_net), 
            .I3(GND_net), .O(n27488));
    defparam i1_2_lut_adj_1121.LUT_INIT = 16'h9999;
    SB_LUT4 i5_4_lut_adj_1122 (.I0(n27488), .I1(n30182), .I2(n11920), 
            .I3(n27422), .O(n12_adj_4194));
    defparam i5_4_lut_adj_1122.LUT_INIT = 16'h9669;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut_32719 (.I0(\byte_transmit_counter[0] ), 
            .I1(\data_out_frame[26] [1]), .I2(\data_out_frame[27] [1]), 
            .I3(\byte_transmit_counter[1] ), .O(n37125));
    defparam byte_transmit_counter_0__bdd_4_lut_32719.LUT_INIT = 16'he4aa;
    SB_LUT4 select_442_Select_209_i3_4_lut (.I0(n27335), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n12_adj_4194), .I3(n8_adj_4195), .O(n3_adj_4196));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_209_i3_4_lut.LUT_INIT = 16'h4884;
    SB_DFF data_in_frame_0___i41 (.Q(\data_in_frame[5] [0]), .C(clk16MHz), 
           .D(n14827));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i48 (.Q(\data_in_frame[5] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n14860));   // verilog/coms.v(130[12] 305[6])
    SB_DFF control_mode_i0_i6 (.Q(control_mode[6]), .C(clk16MHz), .D(n14858));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i47 (.Q(\data_in_frame[5] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n14854));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1123 (.I0(\data_out_frame[13] [4]), .I1(\data_out_frame[4] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_4197));   // verilog/coms.v(77[16:27])
    defparam i1_2_lut_adj_1123.LUT_INIT = 16'h6666;
    SB_LUT4 n37125_bdd_4_lut (.I0(n37125), .I1(\data_out_frame[25] [1]), 
            .I2(\data_out_frame[24] [1]), .I3(\byte_transmit_counter[1] ), 
            .O(n37128));
    defparam n37125_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i2_3_lut_adj_1124 (.I0(\data_out_frame[5] [6]), .I1(\data_out_frame[4] [2]), 
            .I2(n30442), .I3(GND_net), .O(n30373));   // verilog/coms.v(76[16:42])
    defparam i2_3_lut_adj_1124.LUT_INIT = 16'h9696;
    SB_LUT4 i10697_3_lut_4_lut (.I0(n13718), .I1(reset), .I2(rx_data[6]), 
            .I3(\data_in_frame[1] [6]), .O(n14685));
    defparam i10697_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF data_in_frame_0___i42 (.Q(\data_in_frame[5] [1]), .C(clk16MHz), 
           .D(n14831));   // verilog/coms.v(130[12] 305[6])
    SB_DFFR \FRAME_MATCHER.i_1113__i31  (.Q(\FRAME_MATCHER.i [31]), .C(clk16MHz), 
            .D(n13237), .R(reset));   // verilog/coms.v(158[12:15])
    SB_LUT4 i1_2_lut_adj_1125 (.I0(n11985), .I1(n30373), .I2(GND_net), 
            .I3(GND_net), .O(n26908));   // verilog/coms.v(78[16:43])
    defparam i1_2_lut_adj_1125.LUT_INIT = 16'h6666;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut_32704 (.I0(\byte_transmit_counter[0] ), 
            .I1(\data_out_frame[26] [6]), .I2(\data_out_frame[27] [6]), 
            .I3(\byte_transmit_counter[1] ), .O(n37119));
    defparam byte_transmit_counter_0__bdd_4_lut_32704.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_adj_1126 (.I0(\data_out_frame[12] [4]), .I1(\data_out_frame[14] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_4198));
    defparam i1_2_lut_adj_1126.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut_adj_1127 (.I0(n1519), .I1(n1516), .I2(\data_out_frame[12] [5]), 
            .I3(n6_adj_4198), .O(n12023));
    defparam i4_4_lut_adj_1127.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_1128 (.I0(\data_out_frame[12] [1]), .I1(\data_out_frame[5] [5]), 
            .I2(\data_out_frame[5] [2]), .I3(n4_adj_4187), .O(n26769));   // verilog/coms.v(77[16:27])
    defparam i3_4_lut_adj_1128.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i46 (.Q(\data_in_frame[5] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n14848));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i2_3_lut_adj_1129 (.I0(\data_in_frame[4]_c [0]), .I1(\data_in_frame[1] [5]), 
            .I2(\data_in_frame[1] [6]), .I3(GND_net), .O(n16));   // verilog/coms.v(99[12:25])
    defparam i2_3_lut_adj_1129.LUT_INIT = 16'h9696;
    SB_LUT4 n37119_bdd_4_lut (.I0(n37119), .I1(\data_out_frame[25] [6]), 
            .I2(\data_out_frame[24] [6]), .I3(\byte_transmit_counter[1] ), 
            .O(n37122));
    defparam n37119_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFE data_in_frame_0___i45 (.Q(\data_in_frame[5] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n14845));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10694_3_lut_4_lut (.I0(n13718), .I1(reset), .I2(rx_data[5]), 
            .I3(\data_in_frame[1] [5]), .O(n14682));
    defparam i10694_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_1130 (.I0(n26769), .I1(n11092), .I2(GND_net), 
            .I3(GND_net), .O(n27516));
    defparam i1_2_lut_adj_1130.LUT_INIT = 16'h6666;
    SB_DFFR \FRAME_MATCHER.i_1113__i30  (.Q(\FRAME_MATCHER.i [30]), .C(clk16MHz), 
            .D(n13239), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1113__i29  (.Q(\FRAME_MATCHER.i [29]), .C(clk16MHz), 
            .D(n13241), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1113__i28  (.Q(\FRAME_MATCHER.i [28]), .C(clk16MHz), 
            .D(n13243), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1113__i27  (.Q(\FRAME_MATCHER.i [27]), .C(clk16MHz), 
            .D(n13245), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1113__i26  (.Q(\FRAME_MATCHER.i [26]), .C(clk16MHz), 
            .D(n13247), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1113__i25  (.Q(\FRAME_MATCHER.i [25]), .C(clk16MHz), 
            .D(n13249), .R(reset));   // verilog/coms.v(158[12:15])
    SB_LUT4 i1_2_lut_adj_1131 (.I0(\data_out_frame[14] [4]), .I1(n30097), 
            .I2(GND_net), .I3(GND_net), .O(n11795));
    defparam i1_2_lut_adj_1131.LUT_INIT = 16'h6666;
    SB_DFFR \FRAME_MATCHER.i_1113__i24  (.Q(\FRAME_MATCHER.i [24]), .C(clk16MHz), 
            .D(n13251), .R(reset));   // verilog/coms.v(158[12:15])
    SB_LUT4 i880_2_lut (.I0(\data_out_frame[12] [7]), .I1(\data_out_frame[12] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n1668));   // verilog/coms.v(88[17:28])
    defparam i880_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_1132 (.I0(n1191), .I1(n30018), .I2(n1668), .I3(n11835), 
            .O(n27435));
    defparam i3_4_lut_adj_1132.LUT_INIT = 16'h9669;
    SB_DFFR \FRAME_MATCHER.i_1113__i23  (.Q(\FRAME_MATCHER.i [23]), .C(clk16MHz), 
            .D(n13253), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1113__i22  (.Q(\FRAME_MATCHER.i [22]), .C(clk16MHz), 
            .D(n13255), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1113__i21  (.Q(\FRAME_MATCHER.i [21]), .C(clk16MHz), 
            .D(n13257), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1113__i20  (.Q(\FRAME_MATCHER.i [20]), .C(clk16MHz), 
            .D(n13259), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1113__i19  (.Q(\FRAME_MATCHER.i [19]), .C(clk16MHz), 
            .D(n13261), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFESS data_out_frame_0___i3 (.Q(\data_out_frame[0][2] ), .C(clk16MHz), 
            .E(n1450), .D(n2), .S(n29826));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i43 (.Q(\data_in_frame[5] [2]), .C(clk16MHz), 
           .D(n14834));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1133 (.I0(n10_adj_4135), .I1(\FRAME_MATCHER.i [2]), 
            .I2(\FRAME_MATCHER.i [1]), .I3(n197), .O(n198));
    defparam i1_2_lut_3_lut_4_lut_adj_1133.LUT_INIT = 16'hffef;
    SB_LUT4 i3_4_lut_adj_1134 (.I0(\data_out_frame[12] [7]), .I1(\data_out_frame[4] [4]), 
            .I2(\data_out_frame[4] [2]), .I3(\data_out_frame[13] [1]), .O(n30087));
    defparam i3_4_lut_adj_1134.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_1135 (.I0(\data_out_frame[5] [2]), .I1(\data_out_frame[5] [6]), 
            .I2(\data_out_frame[12] [2]), .I3(GND_net), .O(n11092));   // verilog/coms.v(77[16:27])
    defparam i2_3_lut_adj_1135.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1136 (.I0(n27406), .I1(n30087), .I2(GND_net), 
            .I3(GND_net), .O(n27410));
    defparam i1_2_lut_adj_1136.LUT_INIT = 16'h6666;
    SB_DFFR \FRAME_MATCHER.i_1113__i18  (.Q(\FRAME_MATCHER.i [18]), .C(clk16MHz), 
            .D(n13263), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1113__i17  (.Q(\FRAME_MATCHER.i [17]), .C(clk16MHz), 
            .D(n13265), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1113__i16  (.Q(\FRAME_MATCHER.i [16]), .C(clk16MHz), 
            .D(n13267), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1113__i15  (.Q(\FRAME_MATCHER.i [15]), .C(clk16MHz), 
            .D(n13269), .R(reset));   // verilog/coms.v(158[12:15])
    SB_LUT4 i1_2_lut_adj_1137 (.I0(n11609), .I1(n32071), .I2(GND_net), 
            .I3(GND_net), .O(n27366));
    defparam i1_2_lut_adj_1137.LUT_INIT = 16'h9999;
    SB_DFFR \FRAME_MATCHER.i_1113__i14  (.Q(\FRAME_MATCHER.i [14]), .C(clk16MHz), 
            .D(n13281), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFF data_in_frame_0___i44 (.Q(\data_in_frame[5] [3]), .C(clk16MHz), 
           .D(n14837));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 byte_transmit_counter_1__bdd_4_lut (.I0(\byte_transmit_counter[1] ), 
            .I1(\data_out_frame[25] [2]), .I2(\data_out_frame[27] [2]), 
            .I3(\byte_transmit_counter[0] ), .O(n37113));
    defparam byte_transmit_counter_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_adj_1138 (.I0(\data_out_frame[4] [1]), .I1(\data_out_frame[4] [2]), 
            .I2(GND_net), .I3(GND_net), .O(n30018));   // verilog/coms.v(77[16:27])
    defparam i1_2_lut_adj_1138.LUT_INIT = 16'h6666;
    SB_LUT4 n37113_bdd_4_lut (.I0(n37113), .I1(\data_out_frame[26] [2]), 
            .I2(\data_out_frame[24] [2]), .I3(\byte_transmit_counter[0] ), 
            .O(n37116));
    defparam n37113_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFR \FRAME_MATCHER.i_1113__i13  (.Q(\FRAME_MATCHER.i [13]), .C(clk16MHz), 
            .D(n13283), .R(reset));   // verilog/coms.v(158[12:15])
    SB_LUT4 i4_4_lut_adj_1139 (.I0(\data_in_frame[6][1] ), .I1(n16), .I2(\data_in_frame[5] [7]), 
            .I3(n6_adj_4199), .O(n11342));   // verilog/coms.v(81[16:27])
    defparam i4_4_lut_adj_1139.LUT_INIT = 16'h6996;
    SB_LUT4 i3_3_lut (.I0(\data_out_frame[4] [7]), .I1(\data_out_frame[4] [3]), 
            .I2(n30341), .I3(GND_net), .O(n8_adj_4200));
    defparam i3_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i3_4_lut_adj_1140 (.I0(n11334), .I1(n30365), .I2(n30065), 
            .I3(\data_out_frame[5] [4]), .O(n31442));   // verilog/coms.v(74[16:62])
    defparam i3_4_lut_adj_1140.LUT_INIT = 16'h6996;
    SB_DFFR \FRAME_MATCHER.i_1113__i12  (.Q(\FRAME_MATCHER.i [12]), .C(clk16MHz), 
            .D(n13285), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1113__i11  (.Q(\FRAME_MATCHER.i [11]), .C(clk16MHz), 
            .D(n13287), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1113__i10  (.Q(\FRAME_MATCHER.i [10]), .C(clk16MHz), 
            .D(n13289), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1113__i9  (.Q(\FRAME_MATCHER.i [9]), .C(clk16MHz), 
            .D(n13291), .R(reset));   // verilog/coms.v(158[12:15])
    SB_LUT4 i2_3_lut_4_lut_adj_1141 (.I0(\FRAME_MATCHER.i[3] ), .I1(n9), 
            .I2(\FRAME_MATCHER.i[0] ), .I3(n19958), .O(n31946));   // verilog/coms.v(157[7:23])
    defparam i2_3_lut_4_lut_adj_1141.LUT_INIT = 16'hfffe;
    SB_DFFR \FRAME_MATCHER.i_1113__i8  (.Q(\FRAME_MATCHER.i [8]), .C(clk16MHz), 
            .D(n13293), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1113__i7  (.Q(\FRAME_MATCHER.i [7]), .C(clk16MHz), 
            .D(n13295), .R(reset));   // verilog/coms.v(158[12:15])
    SB_LUT4 i32475_4_lut (.I0(\data_out_frame[5] [5]), .I1(n31442), .I2(n8_adj_4200), 
            .I3(n30222), .O(n36880));
    defparam i32475_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut_32699 (.I0(\byte_transmit_counter[0] ), 
            .I1(\data_out_frame[26] [3]), .I2(\data_out_frame[27] [3]), 
            .I3(\byte_transmit_counter[1] ), .O(n37107));
    defparam byte_transmit_counter_0__bdd_4_lut_32699.LUT_INIT = 16'he4aa;
    SB_LUT4 i4_4_lut_adj_1142 (.I0(\data_out_frame[4] [6]), .I1(n36880), 
            .I2(\data_out_frame[4] [0]), .I3(n6_adj_4201), .O(n30144));
    defparam i4_4_lut_adj_1142.LUT_INIT = 16'h9669;
    SB_DFFR \FRAME_MATCHER.i_1113__i6  (.Q(\FRAME_MATCHER.i [6]), .C(clk16MHz), 
            .D(n13297), .R(reset));   // verilog/coms.v(158[12:15])
    SB_LUT4 i1_2_lut_adj_1143 (.I0(\data_out_frame[4] [6]), .I1(\data_out_frame[5] [0]), 
            .I2(GND_net), .I3(GND_net), .O(n30065));   // verilog/coms.v(100[12:26])
    defparam i1_2_lut_adj_1143.LUT_INIT = 16'h6666;
    SB_DFFESS data_out_frame_0___i4 (.Q(\data_out_frame[0][3] ), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4202), .S(n29827));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i3_4_lut_adj_1144 (.I0(\data_out_frame[14] [0]), .I1(n30362), 
            .I2(\data_out_frame[5] [2]), .I3(\data_out_frame[5] [3]), .O(n12088));   // verilog/coms.v(77[16:27])
    defparam i3_4_lut_adj_1144.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_1145 (.I0(n26408), .I1(n30161), .I2(n12088), 
            .I3(GND_net), .O(n26774));
    defparam i2_3_lut_adj_1145.LUT_INIT = 16'h9696;
    SB_LUT4 i2_3_lut_adj_1146 (.I0(n10649), .I1(\data_out_frame[14] [2]), 
            .I2(\data_out_frame[14] [3]), .I3(GND_net), .O(n30296));
    defparam i2_3_lut_adj_1146.LUT_INIT = 16'h9696;
    SB_DFFESS data_out_frame_0___i5 (.Q(\data_out_frame[0][4] ), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4203), .S(n29828));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i9 (.Q(\data_out_frame[1][0] ), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4204), .S(n29829));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i911_2_lut (.I0(\data_out_frame[13] [7]), .I1(\data_out_frame[13] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n1699));   // verilog/coms.v(74[16:27])
    defparam i911_2_lut.LUT_INIT = 16'h6666;
    SB_DFFESS data_out_frame_0___i10 (.Q(\data_out_frame[1][1] ), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4205), .S(n29830));   // verilog/coms.v(130[12] 305[6])
    SB_DFFR \FRAME_MATCHER.i_1113__i5  (.Q(\FRAME_MATCHER.i [5]), .C(clk16MHz), 
            .D(n13299), .R(reset));   // verilog/coms.v(158[12:15])
    SB_LUT4 i1_2_lut_3_lut_adj_1147 (.I0(\data_in_frame[14] [2]), .I1(n27496), 
            .I2(n30451), .I3(GND_net), .O(n26679));
    defparam i1_2_lut_3_lut_adj_1147.LUT_INIT = 16'h6969;
    SB_LUT4 i1_2_lut_3_lut_adj_1148 (.I0(\data_in_frame[14] [2]), .I1(n27496), 
            .I2(n12125), .I3(GND_net), .O(n10701));
    defparam i1_2_lut_3_lut_adj_1148.LUT_INIT = 16'h6969;
    SB_LUT4 n37107_bdd_4_lut (.I0(n37107), .I1(\data_out_frame[25] [3]), 
            .I2(\data_out_frame[24] [3]), .I3(\byte_transmit_counter[1] ), 
            .O(n37110));
    defparam n37107_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i4_4_lut_adj_1149 (.I0(\data_in_frame[1] [4]), .I1(n16), .I2(\data_in_frame[4][1] ), 
            .I3(\data_in_frame[1] [7]), .O(n10_adj_4206));   // verilog/coms.v(81[16:27])
    defparam i4_4_lut_adj_1149.LUT_INIT = 16'h6996;
    SB_LUT4 i5_3_lut_adj_1150 (.I0(\data_in_frame[2][0] ), .I1(n10_adj_4206), 
            .I2(\data_in_frame[3] [6]), .I3(GND_net), .O(Kp_23__N_739));   // verilog/coms.v(81[16:27])
    defparam i5_3_lut_adj_1150.LUT_INIT = 16'h9696;
    SB_DFFR \FRAME_MATCHER.i_1113__i4  (.Q(\FRAME_MATCHER.i [4]), .C(clk16MHz), 
            .D(n13301), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1113__i3  (.Q(\FRAME_MATCHER.i[3] ), .C(clk16MHz), 
            .D(n13303), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1113__i2  (.Q(\FRAME_MATCHER.i [2]), .C(clk16MHz), 
            .D(n13305), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1113__i1  (.Q(\FRAME_MATCHER.i [1]), .C(clk16MHz), 
            .D(n13307), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFESS data_out_frame_0___i12 (.Q(\data_out_frame[1][3] ), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4207), .S(n29832));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i6_2_lut (.I0(\data_out_frame[4] [0]), .I1(\data_out_frame[5] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n1516));   // verilog/coms.v(88[17:70])
    defparam i6_2_lut.LUT_INIT = 16'h6666;
    SB_DFFESS data_out_frame_0___i14 (.Q(\data_out_frame[1][5] ), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4208), .S(n29836));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1151 (.I0(n10_adj_4135), .I1(\FRAME_MATCHER.i [2]), 
            .I2(\FRAME_MATCHER.i [1]), .I3(n179), .O(n13747));
    defparam i1_2_lut_3_lut_4_lut_adj_1151.LUT_INIT = 16'h1000;
    SB_LUT4 i1_2_lut_adj_1152 (.I0(n11985), .I1(n30161), .I2(GND_net), 
            .I3(GND_net), .O(n30397));
    defparam i1_2_lut_adj_1152.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut_adj_1153 (.I0(n11758), .I1(\data_in_frame[5] [3]), 
            .I2(\data_in_frame[7] [5]), .I3(\data_in_frame[3] [1]), .O(n10_adj_4209));
    defparam i4_4_lut_adj_1153.LUT_INIT = 16'h6996;
    SB_LUT4 i375_2_lut (.I0(\data_out_frame[5] [7]), .I1(\data_out_frame[5] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n1191));   // verilog/coms.v(74[16:27])
    defparam i375_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_4_lut_adj_1154 (.I0(\data_in_frame[5] [6]), .I1(n11319), 
            .I2(\data_in_frame[1] [4]), .I3(n30388), .O(n12234));
    defparam i2_3_lut_4_lut_adj_1154.LUT_INIT = 16'h6996;
    SB_LUT4 i11244_3_lut_4_lut (.I0(n8_adj_4137), .I1(n29699), .I2(rx_data[4]), 
            .I3(\data_in_frame[16] [4]), .O(n15232));
    defparam i11244_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 mux_647_i19_3_lut_4_lut (.I0(\data_in_frame[17][2] ), .I1(\data_in_frame[1] [2]), 
            .I2(Kp_23__N_1618), .I3(n23006), .O(n2743[18]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_647_i19_3_lut_4_lut.LUT_INIT = 16'haccc;
    SB_LUT4 i1_2_lut_4_lut_adj_1155 (.I0(\FRAME_MATCHER.i [2]), .I1(\FRAME_MATCHER.i [1]), 
            .I2(n161), .I3(n1959), .O(n19958));
    defparam i1_2_lut_4_lut_adj_1155.LUT_INIT = 16'hbfff;
    SB_LUT4 i2_3_lut_4_lut_adj_1156 (.I0(\data_in_frame[1] [0]), .I1(n21), 
            .I2(\data_in_frame[3] [0]), .I3(\data_in_frame[0] [6]), .O(n11750));   // verilog/coms.v(99[12:25])
    defparam i2_3_lut_4_lut_adj_1156.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1157 (.I0(\data_in_frame[1] [0]), .I1(n21), 
            .I2(\data_in_frame[0] [5]), .I3(GND_net), .O(n10101));   // verilog/coms.v(99[12:25])
    defparam i1_2_lut_3_lut_adj_1157.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1158 (.I0(\data_in_frame[5] [6]), .I1(n11319), 
            .I2(n30030), .I3(\data_in_frame[3] [5]), .O(n33343));
    defparam i1_2_lut_3_lut_4_lut_adj_1158.LUT_INIT = 16'h6996;
    SB_LUT4 i11110_3_lut_4_lut (.I0(n13720), .I1(reset), .I2(rx_data[0]), 
            .I3(\data_in_frame[14] [0]), .O(n15098));
    defparam i11110_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 equal_1108_i7_2_lut_3_lut_4_lut (.I0(n30002), .I1(\data_in_frame[6] [4]), 
            .I2(Kp_23__N_745), .I3(\data_in_frame[8] [6]), .O(n7_adj_4210));   // verilog/coms.v(78[16:43])
    defparam equal_1108_i7_2_lut_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i10641_3_lut_4_lut (.I0(n127), .I1(n29699), .I2(rx_data[7]), 
            .I3(\data_in_frame[23] [7]), .O(n14629));
    defparam i10641_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i10638_3_lut_4_lut (.I0(n127), .I1(n29699), .I2(rx_data[6]), 
            .I3(\data_in_frame[23] [6]), .O(n14626));
    defparam i10638_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i2_3_lut_adj_1159 (.I0(\data_out_frame[5] [1]), .I1(\data_out_frame[5] [0]), 
            .I2(\data_out_frame[4] [4]), .I3(GND_net), .O(n9068));   // verilog/coms.v(100[12:26])
    defparam i2_3_lut_adj_1159.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_adj_1160 (.I0(\data_in_frame[14] [5]), .I1(\data_in_frame[16] [6]), 
            .I2(\data_in_frame[17] [0]), .I3(GND_net), .O(n30490));   // verilog/coms.v(81[16:27])
    defparam i1_2_lut_3_lut_adj_1160.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1161 (.I0(n9068), .I1(n26408), .I2(GND_net), 
            .I3(GND_net), .O(n26605));
    defparam i1_2_lut_adj_1161.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_1162 (.I0(\data_out_frame[14] [7]), .I1(\data_out_frame[12] [6]), 
            .I2(n1519), .I3(\data_out_frame[12] [5]), .O(n30442));
    defparam i3_4_lut_adj_1162.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1163 (.I0(\data_out_frame[4] [1]), .I1(\data_out_frame[4] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n11835));   // verilog/coms.v(78[16:43])
    defparam i1_2_lut_adj_1163.LUT_INIT = 16'h6666;
    SB_LUT4 i340_2_lut (.I0(\data_out_frame[4] [4]), .I1(\data_out_frame[4] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n11334));   // verilog/coms.v(78[16:27])
    defparam i340_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1164 (.I0(\data_out_frame[4] [5]), .I1(\data_out_frame[4] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n30222));   // verilog/coms.v(77[16:43])
    defparam i1_2_lut_adj_1164.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_1165 (.I0(\data_out_frame[13] [5]), .I1(n11334), 
            .I2(\data_out_frame[5] [1]), .I3(\data_out_frame[4] [7]), .O(n30161));
    defparam i1_4_lut_adj_1165.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_1166 (.I0(\data_out_frame[13] [2]), .I1(n30222), 
            .I2(\data_out_frame[4] [1]), .I3(\data_out_frame[4] [0]), .O(n11102));   // verilog/coms.v(77[16:43])
    defparam i3_4_lut_adj_1166.LUT_INIT = 16'h6996;
    SB_LUT4 i11449_3_lut_4_lut (.I0(n127), .I1(n29699), .I2(rx_data[0]), 
            .I3(\data_in_frame[23] [0]), .O(n15437));
    defparam i11449_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_3_lut_adj_1167 (.I0(\data_in_frame[14] [5]), .I1(\data_in_frame[16] [6]), 
            .I2(n11772), .I3(GND_net), .O(n6_adj_4211));   // verilog/coms.v(81[16:27])
    defparam i1_2_lut_3_lut_adj_1167.LUT_INIT = 16'h9696;
    SB_LUT4 i31091_2_lut (.I0(\FRAME_MATCHER.i [2]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35133));   // verilog/coms.v(158[12:15])
    defparam i31091_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i3_3_lut_adj_1168 (.I0(n11609), .I1(n11102), .I2(n30161), 
            .I3(GND_net), .O(n12155));
    defparam i3_3_lut_adj_1168.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1169 (.I0(\FRAME_MATCHER.i[0] ), .I1(n161), 
            .I2(n1959), .I3(reset), .O(n197));
    defparam i1_2_lut_3_lut_4_lut_adj_1169.LUT_INIT = 16'hffbf;
    SB_LUT4 i2_3_lut_4_lut_adj_1170 (.I0(n11893), .I1(\data_in_frame[10][0] ), 
            .I2(\data_in_frame[12][2] ), .I3(\data_in_frame[14] [4]), .O(n30267));
    defparam i2_3_lut_4_lut_adj_1170.LUT_INIT = 16'h6996;
    SB_LUT4 i12_4_lut_adj_1171 (.I0(\data_out_frame[14] [4]), .I1(n11835), 
            .I2(n30442), .I3(n26605), .O(n32_adj_4212));
    defparam i12_4_lut_adj_1171.LUT_INIT = 16'h6996;
    SB_LUT4 i16_4_lut_adj_1172 (.I0(\data_out_frame[14] [1]), .I1(n32_adj_4212), 
            .I2(n22_adj_4213), .I3(n30397), .O(n36_adj_4214));
    defparam i16_4_lut_adj_1172.LUT_INIT = 16'h6996;
    SB_LUT4 i14_4_lut_adj_1173 (.I0(n27410), .I1(n30018), .I2(n11092), 
            .I3(\data_out_frame[14] [6]), .O(n34_adj_4215));
    defparam i14_4_lut_adj_1173.LUT_INIT = 16'h6996;
    SB_LUT4 i13_4_lut_adj_1174 (.I0(n1699), .I1(n30296), .I2(n26774), 
            .I3(n26721), .O(n33_adj_4216));
    defparam i13_4_lut_adj_1174.LUT_INIT = 16'h6996;
    SB_LUT4 i19_4_lut_adj_1175 (.I0(n33_adj_4216), .I1(n35_adj_4217), .I2(n34_adj_4215), 
            .I3(n36_adj_4214), .O(n32071));
    defparam i19_4_lut_adj_1175.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_4_lut_adj_1176 (.I0(n11893), .I1(\data_in_frame[10][0] ), 
            .I2(\data_in_frame[9] [5]), .I3(\data_in_frame[9] [0]), .O(n30487));
    defparam i2_3_lut_4_lut_adj_1176.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1177 (.I0(\data_in_frame[3] [2]), .I1(n9232), 
            .I2(\data_in_frame[2][7] ), .I3(n10101), .O(n6_adj_4218));
    defparam i1_2_lut_3_lut_4_lut_adj_1177.LUT_INIT = 16'h6996;
    SB_LUT4 i32640_1_lut (.I0(n1959), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n37045));   // verilog/coms.v(148[4] 304[11])
    defparam i32640_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mux_647_i18_3_lut_4_lut (.I0(\data_in_frame[17][1] ), .I1(\data_in_frame[1] [1]), 
            .I2(Kp_23__N_1618), .I3(n23006), .O(n2743[17]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_647_i18_3_lut_4_lut.LUT_INIT = 16'haccc;
    SB_LUT4 i2_3_lut_4_lut_adj_1178 (.I0(\data_in_frame[3] [2]), .I1(n9232), 
            .I2(\data_in_frame[5] [5]), .I3(\data_in_frame[5] [4]), .O(n11163));
    defparam i2_3_lut_4_lut_adj_1178.LUT_INIT = 16'h6996;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut_32690 (.I0(\byte_transmit_counter[0] ), 
            .I1(\data_out_frame[26] [4]), .I2(\data_out_frame[27] [4]), 
            .I3(\byte_transmit_counter[1] ), .O(n37101));
    defparam byte_transmit_counter_0__bdd_4_lut_32690.LUT_INIT = 16'he4aa;
    SB_LUT4 i5_3_lut_adj_1179 (.I0(n11603), .I1(n10_adj_4209), .I2(\data_in_frame[5] [4]), 
            .I3(GND_net), .O(n26966));
    defparam i5_3_lut_adj_1179.LUT_INIT = 16'h9696;
    SB_LUT4 n37101_bdd_4_lut (.I0(n37101), .I1(\data_out_frame[25] [4]), 
            .I2(\data_out_frame[24] [4]), .I3(\byte_transmit_counter[1] ), 
            .O(n37104));
    defparam n37101_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i3_4_lut_adj_1180 (.I0(\data_in_frame[8] [3]), .I1(Kp_23__N_739), 
            .I2(\data_in_frame[6]_c [2]), .I3(n11342), .O(n11848));   // verilog/coms.v(78[16:43])
    defparam i3_4_lut_adj_1180.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1181 (.I0(\data_out_frame[14] [2]), .I1(n10649), 
            .I2(GND_net), .I3(GND_net), .O(n26709));
    defparam i1_2_lut_adj_1181.LUT_INIT = 16'h6666;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut_32685 (.I0(\byte_transmit_counter[0] ), 
            .I1(\data_out_frame[26] [5]), .I2(\data_out_frame[27] [5]), 
            .I3(\byte_transmit_counter[1] ), .O(n37095));
    defparam byte_transmit_counter_0__bdd_4_lut_32685.LUT_INIT = 16'he4aa;
    SB_LUT4 i2_3_lut_4_lut_adj_1182 (.I0(n10101), .I1(\data_in_frame[2][7] ), 
            .I2(\data_in_frame[0]_c [7]), .I3(n21), .O(n11603));
    defparam i2_3_lut_4_lut_adj_1182.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_1183 (.I0(n11743), .I1(n30136), .I2(n6_adj_4182), 
            .I3(\data_in_frame[6] [7]), .O(n11738));   // verilog/coms.v(77[16:43])
    defparam i3_4_lut_adj_1183.LUT_INIT = 16'h6996;
    SB_LUT4 i2_2_lut_3_lut (.I0(\data_in_frame[10][1] ), .I1(n27537), .I2(n30270), 
            .I3(GND_net), .O(n10_adj_4219));   // verilog/coms.v(99[12:25])
    defparam i2_2_lut_3_lut.LUT_INIT = 16'h6969;
    SB_LUT4 i11452_3_lut_4_lut (.I0(n127), .I1(n29699), .I2(rx_data[1]), 
            .I3(\data_in_frame[23] [1]), .O(n15440));
    defparam i11452_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_3_lut_adj_1184 (.I0(\data_in_frame[10][1] ), .I1(n27537), 
            .I2(\data_in_frame[12][3] ), .I3(GND_net), .O(n33_adj_4220));   // verilog/coms.v(99[12:25])
    defparam i1_2_lut_3_lut_adj_1184.LUT_INIT = 16'h6969;
    SB_LUT4 i3_4_lut_adj_1185 (.I0(n11795), .I1(n30314), .I2(n26908), 
            .I3(n27366), .O(n32065));
    defparam i3_4_lut_adj_1185.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_4_lut_adj_1186 (.I0(\data_in_frame[2][1] ), .I1(\data_in_frame[0] [0]), 
            .I2(Kp_23__N_642), .I3(n30009), .O(Kp_23__N_742));   // verilog/coms.v(77[16:43])
    defparam i2_3_lut_4_lut_adj_1186.LUT_INIT = 16'h6996;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_7_i4_3_lut (.I0(\data_out_frame[4] [7]), 
            .I1(\data_out_frame[5] [7]), .I2(\byte_transmit_counter[0] ), 
            .I3(GND_net), .O(n4_adj_4221));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_7_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_1187 (.I0(n11609), .I1(n27353), .I2(GND_net), 
            .I3(GND_net), .O(n6_adj_4222));
    defparam i1_2_lut_adj_1187.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut_adj_1188 (.I0(n30330), .I1(n26709), .I2(n30439), 
            .I3(n6_adj_4222), .O(n27394));
    defparam i4_4_lut_adj_1188.LUT_INIT = 16'h6996;
    SB_LUT4 n37095_bdd_4_lut (.I0(n37095), .I1(\data_out_frame[25] [5]), 
            .I2(\data_out_frame[24] [5]), .I3(\byte_transmit_counter[1] ), 
            .O(n37098));
    defparam n37095_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF data_in_0___i2 (.Q(\data_in[0] [1]), .C(clk16MHz), .D(n14816));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_3_lut_adj_1189 (.I0(\data_in_frame[2][1] ), .I1(\data_in_frame[0] [0]), 
            .I2(\data_in_frame[1] [7]), .I3(GND_net), .O(n30385));   // verilog/coms.v(77[16:43])
    defparam i1_2_lut_3_lut_adj_1189.LUT_INIT = 16'h9696;
    SB_LUT4 i1_4_lut_adj_1190 (.I0(\FRAME_MATCHER.state[3] ), .I1(n36884), 
            .I2(\data_out_frame[25] [7]), .I3(\data_out_frame[23] [6]), 
            .O(n3_adj_4223));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1190.LUT_INIT = 16'h2882;
    SB_LUT4 i31156_4_lut (.I0(\data_out_frame[1][7] ), .I1(\byte_transmit_counter[0] ), 
            .I2(\data_out_frame[3][7] ), .I3(\byte_transmit_counter[1] ), 
            .O(n35195));   // verilog/coms.v(109[34:55])
    defparam i31156_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_7_i7_4_lut (.I0(n35195), .I1(n4_adj_4221), 
            .I2(byte_transmit_counter[2]), .I3(\byte_transmit_counter[1] ), 
            .O(n7_c));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_7_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i2_2_lut_adj_1191 (.I0(\data_in_frame[8] [7]), .I1(Kp_23__N_863), 
            .I2(GND_net), .I3(GND_net), .O(n7_adj_4224));
    defparam i2_2_lut_adj_1191.LUT_INIT = 16'h6666;
    SB_LUT4 byte_transmit_counter_3__bdd_4_lut_32734 (.I0(byte_transmit_counter[3]), 
            .I1(n35148), .I2(n35149), .I3(byte_transmit_counter[4]), .O(n37089));
    defparam byte_transmit_counter_3__bdd_4_lut_32734.LUT_INIT = 16'he4aa;
    SB_LUT4 i2_2_lut_3_lut_4_lut (.I0(n10_adj_4143), .I1(n19953), .I2(n21178), 
            .I3(\FRAME_MATCHER.i[0] ), .O(n31414));
    defparam i2_2_lut_3_lut_4_lut.LUT_INIT = 16'hffef;
    SB_LUT4 i1_4_lut_adj_1192 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[25] [7]), 
            .I2(neopxl_color[7]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4225));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1192.LUT_INIT = 16'ha088;
    SB_LUT4 n37089_bdd_4_lut (.I0(n37089), .I1(n35184), .I2(n35183), .I3(byte_transmit_counter[4]), 
            .O(tx_data[0]));
    defparam n37089_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i31079_2_lut (.I0(\data_out_frame[14] [7]), .I1(\byte_transmit_counter[0] ), 
            .I2(GND_net), .I3(GND_net), .O(n35126));   // verilog/coms.v(105[12:33])
    defparam i31079_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i15_3_lut (.I0(\data_out_frame[12] [7]), .I1(\data_out_frame[13] [7]), 
            .I2(\byte_transmit_counter[0] ), .I3(GND_net), .O(n14_adj_4226));   // verilog/coms.v(105[12:33])
    defparam i15_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31161_4_lut (.I0(n14_adj_4226), .I1(byte_transmit_counter[2]), 
            .I2(n35126), .I3(\byte_transmit_counter[1] ), .O(n35203));
    defparam i31161_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_2_lut_adj_1193 (.I0(\data_in_frame[6] [7]), .I1(\data_in_frame[7] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n30472));   // verilog/coms.v(80[16:43])
    defparam i1_2_lut_adj_1193.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_1194 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[25] [6]), 
            .I2(neopxl_color[6]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4227));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1194.LUT_INIT = 16'ha088;
    SB_LUT4 i1_2_lut_adj_1195 (.I0(\byte_transmit_counter[0] ), .I1(\byte_transmit_counter[1] ), 
            .I2(GND_net), .I3(GND_net), .O(n4_adj_4148));   // verilog/coms.v(109[34:55])
    defparam i1_2_lut_adj_1195.LUT_INIT = 16'h8888;
    SB_LUT4 select_442_Select_205_i2_4_lut (.I0(\data_out_frame[25] [5]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[5]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4228));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_205_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i11455_3_lut_4_lut (.I0(n127), .I1(n29699), .I2(rx_data[2]), 
            .I3(\data_in_frame[23] [2]), .O(n15443));
    defparam i11455_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i2_3_lut_4_lut_adj_1196 (.I0(n682), .I1(n679), .I2(n685), 
            .I3(\FRAME_MATCHER.i_31__N_2377 ), .O(n31592));   // verilog/coms.v(148[4] 304[11])
    defparam i2_3_lut_4_lut_adj_1196.LUT_INIT = 16'h8000;
    SB_LUT4 i1_4_lut_adj_1197 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[25] [4]), 
            .I2(neopxl_color[4]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4229));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1197.LUT_INIT = 16'ha088;
    SB_LUT4 select_442_Select_203_i2_4_lut (.I0(\data_out_frame[25] [3]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[3]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4230));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_203_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i11460_3_lut_4_lut (.I0(n127), .I1(n29699), .I2(rx_data[3]), 
            .I3(\data_in_frame[23] [3]), .O(n15448));
    defparam i11460_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_DFF data_in_0___i3 (.Q(\data_in[0] [2]), .C(clk16MHz), .D(n14815));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i4 (.Q(\data_in[0] [3]), .C(clk16MHz), .D(n14814));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i5 (.Q(\data_in[0] [4]), .C(clk16MHz), .D(n14813));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i6 (.Q(\data_in[0] [5]), .C(clk16MHz), .D(n14812));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i7 (.Q(\data_in[0] [6]), .C(clk16MHz), .D(n14811));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i8 (.Q(\data_in[0] [7]), .C(clk16MHz), .D(n14810));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i9 (.Q(\data_in[1] [0]), .C(clk16MHz), .D(n14809));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i10 (.Q(\data_in[1] [1]), .C(clk16MHz), .D(n14808));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i11 (.Q(\data_in[1] [2]), .C(clk16MHz), .D(n14807));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_4_lut_adj_1198 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[25] [2]), 
            .I2(neopxl_color[2]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4231));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1198.LUT_INIT = 16'ha088;
    SB_DFF data_in_0___i12 (.Q(\data_in[1] [3]), .C(clk16MHz), .D(n14806));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i13 (.Q(\data_in[1] [4]), .C(clk16MHz), .D(n14805));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i14 (.Q(\data_in[1] [5]), .C(clk16MHz), .D(n14804));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i15 (.Q(\data_in[1] [6]), .C(clk16MHz), .D(n14803));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i16 (.Q(\data_in[1] [7]), .C(clk16MHz), .D(n14802));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i17 (.Q(\data_in[2] [0]), .C(clk16MHz), .D(n14801));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i18 (.Q(\data_in[2] [1]), .C(clk16MHz), .D(n14800));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i19 (.Q(\data_in[2] [2]), .C(clk16MHz), .D(n14799));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i20 (.Q(\data_in[2] [3]), .C(clk16MHz), .D(n14798));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i21 (.Q(\data_in[2] [4]), .C(clk16MHz), .D(n14797));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11463_3_lut_4_lut (.I0(n127), .I1(n29699), .I2(rx_data[4]), 
            .I3(\data_in_frame[23] [4]), .O(n15451));
    defparam i11463_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_DFF data_in_0___i22 (.Q(\data_in[2] [5]), .C(clk16MHz), .D(n14796));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i23 (.Q(\data_in[2] [6]), .C(clk16MHz), .D(n14795));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i24 (.Q(\data_in[2] [7]), .C(clk16MHz), .D(n14794));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i25 (.Q(\data_in[3] [0]), .C(clk16MHz), .D(n14793));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i26 (.Q(\data_in[3] [1]), .C(clk16MHz), .D(n14792));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i27 (.Q(\data_in[3] [2]), .C(clk16MHz), .D(n14791));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i28 (.Q(\data_in[3] [3]), .C(clk16MHz), .D(n14790));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i29 (.Q(\data_in[3] [4]), .C(clk16MHz), .D(n14789));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i30 (.Q(\data_in[3] [5]), .C(clk16MHz), .D(n14788));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i31 (.Q(\data_in[3] [6]), .C(clk16MHz), .D(n14787));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i32 (.Q(\data_in[3] [7]), .C(clk16MHz), .D(n14777));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i31048_2_lut (.I0(n37152), .I1(byte_transmit_counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n35202));
    defparam i31048_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1199 (.I0(\data_in_frame[3] [5]), .I1(\data_in_frame[1] [3]), 
            .I2(\data_in_frame[1] [4]), .I3(\data_in_frame[3] [7]), .O(n6_adj_4199));   // verilog/coms.v(81[16:27])
    defparam i1_2_lut_3_lut_4_lut_adj_1199.LUT_INIT = 16'h6996;
    SB_LUT4 select_442_Select_201_i2_4_lut (.I0(\data_out_frame[25] [1]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[1]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4232));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_201_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i11466_3_lut_4_lut (.I0(n127), .I1(n29699), .I2(rx_data[5]), 
            .I3(\data_in_frame[23] [5]), .O(n15454));
    defparam i11466_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_DFF \FRAME_MATCHER.rx_data_ready_prev_4012  (.Q(\FRAME_MATCHER.rx_data_ready_prev ), 
           .C(clk16MHz), .D(n14739));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i1 (.Q(neopxl_color[1]), .C(clk16MHz), .D(n14738));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i2 (.Q(neopxl_color[2]), .C(clk16MHz), .D(n14737));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_442_Select_200_i2_4_lut (.I0(\data_out_frame[25] [0]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[0]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4233));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_200_i2_4_lut.LUT_INIT = 16'hc088;
    SB_DFF neopxl_color_i0_i3 (.Q(neopxl_color[3]), .C(clk16MHz), .D(n14732));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i4 (.Q(neopxl_color[4]), .C(clk16MHz), .D(n14731));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i5 (.Q(neopxl_color[5]), .C(clk16MHz), .D(n14730));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i6 (.Q(neopxl_color[6]), .C(clk16MHz), .D(n14729));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i7 (.Q(neopxl_color[7]), .C(clk16MHz), .D(n14728));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i8 (.Q(neopxl_color[8]), .C(clk16MHz), .D(n14727));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i31179_2_lut (.I0(\data_out_frame[23] [7]), .I1(n13490), .I2(GND_net), 
            .I3(GND_net), .O(n35201));
    defparam i31179_2_lut.LUT_INIT = 16'h8888;
    SB_DFF neopxl_color_i0_i9 (.Q(neopxl_color[9]), .C(clk16MHz), .D(n14720));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i9762_3_lut_4_lut (.I0(n21178), .I1(n10_adj_4135), .I2(reset), 
            .I3(n8_adj_4140), .O(n13750));
    defparam i9762_3_lut_4_lut.LUT_INIT = 16'hfffd;
    SB_DFF neopxl_color_i0_i10 (.Q(neopxl_color[10]), .C(clk16MHz), .D(n14705));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10771_3_lut_4_lut (.I0(n192), .I1(n29974), .I2(rx_data[7]), 
            .I3(\data_in_frame[3] [7]), .O(n14759));
    defparam i10771_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF neopxl_color_i0_i11 (.Q(neopxl_color[11]), .C(clk16MHz), .D(n14704));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i12 (.Q(neopxl_color[12]), .C(clk16MHz), .D(n14703));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i15 (.Q(\data_out_frame[1][6] ), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4234), .S(n29837));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 mux_647_i3_3_lut_4_lut (.I0(\data_in_frame[19][2] ), .I1(\data_in_frame[3] [2]), 
            .I2(Kp_23__N_1618), .I3(n23006), .O(n2743[2]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_647_i3_3_lut_4_lut.LUT_INIT = 16'haccc;
    SB_LUT4 select_442_Select_199_i2_4_lut (.I0(\data_out_frame[24] [7]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[15]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4235));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_199_i2_4_lut.LUT_INIT = 16'hc088;
    SB_DFFESS data_out_frame_0___i16 (.Q(\data_out_frame[1][7] ), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4236), .S(n29825));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i26 (.Q(\data_out_frame[3][1] ), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4237), .S(n29839));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i28 (.Q(\data_out_frame[3][3] ), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4238), .S(n29840));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i29 (.Q(\data_out_frame[3][4] ), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4239), .S(n29841));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i31 (.Q(\data_out_frame[3][6] ), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4240), .S(n29842));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i32 (.Q(\data_out_frame[3][7] ), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4241), .S(n29843));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i33 (.Q(\data_out_frame[4] [0]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4242), .S(n29844));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i34 (.Q(\data_out_frame[4] [1]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4243), .S(n29845));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i35 (.Q(\data_out_frame[4] [2]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4244), .S(n29846));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i36 (.Q(\data_out_frame[4] [3]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4245), .S(n29847));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i37 (.Q(\data_out_frame[4] [4]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4246), .S(n29848));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i38 (.Q(\data_out_frame[4] [5]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4247), .S(n29849));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i39 (.Q(\data_out_frame[4] [6]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4248), .S(n29850));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i40 (.Q(\data_out_frame[4] [7]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4249), .S(n29851));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i41 (.Q(\data_out_frame[5] [0]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4250), .S(n29852));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10768_3_lut_4_lut (.I0(n192), .I1(n29974), .I2(rx_data[6]), 
            .I3(\data_in_frame[3] [6]), .O(n14756));
    defparam i10768_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFESS data_out_frame_0___i42 (.Q(\data_out_frame[5] [1]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4251), .S(n29853));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i43 (.Q(\data_out_frame[5] [2]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4252), .S(n29854));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i44 (.Q(\data_out_frame[5] [3]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4253), .S(n29892));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i45 (.Q(\data_out_frame[5] [4]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4254), .S(n29855));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i46 (.Q(\data_out_frame[5] [5]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4255), .S(n29856));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i47 (.Q(\data_out_frame[5] [6]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4256), .S(n29857));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i48 (.Q(\data_out_frame[5] [7]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4257), .S(n29858));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i97 (.Q(\data_out_frame[12] [0]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4258), .S(n29859));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i98 (.Q(\data_out_frame[12] [1]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4259), .S(n29860));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i99 (.Q(\data_out_frame[12] [2]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4260), .S(n29861));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i100 (.Q(\data_out_frame[12] [3]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4261), .S(n29862));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10765_3_lut_4_lut (.I0(n192), .I1(n29974), .I2(rx_data[5]), 
            .I3(\data_in_frame[3] [5]), .O(n14753));
    defparam i10765_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFESS data_out_frame_0___i101 (.Q(\data_out_frame[12] [4]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4262), .S(n29863));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i102 (.Q(\data_out_frame[12] [5]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4263), .S(n29864));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i103 (.Q(\data_out_frame[12] [6]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4264), .S(n29865));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i104 (.Q(\data_out_frame[12] [7]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4265), .S(n29866));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i105 (.Q(\data_out_frame[13] [0]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4266), .S(n29867));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i106 (.Q(\data_out_frame[13] [1]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4267), .S(n29868));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i107 (.Q(\data_out_frame[13] [2]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4268), .S(n29869));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i108 (.Q(\data_out_frame[13] [3]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4269), .S(n29870));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i109 (.Q(\data_out_frame[13] [4]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4270), .S(n29871));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_442_Select_198_i2_4_lut (.I0(\data_out_frame[24] [6]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[14]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4271));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_198_i2_4_lut.LUT_INIT = 16'hc088;
    SB_DFFESS data_out_frame_0___i110 (.Q(\data_out_frame[13] [5]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4272), .S(n29872));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i111 (.Q(\data_out_frame[13] [6]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4273), .S(n29873));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i112 (.Q(\data_out_frame[13] [7]), .C(clk16MHz), 
            .E(n15606), .D(n2_adj_4274), .S(n14253));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i113 (.Q(\data_out_frame[14] [0]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4275), .S(n29874));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i114 (.Q(\data_out_frame[14] [1]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4276), .S(n29875));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i115 (.Q(\data_out_frame[14] [2]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4277), .S(n29876));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i116 (.Q(\data_out_frame[14] [3]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4278), .S(n29877));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i117 (.Q(\data_out_frame[14] [4]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4279), .S(n29878));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i118 (.Q(\data_out_frame[14] [5]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4280), .S(n29879));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i119 (.Q(\data_out_frame[14] [6]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4281), .S(n14246));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i120 (.Q(\data_out_frame[14] [7]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4282), .S(n14245));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i185 (.Q(\data_out_frame[23] [0]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4283), .S(n29824));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i186 (.Q(\data_out_frame[23] [1]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4284), .S(n29880));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i187 (.Q(\data_out_frame[23] [2]), .C(clk16MHz), 
            .E(n15617), .D(n2_adj_4285), .S(n14242));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i188 (.Q(\data_out_frame[23] [3]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4286), .S(n29881));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i189 (.Q(\data_out_frame[23] [4]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4287), .S(n29882));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i190 (.Q(\data_out_frame[23] [5]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4288), .S(n29883));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i191 (.Q(\data_out_frame[23] [6]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4289), .S(n29838));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i192 (.Q(\data_out_frame[23] [7]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4290), .S(n29884));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i193 (.Q(\data_out_frame[24] [0]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4291), .S(n29835));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i13 (.Q(neopxl_color[13]), .C(clk16MHz), .D(n14675));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11250_3_lut_4_lut (.I0(n8_adj_4137), .I1(n29699), .I2(rx_data[5]), 
            .I3(\data_in_frame[16] [5]), .O(n15238));
    defparam i11250_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i10762_3_lut_4_lut (.I0(n192), .I1(n29974), .I2(rx_data[4]), 
            .I3(\data_in_frame[3] [4]), .O(n14750));
    defparam i10762_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 byte_transmit_counter_3__bdd_4_lut_32676 (.I0(byte_transmit_counter[3]), 
            .I1(n35129), .I2(n35130), .I3(byte_transmit_counter[4]), .O(n37071));
    defparam byte_transmit_counter_3__bdd_4_lut_32676.LUT_INIT = 16'he4aa;
    SB_LUT4 i10759_3_lut_4_lut (.I0(n192), .I1(n29974), .I2(rx_data[3]), 
            .I3(\data_in_frame[3] [3]), .O(n14747));
    defparam i10759_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11253_3_lut_4_lut (.I0(n8_adj_4137), .I1(n29699), .I2(rx_data[6]), 
            .I3(\data_in_frame[16] [6]), .O(n15241));
    defparam i11253_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 select_442_Select_197_i2_4_lut (.I0(\data_out_frame[24] [5]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[13]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4292));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_197_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i10900_3_lut_4_lut (.I0(n127), .I1(n29986), .I2(rx_data[0]), 
            .I3(\data_in_frame[7] [0]), .O(n14888));
    defparam i10900_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 select_442_Select_196_i2_4_lut (.I0(\data_out_frame[24] [4]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[12]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4293));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_196_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i16077_4_lut (.I0(n136), .I1(n117), .I2(rx_data[4]), .I3(\data_in_frame[10]_c [4]), 
            .O(n20021));   // verilog/coms.v(94[13:20])
    defparam i16077_4_lut.LUT_INIT = 16'hfac0;
    SB_LUT4 i10903_3_lut_4_lut (.I0(n127), .I1(n29986), .I2(rx_data[1]), 
            .I3(\data_in_frame[7] [1]), .O(n14891));
    defparam i10903_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i16078_3_lut (.I0(n20021), .I1(\data_in_frame[10]_c [4]), .I2(reset), 
            .I3(GND_net), .O(n15016));   // verilog/TinyFPGA_B.v(47[5:10])
    defparam i16078_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF neopxl_color_i0_i14 (.Q(neopxl_color[14]), .C(clk16MHz), .D(n14674));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i15 (.Q(neopxl_color[15]), .C(clk16MHz), .D(n14673));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i16 (.Q(neopxl_color[16]), .C(clk16MHz), .D(n14672));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i17 (.Q(neopxl_color[17]), .C(clk16MHz), .D(n14668));   // verilog/coms.v(130[12] 305[6])
    SB_DFFR \FRAME_MATCHER.i_1113__i0  (.Q(\FRAME_MATCHER.i[0] ), .C(clk16MHz), 
            .D(n13311), .R(reset));   // verilog/coms.v(158[12:15])
    SB_LUT4 select_442_Select_195_i2_4_lut (.I0(\data_out_frame[24] [3]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[11]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4294));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_195_i2_4_lut.LUT_INIT = 16'hc088;
    SB_DFF neopxl_color_i0_i18 (.Q(neopxl_color[18]), .C(clk16MHz), .D(n14651));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i194 (.Q(\data_out_frame[24] [1]), .C(clk16MHz), 
            .E(n15624), .D(n2_adj_4295), .S(n14235));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i195 (.Q(\data_out_frame[24] [2]), .C(clk16MHz), 
            .E(n15625), .D(n2_adj_4296), .S(n14234));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i196 (.Q(\data_out_frame[24] [3]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4294), .S(n29885));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i197 (.Q(\data_out_frame[24] [4]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4293), .S(n29886));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i1 (.Q(\data_in[0] [0]), .C(clk16MHz), .D(n14649));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i198 (.Q(\data_out_frame[24] [5]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4292), .S(n29887));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i199 (.Q(\data_out_frame[24] [6]), .C(clk16MHz), 
            .E(n15629), .D(n2_adj_4271), .S(n14230));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i200 (.Q(\data_out_frame[24] [7]), .C(clk16MHz), 
            .E(n15630), .D(n2_adj_4235), .S(n14229));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i201 (.Q(\data_out_frame[25] [0]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4233), .S(n29888));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i202 (.Q(\data_out_frame[25] [1]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4232), .S(n29833));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i203 (.Q(\data_out_frame[25] [2]), .C(clk16MHz), 
            .E(n15633), .D(n2_adj_4231), .S(n14226));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10906_3_lut_4_lut (.I0(n127), .I1(n29986), .I2(rx_data[2]), 
            .I3(\data_in_frame[7] [2]), .O(n14894));
    defparam i10906_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_DFFESS data_out_frame_0___i204 (.Q(\data_out_frame[25] [3]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4230), .S(n29889));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i205 (.Q(\data_out_frame[25] [4]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4229), .S(n29834));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i206 (.Q(\data_out_frame[25] [5]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4228), .S(n29890));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i207 (.Q(\data_out_frame[25] [6]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4227), .S(n29831));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10909_3_lut_4_lut (.I0(n127), .I1(n29986), .I2(rx_data[3]), 
            .I3(\data_in_frame[7] [3]), .O(n14897));
    defparam i10909_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_DFFESS data_out_frame_0___i208 (.Q(\data_out_frame[25] [7]), .C(clk16MHz), 
            .E(n1450), .D(n2_adj_4225), .S(n29891));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i209 (.Q(\data_out_frame[26] [0]), .C(clk16MHz), 
            .E(n1450), .D(n3_adj_4223), .S(n29912));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i210 (.Q(\data_out_frame[26] [1]), .C(clk16MHz), 
            .E(n1450), .D(n3_adj_4196), .S(n29910));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i211 (.Q(\data_out_frame[26] [2]), .C(clk16MHz), 
            .E(n1450), .D(n3_adj_4178), .S(n14218));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i183_2_lut_3_lut (.I0(n682), .I1(n679), .I2(n3303), .I3(GND_net), 
            .O(n733));   // verilog/coms.v(142[4] 144[7])
    defparam i183_2_lut_3_lut.LUT_INIT = 16'h0808;
    SB_DFFESS data_out_frame_0___i212 (.Q(\data_out_frame[26] [3]), .C(clk16MHz), 
            .E(n1450), .D(n3_adj_4175), .S(n29913));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i213 (.Q(\data_out_frame[26] [4]), .C(clk16MHz), 
            .E(n1450), .D(n3_adj_4174), .S(n29914));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i214 (.Q(\data_out_frame[26] [5]), .C(clk16MHz), 
            .E(n1450), .D(n3_adj_4297), .S(n29915));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i215 (.Q(\data_out_frame[26] [6]), .C(clk16MHz), 
            .E(n1450), .D(n3_adj_4173), .S(n29916));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i216 (.Q(\data_out_frame[26] [7]), .C(clk16MHz), 
            .E(n1450), .D(n3_adj_4171), .S(n29917));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i217 (.Q(\data_out_frame[27] [0]), .C(clk16MHz), 
            .E(n1450), .D(n3_adj_4169), .S(n29918));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 n37071_bdd_4_lut (.I0(n37071), .I1(n35190), .I2(n7_adj_4165), 
            .I3(byte_transmit_counter[4]), .O(tx_data[1]));
    defparam n37071_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFESS data_out_frame_0___i218 (.Q(\data_out_frame[27] [1]), .C(clk16MHz), 
            .E(n1450), .D(n3_adj_4163), .S(n29911));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i219 (.Q(\data_out_frame[27] [2]), .C(clk16MHz), 
            .E(n1450), .D(n3_adj_4155), .S(n14210));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i220 (.Q(\data_out_frame[27] [3]), .C(clk16MHz), 
            .E(n1450), .D(n3_adj_4154), .S(n29919));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_442_Select_194_i2_4_lut (.I0(\data_out_frame[24] [2]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[10]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4296));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_194_i2_4_lut.LUT_INIT = 16'hc088;
    SB_DFFESS data_out_frame_0___i221 (.Q(\data_out_frame[27] [4]), .C(clk16MHz), 
            .E(n1450), .D(n3_adj_4153), .S(n29920));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_3_lut_4_lut (.I0(\FRAME_MATCHER.i_31__N_2381 ), .I1(tx_active), 
            .I2(r_SM_Main_2__N_3415[0]), .I3(n21495), .O(n10903));   // verilog/coms.v(148[4] 304[11])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'ha8aa;
    SB_DFFESS data_out_frame_0___i222 (.Q(\data_out_frame[27] [5]), .C(clk16MHz), 
            .E(n1450), .D(n3_adj_4151), .S(n29921));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i223 (.Q(\data_out_frame[27] [6]), .C(clk16MHz), 
            .E(n1450), .D(n3_adj_4150), .S(n29909));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10912_3_lut_4_lut (.I0(n127), .I1(n29986), .I2(rx_data[4]), 
            .I3(\data_in_frame[7] [4]), .O(n14900));
    defparam i10912_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_DFFESS data_out_frame_0___i224 (.Q(\data_out_frame[27] [7]), .C(clk16MHz), 
            .E(n1450), .D(n3), .S(n29922));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS byte_transmit_counter_i0_i1 (.Q(\byte_transmit_counter[1] ), 
            .C(clk16MHz), .E(n1450), .D(n1_adj_4168), .S(n29898));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS byte_transmit_counter_i0_i2 (.Q(byte_transmit_counter[2]), .C(clk16MHz), 
            .E(n1450), .D(n1_adj_4167), .S(n29899));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS byte_transmit_counter_i0_i3 (.Q(byte_transmit_counter[3]), .C(clk16MHz), 
            .E(n1450), .D(n1_adj_4166), .S(n29900));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_3_lut_4_lut_adj_1200 (.I0(\FRAME_MATCHER.i[0] ), .I1(\FRAME_MATCHER.i [4]), 
            .I2(n10916), .I3(\FRAME_MATCHER.i [1]), .O(n5_adj_4298));
    defparam i1_3_lut_4_lut_adj_1200.LUT_INIT = 16'hfefc;
    SB_DFFESS byte_transmit_counter_i0_i4 (.Q(byte_transmit_counter[4]), .C(clk16MHz), 
            .E(n1450), .D(n1_adj_4162), .S(n29901));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS byte_transmit_counter_i0_i5 (.Q(byte_transmit_counter[5]), .C(clk16MHz), 
            .E(n1450), .D(n1_adj_4161), .S(n29902));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10915_3_lut_4_lut (.I0(n127), .I1(n29986), .I2(rx_data[5]), 
            .I3(\data_in_frame[7] [5]), .O(n14903));
    defparam i10915_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_DFFESS tx_transmit_4011 (.Q(r_SM_Main_2__N_3415[0]), .C(clk16MHz), 
            .E(n1450), .D(n1_c), .S(n14199));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS byte_transmit_counter_i0_i6 (.Q(byte_transmit_counter[6]), .C(clk16MHz), 
            .E(n1450), .D(n1_adj_4160), .S(n29903));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS LED_4014 (.Q(LED_c), .C(clk16MHz), .E(n1450), .D(n5_adj_4147), 
            .S(n14197));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10918_3_lut_4_lut (.I0(n127), .I1(n29986), .I2(rx_data[6]), 
            .I3(\data_in_frame[7] [6]), .O(n14906));
    defparam i10918_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 select_442_Select_193_i2_4_lut (.I0(\data_out_frame[24] [1]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[9]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4295));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_193_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i9337_4_lut (.I0(\FRAME_MATCHER.i[0] ), .I1(n133[0]), .I2(n1959), 
            .I3(\FRAME_MATCHER.i_31__N_2377 ), .O(n13311));   // verilog/coms.v(158[12:15])
    defparam i9337_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i10921_3_lut_4_lut (.I0(n127), .I1(n29986), .I2(rx_data[7]), 
            .I3(\data_in_frame[7] [7]), .O(n14909));
    defparam i10921_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_DFFER setpoint_i0_i23 (.Q(setpoint[23]), .C(clk16MHz), .E(n12991), 
            .D(n2743[23]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i7 (.Q(setpoint[7]), .C(clk16MHz), .E(n12991), 
            .D(n2743[7]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i16062_4_lut (.I0(n136), .I1(n117), .I2(rx_data[5]), .I3(\data_in_frame[10]_c [5]), 
            .O(n20006));   // verilog/coms.v(94[13:20])
    defparam i16062_4_lut.LUT_INIT = 16'hfac0;
    SB_LUT4 i1_2_lut_3_lut_adj_1201 (.I0(\FRAME_MATCHER.i [2]), .I1(\FRAME_MATCHER.i [1]), 
            .I2(\FRAME_MATCHER.i[0] ), .I3(GND_net), .O(n8_adj_4299));
    defparam i1_2_lut_3_lut_adj_1201.LUT_INIT = 16'hf7f7;
    SB_LUT4 i16063_3_lut (.I0(n20006), .I1(\data_in_frame[10]_c [5]), .I2(reset), 
            .I3(GND_net), .O(n15019));   // verilog/TinyFPGA_B.v(47[5:10])
    defparam i16063_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE data_in_frame_0___i190 (.Q(\data_in_frame[23] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15454));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10746_3_lut_4_lut (.I0(n192), .I1(n29974), .I2(rx_data[2]), 
            .I3(\data_in_frame[3] [2]), .O(n14734));
    defparam i10746_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_3_lut_adj_1202 (.I0(\FRAME_MATCHER.i [2]), .I1(\FRAME_MATCHER.i [1]), 
            .I2(\FRAME_MATCHER.i[0] ), .I3(GND_net), .O(n127));
    defparam i1_2_lut_3_lut_adj_1202.LUT_INIT = 16'h8080;
    SB_LUT4 i14699_3_lut (.I0(neopxl_color[16]), .I1(\data_in_frame[4]_c [0]), 
            .I2(n8291), .I3(GND_net), .O(n14672));
    defparam i14699_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10736_3_lut_4_lut (.I0(n192), .I1(n29974), .I2(rx_data[1]), 
            .I3(\data_in_frame[3] [1]), .O(n14724));
    defparam i10736_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i30882_2_lut (.I0(n37128), .I1(byte_transmit_counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n35130));
    defparam i30882_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i2_4_lut_4_lut (.I0(n679), .I1(n4452), .I2(n33457), .I3(\FRAME_MATCHER.i_31__N_2384 ), 
            .O(n32110));   // verilog/coms.v(145[4] 147[7])
    defparam i2_4_lut_4_lut.LUT_INIT = 16'ha2a0;
    SB_LUT4 i31083_2_lut (.I0(\data_out_frame[23] [1]), .I1(n13490), .I2(GND_net), 
            .I3(GND_net), .O(n35129));
    defparam i31083_2_lut.LUT_INIT = 16'h8888;
    SB_DFFER setpoint_i0_i22 (.Q(setpoint[22]), .C(clk16MHz), .E(n12991), 
            .D(n2743[22]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i189 (.Q(\data_in_frame[23] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15451));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i188 (.Q(\data_in_frame[23] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15448));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i187 (.Q(\data_in_frame[23] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15443));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i186 (.Q(\data_in_frame[23] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15440));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i185 (.Q(\data_in_frame[23] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15437));   // verilog/coms.v(130[12] 305[6])
    SB_DFF control_mode_i0_i7 (.Q(control_mode[7]), .C(clk16MHz), .D(n15436));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i195_2_lut_3_lut (.I0(n679), .I1(n4452), .I2(n682), .I3(GND_net), 
            .O(n745));   // verilog/coms.v(145[4] 147[7])
    defparam i195_2_lut_3_lut.LUT_INIT = 16'h2020;
    SB_DFF neopxl_color_i0_i21 (.Q(neopxl_color[21]), .C(clk16MHz), .D(n15435));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS driver_enable_4015 (.Q(DE_c), .C(clk16MHz), .E(n1450), .D(n12344), 
            .S(n14196));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS byte_transmit_counter_i0_i7 (.Q(byte_transmit_counter[7]), .C(clk16MHz), 
            .E(n1450), .D(n1_adj_4158), .S(n29904));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i21 (.Q(setpoint[21]), .C(clk16MHz), .E(n12991), 
            .D(n2743[21]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFF control_mode_i0_i0 (.Q(control_mode[0]), .C(clk16MHz), .D(n14646));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10733_3_lut_4_lut (.I0(n192), .I1(n29974), .I2(rx_data[0]), 
            .I3(\data_in_frame[3] [0]), .O(n14721));
    defparam i10733_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFE data_in_frame_0___i184 (.Q(\data_in_frame[22] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15428));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i183 (.Q(\data_in_frame[22] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15425));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i191 (.Q(\data_in_frame[23] [6]), .C(clk16MHz), 
           .D(n14626));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i192 (.Q(\data_in_frame[23] [7]), .C(clk16MHz), 
           .D(n14629));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i182 (.Q(\data_in_frame[22] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15412));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i181 (.Q(\data_in_frame[22] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15408));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i180 (.Q(\data_in_frame[22] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15405));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i179 (.Q(\data_in_frame[22] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15402));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i178 (.Q(\data_in_frame[22] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15399));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i177 (.Q(\data_in_frame[22] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15396));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i176 (.Q(\data_in_frame[21] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15393));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_4_lut_adj_1203 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[24] [0]), 
            .I2(neopxl_color[8]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4291));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1203.LUT_INIT = 16'ha088;
    SB_DFFE data_in_frame_0___i175 (.Q(\data_in_frame[21] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15389));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i174 (.Q(\data_in_frame[21] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15386));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i173 (.Q(\data_in_frame[21] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15383));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_442_Select_191_i2_4_lut (.I0(\data_out_frame[23] [7]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[23]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4290));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_191_i2_4_lut.LUT_INIT = 16'hc088;
    SB_DFFE data_in_frame_0___i172 (.Q(\data_in_frame[21] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15380));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10661_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [0]), 
            .I3(\data_in[0] [0]), .O(n14649));   // verilog/coms.v(130[12] 305[6])
    defparam i10661_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_DFF data_in_frame_0___i2 (.Q(\data_in_frame[0] [1]), .C(clk16MHz), 
           .D(n14633));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i171 (.Q(\data_in_frame[21] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15376));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i170 (.Q(\data_in_frame[21] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15373));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i20 (.Q(setpoint[20]), .C(clk16MHz), .E(n12991), 
            .D(n2743[20]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10820_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [1]), 
            .I3(\data_in[1] [1]), .O(n14808));   // verilog/coms.v(130[12] 305[6])
    defparam i10820_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_DFFE data_in_frame_0___i169 (.Q(\data_in_frame[21] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15370));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_4_lut_adj_1204 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[23] [6]), 
            .I2(neopxl_color[22]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4289));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1204.LUT_INIT = 16'ha088;
    SB_DFF data_in_frame_0___i97 (.Q(\data_in_frame[12][0] ), .C(clk16MHz), 
           .D(n15050));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i98 (.Q(\data_in_frame[12][1] ), .C(clk16MHz), 
           .D(n15053));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i99 (.Q(\data_in_frame[12][2] ), .C(clk16MHz), 
           .D(n15056));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i100 (.Q(\data_in_frame[12][3] ), .C(clk16MHz), 
           .D(n15059));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i101 (.Q(\data_in_frame[12] [4]), .C(clk16MHz), 
           .D(n15361));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i102 (.Q(\data_in_frame[12] [5]), .C(clk16MHz), 
           .D(n15065));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i103 (.Q(\data_in_frame[12][6] ), .C(clk16MHz), 
           .D(n15068));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i104 (.Q(\data_in_frame[12][7] ), .C(clk16MHz), 
           .D(n15071));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i105 (.Q(\data_in_frame[13] [0]), .C(clk16MHz), 
           .D(n29497));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i106 (.Q(\data_in_frame[13] [1]), .C(clk16MHz), 
           .D(n15077));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i107 (.Q(\data_in_frame[13] [2]), .C(clk16MHz), 
           .D(n15080));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i168 (.Q(\data_in_frame[20] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15352));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i167 (.Q(\data_in_frame[20] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15349));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i166 (.Q(\data_in_frame[20] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15346));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10876_3_lut_4_lut (.I0(n8_adj_4299), .I1(n29986), .I2(rx_data[0]), 
            .I3(\data_in_frame[6] [0]), .O(n14864));
    defparam i10876_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFE data_in_frame_0___i165 (.Q(\data_in_frame[20] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15343));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10825_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [4]), 
            .I3(\data_in[0] [4]), .O(n14813));   // verilog/coms.v(130[12] 305[6])
    defparam i10825_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_DFFE data_in_frame_0___i164 (.Q(\data_in_frame[20] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15340));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i163 (.Q(\data_in_frame[20] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15337));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i162 (.Q(\data_in_frame[20] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15334));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10879_3_lut_4_lut (.I0(n8_adj_4299), .I1(n29986), .I2(rx_data[1]), 
            .I3(\data_in_frame[6][1] ), .O(n14867));
    defparam i10879_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFE data_in_frame_0___i161 (.Q(\data_in_frame[20] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15331));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10882_3_lut_4_lut (.I0(n8_adj_4299), .I1(n29986), .I2(rx_data[2]), 
            .I3(\data_in_frame[6]_c [2]), .O(n14870));
    defparam i10882_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFE data_in_frame_0___i160 (.Q(\data_in_frame[19][7] ), .C(clk16MHz), 
            .E(VCC_net), .D(n29433));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i159 (.Q(\data_in_frame[19][6] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15322));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i3 (.Q(\data_in_frame[0][2] ), .C(clk16MHz), 
           .D(n14636));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i158 (.Q(\data_in_frame[19] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15320));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i157 (.Q(\data_in_frame[19] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15316));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i156 (.Q(\data_in_frame[19][3] ), .C(clk16MHz), 
            .E(VCC_net), .D(n29435));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i155 (.Q(\data_in_frame[19][2] ), .C(clk16MHz), 
            .E(VCC_net), .D(n29437));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i154 (.Q(\data_in_frame[19][1] ), .C(clk16MHz), 
            .E(VCC_net), .D(n29439));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10885_3_lut_4_lut (.I0(n8_adj_4299), .I1(n29986), .I2(rx_data[3]), 
            .I3(\data_in_frame[6] [3]), .O(n14873));
    defparam i10885_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFE data_in_frame_0___i153 (.Q(\data_in_frame[19][0] ), .C(clk16MHz), 
            .E(VCC_net), .D(n29441));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i152 (.Q(\data_in_frame[18][7] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15298));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i22 (.Q(neopxl_color[22]), .C(clk16MHz), .D(n15297));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_442_Select_189_i2_4_lut (.I0(\data_out_frame[23] [5]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[21]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4288));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_189_i2_4_lut.LUT_INIT = 16'hc088;
    SB_DFFE data_in_frame_0___i151 (.Q(\data_in_frame[18][6] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15293));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i150 (.Q(\data_in_frame[18] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15290));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i149 (.Q(\data_in_frame[18]_c [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n29387));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_442_Select_188_i2_4_lut (.I0(\data_out_frame[23] [4]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[20]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4287));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_188_i2_4_lut.LUT_INIT = 16'hc088;
    SB_DFF data_in_frame_0___i4 (.Q(\data_in_frame[0] [3]), .C(clk16MHz), 
           .D(n15286));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10888_3_lut_4_lut (.I0(n8_adj_4299), .I1(n29986), .I2(rx_data[4]), 
            .I3(\data_in_frame[6] [4]), .O(n14876));
    defparam i10888_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFE data_in_frame_0___i148 (.Q(\data_in_frame[18][3] ), .C(clk16MHz), 
            .E(VCC_net), .D(n29369));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i147 (.Q(\data_in_frame[18][2] ), .C(clk16MHz), 
            .E(VCC_net), .D(n29375));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_4_lut_adj_1205 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[23] [3]), 
            .I2(neopxl_color[19]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4286));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1205.LUT_INIT = 16'ha088;
    SB_DFFE data_in_frame_0___i146 (.Q(\data_in_frame[18][1] ), .C(clk16MHz), 
            .E(VCC_net), .D(n29377));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10891_3_lut_4_lut (.I0(n8_adj_4299), .I1(n29986), .I2(rx_data[5]), 
            .I3(\data_in_frame[6] [5]), .O(n14879));
    defparam i10891_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFE data_in_frame_0___i145 (.Q(\data_in_frame[18][0] ), .C(clk16MHz), 
            .E(VCC_net), .D(n29379));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i144 (.Q(\data_in_frame[17][7] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15271));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10894_3_lut_4_lut (.I0(n8_adj_4299), .I1(n29986), .I2(rx_data[6]), 
            .I3(\data_in_frame[6] [6]), .O(n14882));
    defparam i10894_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFE data_in_frame_0___i143 (.Q(\data_in_frame[17][6] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15268));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_442_Select_186_i2_4_lut (.I0(\data_out_frame[23] [2]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[18]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4285));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_186_i2_4_lut.LUT_INIT = 16'hc088;
    SB_DFFE data_in_frame_0___i142 (.Q(\data_in_frame[17][5] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15262));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_4_lut_adj_1206 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[23] [1]), 
            .I2(neopxl_color[17]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4284));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1206.LUT_INIT = 16'ha088;
    SB_DFFE data_in_frame_0___i141 (.Q(\data_in_frame[17][4] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15259));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i140 (.Q(\data_in_frame[17][3] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15256));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_4_lut_adj_1207 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[23] [0]), 
            .I2(neopxl_color[16]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4283));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1207.LUT_INIT = 16'ha088;
    SB_DFFE data_in_frame_0___i139 (.Q(\data_in_frame[17][2] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15253));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10826_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [3]), 
            .I3(\data_in[0] [3]), .O(n14814));   // verilog/coms.v(130[12] 305[6])
    defparam i10826_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_DFFE data_in_frame_0___i138 (.Q(\data_in_frame[17][1] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15250));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10897_3_lut_4_lut (.I0(n8_adj_4299), .I1(n29986), .I2(rx_data[7]), 
            .I3(\data_in_frame[6] [7]), .O(n14885));
    defparam i10897_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFE data_in_frame_0___i137 (.Q(\data_in_frame[17] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15249));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i136 (.Q(\data_in_frame[16] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15244));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i135 (.Q(\data_in_frame[16] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15241));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i134 (.Q(\data_in_frame[16] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15238));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i1 (.Q(\data_in_frame[0] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15235));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i133 (.Q(\data_in_frame[16] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15232));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i132 (.Q(\data_in_frame[16] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15229));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i131 (.Q(\data_in_frame[16] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15226));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_4_lut_adj_1208 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[14] [7]), 
            .I2(setpoint[7]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4282));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1208.LUT_INIT = 16'ha088;
    SB_LUT4 i1_2_lut_4_lut_adj_1209 (.I0(n771), .I1(\FRAME_MATCHER.i_31__N_2378 ), 
            .I2(n10903), .I3(\FRAME_MATCHER.i_31__N_2377 ), .O(n33457));   // verilog/coms.v(148[4] 304[11])
    defparam i1_2_lut_4_lut_adj_1209.LUT_INIT = 16'hfff4;
    SB_DFFE data_in_frame_0___i130 (.Q(\data_in_frame[16] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15223));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i198_4_lut_4_lut (.I0(n679), .I1(n685), .I2(n4452), .I3(n682), 
            .O(n748));   // verilog/coms.v(139[4] 141[7])
    defparam i198_4_lut_4_lut.LUT_INIT = 16'h0d05;
    SB_DFFE data_in_frame_0___i129 (.Q(\data_in_frame[16] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15220));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i128 (.Q(\data_in_frame[15] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15217));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i127 (.Q(\data_in_frame[15] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15214));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_4_lut_adj_1210 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[14] [6]), 
            .I2(setpoint[6]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4281));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1210.LUT_INIT = 16'ha088;
    SB_DFFE data_in_frame_0___i126 (.Q(\data_in_frame[15] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15211));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10827_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [2]), 
            .I3(\data_in[0] [2]), .O(n14815));   // verilog/coms.v(130[12] 305[6])
    defparam i10827_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_DFF data_in_frame_0___i108 (.Q(\data_in_frame[13] [3]), .C(clk16MHz), 
           .D(n15083));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i109 (.Q(\data_in_frame[13] [4]), .C(clk16MHz), 
           .D(n15086));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i110 (.Q(\data_in_frame[13] [5]), .C(clk16MHz), 
           .D(n15089));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i111 (.Q(\data_in_frame[13] [6]), .C(clk16MHz), 
           .D(n15092));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i112 (.Q(\data_in_frame[13] [7]), .C(clk16MHz), 
           .D(n15095));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i113 (.Q(\data_in_frame[14] [0]), .C(clk16MHz), 
           .D(n15098));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i114 (.Q(\data_in_frame[14] [1]), .C(clk16MHz), 
           .D(n15101));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i115 (.Q(\data_in_frame[14] [2]), .C(clk16MHz), 
           .D(n15104));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i116 (.Q(\data_in_frame[14] [3]), .C(clk16MHz), 
           .D(n15115));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i19 (.Q(setpoint[19]), .C(clk16MHz), .E(n12991), 
            .D(n2743[19]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10828_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [1]), 
            .I3(\data_in[0] [1]), .O(n14816));   // verilog/coms.v(130[12] 305[6])
    defparam i10828_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i10824_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [5]), 
            .I3(\data_in[0] [5]), .O(n14812));   // verilog/coms.v(130[12] 305[6])
    defparam i10824_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_DFF data_in_frame_0___i117 (.Q(\data_in_frame[14] [4]), .C(clk16MHz), 
           .D(n15118));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1211 (.I0(\data_in_frame[4][3] ), .I1(\data_in_frame[4][4] ), 
            .I2(GND_net), .I3(GND_net), .O(n30478));   // verilog/coms.v(77[16:43])
    defparam i1_2_lut_adj_1211.LUT_INIT = 16'h6666;
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_33_lut  (.I0(n35125), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [31]), .I3(n26096), .O(n13237)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_33_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_32_lut  (.I0(n35124), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [30]), .I3(n26095), .O(n13239)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_32_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 select_442_Select_117_i2_4_lut (.I0(\data_out_frame[14] [5]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[5]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4280));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_117_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i10823_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [6]), 
            .I3(\data_in[0] [6]), .O(n14811));   // verilog/coms.v(130[12] 305[6])
    defparam i10823_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 select_442_Select_116_i2_4_lut (.I0(\data_out_frame[14] [4]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[4]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4279));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_116_i2_4_lut.LUT_INIT = 16'hc088;
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_32  (.CI(n26095), .I0(n37045), 
            .I1(\FRAME_MATCHER.i [30]), .CO(n26096));
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_31_lut  (.I0(n35123), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [29]), .I3(n26094), .O(n13241)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_31_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_31  (.CI(n26094), .I0(n37045), 
            .I1(\FRAME_MATCHER.i [29]), .CO(n26095));
    SB_DFF neopxl_color_i0_i23 (.Q(neopxl_color[23]), .C(clk16MHz), .D(n15199));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i118 (.Q(\data_in_frame[14] [5]), .C(clk16MHz), 
           .D(n15121));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i119 (.Q(\data_in_frame[14] [6]), .C(clk16MHz), 
           .D(n29517));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i120 (.Q(\data_in_frame[14] [7]), .C(clk16MHz), 
           .D(n29513));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i121 (.Q(\data_in_frame[15]_c [0]), .C(clk16MHz), 
           .D(n15130));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i122 (.Q(\data_in_frame[15]_c [1]), .C(clk16MHz), 
           .D(n15193));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1212 (.I0(\data_in_frame[6] [4]), .I1(Kp_23__N_745), 
            .I2(GND_net), .I3(GND_net), .O(n30139));   // verilog/coms.v(78[16:43])
    defparam i1_2_lut_adj_1212.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_1213 (.I0(\data_in_frame[6] [5]), .I1(n11746), 
            .I2(n30478), .I3(n30385), .O(n30002));   // verilog/coms.v(77[16:43])
    defparam i3_4_lut_adj_1213.LUT_INIT = 16'h6996;
    SB_LUT4 i10822_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [7]), 
            .I3(\data_in[0] [7]), .O(n14810));   // verilog/coms.v(130[12] 305[6])
    defparam i10822_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i10819_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [2]), 
            .I3(\data_in[1] [2]), .O(n14807));   // verilog/coms.v(130[12] 305[6])
    defparam i10819_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_30_lut  (.I0(n35122), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [28]), .I3(n26093), .O(n13243)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_30_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 select_442_Select_115_i2_4_lut (.I0(\data_out_frame[14] [3]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[3]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4278));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_115_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_2_lut_3_lut_adj_1214 (.I0(n771), .I1(\FRAME_MATCHER.i_31__N_2378 ), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(GND_net), .O(n5_adj_4300));   // verilog/coms.v(148[4] 304[11])
    defparam i1_2_lut_3_lut_adj_1214.LUT_INIT = 16'hf4f4;
    SB_LUT4 select_442_Select_114_i2_4_lut (.I0(\data_out_frame[14] [2]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[2]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4277));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_114_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_442_Select_113_i2_4_lut (.I0(\data_out_frame[14] [1]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[1]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4276));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_113_i2_4_lut.LUT_INIT = 16'hc088;
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_30  (.CI(n26093), .I0(n37045), 
            .I1(\FRAME_MATCHER.i [28]), .CO(n26094));
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_29_lut  (.I0(n35120), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [27]), .I3(n26092), .O(n13245)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_29_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_29  (.CI(n26092), .I0(n37045), 
            .I1(\FRAME_MATCHER.i [27]), .CO(n26093));
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_28_lut  (.I0(n35119), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [26]), .I3(n26091), .O(n13247)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_28_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_28  (.CI(n26091), .I0(n37045), 
            .I1(\FRAME_MATCHER.i [26]), .CO(n26092));
    SB_LUT4 i10818_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [3]), 
            .I3(\data_in[1] [3]), .O(n14806));   // verilog/coms.v(130[12] 305[6])
    defparam i10818_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 select_442_Select_112_i2_4_lut (.I0(\data_out_frame[14] [0]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[0]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4275));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_112_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i10817_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [4]), 
            .I3(\data_in[1] [4]), .O(n14805));   // verilog/coms.v(130[12] 305[6])
    defparam i10817_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_DFF data_in_frame_0___i123 (.Q(\data_in_frame[15] [2]), .C(clk16MHz), 
           .D(n15141));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i124 (.Q(\data_in_frame[15] [3]), .C(clk16MHz), 
           .D(n15144));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i125 (.Q(\data_in_frame[15] [4]), .C(clk16MHz), 
           .D(n15147));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10849_3_lut_4_lut (.I0(n8_adj_4301), .I1(n29986), .I2(rx_data[3]), 
            .I3(\data_in_frame[5] [3]), .O(n14837));
    defparam i10849_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_27_lut  (.I0(n35118), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [25]), .I3(n26090), .O(n13249)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_27_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_27  (.CI(n26090), .I0(n37045), 
            .I1(\FRAME_MATCHER.i [25]), .CO(n26091));
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_26_lut  (.I0(n35117), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [24]), .I3(n26089), .O(n13251)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_26_lut .LUT_INIT = 16'h8BB8;
    SB_DFF control_mode_i0_i1 (.Q(control_mode[1]), .C(clk16MHz), .D(n15155));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 add_674_9_lut (.I0(n29896), .I1(byte_transmit_counter[7]), .I2(GND_net), 
            .I3(n25728), .O(n29904)) /* synthesis syn_instantiated=1 */ ;
    defparam add_674_9_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_674_8_lut (.I0(n29896), .I1(byte_transmit_counter[6]), .I2(GND_net), 
            .I3(n25727), .O(n29903)) /* synthesis syn_instantiated=1 */ ;
    defparam add_674_8_lut.LUT_INIT = 16'h8228;
    SB_DFF control_mode_i0_i2 (.Q(control_mode[2]), .C(clk16MHz), .D(n15152));   // verilog/coms.v(130[12] 305[6])
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_26  (.CI(n26089), .I0(n37045), 
            .I1(\FRAME_MATCHER.i [24]), .CO(n26090));
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_25_lut  (.I0(n35116), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [23]), .I3(n26088), .O(n13253)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_25_lut .LUT_INIT = 16'h8BB8;
    SB_DFF data_in_frame_0___i5 (.Q(\data_in_frame[0] [4]), .C(clk16MHz), 
           .D(n14643));   // verilog/coms.v(130[12] 305[6])
    SB_CARRY add_674_8 (.CI(n25727), .I0(byte_transmit_counter[6]), .I1(GND_net), 
            .CO(n25728));
    SB_DFF control_mode_i0_i3 (.Q(control_mode[3]), .C(clk16MHz), .D(n15150));   // verilog/coms.v(130[12] 305[6])
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_25  (.CI(n26088), .I0(n37045), 
            .I1(\FRAME_MATCHER.i [23]), .CO(n26089));
    SB_DFF control_mode_i0_i4 (.Q(control_mode[4]), .C(clk16MHz), .D(n15140));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_442_Select_111_i2_4_lut (.I0(\data_out_frame[13] [7]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[15]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4274));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_111_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i10816_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [5]), 
            .I3(\data_in[1] [5]), .O(n14804));   // verilog/coms.v(130[12] 305[6])
    defparam i10816_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i10846_3_lut_4_lut (.I0(n8_adj_4301), .I1(n29986), .I2(rx_data[2]), 
            .I3(\data_in_frame[5] [2]), .O(n14834));
    defparam i10846_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF control_mode_i0_i5 (.Q(control_mode[5]), .C(clk16MHz), .D(n15139));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_442_Select_110_i2_4_lut (.I0(\data_out_frame[13] [6]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[14]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4273));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_110_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i10815_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [6]), 
            .I3(\data_in[1] [6]), .O(n14803));   // verilog/coms.v(130[12] 305[6])
    defparam i10815_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 select_442_Select_109_i2_4_lut (.I0(\data_out_frame[13] [5]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[13]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4272));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_109_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i10814_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [7]), 
            .I3(\data_in[1] [7]), .O(n14802));   // verilog/coms.v(130[12] 305[6])
    defparam i10814_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_24_lut  (.I0(n35111), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [22]), .I3(n26087), .O(n13255)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_24_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_24  (.CI(n26087), .I0(n37045), 
            .I1(\FRAME_MATCHER.i [22]), .CO(n26088));
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_23_lut  (.I0(n35108), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [21]), .I3(n26086), .O(n13257)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_23_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_23  (.CI(n26086), .I0(n37045), 
            .I1(\FRAME_MATCHER.i [21]), .CO(n26087));
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_22_lut  (.I0(n35107), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [20]), .I3(n26085), .O(n13259)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_22_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_22  (.CI(n26085), .I0(n37045), 
            .I1(\FRAME_MATCHER.i [20]), .CO(n26086));
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_21_lut  (.I0(n35106), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [19]), .I3(n26084), .O(n13261)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_21_lut .LUT_INIT = 16'h8BB8;
    SB_DFF data_in_frame_0___i6 (.Q(\data_in_frame[0] [5]), .C(clk16MHz), 
           .D(n14652));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_442_Select_108_i2_4_lut (.I0(\data_out_frame[13] [4]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[12]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4270));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_108_i2_4_lut.LUT_INIT = 16'hc088;
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_21  (.CI(n26084), .I0(n37045), 
            .I1(\FRAME_MATCHER.i [19]), .CO(n26085));
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_20_lut  (.I0(n35098), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [18]), .I3(n26083), .O(n13263)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_20_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 i10813_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [0]), 
            .I3(\data_in[2] [0]), .O(n14801));   // verilog/coms.v(130[12] 305[6])
    defparam i10813_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_20  (.CI(n26083), .I0(n37045), 
            .I1(\FRAME_MATCHER.i [18]), .CO(n26084));
    SB_LUT4 i3_4_lut_adj_1215 (.I0(\data_in_frame[8] [5]), .I1(n30139), 
            .I2(\data_in_frame[6] [3]), .I3(Kp_23__N_742), .O(n11256));   // verilog/coms.v(78[16:43])
    defparam i3_4_lut_adj_1215.LUT_INIT = 16'h6996;
    SB_LUT4 i10812_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [1]), 
            .I3(\data_in[2] [1]), .O(n14800));   // verilog/coms.v(130[12] 305[6])
    defparam i10812_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_19_lut  (.I0(n35096), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [17]), .I3(n26082), .O(n13265)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_19_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_19  (.CI(n26082), .I0(n37045), 
            .I1(\FRAME_MATCHER.i [17]), .CO(n26083));
    SB_DFF data_in_frame_0___i7 (.Q(\data_in_frame[0] [6]), .C(clk16MHz), 
           .D(n14655));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_442_Select_107_i2_4_lut (.I0(\data_out_frame[13] [3]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[11]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4269));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_107_i2_4_lut.LUT_INIT = 16'hc088;
    SB_DFF data_in_frame_0___i8 (.Q(\data_in_frame[0]_c [7]), .C(clk16MHz), 
           .D(n14658));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i9 (.Q(\data_in_frame[1] [0]), .C(clk16MHz), 
           .D(n29539));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i10 (.Q(\data_in_frame[1] [1]), .C(clk16MHz), 
           .D(n14665));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i11 (.Q(\data_in_frame[1] [2]), .C(clk16MHz), 
           .D(n14669));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_18_lut  (.I0(n35087), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [16]), .I3(n26081), .O(n13267)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_18_lut .LUT_INIT = 16'h8BB8;
    SB_DFF data_in_frame_0___i12 (.Q(\data_in_frame[1] [3]), .C(clk16MHz), 
           .D(n14676));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i13 (.Q(\data_in_frame[1] [4]), .C(clk16MHz), 
           .D(n14679));   // verilog/coms.v(130[12] 305[6])
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_18  (.CI(n26081), .I0(n37045), 
            .I1(\FRAME_MATCHER.i [16]), .CO(n26082));
    SB_LUT4 select_442_Select_106_i2_4_lut (.I0(\data_out_frame[13] [2]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[10]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4268));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_106_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i10811_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [2]), 
            .I3(\data_in[2] [2]), .O(n14799));   // verilog/coms.v(130[12] 305[6])
    defparam i10811_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i10857_3_lut_4_lut (.I0(n8_adj_4301), .I1(n29986), .I2(rx_data[4]), 
            .I3(\data_in_frame[5] [4]), .O(n14845));
    defparam i10857_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 select_442_Select_105_i2_4_lut (.I0(\data_out_frame[13] [1]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[9]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4267));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_105_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i10810_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [3]), 
            .I3(\data_in[2] [3]), .O(n14798));   // verilog/coms.v(130[12] 305[6])
    defparam i10810_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_17_lut  (.I0(n35076), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [15]), .I3(n26080), .O(n13269)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_17_lut .LUT_INIT = 16'h8BB8;
    SB_DFFER setpoint_i0_i18 (.Q(setpoint[18]), .C(clk16MHz), .E(n12991), 
            .D(n2743[18]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_4_lut_adj_1216 (.I0(\data_in_frame[8] [0]), .I1(n11181), 
            .I2(n27185), .I3(n33343), .O(n26685));
    defparam i1_4_lut_adj_1216.LUT_INIT = 16'h9669;
    SB_LUT4 i4_4_lut_4_lut (.I0(n30356), .I1(n30205), .I2(n27459), .I3(n30191), 
            .O(n10_adj_4302));
    defparam i4_4_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i10809_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [4]), 
            .I3(\data_in[2] [4]), .O(n14797));   // verilog/coms.v(130[12] 305[6])
    defparam i10809_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 select_442_Select_104_i2_4_lut (.I0(\data_out_frame[13] [0]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[8]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4266));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_104_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i10860_3_lut_4_lut (.I0(n8_adj_4301), .I1(n29986), .I2(rx_data[5]), 
            .I3(\data_in_frame[5] [5]), .O(n14848));
    defparam i10860_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i10843_3_lut_4_lut (.I0(n8_adj_4301), .I1(n29986), .I2(rx_data[1]), 
            .I3(\data_in_frame[5] [1]), .O(n14831));
    defparam i10843_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i10808_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [5]), 
            .I3(\data_in[2] [5]), .O(n14796));   // verilog/coms.v(130[12] 305[6])
    defparam i10808_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_17  (.CI(n26080), .I0(n37045), 
            .I1(\FRAME_MATCHER.i [15]), .CO(n26081));
    SB_LUT4 select_442_Select_103_i2_4_lut (.I0(\data_out_frame[12] [7]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[23]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4265));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_103_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_16_lut  (.I0(n35147), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [14]), .I3(n26079), .O(n13281)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_16_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_16  (.CI(n26079), .I0(n37045), 
            .I1(\FRAME_MATCHER.i [14]), .CO(n26080));
    SB_LUT4 add_674_7_lut (.I0(n29896), .I1(byte_transmit_counter[5]), .I2(GND_net), 
            .I3(n25726), .O(n29902)) /* synthesis syn_instantiated=1 */ ;
    defparam add_674_7_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i10807_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [6]), 
            .I3(\data_in[2] [6]), .O(n14795));   // verilog/coms.v(130[12] 305[6])
    defparam i10807_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 select_442_Select_102_i2_4_lut (.I0(\data_out_frame[12] [6]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[22]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4264));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_102_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_15_lut  (.I0(n35146), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [13]), .I3(n26078), .O(n13283)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_15_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 i1_2_lut_adj_1217 (.I0(\data_in_frame[0] [1]), .I1(\data_in_frame[0][2] ), 
            .I2(GND_net), .I3(GND_net), .O(n30039));   // verilog/coms.v(169[9:87])
    defparam i1_2_lut_adj_1217.LUT_INIT = 16'h6666;
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_15  (.CI(n26078), .I0(n37045), 
            .I1(\FRAME_MATCHER.i [13]), .CO(n26079));
    SB_DFF neopxl_color_i0_i0 (.Q(neopxl_color[0]), .C(clk16MHz), .D(n14642));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_14_lut  (.I0(n35145), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [12]), .I3(n26077), .O(n13285)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_14_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 i10866_3_lut_4_lut (.I0(n8_adj_4301), .I1(n29986), .I2(rx_data[6]), 
            .I3(\data_in_frame[5] [6]), .O(n14854));
    defparam i10866_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i10872_3_lut_4_lut (.I0(n8_adj_4301), .I1(n29986), .I2(rx_data[7]), 
            .I3(\data_in_frame[5] [7]), .O(n14860));
    defparam i10872_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFER setpoint_i0_i17 (.Q(setpoint[17]), .C(clk16MHz), .E(n12991), 
            .D(n2743[17]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i2_3_lut_adj_1218 (.I0(\data_in_frame[2] [4]), .I1(\data_in_frame[0][2] ), 
            .I2(\data_in_frame[0] [3]), .I3(GND_net), .O(n11204));   // verilog/coms.v(169[9:87])
    defparam i2_3_lut_adj_1218.LUT_INIT = 16'h9696;
    SB_LUT4 i10839_3_lut_4_lut (.I0(n8_adj_4301), .I1(n29986), .I2(rx_data[0]), 
            .I3(\data_in_frame[5] [0]), .O(n14827));
    defparam i10839_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i10806_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [7]), 
            .I3(\data_in[2] [7]), .O(n14794));   // verilog/coms.v(130[12] 305[6])
    defparam i10806_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 select_442_Select_101_i2_4_lut (.I0(\data_out_frame[12] [5]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[21]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4263));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_101_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i10805_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[0]), 
            .I3(\data_in[3] [0]), .O(n14793));   // verilog/coms.v(130[12] 305[6])
    defparam i10805_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_CARRY add_674_7 (.CI(n25726), .I0(byte_transmit_counter[5]), .I1(GND_net), 
            .CO(n25727));
    SB_LUT4 add_674_6_lut (.I0(n29896), .I1(byte_transmit_counter[4]), .I2(GND_net), 
            .I3(n25725), .O(n29901)) /* synthesis syn_instantiated=1 */ ;
    defparam add_674_6_lut.LUT_INIT = 16'h8228;
    SB_LUT4 select_442_Select_100_i2_4_lut (.I0(\data_out_frame[12] [4]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[20]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4262));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_100_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i10804_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[1]), 
            .I3(\data_in[3] [1]), .O(n14792));   // verilog/coms.v(130[12] 305[6])
    defparam i10804_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_4_lut_adj_1219 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[12] [3]), 
            .I2(setpoint[19]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4261));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1219.LUT_INIT = 16'ha088;
    SB_LUT4 i10803_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[2]), 
            .I3(\data_in[3] [2]), .O(n14791));   // verilog/coms.v(130[12] 305[6])
    defparam i10803_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_adj_1220 (.I0(\data_in_frame[0] [5]), .I1(\data_in_frame[0] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n30006));   // verilog/coms.v(169[9:87])
    defparam i1_2_lut_adj_1220.LUT_INIT = 16'h6666;
    SB_LUT4 i10802_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[3]), 
            .I3(\data_in[3] [3]), .O(n14790));   // verilog/coms.v(130[12] 305[6])
    defparam i10802_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i10801_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[4]), 
            .I3(\data_in[3] [4]), .O(n14789));   // verilog/coms.v(130[12] 305[6])
    defparam i10801_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i10800_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[5]), 
            .I3(\data_in[3] [5]), .O(n14788));   // verilog/coms.v(130[12] 305[6])
    defparam i10800_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i10799_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[6]), 
            .I3(\data_in[3] [6]), .O(n14787));   // verilog/coms.v(130[12] 305[6])
    defparam i10799_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_CARRY add_674_6 (.CI(n25725), .I0(byte_transmit_counter[4]), .I1(GND_net), 
            .CO(n25726));
    SB_LUT4 select_442_Select_98_i2_4_lut (.I0(\data_out_frame[12] [2]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(setpoint[18]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4260));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_98_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i10789_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[7]), 
            .I3(\data_in[3] [7]), .O(n14777));   // verilog/coms.v(130[12] 305[6])
    defparam i10789_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 add_674_5_lut (.I0(n29896), .I1(byte_transmit_counter[3]), .I2(GND_net), 
            .I3(n25724), .O(n29900)) /* synthesis syn_instantiated=1 */ ;
    defparam add_674_5_lut.LUT_INIT = 16'h8228;
    SB_LUT4 select_442_Select_97_i2_4_lut (.I0(\data_out_frame[12] [1]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(setpoint[17]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4259));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_97_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_2_lut_adj_1221 (.I0(n11746), .I1(n11204), .I2(GND_net), 
            .I3(GND_net), .O(n30013));   // verilog/coms.v(78[16:43])
    defparam i1_2_lut_adj_1221.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_adj_1222 (.I0(n30052), .I1(n10101), .I2(\data_in_frame[2][7] ), 
            .I3(GND_net), .O(n30376));   // verilog/coms.v(77[16:43])
    defparam i1_3_lut_adj_1222.LUT_INIT = 16'h9696;
    SB_LUT4 mux_647_i1_3_lut_4_lut (.I0(\data_in_frame[19][0] ), .I1(\data_in_frame[3] [0]), 
            .I2(Kp_23__N_1618), .I3(n23006), .O(n2743[0]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_647_i1_3_lut_4_lut.LUT_INIT = 16'haccc;
    SB_CARRY add_674_5 (.CI(n25724), .I0(byte_transmit_counter[3]), .I1(GND_net), 
            .CO(n25725));
    SB_LUT4 add_674_4_lut (.I0(n29896), .I1(byte_transmit_counter[2]), .I2(GND_net), 
            .I3(n25723), .O(n29899)) /* synthesis syn_instantiated=1 */ ;
    defparam add_674_4_lut.LUT_INIT = 16'h8228;
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_14  (.CI(n26077), .I0(n37045), 
            .I1(\FRAME_MATCHER.i [12]), .CO(n26078));
    SB_CARRY add_674_4 (.CI(n25723), .I0(byte_transmit_counter[2]), .I1(GND_net), 
            .CO(n25724));
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_13_lut  (.I0(n35144), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [11]), .I3(n26076), .O(n13287)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_13_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 add_674_3_lut (.I0(n29896), .I1(\byte_transmit_counter[1] ), 
            .I2(GND_net), .I3(n25722), .O(n29898)) /* synthesis syn_instantiated=1 */ ;
    defparam add_674_3_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i10821_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [0]), 
            .I3(\data_in[1] [0]), .O(n14809));   // verilog/coms.v(130[12] 305[6])
    defparam i10821_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_13  (.CI(n26076), .I0(n37045), 
            .I1(\FRAME_MATCHER.i [11]), .CO(n26077));
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_12_lut  (.I0(n35143), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [10]), .I3(n26075), .O(n13289)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_12_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY add_674_3 (.CI(n25722), .I0(\byte_transmit_counter[1] ), .I1(GND_net), 
            .CO(n25723));
    SB_LUT4 i11167_3_lut_4_lut (.I0(reset), .I1(n23007), .I2(\data_in_frame[1] [1]), 
            .I3(control_mode[1]), .O(n15155));   // verilog/coms.v(130[12] 305[6])
    defparam i11167_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 select_442_Select_96_i2_4_lut (.I0(\data_out_frame[12] [0]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(setpoint[16]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4258));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_96_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_2_lut_adj_1223 (.I0(\data_in_frame[3] [6]), .I1(\data_in_frame[5] [7]), 
            .I2(GND_net), .I3(GND_net), .O(n30430));   // verilog/coms.v(79[16:43])
    defparam i1_2_lut_adj_1223.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1224 (.I0(\data_in_frame[3] [5]), .I1(\data_in_frame[5] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n33367));   // verilog/coms.v(79[16:43])
    defparam i1_2_lut_adj_1224.LUT_INIT = 16'h6666;
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_12  (.CI(n26075), .I0(n37045), 
            .I1(\FRAME_MATCHER.i [10]), .CO(n26076));
    SB_LUT4 select_442_Select_47_i2_4_lut (.I0(\data_out_frame[5] [7]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(control_mode[7]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4257));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_47_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 add_674_2_lut (.I0(n29896), .I1(\byte_transmit_counter[0] ), 
            .I2(tx_transmit_N_3286), .I3(GND_net), .O(n29897)) /* synthesis syn_instantiated=1 */ ;
    defparam add_674_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i1_4_lut_adj_1225 (.I0(\data_in_frame[4]_c [0]), .I1(\data_in_frame[3] [3]), 
            .I2(\data_in_frame[3] [0]), .I3(\data_in_frame[3] [4]), .O(n33371));   // verilog/coms.v(79[16:43])
    defparam i1_4_lut_adj_1225.LUT_INIT = 16'h6996;
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_11_lut  (.I0(n35142), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [9]), .I3(n26074), .O(n13291)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_11_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 select_442_Select_46_i2_4_lut (.I0(\data_out_frame[5] [6]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(control_mode[6]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4256));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_46_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_4_lut_adj_1226 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[5] [5]), 
            .I2(control_mode[5]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4255));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1226.LUT_INIT = 16'ha088;
    SB_LUT4 i1_4_lut_adj_1227 (.I0(\data_in_frame[5] [3]), .I1(n33371), 
            .I2(n33367), .I3(\data_in_frame[4][7] ), .O(n33375));   // verilog/coms.v(79[16:43])
    defparam i1_4_lut_adj_1227.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1228 (.I0(n30126), .I1(n30478), .I2(n33375), 
            .I3(n30430), .O(n33383));   // verilog/coms.v(79[16:43])
    defparam i1_4_lut_adj_1228.LUT_INIT = 16'h6996;
    SB_LUT4 select_442_Select_44_i2_4_lut (.I0(\data_out_frame[5] [4]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(control_mode[4]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4254));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_44_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i11152_3_lut_4_lut (.I0(reset), .I1(n23007), .I2(\data_in_frame[1] [4]), 
            .I3(control_mode[4]), .O(n15140));   // verilog/coms.v(130[12] 305[6])
    defparam i11152_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i1_4_lut_adj_1229 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[5] [3]), 
            .I2(control_mode[3]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4253));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1229.LUT_INIT = 16'ha088;
    SB_LUT4 i1_2_lut_3_lut_3_lut_4_lut (.I0(n30356), .I1(\data_out_frame[23] [2]), 
            .I2(\data_out_frame[14] [4]), .I3(n30097), .O(n30307));
    defparam i1_2_lut_3_lut_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_DFF neopxl_color_i0_i19 (.Q(neopxl_color[19]), .C(clk16MHz), .D(n14632));   // verilog/coms.v(130[12] 305[6])
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_11  (.CI(n26074), .I0(n37045), 
            .I1(\FRAME_MATCHER.i [9]), .CO(n26075));
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_10_lut  (.I0(n35141), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [8]), .I3(n26073), .O(n13293)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_10_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 i1_3_lut_adj_1230 (.I0(\data_in_frame[4] [6]), .I1(\data_in_frame[1] [5]), 
            .I2(\data_in_frame[2][1] ), .I3(GND_net), .O(n33393));   // verilog/coms.v(77[16:43])
    defparam i1_3_lut_adj_1230.LUT_INIT = 16'h9696;
    SB_LUT4 i1_4_lut_adj_1231 (.I0(n11163), .I1(n33383), .I2(n30009), 
            .I3(n9232), .O(n33387));   // verilog/coms.v(79[16:43])
    defparam i1_4_lut_adj_1231.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1232 (.I0(n30013), .I1(n30101), .I2(Kp_23__N_618), 
            .I3(n33393), .O(n33399));   // verilog/coms.v(77[16:43])
    defparam i1_4_lut_adj_1232.LUT_INIT = 16'h6996;
    SB_LUT4 select_442_Select_42_i2_4_lut (.I0(\data_out_frame[5] [2]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(control_mode[2]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4252));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_42_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_442_Select_41_i2_4_lut (.I0(\data_out_frame[5] [1]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(control_mode[1]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4251));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_41_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i11164_3_lut_4_lut (.I0(reset), .I1(n23007), .I2(\data_in_frame[1] [2]), 
            .I3(control_mode[2]), .O(n15152));   // verilog/coms.v(130[12] 305[6])
    defparam i11164_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i10870_3_lut_4_lut (.I0(reset), .I1(n23007), .I2(\data_in_frame[1] [6]), 
            .I3(control_mode[6]), .O(n14858));   // verilog/coms.v(130[12] 305[6])
    defparam i10870_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i11448_3_lut_4_lut (.I0(reset), .I1(n23007), .I2(\data_in_frame[1] [7]), 
            .I3(control_mode[7]), .O(n15436));   // verilog/coms.v(130[12] 305[6])
    defparam i11448_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 select_442_Select_40_i2_4_lut (.I0(\data_out_frame[5] [0]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(control_mode[0]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4250));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_40_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_4_lut_adj_1233 (.I0(n11718), .I1(n33399), .I2(n33387), 
            .I3(n30376), .O(n27185));   // verilog/coms.v(79[16:43])
    defparam i1_4_lut_adj_1233.LUT_INIT = 16'h6996;
    SB_LUT4 i4_4_lut_adj_1234 (.I0(n30013), .I1(\data_in_frame[6] [4]), 
            .I2(\data_in_frame[4][5] ), .I3(\data_in_frame[6] [7]), .O(n10_adj_4303));   // verilog/coms.v(88[17:28])
    defparam i4_4_lut_adj_1234.LUT_INIT = 16'h6996;
    SB_LUT4 i5_3_lut_adj_1235 (.I0(n30350), .I1(n10_adj_4303), .I2(\data_in_frame[6] [6]), 
            .I3(GND_net), .O(n30338));   // verilog/coms.v(88[17:28])
    defparam i5_3_lut_adj_1235.LUT_INIT = 16'h9696;
    SB_LUT4 i31088_2_lut (.I0(\FRAME_MATCHER.i [1]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35132));   // verilog/coms.v(158[12:15])
    defparam i31088_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_adj_1236 (.I0(\data_in_frame[1] [3]), .I1(\data_in_frame[3] [5]), 
            .I2(GND_net), .I3(GND_net), .O(n30463));
    defparam i1_2_lut_adj_1236.LUT_INIT = 16'h6666;
    SB_LUT4 i11162_3_lut_4_lut (.I0(reset), .I1(n23007), .I2(\data_in_frame[1] [3]), 
            .I3(control_mode[3]), .O(n15150));   // verilog/coms.v(130[12] 305[6])
    defparam i11162_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_CARRY add_674_2 (.CI(GND_net), .I0(\byte_transmit_counter[0] ), .I1(tx_transmit_N_3286), 
            .CO(n25722));
    SB_LUT4 i11151_3_lut_4_lut (.I0(reset), .I1(n23007), .I2(\data_in_frame[1] [5]), 
            .I3(control_mode[5]), .O(n15139));   // verilog/coms.v(130[12] 305[6])
    defparam i11151_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 select_442_Select_39_i2_4_lut (.I0(\data_out_frame[4] [7]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(ID[7]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), .O(n2_adj_4249));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_39_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i10658_3_lut_4_lut (.I0(reset), .I1(n23007), .I2(\data_in_frame[1] [0]), 
            .I3(control_mode[0]), .O(n14646));   // verilog/coms.v(130[12] 305[6])
    defparam i10658_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_10  (.CI(n26073), .I0(n37045), 
            .I1(\FRAME_MATCHER.i [8]), .CO(n26074));
    SB_LUT4 i1_2_lut_adj_1237 (.I0(n27185), .I1(\data_in_frame[8] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n30481));
    defparam i1_2_lut_adj_1237.LUT_INIT = 16'h6666;
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_9_lut  (.I0(n35140), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [7]), .I3(n26072), .O(n13295)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_9_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 select_442_Select_38_i2_4_lut (.I0(\data_out_frame[4] [6]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(ID[6]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), .O(n2_adj_4248));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_38_i2_4_lut.LUT_INIT = 16'hc088;
    SB_DFF neopxl_color_i0_i20 (.Q(neopxl_color[20]), .C(clk16MHz), .D(n14625));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1238 (.I0(\FRAME_MATCHER.i[0] ), .I1(\FRAME_MATCHER.i [2]), 
            .I2(\FRAME_MATCHER.i [1]), .I3(n21178), .O(n29968));
    defparam i1_2_lut_3_lut_4_lut_adj_1238.LUT_INIT = 16'hefff;
    SB_LUT4 select_442_Select_37_i2_4_lut (.I0(\data_out_frame[4] [5]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(ID[5]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), .O(n2_adj_4247));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_37_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_2_lut_adj_1239 (.I0(\data_in_frame[4][7] ), .I1(n30052), 
            .I2(GND_net), .I3(GND_net), .O(n12029));   // verilog/coms.v(88[17:70])
    defparam i1_2_lut_adj_1239.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_adj_1240 (.I0(\data_in_frame[5] [1]), .I1(\data_in_frame[3] [1]), 
            .I2(\data_in_frame[5] [2]), .I3(GND_net), .O(n30126));   // verilog/coms.v(88[17:70])
    defparam i2_3_lut_adj_1240.LUT_INIT = 16'h9696;
    SB_DFFS \FRAME_MATCHER.state_FSM_i9  (.Q(\FRAME_MATCHER.i_31__N_2377 ), 
            .C(clk16MHz), .D(n37176), .S(reset));   // verilog/coms.v(148[4] 304[11])
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_9  (.CI(n26072), .I0(n37045), .I1(\FRAME_MATCHER.i [7]), 
            .CO(n26073));
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_8_lut  (.I0(n35139), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [6]), .I3(n26071), .O(n13297)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_8_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 select_442_Select_36_i2_4_lut (.I0(\data_out_frame[4] [4]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(ID[4]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), .O(n2_adj_4246));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_36_i2_4_lut.LUT_INIT = 16'hc088;
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_8  (.CI(n26071), .I0(n37045), .I1(\FRAME_MATCHER.i [6]), 
            .CO(n26072));
    SB_LUT4 i1_4_lut_adj_1241 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[4] [3]), 
            .I2(ID[3]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), .O(n2_adj_4245));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1241.LUT_INIT = 16'ha088;
    SB_LUT4 i3_4_lut_adj_1242 (.I0(\data_in_frame[7] [3]), .I1(n30126), 
            .I2(n12029), .I3(n11603), .O(n26732));   // verilog/coms.v(88[17:70])
    defparam i3_4_lut_adj_1242.LUT_INIT = 16'h6996;
    SB_LUT4 i1_3_lut_adj_1243 (.I0(n27373), .I1(n26619), .I2(n27363), 
            .I3(GND_net), .O(n30173));
    defparam i1_3_lut_adj_1243.LUT_INIT = 16'h6969;
    SB_LUT4 i3_4_lut_adj_1244 (.I0(\data_in_frame[21] [3]), .I1(\data_in_frame[21] [2]), 
            .I2(n27363), .I3(\data_in_frame[23] [4]), .O(n31471));
    defparam i3_4_lut_adj_1244.LUT_INIT = 16'h6996;
    SB_LUT4 select_442_Select_34_i2_4_lut (.I0(\data_out_frame[4] [2]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(ID[2]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), .O(n2_adj_4244));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_34_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_442_Select_33_i2_4_lut (.I0(\data_out_frame[4] [1]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(ID[1]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), .O(n2_adj_4243));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_33_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i2_4_lut_adj_1245 (.I0(\data_in_frame[21] [1]), .I1(n30321), 
            .I2(\data_in_frame[21] [2]), .I3(\data_in_frame[23] [3]), .O(n32103));
    defparam i2_4_lut_adj_1245.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1246 (.I0(\FRAME_MATCHER.i[3] ), .I1(\FRAME_MATCHER.i [4]), 
            .I2(\FRAME_MATCHER.i [5]), .I3(n29968), .O(n136));
    defparam i1_2_lut_3_lut_4_lut_adj_1246.LUT_INIT = 16'hfffd;
    SB_LUT4 i1_4_lut_adj_1247 (.I0(n31471), .I1(\data_in_frame[22] [6]), 
            .I2(n31910), .I3(n26695), .O(n33257));
    defparam i1_4_lut_adj_1247.LUT_INIT = 16'h0104;
    SB_LUT4 i1_4_lut_adj_1248 (.I0(\data_in_frame[20] [3]), .I1(n33257), 
            .I2(n8_adj_4134), .I3(n30379), .O(n33259));
    defparam i1_4_lut_adj_1248.LUT_INIT = 16'h4884;
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_7_lut  (.I0(n35136), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [5]), .I3(n26070), .O(n13299)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_7_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 i2_3_lut_adj_1249 (.I0(\data_in_frame[22] [5]), .I1(n30200), 
            .I2(\data_in_frame[20] [4]), .I3(GND_net), .O(n31562));
    defparam i2_3_lut_adj_1249.LUT_INIT = 16'h9696;
    SB_LUT4 i29092_4_lut (.I0(n32103), .I1(\data_in_frame[21] [1]), .I2(\data_in_frame[23] [2]), 
            .I3(n27373), .O(n33485));
    defparam i29092_4_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 i2_3_lut_adj_1250 (.I0(\data_in_frame[22] [0]), .I1(n30185), 
            .I2(\data_in_frame[21] [7]), .I3(GND_net), .O(n31497));   // verilog/coms.v(88[17:28])
    defparam i2_3_lut_adj_1250.LUT_INIT = 16'h9696;
    SB_LUT4 i2_3_lut_adj_1251 (.I0(n30073), .I1(n30368), .I2(\data_in_frame[22] [1]), 
            .I3(GND_net), .O(n31447));
    defparam i2_3_lut_adj_1251.LUT_INIT = 16'h9696;
    SB_LUT4 i1_4_lut_adj_1252 (.I0(n31497), .I1(n33485), .I2(n31562), 
            .I3(n33259), .O(n33267));
    defparam i1_4_lut_adj_1252.LUT_INIT = 16'h2000;
    SB_LUT4 select_442_Select_32_i2_4_lut (.I0(\data_out_frame[4] [0]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(ID[0]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), .O(n2_adj_4242));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_32_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i3_4_lut_adj_1253 (.I0(\data_in_frame[23] [5]), .I1(n26676), 
            .I2(n30234), .I3(\data_in_frame[21] [3]), .O(n31694));
    defparam i3_4_lut_adj_1253.LUT_INIT = 16'h9669;
    SB_LUT4 i3_4_lut_adj_1254 (.I0(n26558), .I1(n30154), .I2(n26676), 
            .I3(\data_in_frame[23] [6]), .O(n31454));
    defparam i3_4_lut_adj_1254.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1255 (.I0(n31454), .I1(n31694), .I2(n33267), 
            .I3(n31447), .O(n33273));
    defparam i1_4_lut_adj_1255.LUT_INIT = 16'h0080;
    SB_LUT4 i1_3_lut_adj_1256 (.I0(\data_in_frame[21] [6]), .I1(\data_in_frame[19] [5]), 
            .I2(n30279), .I3(GND_net), .O(n5_adj_4304));
    defparam i1_3_lut_adj_1256.LUT_INIT = 16'h6969;
    SB_LUT4 select_442_Select_31_i2_3_lut (.I0(\data_out_frame[3][7] ), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n2_adj_4241));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_31_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 select_442_Select_30_i2_3_lut (.I0(\data_out_frame[3][6] ), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n2_adj_4240));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_30_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_7  (.CI(n26070), .I0(n37045), .I1(\FRAME_MATCHER.i [5]), 
            .CO(n26071));
    SB_LUT4 select_442_Select_28_i2_3_lut (.I0(\data_out_frame[3][4] ), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n2_adj_4239));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_28_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i1_2_lut_4_lut_adj_1257 (.I0(\data_in_frame[18][3] ), .I1(\data_in_frame[16] [1]), 
            .I2(n10_adj_4305), .I3(\data_in_frame[16] [2]), .O(n27490));
    defparam i1_2_lut_4_lut_adj_1257.LUT_INIT = 16'h6996;
    SB_LUT4 select_442_Select_27_i2_3_lut (.I0(\data_out_frame[3][3] ), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n2_adj_4238));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_27_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 select_442_Select_25_i2_3_lut (.I0(\data_out_frame[3][1] ), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n2_adj_4237));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_25_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 select_442_Select_15_i2_3_lut (.I0(\data_out_frame[1][7] ), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n2_adj_4236));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_15_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i3_2_lut_4_lut (.I0(n26810), .I1(\data_in_frame[9] [3]), .I2(\data_in_frame[9] [4]), 
            .I3(n26732), .O(n10_adj_4306));
    defparam i3_2_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i8_3_lut_4_lut (.I0(\data_in_frame[8] [3]), .I1(n27185), .I2(\data_in_frame[8] [1]), 
            .I3(\data_in_frame[6] [3]), .O(n23_c));
    defparam i8_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 select_442_Select_14_i2_3_lut (.I0(\data_out_frame[1][6] ), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n2_adj_4234));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_14_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_6_lut  (.I0(n35135), .I1(n37045), 
            .I2(\FRAME_MATCHER.i [4]), .I3(n26069), .O(n13301)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_6_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 i11256_3_lut_4_lut (.I0(n8_adj_4137), .I1(n29699), .I2(rx_data[7]), 
            .I3(\data_in_frame[16] [7]), .O(n15244));
    defparam i11256_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_6  (.CI(n26069), .I0(n37045), .I1(\FRAME_MATCHER.i [4]), 
            .CO(n26070));
    SB_DFFR \FRAME_MATCHER.state_FSM_i8  (.Q(\FRAME_MATCHER.i_31__N_2378 ), 
            .C(clk16MHz), .D(n12980), .R(reset));   // verilog/coms.v(148[4] 304[11])
    SB_DFFR \FRAME_MATCHER.state_FSM_i7  (.Q(\FRAME_MATCHER.i_31__N_2379 ), 
            .C(clk16MHz), .D(n776), .R(reset));   // verilog/coms.v(148[4] 304[11])
    SB_DFFR \FRAME_MATCHER.state_FSM_i6  (.Q(\FRAME_MATCHER.state[3] ), .C(clk16MHz), 
            .D(n777), .R(reset));   // verilog/coms.v(148[4] 304[11])
    SB_DFFR \FRAME_MATCHER.state_FSM_i5  (.Q(\FRAME_MATCHER.i_31__N_2381 ), 
            .C(clk16MHz), .D(n6838), .R(reset));   // verilog/coms.v(148[4] 304[11])
    SB_DFFR \FRAME_MATCHER.state_FSM_i4  (.Q(\FRAME_MATCHER.i_31__N_2382 ), 
            .C(clk16MHz), .D(n29289), .R(reset));   // verilog/coms.v(148[4] 304[11])
    SB_DFFR \FRAME_MATCHER.state_FSM_i3  (.Q(\FRAME_MATCHER.i_31__N_2383 ), 
            .C(clk16MHz), .D(n788), .R(reset));   // verilog/coms.v(148[4] 304[11])
    SB_DFFR \FRAME_MATCHER.state_FSM_i2  (.Q(\FRAME_MATCHER.i_31__N_2384 ), 
            .C(clk16MHz), .D(n12356), .R(reset));   // verilog/coms.v(148[4] 304[11])
    SB_LUT4 i5_4_lut_adj_1258 (.I0(n30197), .I1(n30368), .I2(\data_in_frame[20] [0]), 
            .I3(\data_in_frame[22] [2]), .O(n12_adj_4307));
    defparam i5_4_lut_adj_1258.LUT_INIT = 16'h6996;
    SB_LUT4 i4_4_lut_adj_1259 (.I0(n30436), .I1(\data_in_frame[19][7] ), 
            .I2(\data_in_frame[22] [3]), .I3(n30475), .O(n10_adj_4308));
    defparam i4_4_lut_adj_1259.LUT_INIT = 16'h6996;
    SB_LUT4 \FRAME_MATCHER.i_1113_add_4_5_lut  (.I0(n35134), .I1(n37045), 
            .I2(\FRAME_MATCHER.i[3] ), .I3(n26068), .O(n13303)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1113_add_4_5_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 i1_4_lut_adj_1260 (.I0(n5_adj_4304), .I1(n33273), .I2(n30154), 
            .I3(\data_in_frame[23] [7]), .O(n33275));
    defparam i1_4_lut_adj_1260.LUT_INIT = 16'h4884;
    SB_DFFESS byte_transmit_counter_i0_i0 (.Q(\byte_transmit_counter[0] ), 
            .C(clk16MHz), .E(n1450), .D(n1_adj_4157), .S(n29897));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1261 (.I0(\data_in_frame[23] [1]), .I1(n26619), 
            .I2(GND_net), .I3(GND_net), .O(n5_adj_4309));
    defparam i1_2_lut_adj_1261.LUT_INIT = 16'h6666;
    SB_CARRY \FRAME_MATCHER.i_1113_add_4_5  (.CI(n26068), .I0(n37045), .I1(\FRAME_MATCHER.i[3] ), 
            .CO(n26069));
    SB_LUT4 i19943_4_lut (.I0(n33249), .I1(n31895), .I2(\state[0] ), .I3(\neo_pixel_transmitter.done ), 
            .O(n33483));   // verilog/neopixel.v(27[7:11])
    defparam i19943_4_lut.LUT_INIT = 16'hacca;
    SB_DFFER setpoint_i0_i0 (.Q(setpoint[0]), .C(clk16MHz), .E(n12991), 
            .D(n2743[0]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_3_lut_adj_1262 (.I0(\data_in_frame[1] [7]), .I1(\data_in_frame[0] [0]), 
            .I2(Kp_23__N_618), .I3(GND_net), .O(n27076));   // verilog/coms.v(73[16:69])
    defparam i1_2_lut_3_lut_adj_1262.LUT_INIT = 16'h9696;
    SB_LUT4 i16774_3_lut (.I0(neopxl_color[2]), .I1(\data_in_frame[6]_c [2]), 
            .I2(n8291), .I3(GND_net), .O(n14737));
    defparam i16774_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3_4_lut_adj_1263 (.I0(Kp_23__N_642), .I1(n30101), .I2(\data_in_frame[4][3] ), 
            .I3(\data_in_frame[4][2] ), .O(Kp_23__N_745));   // verilog/coms.v(76[16:42])
    defparam i3_4_lut_adj_1263.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1264 (.I0(\data_in_frame[2][0] ), .I1(n3_adj_4180), 
            .I2(GND_net), .I3(GND_net), .O(n30101));   // verilog/coms.v(76[16:42])
    defparam i1_2_lut_adj_1264.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1265 (.I0(\data_in_frame[10]_c [5]), .I1(n11848), 
            .I2(GND_net), .I3(GND_net), .O(n30207));   // verilog/coms.v(74[16:27])
    defparam i1_2_lut_adj_1265.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_3_lut_adj_1266 (.I0(n27349), .I1(\data_in_frame[18][7] ), 
            .I2(\data_in_frame[18]_c [4]), .I3(GND_net), .O(n6_adj_4310));
    defparam i1_2_lut_3_lut_adj_1266.LUT_INIT = 16'h9696;
    SB_LUT4 i26_4_lut (.I0(n35205), .I1(\state[1] ), .I2(n40), .I3(GND_net), 
            .O(n12));   // verilog/neopixel.v(16[11:16])
    defparam i26_4_lut.LUT_INIT = 16'h7474;
    SB_LUT4 i1_4_lut_adj_1267 (.I0(n11459), .I1(n11267), .I2(n30270), 
            .I3(\data_in_frame[17][2] ), .O(n33359));
    defparam i1_4_lut_adj_1267.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1268 (.I0(n30318), .I1(n11256), .I2(n30207), 
            .I3(n33347), .O(n33353));
    defparam i1_4_lut_adj_1268.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1269 (.I0(n27382), .I1(n33353), .I2(n33359), 
            .I3(n30421), .O(n27142));
    defparam i1_4_lut_adj_1269.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1270 (.I0(\data_in_frame[19][3] ), .I1(n30151), 
            .I2(n30188), .I3(n33439), .O(n26638));
    defparam i1_4_lut_adj_1270.LUT_INIT = 16'h9669;
    SB_LUT4 i2_3_lut_adj_1271 (.I0(n30232), .I1(n26638), .I2(\data_in_frame[21] [4]), 
            .I3(GND_net), .O(n26676));
    defparam i2_3_lut_adj_1271.LUT_INIT = 16'h9696;
    SB_LUT4 i1_3_lut_adj_1272 (.I0(\data_in_frame[19] [4]), .I1(n31615), 
            .I2(n27142), .I3(GND_net), .O(n26558));
    defparam i1_3_lut_adj_1272.LUT_INIT = 16'h9696;
    SB_LUT4 i2_4_lut_adj_1273 (.I0(\data_in_frame[15]_c [1]), .I1(\data_in_frame[13] [5]), 
            .I2(n11386), .I3(n4_adj_4313), .O(n30241));
    defparam i2_4_lut_adj_1273.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1274 (.I0(n11386), .I1(n26810), .I2(GND_net), 
            .I3(GND_net), .O(n30318));
    defparam i1_2_lut_adj_1274.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1275 (.I0(n27403), .I1(n30421), .I2(GND_net), 
            .I3(GND_net), .O(n6_adj_4314));
    defparam i1_2_lut_adj_1275.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut_adj_1276 (.I0(\data_in_frame[17][3] ), .I1(n27380), 
            .I2(n30241), .I3(n6_adj_4314), .O(n31615));
    defparam i4_4_lut_adj_1276.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1277 (.I0(n11256), .I1(\data_in_frame[13] [2]), 
            .I2(GND_net), .I3(GND_net), .O(n30445));
    defparam i1_2_lut_adj_1277.LUT_INIT = 16'h6666;
    SB_LUT4 i5_4_lut_adj_1278 (.I0(n30301), .I1(n30445), .I2(n26728), 
            .I3(\data_in_frame[15] [2]), .O(n12_adj_4315));
    defparam i5_4_lut_adj_1278.LUT_INIT = 16'h6996;
    SB_LUT4 i6_4_lut_adj_1279 (.I0(n11459), .I1(n12_adj_4315), .I2(n30454), 
            .I3(\data_in_frame[13] [0]), .O(n27403));
    defparam i6_4_lut_adj_1279.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_1280 (.I0(\data_in_frame[15] [5]), .I1(n27380), 
            .I2(n27447), .I3(GND_net), .O(n11187));
    defparam i2_3_lut_adj_1280.LUT_INIT = 16'h6969;
    SB_LUT4 i2_2_lut_3_lut_adj_1281 (.I0(n11356), .I1(\data_in_frame[10] [6]), 
            .I2(n26728), .I3(GND_net), .O(n6_adj_4316));
    defparam i2_2_lut_3_lut_adj_1281.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_adj_1282 (.I0(\data_in_frame[17][7] ), .I1(\data_in_frame[17][6] ), 
            .I2(n27447), .I3(GND_net), .O(n30436));
    defparam i1_2_lut_3_lut_adj_1282.LUT_INIT = 16'h6969;
    SB_LUT4 i1_2_lut_4_lut_adj_1283 (.I0(\data_in_frame[15] [5]), .I1(n27380), 
            .I2(n27447), .I3(\data_in_frame[17][6] ), .O(n30368));
    defparam i1_2_lut_4_lut_adj_1283.LUT_INIT = 16'h9669;
    SB_LUT4 i1_3_lut_4_lut_adj_1284 (.I0(\data_in_frame[14] [7]), .I1(n11904), 
            .I2(n11386), .I3(n26810), .O(n30421));
    defparam i1_3_lut_4_lut_adj_1284.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_adj_1285 (.I0(\data_in_frame[10] [6]), .I1(n26728), 
            .I2(GND_net), .I3(GND_net), .O(n30324));
    defparam i1_2_lut_adj_1285.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_1286 (.I0(n11386), .I1(n30104), .I2(n11119), 
            .I3(n11877), .O(n11874));
    defparam i3_4_lut_adj_1286.LUT_INIT = 16'h6996;
    SB_LUT4 i1_3_lut_4_lut_adj_1287 (.I0(n11367), .I1(n26683), .I2(\data_in_frame[13] [7]), 
            .I3(\data_in_frame[13] [6]), .O(n4_adj_4313));   // verilog/coms.v(78[16:43])
    defparam i1_3_lut_4_lut_adj_1287.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_adj_1288 (.I0(\data_in_frame[17][7] ), .I1(\data_in_frame[15] [5]), 
            .I2(GND_net), .I3(GND_net), .O(n30107));
    defparam i1_2_lut_adj_1288.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_1289 (.I0(\data_in_frame[8] [6]), .I1(n11201), 
            .I2(n11738), .I3(\data_in_frame[11] [2]), .O(n30026));   // verilog/coms.v(78[16:43])
    defparam i3_4_lut_adj_1289.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_4_lut_adj_1290 (.I0(n11356), .I1(\data_in_frame[10]_c [5]), 
            .I2(n11848), .I3(\data_in_frame[12] [4]), .O(n11267));   // verilog/coms.v(74[16:27])
    defparam i2_3_lut_4_lut_adj_1290.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_1291 (.I0(n7_adj_4210), .I1(\data_in_frame[10] [7]), 
            .I2(\data_in_frame[11] [0]), .I3(GND_net), .O(n30454));   // verilog/coms.v(74[16:27])
    defparam i2_3_lut_adj_1291.LUT_INIT = 16'h9696;
    SB_LUT4 i2_3_lut_4_lut_adj_1292 (.I0(\data_in_frame[6][1] ), .I1(\data_in_frame[6] [3]), 
            .I2(\data_in_frame[6]_c [2]), .I3(\data_in_frame[6] [5]), .O(n30350));   // verilog/coms.v(88[17:28])
    defparam i2_3_lut_4_lut_adj_1292.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_4_lut_adj_1293 (.I0(\one_wire_N_380[10] ), .I1(\one_wire_N_380[8] ), 
            .I2(\one_wire_N_380[9] ), .I3(n29971), .O(n82));   // verilog/neopixel.v(104[14:39])
    defparam i1_2_lut_4_lut_adj_1293.LUT_INIT = 16'hffa8;
    SB_LUT4 i1_2_lut_3_lut_adj_1294 (.I0(\data_in_frame[11] [7]), .I1(\data_in_frame[9] [1]), 
            .I2(\data_in_frame[9] [2]), .I3(GND_net), .O(n30166));
    defparam i1_2_lut_3_lut_adj_1294.LUT_INIT = 16'h9696;
    SB_LUT4 i3_4_lut_adj_1295 (.I0(n26728), .I1(n6_adj_4316), .I2(n30454), 
            .I3(n30026), .O(n31770));
    defparam i3_4_lut_adj_1295.LUT_INIT = 16'h9669;
    SB_LUT4 i1_4_lut_adj_1296 (.I0(\data_in_frame[15] [4]), .I1(\data_in_frame[13] [3]), 
            .I2(\data_in_frame[13] [2]), .I3(n31770), .O(n27447));
    defparam i1_4_lut_adj_1296.LUT_INIT = 16'h9669;
    SB_LUT4 i2_3_lut_adj_1297 (.I0(\data_in_frame[17][5] ), .I1(n26562), 
            .I2(n27447), .I3(GND_net), .O(n27399));
    defparam i2_3_lut_adj_1297.LUT_INIT = 16'h6969;
    SB_LUT4 i1_3_lut_3_lut (.I0(\FRAME_MATCHER.i_31__N_2383 ), .I1(reset), 
            .I2(LED_N_3278), .I3(GND_net), .O(n8291));
    defparam i1_3_lut_3_lut.LUT_INIT = 16'h2020;
    SB_LUT4 i6_4_lut_adj_1298 (.I0(n31795), .I1(n12_adj_4307), .I2(n30475), 
            .I3(\data_in_frame[20] [1]), .O(n31892));
    defparam i6_4_lut_adj_1298.LUT_INIT = 16'h9669;
    SB_LUT4 i1_4_lut_adj_1299 (.I0(n5_adj_4309), .I1(n33275), .I2(n30321), 
            .I3(n30234), .O(n33277));
    defparam i1_4_lut_adj_1299.LUT_INIT = 16'h4884;
    SB_LUT4 i1_4_lut_adj_1300 (.I0(n27420), .I1(n27399), .I2(n32146), 
            .I3(\data_in_frame[18][0] ), .O(n7_adj_4317));
    defparam i1_4_lut_adj_1300.LUT_INIT = 16'h9669;
    SB_LUT4 i5_4_lut_adj_1301 (.I0(n32146), .I1(n7_adj_4317), .I2(n9324), 
            .I3(n8_adj_4318), .O(n30475));
    defparam i5_4_lut_adj_1301.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_adj_1302 (.I0(n30418), .I1(\data_in_frame[13] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n4_adj_4319));
    defparam i1_2_lut_adj_1302.LUT_INIT = 16'h6666;
    SB_LUT4 i27_3_lut (.I0(\data_out_frame[1][0] ), .I1(\data_out_frame[5] [0]), 
            .I2(byte_transmit_counter[2]), .I3(GND_net), .O(n10_adj_4320));   // verilog/coms.v(109[34:55])
    defparam i27_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31431_2_lut (.I0(\data_out_frame[4] [0]), .I1(byte_transmit_counter[2]), 
            .I2(GND_net), .I3(GND_net), .O(n35265));   // verilog/coms.v(109[34:55])
    defparam i31431_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i31147_4_lut (.I0(n35265), .I1(\byte_transmit_counter[1] ), 
            .I2(n10_adj_4320), .I3(\byte_transmit_counter[0] ), .O(n35183));
    defparam i31147_4_lut.LUT_INIT = 16'h3022;
    SB_LUT4 i1_2_lut_adj_1303 (.I0(\data_in_frame[18][7] ), .I1(\data_in_frame[18]_c [4]), 
            .I2(GND_net), .I3(GND_net), .O(n11312));   // verilog/coms.v(81[16:27])
    defparam i1_2_lut_adj_1303.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_adj_1304 (.I0(n31639), .I1(\data_in_frame[16] [5]), 
            .I2(n11772), .I3(GND_net), .O(n30344));
    defparam i2_3_lut_adj_1304.LUT_INIT = 16'h6969;
    SB_LUT4 i31062_2_lut (.I0(\data_out_frame[14] [0]), .I1(\byte_transmit_counter[0] ), 
            .I2(GND_net), .I3(GND_net), .O(n35121));   // verilog/coms.v(109[34:55])
    defparam i31062_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_0_i11_3_lut (.I0(\data_out_frame[12] [0]), 
            .I1(\data_out_frame[13] [0]), .I2(\byte_transmit_counter[0] ), 
            .I3(GND_net), .O(n11_adj_4321));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_0_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31437_4_lut (.I0(n11_adj_4321), .I1(byte_transmit_counter[2]), 
            .I2(n35121), .I3(\byte_transmit_counter[1] ), .O(n35184));
    defparam i31437_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i30881_2_lut (.I0(n37146), .I1(byte_transmit_counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n35149));
    defparam i30881_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31099_2_lut (.I0(\data_out_frame[23] [0]), .I1(n13490), .I2(GND_net), 
            .I3(GND_net), .O(n35148));
    defparam i31099_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i5_4_lut_adj_1305 (.I0(\data_in_frame[20] [1]), .I1(n10_adj_4308), 
            .I2(\data_in_frame[18][1] ), .I3(n30379), .O(n31899));
    defparam i5_4_lut_adj_1305.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1306 (.I0(n27490), .I1(n30403), .I2(\data_in_frame[20] [5]), 
            .I3(\data_in_frame[22] [7]), .O(n33433));
    defparam i1_4_lut_adj_1306.LUT_INIT = 16'h9669;
    SB_LUT4 i6_4_lut_adj_1307 (.I0(\data_in_frame[17][1] ), .I1(n30267), 
            .I2(n30433), .I3(n11356), .O(n14_adj_4322));
    defparam i6_4_lut_adj_1307.LUT_INIT = 16'h6996;
    SB_LUT4 i7_4_lut (.I0(\data_in_frame[19][2] ), .I1(n14_adj_4322), .I2(n10_adj_4219), 
            .I3(n30490), .O(n30232));
    defparam i7_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i6_4_lut_adj_1308 (.I0(\data_in_frame[18][7] ), .I1(n30045), 
            .I2(\data_in_frame[14] [6]), .I3(\data_in_frame[14] [5]), .O(n15));
    defparam i6_4_lut_adj_1308.LUT_INIT = 16'h6996;
    SB_LUT4 i8_4_lut (.I0(n15), .I1(n30344), .I2(n14_adj_4323), .I3(n27382), 
            .O(n26595));
    defparam i8_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1309 (.I0(n26595), .I1(n30232), .I2(GND_net), 
            .I3(GND_net), .O(n30234));
    defparam i1_2_lut_adj_1309.LUT_INIT = 16'h6666;
    SB_LUT4 i11408_3_lut_4_lut (.I0(n8_adj_4299), .I1(n29699), .I2(rx_data[0]), 
            .I3(\data_in_frame[22] [0]), .O(n15396));
    defparam i11408_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i4_4_lut_adj_1310 (.I0(n30023), .I1(\data_in_frame[20] [7]), 
            .I2(n30344), .I3(n6_adj_4310), .O(n30321));
    defparam i4_4_lut_adj_1310.LUT_INIT = 16'h6996;
    SB_LUT4 select_442_Select_13_i2_3_lut (.I0(\data_out_frame[1][5] ), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n2_adj_4208));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_13_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i2_3_lut_adj_1311 (.I0(n30347), .I1(\data_in_frame[20] [2]), 
            .I2(\data_in_frame[18][0] ), .I3(GND_net), .O(n30379));   // verilog/coms.v(78[16:43])
    defparam i2_3_lut_adj_1311.LUT_INIT = 16'h9696;
    SB_LUT4 select_442_Select_11_i2_3_lut (.I0(\data_out_frame[1][3] ), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n2_adj_4207));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_11_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 select_442_Select_9_i2_3_lut (.I0(\data_out_frame[1][1] ), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n2_adj_4205));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_9_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 data_in_frame_13__7__I_0_2_lut (.I0(\data_in_frame[13] [7]), .I1(\data_in_frame[13] [6]), 
            .I2(GND_net), .I3(GND_net), .O(Kp_23__N_1141));   // verilog/coms.v(88[17:28])
    defparam data_in_frame_13__7__I_0_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 select_442_Select_8_i2_3_lut (.I0(\data_out_frame[1][0] ), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n2_adj_4204));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_8_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i1_2_lut_adj_1312 (.I0(n11256), .I1(n11356), .I2(GND_net), 
            .I3(GND_net), .O(Kp_23__N_937));   // verilog/coms.v(79[16:43])
    defparam i1_2_lut_adj_1312.LUT_INIT = 16'h6666;
    SB_LUT4 select_442_Select_4_i2_3_lut (.I0(\data_out_frame[0][4] ), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n2_adj_4203));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_4_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i1_2_lut_adj_1313 (.I0(n11848), .I1(\data_in_frame[8] [7]), 
            .I2(GND_net), .I3(GND_net), .O(n33287));
    defparam i1_2_lut_adj_1313.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_1314 (.I0(n11698), .I1(n4_c), .I2(Kp_23__N_863), 
            .I3(n33287), .O(n33293));
    defparam i1_4_lut_adj_1314.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1315 (.I0(n27185), .I1(n11785), .I2(n11181), 
            .I3(GND_net), .O(n27451));
    defparam i1_2_lut_3_lut_adj_1315.LUT_INIT = 16'h9696;
    SB_LUT4 i1_4_lut_adj_1316 (.I0(n26732), .I1(n33293), .I2(Kp_23__N_937), 
            .I3(n7_adj_4210), .O(n33299));
    defparam i1_4_lut_adj_1316.LUT_INIT = 16'h6996;
    SB_LUT4 select_442_Select_3_i2_3_lut (.I0(\data_out_frame[0][3] ), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n2_adj_4202));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_3_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i1_4_lut_adj_1317 (.I0(n30256), .I1(n26667), .I2(n33299), 
            .I3(n12116), .O(n31804));
    defparam i1_4_lut_adj_1317.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1318 (.I0(n11907), .I1(n31591), .I2(GND_net), 
            .I3(GND_net), .O(n27382));
    defparam i1_2_lut_adj_1318.LUT_INIT = 16'h9999;
    SB_LUT4 i1_4_lut_adj_1319 (.I0(n31804), .I1(n27453), .I2(\data_in_frame[10] [7]), 
            .I3(\data_in_frame[11] [1]), .O(n30406));
    defparam i1_4_lut_adj_1319.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1320 (.I0(\data_in_frame[0] [6]), .I1(\data_in_frame[0]_c [7]), 
            .I2(GND_net), .I3(GND_net), .O(n30070));   // verilog/coms.v(73[16:27])
    defparam i1_2_lut_adj_1320.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_1321 (.I0(\data_in_frame[0] [4]), .I1(n30070), 
            .I2(n30039), .I3(n30006), .O(Kp_23__N_618));   // verilog/coms.v(73[16:27])
    defparam i3_4_lut_adj_1321.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1322 (.I0(\data_in_frame[11] [6]), .I1(n9413), 
            .I2(GND_net), .I3(GND_net), .O(n30104));
    defparam i1_2_lut_adj_1322.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1323 (.I0(\data_in_frame[0] [0]), .I1(Kp_23__N_618), 
            .I2(GND_net), .I3(GND_net), .O(n30084));   // verilog/coms.v(73[16:69])
    defparam i1_2_lut_adj_1323.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_3_lut_adj_1324 (.I0(\data_in_frame[1] [5]), .I1(\data_in_frame[3] [6]), 
            .I2(\data_in_frame[5] [7]), .I3(GND_net), .O(n30147));   // verilog/coms.v(79[16:43])
    defparam i1_2_lut_3_lut_adj_1324.LUT_INIT = 16'h9696;
    SB_LUT4 equal_1107_i10_2_lut (.I0(\data_in_frame[0]_c [7]), .I1(\data_in_frame[1] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n10_adj_4324));   // verilog/coms.v(169[9:87])
    defparam equal_1107_i10_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1325 (.I0(\data_in_frame[12][0] ), .I1(n26732), 
            .I2(GND_net), .I3(GND_net), .O(n30412));
    defparam i1_2_lut_adj_1325.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_adj_1326 (.I0(\data_in_frame[1] [0]), .I1(\data_in_frame[0] [6]), 
            .I2(\data_in_frame[0]_c [7]), .I3(GND_net), .O(n27104));   // verilog/coms.v(73[16:27])
    defparam i1_3_lut_adj_1326.LUT_INIT = 16'h9696;
    SB_LUT4 i3_3_lut_adj_1327 (.I0(Kp_23__N_618), .I1(n5_adj_4325), .I2(\data_in_frame[2][1] ), 
            .I3(GND_net), .O(n16_adj_4326));
    defparam i3_3_lut_adj_1327.LUT_INIT = 16'h1212;
    SB_LUT4 i9_4_lut_adj_1328 (.I0(n27104), .I1(n31910), .I2(n27076), 
            .I3(n6_adj_4182), .O(n22_adj_4327));
    defparam i9_4_lut_adj_1328.LUT_INIT = 16'h0020;
    SB_LUT4 i1_2_lut_adj_1329 (.I0(\data_in_frame[12][6] ), .I1(\data_in_frame[12][7] ), 
            .I2(GND_net), .I3(GND_net), .O(n30301));
    defparam i1_2_lut_adj_1329.LUT_INIT = 16'h6666;
    SB_LUT4 i7_4_lut_adj_1330 (.I0(\data_in_frame[2][0] ), .I1(n10_adj_4324), 
            .I2(n30084), .I3(\data_in_frame[1] [2]), .O(n20));
    defparam i7_4_lut_adj_1330.LUT_INIT = 16'h2100;
    SB_LUT4 i1_4_lut_adj_1331 (.I0(\data_in_frame[11] [0]), .I1(\data_in_frame[11] [2]), 
            .I2(\data_in_frame[11] [4]), .I3(\data_in_frame[11] [3]), .O(n33313));
    defparam i1_4_lut_adj_1331.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1332 (.I0(\data_in_frame[23] [0]), .I1(n33277), 
            .I2(n30173), .I3(n31892), .O(n33281));
    defparam i1_4_lut_adj_1332.LUT_INIT = 16'h4800;
    SB_LUT4 i11_4_lut_adj_1333 (.I0(n3_adj_4180), .I1(n22_adj_4327), .I2(n16_adj_4326), 
            .I3(n11204), .O(n24));
    defparam i11_4_lut_adj_1333.LUT_INIT = 16'h0040;
    SB_LUT4 i1_4_lut_adj_1334 (.I0(\data_in_frame[12] [4]), .I1(\data_in_frame[12] [5]), 
            .I2(\data_in_frame[10] [6]), .I3(\data_in_frame[12][3] ), .O(n33315));
    defparam i1_4_lut_adj_1334.LUT_INIT = 16'h6996;
    SB_LUT4 i29142_4_lut (.I0(n11746), .I1(\data_in_frame[0] [6]), .I2(\data_in_frame[2][7] ), 
            .I3(\data_in_frame[0] [5]), .O(n33535));
    defparam i29142_4_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 i1_4_lut_adj_1335 (.I0(n30400), .I1(n33315), .I2(n30301), 
            .I3(n33313), .O(n33321));
    defparam i1_4_lut_adj_1335.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1336 (.I0(\data_in_frame[5] [0]), .I1(n11746), 
            .I2(n11204), .I3(GND_net), .O(n11718));   // verilog/coms.v(78[16:43])
    defparam i1_2_lut_3_lut_adj_1336.LUT_INIT = 16'h9696;
    SB_LUT4 i1_4_lut_adj_1337 (.I0(n30412), .I1(n30433), .I2(n11698), 
            .I3(n33321), .O(n33327));
    defparam i1_4_lut_adj_1337.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1338 (.I0(n30487), .I1(n30262), .I2(n33327), 
            .I3(n30104), .O(n33333));
    defparam i1_4_lut_adj_1338.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1339 (.I0(n27453), .I1(n30406), .I2(n27382), 
            .I3(n33333), .O(n26683));
    defparam i1_4_lut_adj_1339.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1340 (.I0(n33535), .I1(\data_in_frame[1] [5]), 
            .I2(n24), .I3(n20), .O(n6_adj_4328));
    defparam i1_4_lut_adj_1340.LUT_INIT = 16'h4000;
    SB_LUT4 i4_4_lut_adj_1341 (.I0(\data_in_frame[1] [4]), .I1(\data_in_frame[1] [6]), 
            .I2(\data_in_frame[1] [3]), .I3(n6_adj_4328), .O(\FRAME_MATCHER.state_31__N_2482 [3]));
    defparam i4_4_lut_adj_1341.LUT_INIT = 16'h8000;
    SB_LUT4 i2_3_lut_4_lut_adj_1342 (.I0(\data_in_frame[0] [5]), .I1(\data_in_frame[0] [3]), 
            .I2(\data_in_frame[2][6] ), .I3(\data_in_frame[2][5] ), .O(n30052));   // verilog/coms.v(169[9:87])
    defparam i2_3_lut_4_lut_adj_1342.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1343 (.I0(\data_in_frame[2][3] ), .I1(\data_in_frame[0] [1]), 
            .I2(\data_in_frame[0][2] ), .I3(GND_net), .O(n11746));   // verilog/coms.v(169[9:87])
    defparam i1_2_lut_3_lut_adj_1343.LUT_INIT = 16'h9696;
    SB_LUT4 i4_1_lut (.I0(reset), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n1450));   // verilog/coms.v(94[13:20])
    defparam i4_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 select_442_Select_2_i2_3_lut (.I0(\data_out_frame[0][2] ), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n2));   // verilog/coms.v(148[4] 304[11])
    defparam select_442_Select_2_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i1_2_lut_adj_1344 (.I0(\data_in_frame[13] [2]), .I1(n26683), 
            .I2(GND_net), .I3(GND_net), .O(n30158));
    defparam i1_2_lut_adj_1344.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1345 (.I0(n11785), .I1(n11181), .I2(GND_net), 
            .I3(GND_net), .O(n30219));
    defparam i1_2_lut_adj_1345.LUT_INIT = 16'h6666;
    SB_LUT4 i11_4_lut_adj_1346 (.I0(\data_in_frame[7] [7]), .I1(\data_in_frame[9] [6]), 
            .I2(\data_in_frame[8] [4]), .I3(\data_in_frame[8] [7]), .O(n26_adj_4329));
    defparam i11_4_lut_adj_1346.LUT_INIT = 16'h6996;
    SB_LUT4 i9_4_lut_adj_1347 (.I0(\data_in_frame[8] [6]), .I1(n30009), 
            .I2(\data_in_frame[1] [6]), .I3(\data_in_frame[8] [0]), .O(n24_adj_4330));
    defparam i9_4_lut_adj_1347.LUT_INIT = 16'h6996;
    SB_LUT4 i10_4_lut_adj_1348 (.I0(n11893), .I1(n30385), .I2(Kp_23__N_940), 
            .I3(\data_in_frame[8] [2]), .O(n25_adj_4331));
    defparam i10_4_lut_adj_1348.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_4_lut_adj_1349 (.I0(\data_in_frame[4][5] ), .I1(\data_in_frame[6] [7]), 
            .I2(\data_in_frame[7] [1]), .I3(n30359), .O(n11698));   // verilog/coms.v(73[16:27])
    defparam i1_2_lut_4_lut_adj_1349.LUT_INIT = 16'h6996;
    SB_LUT4 i14_4_lut_adj_1350 (.I0(n23_c), .I1(n25_adj_4331), .I2(n24_adj_4330), 
            .I3(n26_adj_4329), .O(n27337));
    defparam i14_4_lut_adj_1350.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1351 (.I0(n11868), .I1(n30158), .I2(Kp_23__N_1141), 
            .I3(\data_in_frame[13] [5]), .O(n26810));
    defparam i1_4_lut_adj_1351.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1352 (.I0(n33281), .I1(n33433), .I2(n31899), 
            .I3(n30173), .O(n23006));
    defparam i1_4_lut_adj_1352.LUT_INIT = 16'h0802;
    SB_LUT4 i5_4_lut_adj_1353 (.I0(n30158), .I1(n10_adj_4306), .I2(n11698), 
            .I3(n30394), .O(n12_adj_4332));
    defparam i5_4_lut_adj_1353.LUT_INIT = 16'h9669;
    SB_LUT4 i6_4_lut_adj_1354 (.I0(\data_in_frame[11] [5]), .I1(n12_adj_4332), 
            .I2(\data_in_frame[13] [7]), .I3(n11904), .O(n30418));
    defparam i6_4_lut_adj_1354.LUT_INIT = 16'h6996;
    SB_LUT4 i11411_3_lut_4_lut (.I0(n8_adj_4299), .I1(n29699), .I2(rx_data[1]), 
            .I3(\data_in_frame[22] [1]), .O(n15399));
    defparam i11411_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11414_3_lut_4_lut (.I0(n8_adj_4299), .I1(n29699), .I2(rx_data[2]), 
            .I3(\data_in_frame[22] [2]), .O(n15402));
    defparam i11414_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i6_4_lut_adj_1355 (.I0(n27337), .I1(\data_in_frame[14] [1]), 
            .I2(n30219), .I3(\data_in_frame[13] [7]), .O(n16_adj_4333));
    defparam i6_4_lut_adj_1355.LUT_INIT = 16'h9669;
    SB_LUT4 i7_4_lut_adj_1356 (.I0(\data_in_frame[11] [7]), .I1(n30094), 
            .I2(n30412), .I3(n11201), .O(n17));
    defparam i7_4_lut_adj_1356.LUT_INIT = 16'h6996;
    SB_LUT4 i9_4_lut_adj_1357 (.I0(n17), .I1(Kp_23__N_863), .I2(n16_adj_4333), 
            .I3(\data_in_frame[11] [5]), .O(n12125));
    defparam i9_4_lut_adj_1357.LUT_INIT = 16'h6996;
    SB_LUT4 i4_4_lut_adj_1358 (.I0(n30359), .I1(\data_in_frame[8] [7]), 
            .I2(\data_in_frame[11] [3]), .I3(n30472), .O(n10_adj_4334));   // verilog/coms.v(80[16:43])
    defparam i4_4_lut_adj_1358.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1359 (.I0(\data_in_frame[4][5] ), .I1(\data_in_frame[6] [7]), 
            .I2(\data_in_frame[7] [1]), .I3(GND_net), .O(n30062));   // verilog/coms.v(73[16:27])
    defparam i1_2_lut_3_lut_adj_1359.LUT_INIT = 16'h9696;
    SB_LUT4 i5_3_lut_adj_1360 (.I0(n30335), .I1(n10_adj_4334), .I2(n11689), 
            .I3(GND_net), .O(n11367));   // verilog/coms.v(80[16:43])
    defparam i5_3_lut_adj_1360.LUT_INIT = 16'h9696;
    SB_LUT4 i4_4_lut_adj_1361 (.I0(n11367), .I1(n11868), .I2(n12125), 
            .I3(n30418), .O(n10_adj_4305));
    defparam i4_4_lut_adj_1361.LUT_INIT = 16'h6996;
    SB_LUT4 i5_3_lut_adj_1362 (.I0(\data_in_frame[16] [1]), .I1(n10_adj_4305), 
            .I2(\data_in_frame[16] [2]), .I3(GND_net), .O(n27420));
    defparam i5_3_lut_adj_1362.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_4_lut_adj_1363 (.I0(\data_in_frame[5] [0]), .I1(n30013), 
            .I2(\data_in_frame[4][7] ), .I3(n30052), .O(n30359));   // verilog/coms.v(73[16:27])
    defparam i1_2_lut_4_lut_adj_1363.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_4_lut_adj_1364 (.I0(\FRAME_MATCHER.i[0] ), .I1(\FRAME_MATCHER.i[3] ), 
            .I2(n9), .I3(n172), .O(n117));
    defparam i2_3_lut_4_lut_adj_1364.LUT_INIT = 16'h0400;
    SB_LUT4 i2_3_lut_4_lut_adj_1365 (.I0(\FRAME_MATCHER.i [2]), .I1(\FRAME_MATCHER.i [1]), 
            .I2(n161), .I3(n1959), .O(n172));
    defparam i2_3_lut_4_lut_adj_1365.LUT_INIT = 16'h4000;
    SB_LUT4 i11417_3_lut_4_lut (.I0(n8_adj_4299), .I1(n29699), .I2(rx_data[3]), 
            .I3(\data_in_frame[22] [3]), .O(n15405));
    defparam i11417_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11420_3_lut_4_lut (.I0(n8_adj_4299), .I1(n29699), .I2(rx_data[4]), 
            .I3(\data_in_frame[22] [4]), .O(n15408));
    defparam i11420_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11424_3_lut_4_lut (.I0(n8_adj_4299), .I1(n29699), .I2(rx_data[5]), 
            .I3(\data_in_frame[22] [5]), .O(n15412));
    defparam i11424_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11437_3_lut_4_lut (.I0(n8_adj_4299), .I1(n29699), .I2(rx_data[6]), 
            .I3(\data_in_frame[22] [6]), .O(n15425));
    defparam i11437_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11440_3_lut_4_lut (.I0(n8_adj_4299), .I1(n29699), .I2(rx_data[7]), 
            .I3(\data_in_frame[22] [7]), .O(n15428));
    defparam i11440_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i26_3_lut (.I0(\data_out_frame[1][5] ), .I1(\data_out_frame[5] [5]), 
            .I2(byte_transmit_counter[2]), .I3(GND_net), .O(n12_adj_4335));   // verilog/coms.v(109[34:55])
    defparam i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31436_2_lut (.I0(\data_out_frame[4] [5]), .I1(byte_transmit_counter[2]), 
            .I2(GND_net), .I3(GND_net), .O(n35266));   // verilog/coms.v(109[34:55])
    defparam i31436_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i31158_4_lut (.I0(n35266), .I1(\byte_transmit_counter[1] ), 
            .I2(n12_adj_4335), .I3(\byte_transmit_counter[0] ), .O(n35193));
    defparam i31158_4_lut.LUT_INIT = 16'h3022;
    SB_LUT4 i31138_2_lut (.I0(\data_out_frame[14] [5]), .I1(\byte_transmit_counter[0] ), 
            .I2(GND_net), .I3(GND_net), .O(n35191));   // verilog/coms.v(109[34:55])
    defparam i31138_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_5_i11_3_lut (.I0(\data_out_frame[12] [5]), 
            .I1(\data_out_frame[13] [5]), .I2(\byte_transmit_counter[0] ), 
            .I3(GND_net), .O(n11_adj_4336));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_5_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31450_4_lut (.I0(n11_adj_4336), .I1(byte_transmit_counter[2]), 
            .I2(n35191), .I3(\byte_transmit_counter[1] ), .O(n35194));
    defparam i31450_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i30880_2_lut (.I0(n37098), .I1(byte_transmit_counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n35110));
    defparam i30880_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31045_2_lut (.I0(\data_out_frame[23] [5]), .I1(n13490), .I2(GND_net), 
            .I3(GND_net), .O(n35109));
    defparam i31045_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i11382_3_lut_4_lut (.I0(n8_adj_4301), .I1(n29699), .I2(rx_data[0]), 
            .I3(\data_in_frame[21] [0]), .O(n15370));
    defparam i11382_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_4_i4_3_lut (.I0(\data_out_frame[4] [4]), 
            .I1(\data_out_frame[5] [4]), .I2(\byte_transmit_counter[0] ), 
            .I3(GND_net), .O(n4_adj_4337));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_4_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_4_i3_4_lut (.I0(\data_out_frame[0][4] ), 
            .I1(\data_out_frame[3][4] ), .I2(\byte_transmit_counter[1] ), 
            .I3(\byte_transmit_counter[0] ), .O(n3_adj_4338));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_4_i3_4_lut.LUT_INIT = 16'hc00a;
    SB_LUT4 i31933_4_lut (.I0(n3_adj_4338), .I1(n4_adj_4337), .I2(byte_transmit_counter[2]), 
            .I3(\byte_transmit_counter[1] ), .O(n36337));
    defparam i31933_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_3_lut_adj_1366 (.I0(\data_in_frame[13] [4]), .I1(\data_in_frame[13] [3]), 
            .I2(\data_in_frame[13] [1]), .I3(GND_net), .O(n11868));   // verilog/coms.v(88[17:63])
    defparam i1_2_lut_3_lut_adj_1366.LUT_INIT = 16'h9696;
    SB_LUT4 i31060_2_lut (.I0(\data_out_frame[14] [4]), .I1(\byte_transmit_counter[0] ), 
            .I2(GND_net), .I3(GND_net), .O(n35185));   // verilog/coms.v(109[34:55])
    defparam i31060_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i11385_3_lut_4_lut (.I0(n8_adj_4301), .I1(n29699), .I2(rx_data[1]), 
            .I3(\data_in_frame[21] [1]), .O(n15373));
    defparam i11385_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11_4_lut_4_lut_adj_1367 (.I0(n13720), .I1(reset), .I2(rx_data[7]), 
            .I3(\data_in_frame[14] [7]), .O(n29513));
    defparam i11_4_lut_4_lut_adj_1367.LUT_INIT = 16'hfe10;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_4_i11_3_lut (.I0(\data_out_frame[12] [4]), 
            .I1(\data_out_frame[13] [4]), .I2(\byte_transmit_counter[0] ), 
            .I3(GND_net), .O(n11_adj_4339));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_4_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31153_4_lut (.I0(n11_adj_4339), .I1(byte_transmit_counter[2]), 
            .I2(n35185), .I3(\byte_transmit_counter[1] ), .O(n35187));   // verilog/coms.v(109[34:55])
    defparam i31153_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_3_lut_4_lut_adj_1368 (.I0(\data_in_frame[13] [4]), .I1(\data_in_frame[13] [3]), 
            .I2(n26728), .I3(n11367), .O(n27380));   // verilog/coms.v(88[17:63])
    defparam i1_3_lut_4_lut_adj_1368.LUT_INIT = 16'h9669;
    SB_LUT4 i30877_2_lut (.I0(n37104), .I1(byte_transmit_counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n35113));
    defparam i30877_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31047_2_lut (.I0(\data_out_frame[23] [4]), .I1(n13490), .I2(GND_net), 
            .I3(GND_net), .O(n35112));
    defparam i31047_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i11388_3_lut_4_lut (.I0(n8_adj_4301), .I1(n29699), .I2(rx_data[2]), 
            .I3(\data_in_frame[21] [2]), .O(n15376));
    defparam i11388_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11392_3_lut_4_lut (.I0(n8_adj_4301), .I1(n29699), .I2(rx_data[3]), 
            .I3(\data_in_frame[21] [3]), .O(n15380));
    defparam i11392_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11395_3_lut_4_lut (.I0(n8_adj_4301), .I1(n29699), .I2(rx_data[4]), 
            .I3(\data_in_frame[21] [4]), .O(n15383));
    defparam i11395_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12_3_lut (.I0(n40), .I1(n32262), .I2(\state[1] ), .I3(GND_net), 
            .O(n23814));   // verilog/neopixel.v(16[11:16])
    defparam i12_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1369 (.I0(n161), .I1(n1959), .I2(n10_adj_4135), 
            .I3(reset), .O(n29699));
    defparam i1_2_lut_3_lut_4_lut_adj_1369.LUT_INIT = 16'hfff7;
    SB_LUT4 i2_2_lut_3_lut_adj_1370 (.I0(byte_transmit_counter[2]), .I1(\byte_transmit_counter[0] ), 
            .I2(\byte_transmit_counter[1] ), .I3(GND_net), .O(n13490));   // verilog/coms.v(109[34:55])
    defparam i2_2_lut_3_lut_adj_1370.LUT_INIT = 16'h8080;
    SB_LUT4 i72_3_lut (.I0(\data_out_frame[12] [2]), .I1(\data_out_frame[13] [2]), 
            .I2(\byte_transmit_counter[0] ), .I3(GND_net), .O(n34_adj_4340));   // verilog/coms.v(109[34:55])
    defparam i72_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_adj_1371 (.I0(\data_in_frame[6] [0]), .I1(n30350), 
            .I2(n10_adj_4303), .I3(\data_in_frame[6] [6]), .O(n11181));   // verilog/coms.v(78[16:43])
    defparam i1_2_lut_4_lut_adj_1371.LUT_INIT = 16'h6996;
    SB_LUT4 i71_4_lut (.I0(n34_adj_4340), .I1(\data_out_frame[14] [2]), 
            .I2(\byte_transmit_counter[1] ), .I3(\byte_transmit_counter[0] ), 
            .O(n46));   // verilog/coms.v(109[34:55])
    defparam i71_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i73_3_lut (.I0(\data_out_frame[0][2] ), .I1(\data_out_frame[4] [2]), 
            .I2(byte_transmit_counter[2]), .I3(GND_net), .O(n43_adj_4341));   // verilog/coms.v(109[34:55])
    defparam i73_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_adj_1372 (.I0(n26732), .I1(n27451), .I2(\data_in_frame[7] [7]), 
            .I3(GND_net), .O(n18));
    defparam i1_3_lut_adj_1372.LUT_INIT = 16'h2828;
    SB_LUT4 i2_3_lut_4_lut_adj_1373 (.I0(n11609), .I1(n32071), .I2(n30314), 
            .I3(n12023), .O(n27353));
    defparam i2_3_lut_4_lut_adj_1373.LUT_INIT = 16'h6996;
    SB_LUT4 i31416_2_lut (.I0(\data_out_frame[23] [2]), .I1(n13490), .I2(GND_net), 
            .I3(GND_net), .O(n35254));   // verilog/coms.v(109[34:55])
    defparam i31416_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i67_4_lut (.I0(n43_adj_4341), .I1(\data_out_frame[5] [2]), .I2(\byte_transmit_counter[0] ), 
            .I3(byte_transmit_counter[2]), .O(n31));   // verilog/coms.v(109[34:55])
    defparam i67_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i68_4_lut (.I0(n37116), .I1(n46), .I2(byte_transmit_counter[2]), 
            .I3(byte_transmit_counter[4]), .O(n37_adj_4342));   // verilog/coms.v(109[34:55])
    defparam i68_4_lut.LUT_INIT = 16'h0ac0;
    SB_LUT4 i70_4_lut (.I0(n31), .I1(n35254), .I2(byte_transmit_counter[4]), 
            .I3(\byte_transmit_counter[1] ), .O(n40_adj_4343));   // verilog/coms.v(109[34:55])
    defparam i70_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i69_3_lut (.I0(n40_adj_4343), .I1(n37_adj_4342), .I2(byte_transmit_counter[3]), 
            .I3(GND_net), .O(tx_data[2]));   // verilog/coms.v(109[34:55])
    defparam i69_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_1374 (.I0(n40_adj_1), .I1(n39), .I2(GND_net), 
            .I3(GND_net), .O(n29971));   // verilog/neopixel.v(104[14:39])
    defparam i1_2_lut_adj_1374.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_4_lut_adj_1375 (.I0(\data_out_frame[14] [4]), .I1(n30097), 
            .I2(n26769), .I3(n11092), .O(n30439));
    defparam i1_2_lut_4_lut_adj_1375.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_3_lut_adj_1376 (.I0(n11609), .I1(n11985), .I2(GND_net), 
            .I3(GND_net), .O(n27347));
    defparam i1_2_lut_3_lut_adj_1376.LUT_INIT = 16'h9999;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_3_i11_3_lut (.I0(\data_out_frame[12] [3]), 
            .I1(\data_out_frame[13] [3]), .I2(\byte_transmit_counter[0] ), 
            .I3(GND_net), .O(n11_adj_4346));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_3_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31149_2_lut (.I0(\data_out_frame[23] [3]), .I1(n13490), .I2(GND_net), 
            .I3(GND_net), .O(n35114));
    defparam i31149_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i31148_4_lut (.I0(\data_out_frame[4] [3]), .I1(\byte_transmit_counter[1] ), 
            .I2(\data_out_frame[5] [3]), .I3(\byte_transmit_counter[0] ), 
            .O(n35182));   // verilog/coms.v(109[34:55])
    defparam i31148_4_lut.LUT_INIT = 16'h3022;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_3_i13_4_lut (.I0(n11_adj_4346), 
            .I1(\data_out_frame[14] [3]), .I2(\byte_transmit_counter[1] ), 
            .I3(\byte_transmit_counter[0] ), .O(n13_adj_4347));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_3_i13_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_3_i3_4_lut (.I0(\data_out_frame[3][3] ), 
            .I1(n35182), .I2(byte_transmit_counter[2]), .I3(\byte_transmit_counter[0] ), 
            .O(n3_adj_4348));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_3_i3_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i11398_3_lut_4_lut (.I0(n8_adj_4301), .I1(n29699), .I2(rx_data[5]), 
            .I3(\data_in_frame[21] [5]), .O(n15386));
    defparam i11398_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i30934_2_lut (.I0(byte_transmit_counter[2]), .I1(\byte_transmit_counter[1] ), 
            .I2(GND_net), .I3(GND_net), .O(n35337));
    defparam i30934_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_3_i1_3_lut (.I0(\data_out_frame[0][3] ), 
            .I1(\data_out_frame[1][3] ), .I2(\byte_transmit_counter[0] ), 
            .I3(GND_net), .O(n1_adj_4349));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_3_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_3_i7_4_lut (.I0(n3_adj_4348), 
            .I1(n13_adj_4347), .I2(byte_transmit_counter[3]), .I3(byte_transmit_counter[2]), 
            .O(n7_adj_4350));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_3_i7_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i29373_4_lut (.I0(n35114), .I1(n37110), .I2(byte_transmit_counter[3]), 
            .I3(byte_transmit_counter[2]), .O(n33776));
    defparam i29373_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i31905_4_lut (.I0(n7_adj_4350), .I1(n1_adj_4349), .I2(byte_transmit_counter[3]), 
            .I3(n35337), .O(n36309));
    defparam i31905_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31906_3_lut (.I0(n36309), .I1(n33776), .I2(byte_transmit_counter[4]), 
            .I3(GND_net), .O(tx_data[3]));
    defparam i31906_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_1377 (.I0(n11609), .I1(n32071), .I2(n11985), 
            .I3(GND_net), .O(n27492));
    defparam i1_2_lut_3_lut_adj_1377.LUT_INIT = 16'h6969;
    SB_LUT4 i3_4_lut_adj_1378 (.I0(n30147), .I1(n30481), .I2(n30463), 
            .I3(n30338), .O(n31999));
    defparam i3_4_lut_adj_1378.LUT_INIT = 16'h6996;
    SB_LUT4 i79_3_lut (.I0(\data_out_frame[12] [6]), .I1(\data_out_frame[13] [6]), 
            .I2(\byte_transmit_counter[0] ), .I3(GND_net), .O(n39_adj_4351));   // verilog/coms.v(109[34:55])
    defparam i79_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i78_4_lut (.I0(n39_adj_4351), .I1(\data_out_frame[14] [6]), 
            .I2(\byte_transmit_counter[1] ), .I3(\byte_transmit_counter[0] ), 
            .O(n48));   // verilog/coms.v(109[34:55])
    defparam i78_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i11401_3_lut_4_lut (.I0(n8_adj_4301), .I1(n29699), .I2(rx_data[6]), 
            .I3(\data_in_frame[21] [6]), .O(n15389));
    defparam i11401_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i80_3_lut (.I0(\data_out_frame[4] [6]), .I1(\data_out_frame[5] [6]), 
            .I2(\byte_transmit_counter[0] ), .I3(GND_net), .O(n36_adj_4352));   // verilog/coms.v(109[34:55])
    defparam i80_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31050_4_lut (.I0(\data_out_frame[1][6] ), .I1(\byte_transmit_counter[0] ), 
            .I2(\data_out_frame[3][6] ), .I3(\byte_transmit_counter[1] ), 
            .O(n35259));   // verilog/coms.v(109[34:55])
    defparam i31050_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i77_4_lut (.I0(n35259), .I1(n36_adj_4352), .I2(byte_transmit_counter[2]), 
            .I3(\byte_transmit_counter[1] ), .O(n51));   // verilog/coms.v(109[34:55])
    defparam i77_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i74_4_lut (.I0(n37122), .I1(n48), .I2(byte_transmit_counter[2]), 
            .I3(byte_transmit_counter[4]), .O(n42_adj_4353));   // verilog/coms.v(109[34:55])
    defparam i74_4_lut.LUT_INIT = 16'h0ac0;
    SB_LUT4 i13_4_lut_adj_1379 (.I0(n11877), .I1(n4_c), .I2(n11356), .I3(n18), 
            .O(n30));
    defparam i13_4_lut_adj_1379.LUT_INIT = 16'h0100;
    SB_LUT4 i75_4_lut (.I0(n51), .I1(\data_out_frame[23] [6]), .I2(byte_transmit_counter[4]), 
            .I3(n13490), .O(n45_adj_4354));   // verilog/coms.v(109[34:55])
    defparam i75_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut_adj_1380 (.I0(n11698), .I1(n7_adj_4210), .I2(n26685), 
            .I3(n11256), .O(n28_adj_4355));
    defparam i11_4_lut_adj_1380.LUT_INIT = 16'h0010;
    SB_LUT4 i11405_3_lut_4_lut (.I0(n8_adj_4301), .I1(n29699), .I2(rx_data[7]), 
            .I3(\data_in_frame[21] [7]), .O(n15393));
    defparam i11405_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i76_3_lut (.I0(n45_adj_4354), .I1(n42_adj_4353), .I2(byte_transmit_counter[3]), 
            .I3(GND_net), .O(tx_data[6]));   // verilog/coms.v(109[34:55])
    defparam i76_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11_3_lut_4_lut (.I0(n13720), .I1(reset), .I2(\data_in_frame[14] [6]), 
            .I3(rx_data[6]), .O(n29517));
    defparam i11_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i1_2_lut_3_lut_adj_1381 (.I0(n10_adj_4143), .I1(n21178), .I2(n8_adj_4299), 
            .I3(GND_net), .O(n13720));
    defparam i1_2_lut_3_lut_adj_1381.LUT_INIT = 16'hfbfb;
    SB_LUT4 i29230_4_lut (.I0(n7_adj_4224), .I1(n11738), .I2(n11848), 
            .I3(n26966), .O(n33624));
    defparam i29230_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i9766_3_lut_4_lut (.I0(n10_adj_4143), .I1(n21178), .I2(reset), 
            .I3(n127), .O(n13754));
    defparam i9766_3_lut_4_lut.LUT_INIT = 16'hfbff;
    SB_LUT4 i2_3_lut_4_lut_adj_1382 (.I0(\data_out_frame[4] [0]), .I1(\data_out_frame[5] [4]), 
            .I2(\data_out_frame[14] [5]), .I3(\data_out_frame[12] [4]), 
            .O(n30078));   // verilog/coms.v(78[16:43])
    defparam i2_3_lut_4_lut_adj_1382.LUT_INIT = 16'h6996;
    SB_LUT4 i31092_2_lut (.I0(\FRAME_MATCHER.i[3] ), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35134));   // verilog/coms.v(158[12:15])
    defparam i31092_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_4_lut_adj_1383 (.I0(\data_in_frame[4][5] ), .I1(n11743), 
            .I2(n30002), .I3(\data_in_frame[6] [6]), .O(Kp_23__N_863));   // verilog/coms.v(80[16:43])
    defparam i1_2_lut_4_lut_adj_1383.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1384 (.I0(n10_adj_4143), .I1(n21178), .I2(n8_adj_4301), 
            .I3(GND_net), .O(n13722));
    defparam i1_2_lut_3_lut_adj_1384.LUT_INIT = 16'hfbfb;
    SB_LUT4 i9772_3_lut_4_lut (.I0(n10_adj_4143), .I1(n21178), .I2(reset), 
            .I3(n8), .O(n13760));
    defparam i9772_3_lut_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i10_4_lut_adj_1385 (.I0(n31910), .I1(n9413), .I2(n9417), .I3(n31999), 
            .O(n27_adj_4356));
    defparam i10_4_lut_adj_1385.LUT_INIT = 16'h0040;
    SB_LUT4 i11107_3_lut_4_lut (.I0(n13722), .I1(reset), .I2(rx_data[7]), 
            .I3(\data_in_frame[13] [7]), .O(n15095));
    defparam i11107_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i3_4_lut_adj_1386 (.I0(n5_adj_4300), .I1(n10903), .I2(n3303), 
            .I3(\FRAME_MATCHER.i_31__N_2382 ), .O(n32138));   // verilog/coms.v(148[4] 304[11])
    defparam i3_4_lut_adj_1386.LUT_INIT = 16'hefee;
    SB_LUT4 i1_4_lut_adj_1387 (.I0(\FRAME_MATCHER.i_31__N_2384 ), .I1(n679), 
            .I2(n748), .I3(n32138), .O(n12356));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1387.LUT_INIT = 16'hb3a0;
    SB_LUT4 i227_2_lut (.I0(n3303), .I1(\FRAME_MATCHER.i_31__N_2382 ), .I2(GND_net), 
            .I3(GND_net), .O(n788));   // verilog/coms.v(148[4] 304[11])
    defparam i227_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1388 (.I0(\FRAME_MATCHER.i[3] ), .I1(\FRAME_MATCHER.i [4]), 
            .I2(\FRAME_MATCHER.i [5]), .I3(rx_data[4]), .O(n4_adj_4144));   // verilog/coms.v(157[7:23])
    defparam i1_2_lut_3_lut_4_lut_adj_1388.LUT_INIT = 16'h0100;
    SB_LUT4 i16_4_lut_adj_1389 (.I0(n27_adj_4356), .I1(n33624), .I2(n28_adj_4355), 
            .I3(n30), .O(LED_N_3278));
    defparam i16_4_lut_adj_1389.LUT_INIT = 16'h2000;
    SB_LUT4 i1_4_lut_adj_1390 (.I0(\FRAME_MATCHER.i_31__N_2382 ), .I1(n682), 
            .I2(n736), .I3(n32110), .O(n29289));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1390.LUT_INIT = 16'hb3a0;
    SB_LUT4 i11104_3_lut_4_lut (.I0(n13722), .I1(reset), .I2(rx_data[6]), 
            .I3(\data_in_frame[13] [6]), .O(n15092));
    defparam i11104_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11101_3_lut_4_lut (.I0(n13722), .I1(reset), .I2(rx_data[5]), 
            .I3(\data_in_frame[13] [5]), .O(n15089));
    defparam i11101_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11098_3_lut_4_lut (.I0(n13722), .I1(reset), .I2(rx_data[4]), 
            .I3(\data_in_frame[13] [4]), .O(n15086));
    defparam i11098_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_3_lut_4_lut_adj_1391 (.I0(\data_in_frame[16] [7]), .I1(n33_adj_4220), 
            .I2(\data_in_frame[12][6] ), .I3(\data_in_frame[12] [5]), .O(n30151));
    defparam i2_3_lut_4_lut_adj_1391.LUT_INIT = 16'h6996;
    SB_LUT4 i5_3_lut_4_lut (.I0(\data_in_frame[16] [7]), .I1(n33_adj_4220), 
            .I2(\data_in_frame[19][1] ), .I3(\data_in_frame[17] [0]), .O(n14_adj_4323));
    defparam i5_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i3171_4_lut (.I0(n683), .I1(\FRAME_MATCHER.state[3] ), .I2(n685), 
            .I3(n10903), .O(n6838));   // verilog/coms.v(148[4] 304[11])
    defparam i3171_4_lut.LUT_INIT = 16'heccc;
    SB_LUT4 i1_3_lut_4_lut_adj_1392 (.I0(\data_in_frame[14] [7]), .I1(\data_in_frame[15]_c [0]), 
            .I2(\data_in_frame[14] [5]), .I3(n11267), .O(n33439));
    defparam i1_3_lut_4_lut_adj_1392.LUT_INIT = 16'h6996;
    SB_LUT4 i216_2_lut (.I0(\FRAME_MATCHER.state_31__N_2482 [3]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(GND_net), .I3(GND_net), .O(n777));   // verilog/coms.v(148[4] 304[11])
    defparam i216_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i215_2_lut (.I0(n771), .I1(\FRAME_MATCHER.i_31__N_2378 ), .I2(GND_net), 
            .I3(GND_net), .O(n776));   // verilog/coms.v(148[4] 304[11])
    defparam i215_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i17267_4_lut (.I0(n8_adj_4137), .I1(\FRAME_MATCHER.i [31]), 
            .I2(n10825), .I3(\FRAME_MATCHER.i[3] ), .O(n3303));   // verilog/coms.v(230[9:54])
    defparam i17267_4_lut.LUT_INIT = 16'h3230;
    SB_LUT4 i2_3_lut_4_lut_adj_1393 (.I0(\data_in_frame[14] [7]), .I1(\data_in_frame[15]_c [0]), 
            .I2(\data_in_frame[12][6] ), .I3(\data_in_frame[14] [6]), .O(n30270));
    defparam i2_3_lut_4_lut_adj_1393.LUT_INIT = 16'h6996;
    SB_LUT4 i11095_3_lut_4_lut (.I0(n13722), .I1(reset), .I2(rx_data[3]), 
            .I3(\data_in_frame[13] [3]), .O(n15083));
    defparam i11095_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_1394 (.I0(\FRAME_MATCHER.i [4]), .I1(n10916), .I2(GND_net), 
            .I3(GND_net), .O(n10825));
    defparam i1_2_lut_adj_1394.LUT_INIT = 16'heeee;
    SB_LUT4 i4_4_lut_4_lut_adj_1395 (.I0(\data_in_frame[16] [0]), .I1(n30107), 
            .I2(n26728), .I3(n4_adj_4319), .O(n31795));
    defparam i4_4_lut_4_lut_adj_1395.LUT_INIT = 16'h9669;
    SB_LUT4 i2_2_lut_3_lut_adj_1396 (.I0(\data_in_frame[16] [2]), .I1(n11708), 
            .I2(n12125), .I3(GND_net), .O(n8_adj_4318));
    defparam i2_2_lut_3_lut_adj_1396.LUT_INIT = 16'h9696;
    SB_LUT4 i17246_4_lut (.I0(n5_adj_4298), .I1(\FRAME_MATCHER.i [31]), 
            .I2(\FRAME_MATCHER.i [2]), .I3(\FRAME_MATCHER.i[3] ), .O(n771));   // verilog/coms.v(160[9:60])
    defparam i17246_4_lut.LUT_INIT = 16'h3332;
    SB_LUT4 i2_2_lut_adj_1397 (.I0(n771), .I1(\FRAME_MATCHER.i_31__N_2378 ), 
            .I2(GND_net), .I3(GND_net), .O(n8254));   // verilog/coms.v(148[4] 304[11])
    defparam i2_2_lut_adj_1397.LUT_INIT = 16'h4444;
    SB_LUT4 i1_2_lut_3_lut_adj_1398 (.I0(\data_out_frame[4] [1]), .I1(\data_out_frame[4] [3]), 
            .I2(n30144), .I3(GND_net), .O(n26721));
    defparam i1_2_lut_3_lut_adj_1398.LUT_INIT = 16'h9696;
    SB_LUT4 i3_2_lut (.I0(n10903), .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(GND_net), 
            .I3(GND_net), .O(n12351));   // verilog/coms.v(148[4] 304[11])
    defparam i3_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i11092_3_lut_4_lut (.I0(n13722), .I1(reset), .I2(rx_data[2]), 
            .I3(\data_in_frame[13] [2]), .O(n15080));
    defparam i11092_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_4_lut_adj_1399 (.I0(n733), .I1(n683), .I2(\FRAME_MATCHER.i_31__N_2382 ), 
            .I3(n12351), .O(n4_adj_4357));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1399.LUT_INIT = 16'heca0;
    SB_LUT4 i1_2_lut_3_lut_adj_1400 (.I0(\data_in_frame[16] [2]), .I1(n11708), 
            .I2(\data_in_frame[16] [3]), .I3(GND_net), .O(n30451));
    defparam i1_2_lut_3_lut_adj_1400.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_4_lut_adj_1401 (.I0(\data_in_frame[15] [3]), .I1(n27403), 
            .I2(\data_in_frame[17][4] ), .I3(n31615), .O(n30279));
    defparam i1_2_lut_4_lut_adj_1401.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_4_lut_adj_1402 (.I0(\data_in_frame[15] [3]), .I1(n27403), 
            .I2(\data_in_frame[17][4] ), .I3(\data_in_frame[19][6] ), .O(n30197));
    defparam i1_2_lut_4_lut_adj_1402.LUT_INIT = 16'h9669;
    SB_LUT4 i11089_3_lut_4_lut (.I0(n13722), .I1(reset), .I2(rx_data[1]), 
            .I3(\data_in_frame[13] [1]), .O(n15077));
    defparam i11089_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_4_lut_adj_1403 (.I0(n685), .I1(n745), .I2(n4_adj_4357), 
            .I3(\FRAME_MATCHER.i_31__N_2384 ), .O(n12979));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1403.LUT_INIT = 16'h5450;
    SB_LUT4 i19110_4_lut (.I0(\FRAME_MATCHER.i_31__N_2383 ), .I1(Kp_23__N_1618), 
            .I2(LED_N_3278), .I3(n23006), .O(n12991));   // verilog/coms.v(18[27:29])
    defparam i19110_4_lut.LUT_INIT = 16'he420;
    SB_LUT4 i11133_3_lut_4_lut (.I0(n13720), .I1(reset), .I2(rx_data[5]), 
            .I3(\data_in_frame[14] [5]), .O(n15121));
    defparam i11133_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_4_lut_adj_1404 (.I0(n682), .I1(n12979), .I2(n679), .I3(n8254), 
            .O(n12980));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1404.LUT_INIT = 16'heccc;
    SB_LUT4 i11_4_lut_4_lut_adj_1405 (.I0(n13722), .I1(reset), .I2(rx_data[0]), 
            .I3(\data_in_frame[13] [0]), .O(n29497));
    defparam i11_4_lut_4_lut_adj_1405.LUT_INIT = 16'hfe10;
    SB_LUT4 i31093_2_lut (.I0(\FRAME_MATCHER.i [4]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35135));   // verilog/coms.v(158[12:15])
    defparam i31093_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31094_2_lut (.I0(\FRAME_MATCHER.i [5]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35136));   // verilog/coms.v(158[12:15])
    defparam i31094_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_3_lut_adj_1406 (.I0(\data_out_frame[5] [1]), .I1(\data_out_frame[4] [6]), 
            .I2(\data_out_frame[5] [0]), .I3(GND_net), .O(n30362));   // verilog/coms.v(77[16:27])
    defparam i1_2_lut_3_lut_adj_1406.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_adj_1407 (.I0(\data_out_frame[4] [4]), .I1(\data_out_frame[4] [3]), 
            .I2(\data_out_frame[5] [3]), .I3(GND_net), .O(n6_adj_4201));
    defparam i1_2_lut_3_lut_adj_1407.LUT_INIT = 16'h9696;
    SB_LUT4 i31410_2_lut (.I0(\FRAME_MATCHER.i [6]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35139));   // verilog/coms.v(158[12:15])
    defparam i31410_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1408 (.I0(\FRAME_MATCHER.i[3] ), .I1(\FRAME_MATCHER.i [4]), 
            .I2(\FRAME_MATCHER.i [5]), .I3(reset), .O(n29974));   // verilog/coms.v(157[7:23])
    defparam i1_2_lut_3_lut_4_lut_adj_1408.LUT_INIT = 16'hfffe;
    SB_LUT4 i2_2_lut_adj_1409 (.I0(\data_in[2] [3]), .I1(\data_in[3] [5]), 
            .I2(GND_net), .I3(GND_net), .O(n10_adj_4358));
    defparam i2_2_lut_adj_1409.LUT_INIT = 16'heeee;
    SB_LUT4 i6_4_lut_adj_1410 (.I0(\data_in[0] [2]), .I1(\data_in[3] [3]), 
            .I2(\data_in[3] [1]), .I3(\data_in[0] [7]), .O(n14_adj_4359));
    defparam i6_4_lut_adj_1410.LUT_INIT = 16'hfeff;
    SB_LUT4 i1_2_lut_3_lut_adj_1411 (.I0(\data_out_frame[4] [6]), .I1(\data_out_frame[4] [1]), 
            .I2(\data_out_frame[4] [2]), .I3(GND_net), .O(n30341));   // verilog/coms.v(77[16:27])
    defparam i1_2_lut_3_lut_adj_1411.LUT_INIT = 16'h9696;
    SB_LUT4 i7_4_lut_adj_1412 (.I0(\data_in[3] [6]), .I1(n14_adj_4359), 
            .I2(n10_adj_4358), .I3(\data_in[2] [1]), .O(n10963));
    defparam i7_4_lut_adj_1412.LUT_INIT = 16'hfffd;
    SB_LUT4 i8_4_lut_adj_1413 (.I0(\data_in[2] [6]), .I1(\data_in[2] [0]), 
            .I2(n10963), .I3(\data_in[0] [5]), .O(n20_adj_4360));
    defparam i8_4_lut_adj_1413.LUT_INIT = 16'hfbff;
    SB_LUT4 i7_4_lut_adj_1414 (.I0(n10828), .I1(\data_in[3] [7]), .I2(\data_in[1] [6]), 
            .I3(\data_in[2] [5]), .O(n19));
    defparam i7_4_lut_adj_1414.LUT_INIT = 16'hfeff;
    SB_LUT4 i29208_4_lut (.I0(\data_in[0] [1]), .I1(\data_in[1] [3]), .I2(\data_in[1] [2]), 
            .I3(\data_in[3] [2]), .O(n33602));
    defparam i29208_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1415 (.I0(\FRAME_MATCHER.i[3] ), .I1(\FRAME_MATCHER.i [4]), 
            .I2(\FRAME_MATCHER.i [5]), .I3(n21178), .O(n29995));   // verilog/coms.v(157[7:23])
    defparam i1_2_lut_3_lut_4_lut_adj_1415.LUT_INIT = 16'hfeff;
    SB_LUT4 i11_3_lut (.I0(n33602), .I1(n19), .I2(n20_adj_4360), .I3(GND_net), 
            .O(n679));
    defparam i11_3_lut.LUT_INIT = 16'hfdfd;
    SB_LUT4 i7_4_lut_adj_1416 (.I0(\data_in[2] [4]), .I1(n10963), .I2(\data_in[1] [5]), 
            .I3(n11029), .O(n18_adj_4361));
    defparam i7_4_lut_adj_1416.LUT_INIT = 16'hfffd;
    SB_LUT4 i1_2_lut_3_lut_adj_1417 (.I0(\data_in_frame[10] [6]), .I1(\data_in_frame[12][7] ), 
            .I2(\data_in_frame[15]_c [1]), .I3(GND_net), .O(n33347));
    defparam i1_2_lut_3_lut_adj_1417.LUT_INIT = 16'h9696;
    SB_LUT4 i9_4_lut_adj_1418 (.I0(\data_in[0] [6]), .I1(n18_adj_4361), 
            .I2(\data_in[3] [0]), .I3(n10966), .O(n20_adj_4362));
    defparam i9_4_lut_adj_1418.LUT_INIT = 16'hfffd;
    SB_LUT4 i4_2_lut (.I0(\data_in[1] [0]), .I1(\data_in[0] [3]), .I2(GND_net), 
            .I3(GND_net), .O(n15_adj_4363));
    defparam i4_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i2_2_lut_3_lut_4_lut_adj_1419 (.I0(\data_in_frame[10] [6]), .I1(\data_in_frame[12][7] ), 
            .I2(n30279), .I3(n27399), .O(n22));
    defparam i2_2_lut_3_lut_4_lut_adj_1419.LUT_INIT = 16'h9669;
    SB_LUT4 i10_4_lut_adj_1420 (.I0(n15_adj_4363), .I1(n20_adj_4362), .I2(\data_in[2] [2]), 
            .I3(\data_in[1] [4]), .O(n682));
    defparam i10_4_lut_adj_1420.LUT_INIT = 16'hfeff;
    SB_LUT4 i6_4_lut_adj_1421 (.I0(\data_in[0] [1]), .I1(\data_in[1] [2]), 
            .I2(\data_in[3] [2]), .I3(\data_in[0] [5]), .O(n16_adj_4364));
    defparam i6_4_lut_adj_1421.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_3_lut_adj_1422 (.I0(n26725), .I1(n26789), .I2(n30284), 
            .I3(GND_net), .O(n30182));
    defparam i1_2_lut_3_lut_adj_1422.LUT_INIT = 16'h6969;
    SB_LUT4 i7_4_lut_adj_1423 (.I0(\data_in[1] [6]), .I1(\data_in[2] [5]), 
            .I2(\data_in[2] [0]), .I3(\data_in[1] [3]), .O(n17_adj_4365));
    defparam i7_4_lut_adj_1423.LUT_INIT = 16'hfffd;
    SB_LUT4 i9_4_lut_adj_1424 (.I0(n17_adj_4365), .I1(\data_in[3] [7]), 
            .I2(n16_adj_4364), .I3(\data_in[2] [6]), .O(n10966));
    defparam i9_4_lut_adj_1424.LUT_INIT = 16'hfbff;
    SB_LUT4 i4_4_lut_adj_1425 (.I0(\data_in[1] [7]), .I1(\data_in[0] [0]), 
            .I2(\data_in[1] [1]), .I3(\data_in[0] [4]), .O(n10_adj_4366));
    defparam i4_4_lut_adj_1425.LUT_INIT = 16'hfdff;
    SB_LUT4 i5_3_lut_adj_1426 (.I0(\data_in[2] [7]), .I1(n10_adj_4366), 
            .I2(\data_in[3] [4]), .I3(GND_net), .O(n11029));
    defparam i5_3_lut_adj_1426.LUT_INIT = 16'hdfdf;
    SB_LUT4 i5_3_lut_adj_1427 (.I0(\data_in[0] [3]), .I1(\data_in[2] [4]), 
            .I2(\data_in[3] [0]), .I3(GND_net), .O(n14_adj_4367));
    defparam i5_3_lut_adj_1427.LUT_INIT = 16'hdfdf;
    SB_LUT4 i6_4_lut_adj_1428 (.I0(\data_in[1] [4]), .I1(\data_in[0] [6]), 
            .I2(n11029), .I3(\data_in[1] [5]), .O(n15_adj_4368));
    defparam i6_4_lut_adj_1428.LUT_INIT = 16'hfeff;
    SB_LUT4 i2_3_lut_4_lut_adj_1429 (.I0(n9068), .I1(n12088), .I2(\data_out_frame[13] [7]), 
            .I3(\data_out_frame[13] [6]), .O(n30356));
    defparam i2_3_lut_4_lut_adj_1429.LUT_INIT = 16'h6996;
    SB_LUT4 i8_4_lut_adj_1430 (.I0(n15_adj_4368), .I1(\data_in[2] [2]), 
            .I2(n14_adj_4367), .I3(\data_in[1] [0]), .O(n10828));
    defparam i8_4_lut_adj_1430.LUT_INIT = 16'hfbff;
    SB_LUT4 i6_4_lut_adj_1431 (.I0(\data_in[3] [6]), .I1(\data_in[0] [7]), 
            .I2(\data_in[2] [1]), .I3(n10828), .O(n16_adj_4369));
    defparam i6_4_lut_adj_1431.LUT_INIT = 16'hffef;
    SB_LUT4 i1_2_lut_3_lut_adj_1432 (.I0(n27399), .I1(n30279), .I2(\data_in_frame[20] [0]), 
            .I3(GND_net), .O(n6_adj_4149));
    defparam i1_2_lut_3_lut_adj_1432.LUT_INIT = 16'h6969;
    SB_LUT4 i1_2_lut_3_lut_adj_1433 (.I0(n9068), .I1(n26408), .I2(\data_out_frame[13] [6]), 
            .I3(GND_net), .O(n26632));
    defparam i1_2_lut_3_lut_adj_1433.LUT_INIT = 16'h9696;
    SB_LUT4 i11130_3_lut_4_lut (.I0(n13720), .I1(reset), .I2(rx_data[4]), 
            .I3(\data_in_frame[14] [4]), .O(n15118));
    defparam i11130_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i7_4_lut_adj_1434 (.I0(n10966), .I1(\data_in[2] [3]), .I2(\data_in[0] [2]), 
            .I3(\data_in[3] [1]), .O(n17_adj_4370));
    defparam i7_4_lut_adj_1434.LUT_INIT = 16'hbfff;
    SB_LUT4 i9_4_lut_adj_1435 (.I0(n17_adj_4370), .I1(\data_in[3] [5]), 
            .I2(n16_adj_4369), .I3(\data_in[3] [3]), .O(n685));
    defparam i9_4_lut_adj_1435.LUT_INIT = 16'hfbff;
    SB_LUT4 i1_2_lut_3_lut_adj_1436 (.I0(n26691), .I1(n10581), .I2(n27505), 
            .I3(GND_net), .O(n30259));
    defparam i1_2_lut_3_lut_adj_1436.LUT_INIT = 16'h9696;
    SB_LUT4 i133_2_lut (.I0(n682), .I1(n679), .I2(GND_net), .I3(GND_net), 
            .O(n683));   // verilog/coms.v(142[4] 144[7])
    defparam i133_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_3_lut_adj_1437 (.I0(n30161), .I1(n27406), .I2(n30087), 
            .I3(GND_net), .O(n26789));
    defparam i1_2_lut_3_lut_adj_1437.LUT_INIT = 16'h6969;
    SB_LUT4 i1_2_lut_4_lut_adj_1438 (.I0(n26669), .I1(\data_out_frame[13] [0]), 
            .I2(n27435), .I3(n11107), .O(n10579));
    defparam i1_2_lut_4_lut_adj_1438.LUT_INIT = 16'h9669;
    SB_LUT4 i2_4_lut_adj_1439 (.I0(n31592), .I1(n21062), .I2(n21495), 
            .I3(\FRAME_MATCHER.i_31__N_2381 ), .O(n6_adj_4371));   // verilog/coms.v(148[4] 304[11])
    defparam i2_4_lut_adj_1439.LUT_INIT = 16'hbaaa;
    SB_LUT4 i3_4_lut_adj_1440 (.I0(n23008), .I1(n6_adj_4371), .I2(\FRAME_MATCHER.i_31__N_2379 ), 
            .I3(\FRAME_MATCHER.state_31__N_2482 [3]), .O(n37176));   // verilog/coms.v(148[4] 304[11])
    defparam i3_4_lut_adj_1440.LUT_INIT = 16'heefe;
    SB_LUT4 i2_3_lut_4_lut_adj_1441 (.I0(\data_in_frame[8] [1]), .I1(n9266), 
            .I2(\data_in_frame[10][3] ), .I3(n4_c), .O(n11907));
    defparam i2_3_lut_4_lut_adj_1441.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1442 (.I0(\data_in_frame[8] [1]), .I1(n9266), 
            .I2(n26685), .I3(GND_net), .O(n26667));
    defparam i1_2_lut_3_lut_adj_1442.LUT_INIT = 16'h9696;
    SB_LUT4 i18_4_lut_adj_1443 (.I0(n40), .I1(n32262), .I2(\state[1] ), 
            .I3(start), .O(n29163));   // verilog/neopixel.v(16[11:16])
    defparam i18_4_lut_adj_1443.LUT_INIT = 16'hfaca;
    SB_LUT4 i31101_2_lut (.I0(\FRAME_MATCHER.i [7]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35140));   // verilog/coms.v(158[12:15])
    defparam i31101_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i11343_3_lut_4_lut (.I0(n8), .I1(n29699), .I2(rx_data[0]), 
            .I3(\data_in_frame[20] [0]), .O(n15331));
    defparam i11343_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i31102_2_lut (.I0(\FRAME_MATCHER.i [8]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35141));   // verilog/coms.v(158[12:15])
    defparam i31102_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31103_2_lut (.I0(\FRAME_MATCHER.i [9]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35142));   // verilog/coms.v(158[12:15])
    defparam i31103_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i11127_3_lut_4_lut (.I0(n13720), .I1(reset), .I2(rx_data[3]), 
            .I3(\data_in_frame[14] [3]), .O(n15115));
    defparam i11127_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i31106_2_lut (.I0(\FRAME_MATCHER.i [10]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35143));   // verilog/coms.v(158[12:15])
    defparam i31106_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31109_2_lut (.I0(\FRAME_MATCHER.i [11]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35144));   // verilog/coms.v(158[12:15])
    defparam i31109_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i2_2_lut_3_lut_adj_1444 (.I0(\data_out_frame[25] [0]), .I1(n27541), 
            .I2(\data_out_frame[24] [5]), .I3(GND_net), .O(n6_adj_4170));
    defparam i2_2_lut_3_lut_adj_1444.LUT_INIT = 16'h6969;
    SB_LUT4 i31110_2_lut (.I0(\FRAME_MATCHER.i [12]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35145));   // verilog/coms.v(158[12:15])
    defparam i31110_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i5_3_lut_4_lut_adj_1445 (.I0(n26691), .I1(n10581), .I2(n10_adj_4302), 
            .I3(\data_out_frame[24] [7]), .O(n31725));
    defparam i5_3_lut_4_lut_adj_1445.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1446 (.I0(\FRAME_MATCHER.i[0] ), .I1(n21178), 
            .I2(n29974), .I3(n19953), .O(n29975));
    defparam i1_2_lut_3_lut_4_lut_adj_1446.LUT_INIT = 16'hfffb;
    SB_LUT4 i11346_3_lut_4_lut (.I0(n8), .I1(n29699), .I2(rx_data[1]), 
            .I3(\data_in_frame[20] [1]), .O(n15334));
    defparam i11346_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i30900_2_lut_4_lut (.I0(n23810), .I1(\one_wire_N_380[3] ), .I2(n4), 
            .I3(\state[0] ), .O(n35068));   // verilog/neopixel.v(16[11:16])
    defparam i30900_2_lut_4_lut.LUT_INIT = 16'h00ea;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1447 (.I0(\FRAME_MATCHER.i[0] ), .I1(n21178), 
            .I2(n10_adj_4135), .I3(n19953), .O(n13702));
    defparam i1_2_lut_3_lut_4_lut_adj_1447.LUT_INIT = 16'hfffb;
    SB_LUT4 i31111_2_lut (.I0(\FRAME_MATCHER.i [13]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35146));   // verilog/coms.v(158[12:15])
    defparam i31111_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i2_3_lut_4_lut_adj_1448 (.I0(n30002), .I1(n30139), .I2(\data_in_frame[9] [1]), 
            .I3(\data_in_frame[9] [0]), .O(n11201));   // verilog/coms.v(78[16:43])
    defparam i2_3_lut_4_lut_adj_1448.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_4_lut_adj_1449 (.I0(\data_out_frame[14] [4]), .I1(n30097), 
            .I2(n30448), .I3(n27549), .O(n30191));
    defparam i2_3_lut_4_lut_adj_1449.LUT_INIT = 16'h9669;
    SB_LUT4 i31112_2_lut (.I0(\FRAME_MATCHER.i [14]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35147));   // verilog/coms.v(158[12:15])
    defparam i31112_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i11349_3_lut_4_lut (.I0(n8), .I1(n29699), .I2(rx_data[2]), 
            .I3(\data_in_frame[20] [2]), .O(n15337));
    defparam i11349_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_1450 (.I0(\FRAME_MATCHER.i[0] ), .I1(n19958), .I2(GND_net), 
            .I3(GND_net), .O(n192));
    defparam i1_2_lut_adj_1450.LUT_INIT = 16'hdddd;
    SB_LUT4 i11352_3_lut_4_lut (.I0(n8), .I1(n29699), .I2(rx_data[3]), 
            .I3(\data_in_frame[20] [3]), .O(n15340));
    defparam i11352_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_4_lut_adj_1451 (.I0(\data_out_frame[25] [4]), .I1(\data_out_frame[23] [3]), 
            .I2(n30307), .I3(n27394), .O(n30276));
    defparam i1_2_lut_4_lut_adj_1451.LUT_INIT = 16'h9669;
    SB_LUT4 i31307_2_lut (.I0(\FRAME_MATCHER.i [15]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35076));   // verilog/coms.v(158[12:15])
    defparam i31307_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_3_lut_adj_1452 (.I0(n26595), .I1(n30232), .I2(n27349), 
            .I3(GND_net), .O(n27363));
    defparam i1_2_lut_3_lut_adj_1452.LUT_INIT = 16'h6969;
    SB_LUT4 i10211_2_lut_2_lut (.I0(reset), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(GND_net), .I3(GND_net), .O(n14199));   // verilog/coms.v(130[12] 305[6])
    defparam i10211_2_lut_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i32499_2_lut_3_lut (.I0(tx_active), .I1(r_SM_Main_2__N_3415[0]), 
            .I2(n21495), .I3(GND_net), .O(tx_transmit_N_3286));
    defparam i32499_2_lut_3_lut.LUT_INIT = 16'h0101;
    SB_LUT4 i10209_4_lut_4_lut (.I0(reset), .I1(\FRAME_MATCHER.i_31__N_2383 ), 
            .I2(n56), .I3(n32_adj_4145), .O(n14197));   // verilog/coms.v(130[12] 305[6])
    defparam i10209_4_lut_4_lut.LUT_INIT = 16'h5450;
    SB_LUT4 mux_647_i24_3_lut_4_lut (.I0(\data_in_frame[17][7] ), .I1(\data_in_frame[1] [7]), 
            .I2(Kp_23__N_1618), .I3(n23006), .O(n2743[23]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_647_i24_3_lut_4_lut.LUT_INIT = 16'haccc;
    SB_LUT4 i11116_3_lut_4_lut (.I0(n13720), .I1(reset), .I2(rx_data[2]), 
            .I3(\data_in_frame[14] [2]), .O(n15104));
    defparam i11116_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 mux_647_i8_3_lut_4_lut (.I0(\data_in_frame[19][7] ), .I1(\data_in_frame[3] [7]), 
            .I2(Kp_23__N_1618), .I3(n23006), .O(n2743[7]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_647_i8_3_lut_4_lut.LUT_INIT = 16'haccc;
    SB_LUT4 i11355_3_lut_4_lut (.I0(n8), .I1(n29699), .I2(rx_data[4]), 
            .I3(\data_in_frame[20] [4]), .O(n15343));
    defparam i11355_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1453 (.I0(reset), .I1(n161), .I2(n1959), 
            .I3(n10_adj_4143), .O(n29983));
    defparam i1_2_lut_3_lut_4_lut_adj_1453.LUT_INIT = 16'hffbf;
    SB_LUT4 mux_647_i23_3_lut_4_lut (.I0(\data_in_frame[17][6] ), .I1(\data_in_frame[1] [6]), 
            .I2(Kp_23__N_1618), .I3(n23006), .O(n2743[22]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_647_i23_3_lut_4_lut.LUT_INIT = 16'haccc;
    SB_LUT4 i10208_2_lut_2_lut (.I0(reset), .I1(\FRAME_MATCHER.i_31__N_2378 ), 
            .I2(GND_net), .I3(GND_net), .O(n14196));   // verilog/coms.v(130[12] 305[6])
    defparam i10208_2_lut_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i11358_3_lut_4_lut (.I0(n8), .I1(n29699), .I2(rx_data[5]), 
            .I3(\data_in_frame[20] [5]), .O(n15346));
    defparam i11358_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 byte_transmit_counter_3__bdd_4_lut_32662 (.I0(byte_transmit_counter[3]), 
            .I1(n35112), .I2(n35113), .I3(byte_transmit_counter[4]), .O(n37059));
    defparam byte_transmit_counter_3__bdd_4_lut_32662.LUT_INIT = 16'he4aa;
    SB_LUT4 i30906_2_lut (.I0(\FRAME_MATCHER.i [16]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35087));   // verilog/coms.v(158[12:15])
    defparam i30906_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i11361_3_lut_4_lut (.I0(n8), .I1(n29699), .I2(rx_data[6]), 
            .I3(\data_in_frame[20] [6]), .O(n15349));
    defparam i11361_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11364_3_lut_4_lut (.I0(n8), .I1(n29699), .I2(rx_data[7]), 
            .I3(\data_in_frame[20] [7]), .O(n15352));
    defparam i11364_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 mux_647_i22_3_lut_4_lut (.I0(\data_in_frame[17][5] ), .I1(\data_in_frame[1] [5]), 
            .I2(Kp_23__N_1618), .I3(n23006), .O(n2743[21]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_647_i22_3_lut_4_lut.LUT_INIT = 16'haccc;
    SB_LUT4 i1_2_lut_3_lut_adj_1454 (.I0(n23810), .I1(\one_wire_N_380[3] ), 
            .I2(n4), .I3(GND_net), .O(n23821));   // verilog/neopixel.v(53[15:25])
    defparam i1_2_lut_3_lut_adj_1454.LUT_INIT = 16'heaea;
    SB_LUT4 n37059_bdd_4_lut (.I0(n37059), .I1(n35187), .I2(n36337), .I3(byte_transmit_counter[4]), 
            .O(tx_data[4]));
    defparam n37059_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1455 (.I0(n27443), .I1(n30457), .I2(n27408), 
            .I3(n27505), .O(n26806));
    defparam i1_2_lut_3_lut_4_lut_adj_1455.LUT_INIT = 16'h9669;
    SB_LUT4 byte_transmit_counter_3__bdd_4_lut_32653 (.I0(byte_transmit_counter[3]), 
            .I1(n35109), .I2(n35110), .I3(byte_transmit_counter[4]), .O(n37053));
    defparam byte_transmit_counter_3__bdd_4_lut_32653.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1456 (.I0(n30293), .I1(n30356), .I2(n26806), 
            .I3(n27505), .O(n26645));
    defparam i1_2_lut_3_lut_4_lut_adj_1456.LUT_INIT = 16'h9669;
    SB_LUT4 i10670_3_lut (.I0(\data_in_frame[0]_c [7]), .I1(rx_data[7]), 
            .I2(n13736), .I3(GND_net), .O(n14658));   // verilog/coms.v(130[12] 305[6])
    defparam i10670_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 n37053_bdd_4_lut (.I0(n37053), .I1(n35194), .I2(n35193), .I3(byte_transmit_counter[4]), 
            .O(tx_data[5]));
    defparam n37053_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_adj_1457 (.I0(\one_wire_N_380[3] ), .I1(\one_wire_N_380[2] ), 
            .I2(GND_net), .I3(GND_net), .O(n33249));   // verilog/neopixel.v(53[15:25])
    defparam i1_2_lut_adj_1457.LUT_INIT = 16'heeee;
    SB_LUT4 i30909_2_lut (.I0(\FRAME_MATCHER.i [17]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35096));   // verilog/coms.v(158[12:15])
    defparam i30909_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31122_2_lut (.I0(\FRAME_MATCHER.i [18]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35098));   // verilog/coms.v(158[12:15])
    defparam i31122_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31353_2_lut (.I0(\FRAME_MATCHER.i [19]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35106));   // verilog/coms.v(158[12:15])
    defparam i31353_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_647_i21_3_lut_4_lut (.I0(\data_in_frame[17][4] ), .I1(\data_in_frame[1] [4]), 
            .I2(Kp_23__N_1618), .I3(n23006), .O(n2743[20]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_647_i21_3_lut_4_lut.LUT_INIT = 16'haccc;
    SB_LUT4 i3_3_lut_4_lut_adj_1458 (.I0(\data_in_frame[13] [1]), .I1(\data_in_frame[10]_c [5]), 
            .I2(n11848), .I3(n30445), .O(n8_adj_4136));
    defparam i3_3_lut_4_lut_adj_1458.LUT_INIT = 16'h6996;
    SB_LUT4 equal_102_i9_2_lut (.I0(\FRAME_MATCHER.i [4]), .I1(\FRAME_MATCHER.i [5]), 
            .I2(GND_net), .I3(GND_net), .O(n9));   // verilog/coms.v(157[7:23])
    defparam equal_102_i9_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i14_2_lut (.I0(rx_data_ready), .I1(\FRAME_MATCHER.rx_data_ready_prev ), 
            .I2(GND_net), .I3(GND_net), .O(n161));   // verilog/coms.v(156[9:50])
    defparam i14_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_adj_1459 (.I0(\FRAME_MATCHER.i [2]), .I1(\FRAME_MATCHER.i [1]), 
            .I2(GND_net), .I3(GND_net), .O(n19953));   // verilog/coms.v(158[12:15])
    defparam i1_2_lut_adj_1459.LUT_INIT = 16'hbbbb;
    SB_LUT4 i16_4_lut_3_lut (.I0(n30250), .I1(n32065), .I2(n27021), .I3(GND_net), 
            .O(n38));
    defparam i16_4_lut_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i32479_3_lut_4_lut (.I0(n27376), .I1(n30250), .I2(n26681), 
            .I3(\data_out_frame[25] [6]), .O(n36884));
    defparam i32479_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i31041_2_lut (.I0(\FRAME_MATCHER.i [20]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35107));   // verilog/coms.v(158[12:15])
    defparam i31041_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31042_2_lut (.I0(\FRAME_MATCHER.i [21]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35108));   // verilog/coms.v(158[12:15])
    defparam i31042_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31155_2_lut (.I0(\FRAME_MATCHER.i [22]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35111));   // verilog/coms.v(158[12:15])
    defparam i31155_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i2_3_lut_4_lut_adj_1460 (.I0(\data_in_frame[12] [5]), .I1(n11459), 
            .I2(\data_in_frame[13] [0]), .I3(n11907), .O(n11904));   // verilog/coms.v(99[12:25])
    defparam i2_3_lut_4_lut_adj_1460.LUT_INIT = 16'h6996;
    SB_LUT4 i31144_2_lut (.I0(\FRAME_MATCHER.i [23]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35116));   // verilog/coms.v(158[12:15])
    defparam i31144_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i2_3_lut_4_lut_adj_1461 (.I0(\FRAME_MATCHER.i[0] ), .I1(n10_adj_4135), 
            .I2(n19953), .I3(n21178), .O(n13700));
    defparam i2_3_lut_4_lut_adj_1461.LUT_INIT = 16'hfdff;
    SB_LUT4 i2_3_lut_4_lut_adj_1462 (.I0(\data_in_frame[0]_c [7]), .I1(\data_in_frame[1] [1]), 
            .I2(\data_in_frame[1] [2]), .I3(\data_in_frame[3] [3]), .O(n11758));   // verilog/coms.v(76[16:34])
    defparam i2_3_lut_4_lut_adj_1462.LUT_INIT = 16'h6996;
    SB_LUT4 mux_647_i7_3_lut_4_lut (.I0(\data_in_frame[19][6] ), .I1(\data_in_frame[3] [6]), 
            .I2(Kp_23__N_1618), .I3(n23006), .O(n2743[6]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_647_i7_3_lut_4_lut.LUT_INIT = 16'haccc;
    SB_LUT4 mux_647_i6_3_lut_4_lut (.I0(\data_in_frame[19] [5]), .I1(\data_in_frame[3] [5]), 
            .I2(Kp_23__N_1618), .I3(n23006), .O(n2743[5]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_647_i6_3_lut_4_lut.LUT_INIT = 16'haccc;
    SB_LUT4 i15080_3_lut_4_lut (.I0(\data_in_frame[17] [0]), .I1(\data_in_frame[1] [0]), 
            .I2(Kp_23__N_1618), .I3(n23006), .O(n2743[16]));
    defparam i15080_3_lut_4_lut.LUT_INIT = 16'haccc;
    SB_LUT4 mux_647_i5_3_lut_4_lut (.I0(\data_in_frame[19] [4]), .I1(\data_in_frame[3] [4]), 
            .I2(Kp_23__N_1618), .I3(n23006), .O(n2743[4]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_647_i5_3_lut_4_lut.LUT_INIT = 16'haccc;
    SB_LUT4 i2_3_lut_4_lut_adj_1463 (.I0(n27394), .I1(n32065), .I2(n30229), 
            .I3(n27021), .O(n26647));
    defparam i2_3_lut_4_lut_adj_1463.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_3_lut_adj_1464 (.I0(n27394), .I1(n32065), .I2(\data_out_frame[23] [4]), 
            .I3(GND_net), .O(n26681));
    defparam i1_2_lut_3_lut_adj_1464.LUT_INIT = 16'h6969;
    SB_LUT4 i31046_2_lut (.I0(\FRAME_MATCHER.i [24]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35117));   // verilog/coms.v(158[12:15])
    defparam i31046_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_3_lut_adj_1465 (.I0(\one_wire_N_380[3] ), .I1(\one_wire_N_380[2] ), 
            .I2(n23810), .I3(GND_net), .O(n23826));   // verilog/neopixel.v(53[15:25])
    defparam i1_2_lut_3_lut_adj_1465.LUT_INIT = 16'hfefe;
    SB_LUT4 i186_4_lut_4_lut (.I0(n682), .I1(n685), .I2(n679), .I3(n3303), 
            .O(n736));   // verilog/coms.v(139[4] 141[7])
    defparam i186_4_lut_4_lut.LUT_INIT = 16'h00d0;
    SB_LUT4 i31051_2_lut (.I0(\FRAME_MATCHER.i [25]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35118));   // verilog/coms.v(158[12:15])
    defparam i31051_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i4_2_lut_3_lut_3_lut_4_lut (.I0(n30356), .I1(\data_out_frame[23] [7]), 
            .I2(\data_out_frame[14] [4]), .I3(n30097), .O(n26_adj_4191));
    defparam i4_2_lut_3_lut_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i2_2_lut_3_lut_4_lut_adj_1466 (.I0(\data_out_frame[14] [2]), .I1(n10649), 
            .I2(n30356), .I3(n12155), .O(n7_adj_4185));
    defparam i2_2_lut_3_lut_4_lut_adj_1466.LUT_INIT = 16'h6996;
    SB_LUT4 i4_4_lut_adj_1467 (.I0(\data_in_frame[0] [4]), .I1(\data_in_frame[0] [6]), 
            .I2(ID[4]), .I3(ID[6]), .O(n12_adj_4373));   // verilog/coms.v(241[12:32])
    defparam i4_4_lut_adj_1467.LUT_INIT = 16'h7bde;
    SB_LUT4 i2_4_lut_adj_1468 (.I0(\data_in_frame[0] [1]), .I1(\data_in_frame[0][2] ), 
            .I2(ID[1]), .I3(ID[2]), .O(n10_adj_4374));   // verilog/coms.v(241[12:32])
    defparam i2_4_lut_adj_1468.LUT_INIT = 16'h7bde;
    SB_LUT4 i11113_3_lut_4_lut (.I0(n13720), .I1(reset), .I2(rx_data[1]), 
            .I3(\data_in_frame[14] [1]), .O(n15101));
    defparam i11113_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 mux_647_i4_3_lut_4_lut (.I0(\data_in_frame[19][3] ), .I1(\data_in_frame[3] [3]), 
            .I2(Kp_23__N_1618), .I3(n23006), .O(n2743[3]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_647_i4_3_lut_4_lut.LUT_INIT = 16'haccc;
    SB_LUT4 i3_4_lut_adj_1469 (.I0(\data_in_frame[0]_c [7]), .I1(\data_in_frame[0] [5]), 
            .I2(ID[7]), .I3(ID[5]), .O(n11_adj_4375));   // verilog/coms.v(241[12:32])
    defparam i3_4_lut_adj_1469.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_2_lut_3_lut_adj_1470 (.I0(\data_out_frame[13] [0]), .I1(n27435), 
            .I2(n11102), .I3(GND_net), .O(n26691));
    defparam i1_2_lut_3_lut_adj_1470.LUT_INIT = 16'h6969;
    SB_LUT4 i1_2_lut_3_lut_adj_1471 (.I0(\data_out_frame[13] [0]), .I1(n27435), 
            .I2(n11107), .I3(GND_net), .O(n26749));
    defparam i1_2_lut_3_lut_adj_1471.LUT_INIT = 16'h6969;
    SB_LUT4 i2_2_lut_3_lut_adj_1472 (.I0(\data_out_frame[13] [0]), .I1(n27435), 
            .I2(n12155), .I3(GND_net), .O(n22_adj_4213));
    defparam i2_2_lut_3_lut_adj_1472.LUT_INIT = 16'h9696;
    SB_LUT4 i4_4_lut_4_lut_adj_1473 (.I0(\data_out_frame[4] [7]), .I1(n6_adj_4197), 
            .I2(\data_out_frame[4] [2]), .I3(n30065), .O(n11107));
    defparam i4_4_lut_4_lut_adj_1473.LUT_INIT = 16'h9669;
    SB_LUT4 i1_4_lut_adj_1474 (.I0(\data_in_frame[0] [0]), .I1(ID[3]), .I2(ID[0]), 
            .I3(\data_in_frame[0] [3]), .O(n9_adj_4376));   // verilog/coms.v(241[12:32])
    defparam i1_4_lut_adj_1474.LUT_INIT = 16'h7bde;
    SB_LUT4 i2_4_lut_4_lut_adj_1475 (.I0(\data_out_frame[4] [7]), .I1(\data_out_frame[5] [0]), 
            .I2(n4_adj_4187), .I3(\data_out_frame[4] [5]), .O(n26408));
    defparam i2_4_lut_4_lut_adj_1475.LUT_INIT = 16'h6996;
    SB_LUT4 i7_4_lut_adj_1476 (.I0(n9_adj_4376), .I1(n11_adj_4375), .I2(n10_adj_4374), 
            .I3(n12_adj_4373), .O(n31910));   // verilog/coms.v(241[12:32])
    defparam i7_4_lut_adj_1476.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_3_lut_adj_1477 (.I0(\data_out_frame[5] [2]), .I1(\data_out_frame[5] [1]), 
            .I2(\data_out_frame[4] [7]), .I3(GND_net), .O(n4_adj_4187));   // verilog/coms.v(76[16:34])
    defparam i1_2_lut_3_lut_adj_1477.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1478 (.I0(Kp_23__N_1618), .I1(n23006), .I2(GND_net), 
            .I3(GND_net), .O(n23007));   // verilog/coms.v(148[4] 304[11])
    defparam i1_2_lut_adj_1478.LUT_INIT = 16'h8888;
    SB_LUT4 i2_3_lut_4_lut_3_lut_4_lut (.I0(\data_out_frame[14] [2]), .I1(n10649), 
            .I2(n27555), .I3(n30293), .O(n27459));
    defparam i2_3_lut_4_lut_3_lut_4_lut.LUT_INIT = 16'h9669;
    SB_LUT4 i31055_2_lut (.I0(\FRAME_MATCHER.i [26]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35119));   // verilog/coms.v(158[12:15])
    defparam i31055_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31059_2_lut (.I0(\FRAME_MATCHER.i [27]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35120));   // verilog/coms.v(158[12:15])
    defparam i31059_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i3_4_lut_adj_1479 (.I0(\data_in_frame[1] [5]), .I1(\data_in_frame[3] [7]), 
            .I2(\data_in_frame[4][1] ), .I3(\data_in_frame[4][2] ), .O(n30009));   // verilog/coms.v(79[16:43])
    defparam i3_4_lut_adj_1479.LUT_INIT = 16'h6996;
    SB_LUT4 mux_647_i16_3_lut_4_lut (.I0(\data_in_frame[18][7] ), .I1(\data_in_frame[2][7] ), 
            .I2(Kp_23__N_1618), .I3(n23006), .O(n2743[15]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_647_i16_3_lut_4_lut.LUT_INIT = 16'haccc;
    SB_LUT4 i1_2_lut_adj_1480 (.I0(\data_in_frame[6] [3]), .I1(\data_in_frame[6]_c [2]), 
            .I2(GND_net), .I3(GND_net), .O(n30048));   // verilog/coms.v(88[17:28])
    defparam i1_2_lut_adj_1480.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_1481 (.I0(\data_in_frame[8] [4]), .I1(n30048), 
            .I2(Kp_23__N_742), .I3(Kp_23__N_739), .O(n11356));   // verilog/coms.v(88[17:28])
    defparam i3_4_lut_adj_1481.LUT_INIT = 16'h6996;
    SB_LUT4 i31061_2_lut (.I0(\FRAME_MATCHER.i [28]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35122));   // verilog/coms.v(158[12:15])
    defparam i31061_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_647_i15_3_lut_4_lut (.I0(\data_in_frame[18][6] ), .I1(\data_in_frame[2][6] ), 
            .I2(Kp_23__N_1618), .I3(n23006), .O(n2743[14]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_647_i15_3_lut_4_lut.LUT_INIT = 16'haccc;
    SB_LUT4 mux_647_i14_3_lut_4_lut (.I0(\data_in_frame[18] [5]), .I1(\data_in_frame[2][5] ), 
            .I2(Kp_23__N_1618), .I3(n23006), .O(n2743[13]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_647_i14_3_lut_4_lut.LUT_INIT = 16'haccc;
    SB_LUT4 i14998_3_lut_4_lut (.I0(\data_in_frame[18]_c [4]), .I1(\data_in_frame[2] [4]), 
            .I2(Kp_23__N_1618), .I3(n23006), .O(n2743[12]));
    defparam i14998_3_lut_4_lut.LUT_INIT = 16'haccc;
    SB_LUT4 i2_3_lut_adj_1482 (.I0(\data_in_frame[2][6] ), .I1(\data_in_frame[0] [4]), 
            .I2(\data_in_frame[0] [5]), .I3(GND_net), .O(n5_adj_4325));   // verilog/coms.v(79[16:27])
    defparam i2_3_lut_adj_1482.LUT_INIT = 16'h9696;
    SB_LUT4 mux_647_i12_3_lut_4_lut (.I0(\data_in_frame[18][3] ), .I1(\data_in_frame[2][3] ), 
            .I2(Kp_23__N_1618), .I3(n23006), .O(n2743[11]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_647_i12_3_lut_4_lut.LUT_INIT = 16'haccc;
    SB_LUT4 i74_3_lut_4_lut (.I0(\FRAME_MATCHER.i_31__N_2382 ), .I1(\FRAME_MATCHER.i_31__N_2378 ), 
            .I2(LED_c), .I3(n36_adj_4142), .O(n56));   // verilog/coms.v(148[4] 304[11])
    defparam i74_3_lut_4_lut.LUT_INIT = 16'hf0e0;
    SB_LUT4 equal_101_i8_2_lut_3_lut (.I0(\FRAME_MATCHER.i [2]), .I1(\FRAME_MATCHER.i [1]), 
            .I2(\FRAME_MATCHER.i[0] ), .I3(GND_net), .O(n8));   // verilog/coms.v(158[12:15])
    defparam equal_101_i8_2_lut_3_lut.LUT_INIT = 16'hfdfd;
    SB_LUT4 i1_2_lut_3_lut_adj_1483 (.I0(\FRAME_MATCHER.i_31__N_2382 ), .I1(\FRAME_MATCHER.i_31__N_2378 ), 
            .I2(\FRAME_MATCHER.i_31__N_2384 ), .I3(GND_net), .O(n1959));   // verilog/coms.v(148[4] 304[11])
    defparam i1_2_lut_3_lut_adj_1483.LUT_INIT = 16'hfefe;
    SB_LUT4 i4_4_lut_adj_1484 (.I0(\data_in_frame[5] [3]), .I1(\data_in_frame[7] [4]), 
            .I2(\data_in_frame[5] [2]), .I3(n6_adj_4218), .O(n30415));
    defparam i4_4_lut_adj_1484.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_1485 (.I0(\data_in_frame[1] [0]), .I1(\data_in_frame[1] [1]), 
            .I2(\data_in_frame[0] [6]), .I3(GND_net), .O(n9232));   // verilog/coms.v(73[16:27])
    defparam i2_3_lut_adj_1485.LUT_INIT = 16'h9696;
    SB_LUT4 equal_92_i8_2_lut_3_lut (.I0(\FRAME_MATCHER.i [2]), .I1(\FRAME_MATCHER.i [1]), 
            .I2(\FRAME_MATCHER.i[0] ), .I3(GND_net), .O(n8_adj_4301));   // verilog/coms.v(158[12:15])
    defparam equal_92_i8_2_lut_3_lut.LUT_INIT = 16'hdfdf;
    SB_LUT4 i1_2_lut_3_lut_adj_1486 (.I0(\data_in_frame[10]_c [4]), .I1(n4_c), 
            .I2(\data_in_frame[10]_c [5]), .I3(GND_net), .O(n30433));   // verilog/coms.v(77[16:43])
    defparam i1_2_lut_3_lut_adj_1486.LUT_INIT = 16'h9696;
    SB_LUT4 i64_3_lut_4_lut (.I0(\data_out_frame[4] [0]), .I1(\data_out_frame[5] [7]), 
            .I2(\data_out_frame[4] [2]), .I3(\data_out_frame[4] [3]), .O(n27406));
    defparam i64_3_lut_4_lut.LUT_INIT = 16'h9669;
    SB_LUT4 mux_647_i11_3_lut_4_lut (.I0(\data_in_frame[18][2] ), .I1(\data_in_frame[2][2] ), 
            .I2(Kp_23__N_1618), .I3(n23006), .O(n2743[10]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_647_i11_3_lut_4_lut.LUT_INIT = 16'haccc;
    SB_LUT4 i15_3_lut_4_lut (.I0(\data_out_frame[4] [0]), .I1(\data_out_frame[5] [7]), 
            .I2(n11985), .I3(n1668), .O(n35_adj_4217));
    defparam i15_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 mux_647_i10_3_lut_4_lut (.I0(\data_in_frame[18][1] ), .I1(\data_in_frame[2][1] ), 
            .I2(Kp_23__N_1618), .I3(n23006), .O(n2743[9]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_647_i10_3_lut_4_lut.LUT_INIT = 16'haccc;
    SB_LUT4 i2_3_lut_4_lut_adj_1487 (.I0(\data_in_frame[14] [0]), .I1(n11874), 
            .I2(\data_in_frame[13] [7]), .I3(\data_in_frame[13] [6]), .O(n11708));   // verilog/coms.v(79[16:43])
    defparam i2_3_lut_4_lut_adj_1487.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_1488 (.I0(n11163), .I1(\data_in_frame[7] [6]), 
            .I2(n11319), .I3(GND_net), .O(n9417));
    defparam i2_3_lut_adj_1488.LUT_INIT = 16'h9696;
    SB_LUT4 i1_3_lut_4_lut_adj_1489 (.I0(n27516), .I1(\data_out_frame[14] [3]), 
            .I2(n11795), .I3(n27492), .O(n30314));
    defparam i1_3_lut_4_lut_adj_1489.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_1490 (.I0(n11750), .I1(n30415), .I2(n5_adj_4325), 
            .I3(GND_net), .O(n9413));
    defparam i2_3_lut_adj_1490.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1491 (.I0(n9413), .I1(n9417), .I2(GND_net), .I3(GND_net), 
            .O(n30256));
    defparam i1_2_lut_adj_1491.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_4_lut_adj_1492 (.I0(\data_out_frame[4] [5]), .I1(n30341), 
            .I2(\data_out_frame[13] [3]), .I3(n11107), .O(n11609));   // verilog/coms.v(77[16:27])
    defparam i1_2_lut_4_lut_adj_1492.LUT_INIT = 16'h6996;
    SB_LUT4 i4_4_lut_adj_1493 (.I0(n7_adj_4184), .I1(\data_in_frame[7] [7]), 
            .I2(n27451), .I3(n9417), .O(n31591));
    defparam i4_4_lut_adj_1493.LUT_INIT = 16'h9669;
    SB_LUT4 i2_3_lut_adj_1494 (.I0(\data_in_frame[12][3] ), .I1(n30267), 
            .I2(n31591), .I3(GND_net), .O(n11772));
    defparam i2_3_lut_adj_1494.LUT_INIT = 16'h6969;
    SB_LUT4 i1_2_lut_4_lut_adj_1495 (.I0(\data_out_frame[4] [5]), .I1(n30341), 
            .I2(\data_out_frame[13] [3]), .I3(n27410), .O(n27443));   // verilog/coms.v(77[16:27])
    defparam i1_2_lut_4_lut_adj_1495.LUT_INIT = 16'h6996;
    SB_LUT4 i2_4_lut_adj_1496 (.I0(\data_in_frame[18] [5]), .I1(n10701), 
            .I2(\data_in_frame[16] [3]), .I3(\data_in_frame[18][6] ), .O(n6_adj_4377));
    defparam i2_4_lut_adj_1496.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_1497 (.I0(\data_in_frame[19][0] ), .I1(n6_adj_4377), 
            .I2(n31769), .I3(n11312), .O(n30023));
    defparam i3_4_lut_adj_1497.LUT_INIT = 16'h6996;
    SB_LUT4 i15205_3_lut (.I0(n13754), .I1(rx_data[1]), .I2(\data_in_frame[15]_c [1]), 
            .I3(GND_net), .O(n15193));   // verilog/coms.v(94[13:20])
    defparam i15205_3_lut.LUT_INIT = 16'he4e4;
    SB_LUT4 i4_4_lut_adj_1498 (.I0(n33_adj_4220), .I1(\data_in_frame[12] [4]), 
            .I2(n11907), .I3(n6_adj_4211), .O(n26621));
    defparam i4_4_lut_adj_1498.LUT_INIT = 16'h6996;
    SB_LUT4 i2_2_lut_3_lut_adj_1499 (.I0(n27406), .I1(n30087), .I2(n30373), 
            .I3(GND_net), .O(n10581));
    defparam i2_2_lut_3_lut_adj_1499.LUT_INIT = 16'h6969;
    SB_LUT4 i4_4_lut_adj_1500 (.I0(\data_in_frame[16] [4]), .I1(n26621), 
            .I2(\data_in_frame[18][7] ), .I3(n6_adj_4183), .O(n31769));
    defparam i4_4_lut_adj_1500.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1501 (.I0(n27406), .I1(n30087), .I2(n11985), 
            .I3(GND_net), .O(n27376));
    defparam i1_2_lut_3_lut_adj_1501.LUT_INIT = 16'h6969;
    SB_LUT4 i1_2_lut_adj_1502 (.I0(\data_in_frame[8] [0]), .I1(n9266), .I2(GND_net), 
            .I3(GND_net), .O(n6_adj_4378));
    defparam i1_2_lut_adj_1502.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut_adj_1503 (.I0(\data_in_frame[9] [7]), .I1(n26966), 
            .I2(n12234), .I3(n6_adj_4378), .O(n27537));
    defparam i4_4_lut_adj_1503.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1504 (.I0(\data_in_frame[9] [4]), .I1(\data_in_frame[9] [5]), 
            .I2(GND_net), .I3(GND_net), .O(n11119));
    defparam i1_2_lut_adj_1504.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1505 (.I0(\data_in_frame[9] [1]), .I1(\data_in_frame[9] [2]), 
            .I2(GND_net), .I3(GND_net), .O(n11689));   // verilog/coms.v(88[17:63])
    defparam i1_2_lut_adj_1505.LUT_INIT = 16'h6666;
    SB_LUT4 i11142_3_lut (.I0(\data_in_frame[15]_c [0]), .I1(rx_data[0]), 
            .I2(n13754), .I3(GND_net), .O(n15130));   // verilog/coms.v(130[12] 305[6])
    defparam i11142_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 select_442_Select_213_i3_3_lut_4_lut (.I0(n10579), .I1(n27513), 
            .I2(\FRAME_MATCHER.state[3] ), .I3(n30116), .O(n3_adj_4297));
    defparam select_442_Select_213_i3_3_lut_4_lut.LUT_INIT = 16'h9060;
    SB_LUT4 data_in_frame_9__7__I_0_2_lut (.I0(\data_in_frame[9] [7]), .I1(\data_in_frame[9] [6]), 
            .I2(GND_net), .I3(GND_net), .O(Kp_23__N_955));   // verilog/coms.v(88[17:28])
    defparam data_in_frame_9__7__I_0_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_1506 (.I0(Kp_23__N_955), .I1(n11689), .I2(n11119), 
            .I3(\data_in_frame[9] [3]), .O(Kp_23__N_950));   // verilog/coms.v(88[17:63])
    defparam i3_4_lut_adj_1506.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1507 (.I0(Kp_23__N_950), .I1(n27388), .I2(GND_net), 
            .I3(GND_net), .O(n27453));
    defparam i1_2_lut_adj_1507.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_3_lut_adj_1508 (.I0(\data_in_frame[10]_c [4]), .I1(n4_c), 
            .I2(n11848), .I3(GND_net), .O(n11459));   // verilog/coms.v(77[16:43])
    defparam i1_2_lut_3_lut_adj_1508.LUT_INIT = 16'h9696;
    SB_LUT4 i1_3_lut_adj_1509 (.I0(n11256), .I1(n31804), .I2(\data_in_frame[9] [0]), 
            .I3(GND_net), .O(n27388));
    defparam i1_3_lut_adj_1509.LUT_INIT = 16'h6969;
    SB_LUT4 i2_3_lut_adj_1510 (.I0(\data_in_frame[12][1] ), .I1(n30166), 
            .I2(\data_in_frame[9] [7]), .I3(GND_net), .O(n30400));
    defparam i2_3_lut_adj_1510.LUT_INIT = 16'h9696;
    SB_LUT4 i2_3_lut_adj_1511 (.I0(\data_in_frame[9] [3]), .I1(\data_in_frame[9] [4]), 
            .I2(n26732), .I3(GND_net), .O(n26793));
    defparam i2_3_lut_adj_1511.LUT_INIT = 16'h9696;
    SB_LUT4 i6_4_lut_4_lut (.I0(n30356), .I1(\data_out_frame[25] [0]), .I2(n26669), 
            .I3(n30424), .O(n14));
    defparam i6_4_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1512 (.I0(n10579), .I1(n27513), .I2(\data_out_frame[25] [7]), 
            .I3(GND_net), .O(n8_adj_4195));
    defparam i1_2_lut_3_lut_adj_1512.LUT_INIT = 16'h6969;
    SB_LUT4 mux_647_i20_3_lut_4_lut (.I0(\data_in_frame[17][3] ), .I1(\data_in_frame[1] [3]), 
            .I2(Kp_23__N_1618), .I3(n23006), .O(n2743[19]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_647_i20_3_lut_4_lut.LUT_INIT = 16'haccc;
    SB_LUT4 i1_2_lut_3_lut_adj_1513 (.I0(\data_in_frame[9] [2]), .I1(n11738), 
            .I2(n11877), .I3(GND_net), .O(n30094));   // verilog/coms.v(76[16:42])
    defparam i1_2_lut_3_lut_adj_1513.LUT_INIT = 16'h9696;
    SB_LUT4 i1_4_lut_adj_1514 (.I0(Kp_23__N_940), .I1(n26793), .I2(n30400), 
            .I3(n27388), .O(n30427));
    defparam i1_4_lut_adj_1514.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1515 (.I0(n11985), .I1(n30373), .I2(n27443), 
            .I3(\data_out_frame[23] [7]), .O(n27422));
    defparam i1_2_lut_3_lut_4_lut_adj_1515.LUT_INIT = 16'h9669;
    SB_LUT4 i1_3_lut_adj_1516 (.I0(\data_in_frame[12][2] ), .I1(\data_in_frame[10][1] ), 
            .I2(n27537), .I3(GND_net), .O(n30262));
    defparam i1_3_lut_adj_1516.LUT_INIT = 16'h6969;
    SB_LUT4 i2_3_lut_adj_1517 (.I0(n30262), .I1(n30427), .I2(\data_in_frame[14] [3]), 
            .I3(GND_net), .O(n31639));
    defparam i2_3_lut_adj_1517.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_adj_1518 (.I0(\data_in_frame[18][2] ), .I1(n9324), 
            .I2(n26679), .I3(GND_net), .O(n6_adj_4133));
    defparam i1_2_lut_3_lut_adj_1518.LUT_INIT = 16'h9696;
    SB_LUT4 i4_4_lut_adj_1519 (.I0(n30353), .I1(\data_in_frame[4] [6]), 
            .I2(\data_in_frame[7] [2]), .I3(n30376), .O(n10_adj_4379));
    defparam i4_4_lut_adj_1519.LUT_INIT = 16'h6996;
    SB_LUT4 i5_3_lut_adj_1520 (.I0(n11204), .I1(n10_adj_4379), .I2(\data_in_frame[5] [1]), 
            .I3(GND_net), .O(n11877));
    defparam i5_3_lut_adj_1520.LUT_INIT = 16'h9696;
    uart_tx tx (.n1(n1), .tx_o(tx_o), .clk16MHz(clk16MHz), .tx_data({tx_data}), 
            .r_SM_Main({r_SM_Main}), .r_Clock_Count({r_Clock_Count}), .n37166(n37166), 
            .\r_SM_Main_2__N_3406[1] (\r_SM_Main_2__N_3406[1] ), .\r_Bit_Index[0] (\r_Bit_Index[0] ), 
            .n31646(n31646), .GND_net(GND_net), .\r_SM_Main_2__N_3415[0] (r_SM_Main_2__N_3415[0]), 
            .n32465(n32465), .n27(n27), .n13157(n13157), .VCC_net(VCC_net), 
            .n30575(n30575), .n14661(n14661), .tx_active(tx_active), .n31238(n31238), 
            .n6(n6), .n15330(n15330), .tx_enable(tx_enable), .\o_Rx_DV_N_3358[24] (\o_Rx_DV_N_3358[24] ), 
            .n32559(n32559)) /* synthesis syn_module_defined=1 */ ;   // verilog/coms.v(110[25:94])
    uart_rx rx (.baudrate({baudrate}), .GND_net(GND_net), .VCC_net(VCC_net), 
            .\o_Rx_DV_N_3358[24] (\o_Rx_DV_N_3358[24] ), .n27(n27), .n10933(n10933), 
            .n29(n29), .n23(n23), .n32393(n32393), .r_SM_Main({r_SM_Main_adj_16}), 
            .n6(n6_adj_5), .n32017(n32017), .\o_Rx_DV_N_3358[8] (\o_Rx_DV_N_3358[8] ), 
            .\o_Rx_DV_N_3358[12] (\o_Rx_DV_N_3358[12] ), .n2833(n2833), 
            .n29929(n29929), .n13044(n13044), .n4(n4_adj_6), .clk16MHz(clk16MHz), 
            .r_Rx_Data(r_Rx_Data), .RX_N_2(RX_N_2), .r_Clock_Count({r_Clock_Count_adj_17}), 
            .n32391(n32391), .n14947(n14947), .rx_data({rx_data}), .n14945(n14945), 
            .n14944(n14944), .n14943(n14943), .\r_SM_Main_2__N_3316[1] (\r_SM_Main_2__N_3316[1] ), 
            .\o_Rx_DV_N_3358[7] (\o_Rx_DV_N_3358[7] ), .\o_Rx_DV_N_3358[6] (\o_Rx_DV_N_3358[6] ), 
            .\o_Rx_DV_N_3358[5] (\o_Rx_DV_N_3358[5] ), .\o_Rx_DV_N_3358[4] (\o_Rx_DV_N_3358[4] ), 
            .\o_Rx_DV_N_3358[3] (\o_Rx_DV_N_3358[3] ), .\o_Rx_DV_N_3358[2] (\o_Rx_DV_N_3358[2] ), 
            .\o_Rx_DV_N_3358[1] (\o_Rx_DV_N_3358[1] ), .\o_Rx_DV_N_3358[0] (\o_Rx_DV_N_3358[0] ), 
            .\r_Bit_Index[0] (\r_Bit_Index[0]_adj_15 ), .n31572(n31572), 
            .n32477(n32477), .n32769(n32769), .n32771(n32771), .n32787(n32787), 
            .n32825(n32825), .n13161(n13161), .n30722(n30722), .n15418(n15418), 
            .n27581(n27581), .rx_data_ready(rx_data_ready), .n15369(n15369), 
            .n15138(n15138), .n15134(n15134), .n15133(n15133), .n32807(n32807), 
            .n32753(n32753), .n32735(n32735), .n32789(n32789)) /* synthesis syn_module_defined=1 */ ;   // verilog/coms.v(96[25:68])
    
endmodule
//
// Verilog Description of module uart_tx
//

module uart_tx (n1, tx_o, clk16MHz, tx_data, r_SM_Main, r_Clock_Count, 
            n37166, \r_SM_Main_2__N_3406[1] , \r_Bit_Index[0] , n31646, 
            GND_net, \r_SM_Main_2__N_3415[0] , n32465, n27, n13157, 
            VCC_net, n30575, n14661, tx_active, n31238, n6, n15330, 
            tx_enable, \o_Rx_DV_N_3358[24] , n32559) /* synthesis syn_module_defined=1 */ ;
    output n1;
    output tx_o;
    input clk16MHz;
    input [7:0]tx_data;
    output [2:0]r_SM_Main;
    output [8:0]r_Clock_Count;
    input n37166;
    input \r_SM_Main_2__N_3406[1] ;
    output \r_Bit_Index[0] ;
    output n31646;
    input GND_net;
    input \r_SM_Main_2__N_3415[0] ;
    input n32465;
    input n27;
    output n13157;
    input VCC_net;
    output n30575;
    input n14661;
    output tx_active;
    input n31238;
    output n6;
    input n15330;
    output tx_enable;
    input \o_Rx_DV_N_3358[24] ;
    input n32559;
    
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(33[6:14])
    
    wire n3, n10507;
    wire [7:0]r_Tx_Data;   // verilog/uart_tx.v(35[16:25])
    
    wire n7505;
    wire [8:0]n41;
    
    wire n14303;
    wire [2:0]r_Bit_Index;   // verilog/uart_tx.v(34[16:27])
    
    wire n7504, n30566, n37086, n37080, o_Tx_Serial_N_3468, n37083, 
        n37077, n26118, n26117, n26116, n26115, n26114, n26113, 
        n26112, n26111;
    wire [2:0]n460;
    
    wire n3_adj_4132;
    
    SB_DFFE o_Tx_Serial_51 (.Q(tx_o), .C(clk16MHz), .E(n1), .D(n3));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i0 (.Q(r_Tx_Data[0]), .C(clk16MHz), .E(n10507), 
            .D(tx_data[0]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFSR r_SM_Main_i0 (.Q(r_SM_Main[0]), .C(clk16MHz), .D(n7505), 
            .R(r_SM_Main[2]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFESR r_Clock_Count_1118__i0 (.Q(r_Clock_Count[0]), .C(clk16MHz), 
            .E(n1), .D(n41[0]), .R(n14303));   // verilog/uart_tx.v(119[34:51])
    SB_DFF r_SM_Main_i2 (.Q(r_SM_Main[2]), .C(clk16MHz), .D(n37166));   // verilog/uart_tx.v(41[10] 144[8])
    SB_LUT4 i32542_4_lut (.I0(r_SM_Main[2]), .I1(\r_SM_Main_2__N_3406[1] ), 
            .I2(r_SM_Main[1]), .I3(r_SM_Main[0]), .O(n14303));
    defparam i32542_4_lut.LUT_INIT = 16'h1115;
    SB_LUT4 i2_3_lut (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), .I2(\r_Bit_Index[0] ), 
            .I3(GND_net), .O(n31646));
    defparam i2_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i3829_4_lut (.I0(\r_SM_Main_2__N_3415[0] ), .I1(n32465), .I2(r_SM_Main[1]), 
            .I3(n27), .O(n7504));   // verilog/uart_tx.v(44[7] 143[14])
    defparam i3829_4_lut.LUT_INIT = 16'h0a3a;
    SB_LUT4 i3830_3_lut (.I0(n7504), .I1(\r_SM_Main_2__N_3406[1] ), .I2(r_SM_Main[0]), 
            .I3(GND_net), .O(n7505));   // verilog/uart_tx.v(44[7] 143[14])
    defparam i3830_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i26214_2_lut (.I0(r_SM_Main[2]), .I1(r_SM_Main[0]), .I2(GND_net), 
            .I3(GND_net), .O(n30566));
    defparam i26214_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_1_lut (.I0(r_SM_Main[2]), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n1));
    defparam i1_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1761826_i1_3_lut (.I0(n37086), .I1(n37080), .I2(r_Bit_Index[2]), 
            .I3(GND_net), .O(o_Tx_Serial_N_3468));
    defparam i1761826_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 r_SM_Main_2__I_0_62_i3_3_lut (.I0(r_SM_Main[0]), .I1(o_Tx_Serial_N_3468), 
            .I2(r_SM_Main[1]), .I3(GND_net), .O(n3));   // verilog/uart_tx.v(44[7] 143[14])
    defparam r_SM_Main_2__I_0_62_i3_3_lut.LUT_INIT = 16'he5e5;
    SB_DFFESR r_Clock_Count_1118__i1 (.Q(r_Clock_Count[1]), .C(clk16MHz), 
            .E(n1), .D(n41[1]), .R(n14303));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1118__i2 (.Q(r_Clock_Count[2]), .C(clk16MHz), 
            .E(n1), .D(n41[2]), .R(n14303));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1118__i3 (.Q(r_Clock_Count[3]), .C(clk16MHz), 
            .E(n1), .D(n41[3]), .R(n14303));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1118__i4 (.Q(r_Clock_Count[4]), .C(clk16MHz), 
            .E(n1), .D(n41[4]), .R(n14303));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1118__i5 (.Q(r_Clock_Count[5]), .C(clk16MHz), 
            .E(n1), .D(n41[5]), .R(n14303));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1118__i6 (.Q(r_Clock_Count[6]), .C(clk16MHz), 
            .E(n1), .D(n41[6]), .R(n14303));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1118__i7 (.Q(r_Clock_Count[7]), .C(clk16MHz), 
            .E(n1), .D(n41[7]), .R(n14303));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1118__i8 (.Q(r_Clock_Count[8]), .C(clk16MHz), 
            .E(n1), .D(n41[8]), .R(n14303));   // verilog/uart_tx.v(119[34:51])
    SB_LUT4 r_Bit_Index_0__bdd_4_lut (.I0(\r_Bit_Index[0] ), .I1(r_Tx_Data[2]), 
            .I2(r_Tx_Data[3]), .I3(r_Bit_Index[1]), .O(n37083));
    defparam r_Bit_Index_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n37083_bdd_4_lut (.I0(n37083), .I1(r_Tx_Data[1]), .I2(r_Tx_Data[0]), 
            .I3(r_Bit_Index[1]), .O(n37086));
    defparam n37083_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 r_Bit_Index_0__bdd_4_lut_32671 (.I0(\r_Bit_Index[0] ), .I1(r_Tx_Data[6]), 
            .I2(r_Tx_Data[7]), .I3(r_Bit_Index[1]), .O(n37077));
    defparam r_Bit_Index_0__bdd_4_lut_32671.LUT_INIT = 16'he4aa;
    SB_LUT4 i32572_2_lut_3_lut_4_lut (.I0(\r_SM_Main_2__N_3406[1] ), .I1(r_SM_Main[1]), 
            .I2(r_SM_Main[2]), .I3(r_SM_Main[0]), .O(n13157));
    defparam i32572_2_lut_3_lut_4_lut.LUT_INIT = 16'h0007;
    SB_LUT4 r_Clock_Count_1118_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[8]), .I3(n26118), .O(n41[8])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1118_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 r_Clock_Count_1118_add_4_9_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[7]), .I3(n26117), .O(n41[7])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1118_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1118_add_4_9 (.CI(n26117), .I0(GND_net), .I1(r_Clock_Count[7]), 
            .CO(n26118));
    SB_LUT4 r_Clock_Count_1118_add_4_8_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[6]), .I3(n26116), .O(n41[6])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1118_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1118_add_4_8 (.CI(n26116), .I0(GND_net), .I1(r_Clock_Count[6]), 
            .CO(n26117));
    SB_LUT4 r_Clock_Count_1118_add_4_7_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[5]), .I3(n26115), .O(n41[5])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1118_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1118_add_4_7 (.CI(n26115), .I0(GND_net), .I1(r_Clock_Count[5]), 
            .CO(n26116));
    SB_LUT4 r_Clock_Count_1118_add_4_6_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[4]), .I3(n26114), .O(n41[4])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1118_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1118_add_4_6 (.CI(n26114), .I0(GND_net), .I1(r_Clock_Count[4]), 
            .CO(n26115));
    SB_LUT4 r_Clock_Count_1118_add_4_5_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[3]), .I3(n26113), .O(n41[3])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1118_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1118_add_4_5 (.CI(n26113), .I0(GND_net), .I1(r_Clock_Count[3]), 
            .CO(n26114));
    SB_LUT4 r_Clock_Count_1118_add_4_4_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[2]), .I3(n26112), .O(n41[2])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1118_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1118_add_4_4 (.CI(n26112), .I0(GND_net), .I1(r_Clock_Count[2]), 
            .CO(n26113));
    SB_LUT4 r_Clock_Count_1118_add_4_3_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[1]), .I3(n26111), .O(n41[1])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1118_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1118_add_4_3 (.CI(n26111), .I0(GND_net), .I1(r_Clock_Count[1]), 
            .CO(n26112));
    SB_LUT4 r_Clock_Count_1118_add_4_2_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[0]), .I3(VCC_net), .O(n41[0])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1118_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR r_Bit_Index_i1 (.Q(r_Bit_Index[1]), .C(clk16MHz), .E(n13157), 
            .D(n460[1]), .R(n30575));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFESR r_Bit_Index_i2 (.Q(r_Bit_Index[2]), .C(clk16MHz), .E(n13157), 
            .D(n460[2]), .R(n30575));   // verilog/uart_tx.v(41[10] 144[8])
    SB_LUT4 n37077_bdd_4_lut (.I0(n37077), .I1(r_Tx_Data[5]), .I2(r_Tx_Data[4]), 
            .I3(r_Bit_Index[1]), .O(n37080));
    defparam n37077_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY r_Clock_Count_1118_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(r_Clock_Count[0]), 
            .CO(n26111));
    SB_DFF r_Tx_Active_53 (.Q(tx_active), .C(clk16MHz), .D(n14661));   // verilog/uart_tx.v(41[10] 144[8])
    SB_LUT4 i17_4_lut (.I0(r_SM_Main[0]), .I1(n31238), .I2(r_SM_Main[1]), 
            .I3(\r_SM_Main_2__N_3415[0] ), .O(n6));
    defparam i17_4_lut.LUT_INIT = 16'h3530;
    SB_DFFE r_Bit_Index_i0 (.Q(\r_Bit_Index[0] ), .C(clk16MHz), .E(VCC_net), 
            .D(n15330));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFSR r_SM_Main_i1 (.Q(r_SM_Main[1]), .C(clk16MHz), .D(n3_adj_4132), 
            .R(r_SM_Main[2]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_LUT4 i1264_3_lut (.I0(r_Bit_Index[2]), .I1(r_Bit_Index[1]), .I2(\r_Bit_Index[0] ), 
            .I3(GND_net), .O(n460[2]));   // verilog/uart_tx.v(99[36:51])
    defparam i1264_3_lut.LUT_INIT = 16'h6a6a;
    SB_DFFE r_Tx_Data_i7 (.Q(r_Tx_Data[7]), .C(clk16MHz), .E(n10507), 
            .D(tx_data[7]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i6 (.Q(r_Tx_Data[6]), .C(clk16MHz), .E(n10507), 
            .D(tx_data[6]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i5 (.Q(r_Tx_Data[5]), .C(clk16MHz), .E(n10507), 
            .D(tx_data[5]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i4 (.Q(r_Tx_Data[4]), .C(clk16MHz), .E(n10507), 
            .D(tx_data[4]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i3 (.Q(r_Tx_Data[3]), .C(clk16MHz), .E(n10507), 
            .D(tx_data[3]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i2 (.Q(r_Tx_Data[2]), .C(clk16MHz), .E(n10507), 
            .D(tx_data[2]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i1 (.Q(r_Tx_Data[1]), .C(clk16MHz), .E(n10507), 
            .D(tx_data[1]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_LUT4 i1257_2_lut (.I0(r_Bit_Index[1]), .I1(\r_Bit_Index[0] ), .I2(GND_net), 
            .I3(GND_net), .O(n460[1]));   // verilog/uart_tx.v(99[36:51])
    defparam i1257_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 o_Tx_Serial_I_0_1_lut (.I0(tx_o), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(tx_enable));   // verilog/uart_tx.v(39[24:36])
    defparam o_Tx_Serial_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i4481_4_lut (.I0(\o_Rx_DV_N_3358[24] ), .I1(r_SM_Main[1]), .I2(n27), 
            .I3(n32559), .O(n3_adj_4132));   // verilog/uart_tx.v(44[7] 143[14])
    defparam i4481_4_lut.LUT_INIT = 16'hc9cc;
    SB_LUT4 i2_3_lut_4_lut (.I0(r_SM_Main[1]), .I1(r_SM_Main[2]), .I2(r_SM_Main[0]), 
            .I3(\r_SM_Main_2__N_3415[0] ), .O(n10507));
    defparam i2_3_lut_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 i32579_4_lut_4_lut (.I0(\r_SM_Main_2__N_3406[1] ), .I1(r_SM_Main[1]), 
            .I2(n30566), .I3(n31646), .O(n30575));
    defparam i32579_4_lut_4_lut.LUT_INIT = 16'h0703;
    
endmodule
//
// Verilog Description of module uart_rx
//

module uart_rx (baudrate, GND_net, VCC_net, \o_Rx_DV_N_3358[24] , n27, 
            n10933, n29, n23, n32393, r_SM_Main, n6, n32017, \o_Rx_DV_N_3358[8] , 
            \o_Rx_DV_N_3358[12] , n2833, n29929, n13044, n4, clk16MHz, 
            r_Rx_Data, RX_N_2, r_Clock_Count, n32391, n14947, rx_data, 
            n14945, n14944, n14943, \r_SM_Main_2__N_3316[1] , \o_Rx_DV_N_3358[7] , 
            \o_Rx_DV_N_3358[6] , \o_Rx_DV_N_3358[5] , \o_Rx_DV_N_3358[4] , 
            \o_Rx_DV_N_3358[3] , \o_Rx_DV_N_3358[2] , \o_Rx_DV_N_3358[1] , 
            \o_Rx_DV_N_3358[0] , \r_Bit_Index[0] , n31572, n32477, n32769, 
            n32771, n32787, n32825, n13161, n30722, n15418, n27581, 
            rx_data_ready, n15369, n15138, n15134, n15133, n32807, 
            n32753, n32735, n32789) /* synthesis syn_module_defined=1 */ ;
    input [31:0]baudrate;
    input GND_net;
    input VCC_net;
    output \o_Rx_DV_N_3358[24] ;
    output n27;
    output n10933;
    output n29;
    output n23;
    input n32393;
    output [2:0]r_SM_Main;
    output n6;
    output n32017;
    output \o_Rx_DV_N_3358[8] ;
    output \o_Rx_DV_N_3358[12] ;
    input n2833;
    input n29929;
    output n13044;
    output n4;
    input clk16MHz;
    output r_Rx_Data;
    input RX_N_2;
    output [7:0]r_Clock_Count;
    output n32391;
    input n14947;
    output [7:0]rx_data;
    input n14945;
    input n14944;
    input n14943;
    input \r_SM_Main_2__N_3316[1] ;
    output \o_Rx_DV_N_3358[7] ;
    output \o_Rx_DV_N_3358[6] ;
    output \o_Rx_DV_N_3358[5] ;
    output \o_Rx_DV_N_3358[4] ;
    output \o_Rx_DV_N_3358[3] ;
    output \o_Rx_DV_N_3358[2] ;
    output \o_Rx_DV_N_3358[1] ;
    output \o_Rx_DV_N_3358[0] ;
    output \r_Bit_Index[0] ;
    output n31572;
    input n32477;
    input n32769;
    output n32771;
    input n32787;
    output n32825;
    output n13161;
    output n30722;
    input n15418;
    input n27581;
    output rx_data_ready;
    input n15369;
    input n15138;
    input n15134;
    input n15133;
    output n32807;
    output n32753;
    output n32735;
    output n32789;
    
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(33[6:14])
    
    wire n1409, n45, n2830, n41;
    wire [23:0]n5050;
    
    wire n2481, n2144, n25911, n2835, n31, n2834, n33, n2838, 
        n25, n2837, n27_c, n2836, n29_c, n25912, n2843, n15, 
        n25842, n1836, n1459, n25843, n2842, n17, n2841, n19, 
        n2840, n21, n538, n25811;
    wire [23:0]n4920;
    
    wire n1837, n1460, n25841;
    wire [23:0]n4816;
    
    wire n1261, n1602, n25810, n1838, n1011, n25840, n2839, n23_c, 
        n2833_adj_3856, n35, n35637, n2844, n36165, n36383, n36381, 
        n35640, n2845, n12, n36443, n1262, n25809, n1839, n856, 
        n25839, n2482, n2013, n25910, n20, n43, n38, n37, n36444, 
        n39, n35631, n25966, n2831, n2638, n25967;
    wire [23:0]n5128;
    
    wire n2832, n2519, n25965, n1263, n25808, n2483, n1879, n25909, 
        n34, n41_adj_3857, n36473, n18, n35627, n36730, n43_adj_3858, 
        n36474, n36064, n2397, n25964, n39_adj_3859, n35739, n36193, 
        n36, n38_adj_3860, n16, n24, n36024;
    wire [23:0]n4998;
    
    wire n2239, n698, n25873, n1264, n25807, n14, n35662, n36756, 
        n25874, n36757, n36633, n36499, n36566, n805, n6503, n36832, 
        n1840, n25838, n1560;
    wire [23:0]n4868;
    wire [23:0]n294;
    
    wire n1701, n1265, n25806, n36062, n36862, n2828, n36863, 
        n2272, n25963, n2484, n1742, n25908, n2240, n858, n25872, 
        n32365, n30777, n1841, n25837, n1266, n25805;
    wire [23:0]n4972;
    
    wire n2098, n25871, n2099, n25870, n2100, n25869;
    wire [23:0]n4894;
    
    wire n2977, n36888, n44, n803, n1267, n25804, n7532, n44_adj_3861, 
        n32359, n30799, n2101, n25868, n32363, n30786, n25706, 
        n25705, n32265;
    wire [23:0]n4790;
    
    wire n1111, n25803, n2485, n25907, n959, n33710, n25704, n32395, 
        n1974, n1112, n25802, n25962, n25703;
    wire [24:0]o_Rx_DV_N_3358;
    wire [23:0]n4946;
    
    wire n2106, n25702, n2102, n25867, n25961, n2235, n1693, n25836, 
        n2486, n25906, n2487, n25905, n1694, n25835, n1113, n25801, 
        n1114, n25800, n2103, n25866, n1695, n25834, n1115, n25799, 
        n25960, n1116, n25798, n1696, n25833, n2361, n25959, n32349, 
        n30803, n31_adj_3865, n2356, n41_adj_3866, n2366, n21_adj_3867, 
        n2104, n25865, n1697, n25832, n27_adj_3868, n25_adj_3869, 
        n23_adj_3870, n35290, n33_adj_3871, n29_adj_3872, n35281, 
        n10979, n30757, n2367, n20_adj_3873, n1698, n25831, n26, 
        n28, n960, n6667, n7540, n7542, n24_adj_3874, n35_adj_3875, 
        n32, n22, n35278, n36787, n25701, n32567, n37_adj_3876, 
        n36788, n35073, n35070, n39_adj_3877, n36735;
    wire [2:0]r_Bit_Index;   // verilog/uart_rx.v(34[17:28])
    
    wire n25958, n3, r_Rx_Data_R, n2488, n25904, n2105, n25864, 
        n2827, n32375, n2957, n44_adj_3878, n1699, n25830;
    wire [23:0]n4842;
    
    wire n1553, n25957, n1832, n25956, n1967, n36856, n36857, 
        n36427, n35286, n36760, n36685, n36789, n38_adj_3879, n28_adj_3880, 
        n41_adj_3881, n35329, n36783, n2355, n36790;
    wire [7:0]n1;
    
    wire n13088, n14312, n2354, n36733, n2353, n48, n33085, n25700, 
        n25955, n33123, n33093, n33095, n25699, n33065, n25698, 
        n32565, n25697, n32263, n2730;
    wire [23:0]n5102;
    
    wire n25696, n25954, n33203, n2729, n2489, n25903, n25953, 
        n25952, n2490, n25902, n25863, n2228, n33205, n2107, n25862, 
        n2728, n1700, n25829, n25695, n25694, n25828, n25693, 
        n25692, n25691, n2491, n25901, n25690, n32369, n30769, 
        n2108, n25861, n1702;
    wire [23:0]n5024;
    
    wire n25900, n1552, n25827, n25826, n25899, n36835, n29805, 
        n35105, n35102, n35099, n32429, n32435, n2109, n25860, 
        n25898, n2713, n25951, n25689, n2727, n2726, n33087, n33081, 
        n33145, n2110, n25688, n1554, n25825, n25687, n25897, 
        n1966, n25859, n25858, n1968, n25857, n25686, n1969, n25856, 
        n1555, n25824, n2357, n25896, n10997, n35424, n48_adj_3884, 
        n804, n1556, n25823, n2714, n2867, n25950, n48_adj_3885, 
        n33075, n33073, n10985, n25685, n2358, n25895, n1557, 
        n25822, n3_adj_3886, n2359, n25894, n25684, n1558, n25821, 
        n2715, n2754, n25949, n2716, n25948, n2717, n25947, n25683, 
        n1559, n25820, n2718, n25946;
    wire [23:0]n5206;
    
    wire n3151, n3186, n26034, n3152, n3082, n26033, n33111, n3153, 
        n3188, n26032, n33115, n2955, n12_adj_3889, n3154, n3084, 
        n26031, n2950, n2954, n35602, n1970, n25855, n14_adj_3890, 
        n2952, n16_adj_3891, n2942, n2951, n35587, n1831, n33175, 
        n33171, n33173, n33167, n11016, n33_adj_3892, n31_adj_3893, 
        n29_adj_3894, n27_adj_3895, n35348, n18_adj_3896, n30, n30780, 
        n26_adj_3897, n36618, n3155, n26030, n31745, n2719, n25945, 
        n3156, n26029, n3157, n26028, n2229, n2360, n25893, n3158, 
        n26027, n11025, n43_adj_3898, n36625, n30557, n11048, n23_adj_3899, 
        n33053, n29_adj_3902, n27_adj_3903, n25_adj_3904, n35313, 
        n33600, n3_adj_3905, n33057, n5, n30806, n961, n42_adj_3906, 
        n35_adj_3907, n33_adj_3908, n31_adj_3909, n35307, n33061, 
        n8, n30773, n3159, n26026, n3160, n26025, n3161, n26024, 
        n3162, n26023, n3163, n26022, n2720, n25944, n3164, n26021, 
        n3165, n26020, n3166, n26019, n48_adj_3910, n36_adj_3911, 
        n3167, n26018, n25892, n36624, n48_adj_3912, n33588, n33692, 
        n2721, n25943, n3168, n26017, n2, n33011, n6789, n33103, 
        n33101, n2725, n3169, n26016, n2722, n25942, n37172, n3064, 
        n10, n3170, n26015, n3171, n26014, n2723, n25941, n3061, 
        n14_adj_3913, n3051, n3060, n35518, n3172, n26013, n32381, 
        n26012, n30745, n42_adj_3914, n16_adj_3915;
    wire [23:0]n5180;
    
    wire n3046, n26011, n3047, n26010, n22_adj_3916, n2724, n25940, 
        n28_adj_3917, n30_adj_3918, n3048, n26009, n3049, n26008, 
        n3050, n26007, n33652, n26006, n48_adj_3919, n3052, n26005, 
        n25939, n3053, n26004, n3059, n12_adj_3920, n1413, n3054, 
        n26003, n25938, n35169, n46, n3063, n35571, n3055, n26002, 
        n2610, n18_adj_3921, n30553, n48_adj_3922, n3056, n26001, 
        n2605, n2609, n35777, n20_adj_3923, n2607, n22_adj_3924, 
        n36869, n2938, n32377, n3066, n26_adj_3925, n37_adj_3926, 
        n34_adj_3927, n2362, n25891, n25937, n33678, n24_adj_3928, 
        n35305, n36785, n33033, n33091, n33045, n2608, n35781, 
        n33037, n11032, n3057, n26000, n40_adj_3929, n35851, n32331, 
        n2363, n25890, n25936, n2364, n25889, n25935, n3058, n25999, 
        n2365, n25888, n39_adj_3930, n36786, n38_adj_3931, n25819, 
        n25934, n25887, n1971, n25854, n25998, n32373, n30761, 
        n1972, n25853, n25886, n35835, n25997;
    wire [23:0]n5076;
    
    wire n2596, n25933, n2597, n25932, n25996, n2598, n25931, 
        n3062, n25995, n36345, n32379, n25994;
    wire [2:0]n479;
    
    wire n41_adj_3932, n36737, n36800, n32371, n25993, n26110, n32329, 
        n26109, n48_adj_3933, n26_adj_3934, n33632, n3065, n25992, 
        n32367, n25991, n30749, n36763, n10988, n26108, n26107, 
        n2599, n25930, n33682, n48_adj_3935, n962, n1975, n28_adj_3936;
    wire [23:0]n5154;
    
    wire n25990, n2939, n25989, n32883, n48_adj_3937, n35390, n30_adj_3938, 
        n2600, n25929, n8_adj_3939, n26106, n36431, n2601, n25928, 
        n26105, n35310, n36429, n2940, n25988, n26104, n42_adj_3940, 
        n2941, n25987, n2227, n32677, n2602, n25927, n12_adj_3941, 
        n35430, n1973, n25852, n25986, n25885, n25884, n2603, 
        n25926, n25851, n25883, n2604, n25925, n25850, n14_adj_3942, 
        n10_adj_3943, n42_adj_3944, n2230, n25882, n2943, n25985, 
        n35471, n2944, n25984, n30_adj_3945, n36612, n1834, n35629, 
        n32_adj_3946, n33207, n2945, n25983, n1976, n25849, n2946, 
        n25982, n25924, n2606, n25923, n1408, n25818, n2231, n25881, 
        n2232, n25880, n25922, n2947, n25981, n33626, n25921, 
        n2948, n25980, n1977, n25848, n2949, n25979, n25817, n25920, 
        n2233, n25879, n30591, n33201, n32705, n30795, n25978, 
        n25977, n32881, n32885, n2234, n25878, n25919, n25976, 
        n2953, n25975, n32887, n33543, n33547, n33471, n33700, 
        n33469, n1410, n25816, n25877, n2611, n25918, n25974, 
        n33648, n32889, n25847, n25973, n25846, n2612, n25917, 
        n2956, n25972, n33688, n35420, n32891, n25971, n30765, 
        n33614, n33612, n33706, n2236, n25876, n30753, n2476, 
        n25916, n1411, n25815, n36527, n33578, n25970, n25969, 
        n1833, n25845, n2477, n25915, n33133, n2478, n25914, n1414, 
        n33670, n25844, n1412, n25814, n36613, n2479, n25913, 
        n2237, n25875, n25813, n2829, n25968, n41_adj_3947, n45_adj_3948, 
        n39_adj_3949, n25812, n1835, n43_adj_3950, n27_adj_3951, n2480, 
        n29_adj_3952, n31_adj_3953, n33_adj_3954, n35_adj_3955, n17_adj_3956, 
        n19_adj_3957, n7530, n21_adj_3958, n23_adj_3959, n25_adj_3960, 
        n37_adj_3961, n32857, n32877, n33117, n10940, n35713, n1415, 
        n36203, n36403, n36401, n35715, n14_adj_3962, n36449, n36450, 
        n22_adj_3963, n40_adj_3964, n35706, n20_adj_3965, n35700, 
        n36530, n36058, n25_adj_3966, n18_adj_3967, n26_adj_3968, 
        n16_adj_3969, n35728, n36754, n27_adj_3970, n29_adj_3971, 
        n23_adj_3972, n31_adj_3973, n21_adj_3974, n36755, n33_adj_3975, 
        n39_adj_3976, n2238, n36635, n41_adj_3977, n36572, n36770, 
        n36056, n36772, n37_adj_3978, n43_adj_3979, n39_adj_3980, 
        n32361, n41_adj_3981, n37_adj_3982, n33_adj_3983, n31_adj_3984, 
        n35_adj_3985, n37_adj_3986, n33025, n20_adj_3987, n41_adj_3988, 
        n35814, n31_adj_3989, n22_adj_3990, n29_adj_3991, n33_adj_3992, 
        n35_adj_3993, n39_adj_3994, n37_adj_3995, n24_adj_3996, n41_adj_3997, 
        n18_adj_3998, n37_adj_3999, n43_adj_4000, n35842, n33113, 
        n41_adj_4001, n39_adj_4002, n35_adj_4003, n39_adj_4004, n41_adj_4005, 
        n43_adj_4006, n45_adj_4007, n37_adj_4008, n19_adj_4009, n14_adj_4010, 
        n15_adj_4011, n35845, n35829, n36582, n36651, n36461, n36462, 
        n36233, n26_adj_4012, n36040, n33568, n30_adj_4013, n36750, 
        n36751, n36645, n36235, n36525, n36038, n32893, n42_adj_4014, 
        n36626, n36627, n30555, n21218, n21216, n41_adj_4015, n39_adj_4016, 
        n35_adj_4017, n39_adj_4018, n37_adj_4019, n33_adj_4020, n35_adj_4021, 
        n37_adj_4022, n29_adj_4023, n31_adj_4024, n23_adj_4025, n25_adj_4026, 
        n7, n45_adj_4027, n9, n17_adj_4028, n19_adj_4029, n21_adj_4030, 
        n11, n13, n15_adj_4031, n27_adj_4032, n43_adj_4033, n35396, 
        n35404, n16_adj_4034, n35369, n8_adj_4035, n24_adj_4036, n3274, 
        n35414, n35957, n31_adj_4037, n33_adj_4038, n35_adj_4039, 
        n35953, n36654, n36293, n36764, n12_adj_4040, n30789, n48_adj_4041, 
        n4_adj_4042, n36592, n36512, n35331, n36593, n35386, n10_adj_4043, 
        n30_adj_4044, n32_adj_4045, n36467, n36468, n35388, n36779, 
        n35681, n36161, n34_adj_4046, n36503, n36553, n36852, n36853, 
        n36029, n6_adj_4047, n36594, n36646, n36647, n36595, n35371, 
        n36351, n36551, n48_adj_4048, n36827, n35374, n33143, n36698, 
        n11039, n40_adj_4049, n32271, n3253, n36700, n32279, n43_adj_4050, 
        n32_adj_4051, n36471, n36472, n35717, n36175, n34_adj_4052, 
        n36501, n36026, n36650, n48_adj_4053, n31_adj_4054, n32307, 
        n33_adj_4055, n31674, n37_adj_4056, n32593, n25_adj_4057, 
        n27_adj_4058, n35_adj_4059, n32611, n21_adj_4060, n23_adj_4061, 
        n33702, n9_adj_4062, n11_adj_4063, n19_adj_4064, n31284, n27_adj_4065, 
        n29_adj_4066, n43_adj_4067, n13_adj_4068, n15_adj_4069, n39_adj_4070, 
        n17_adj_4071, n29_adj_4072, n35655, n29_adj_4073, n35442, 
        n32903, n40_adj_4074, n28_adj_4075, n32905, n36465, n36000, 
        n36319, n36466, n36317, n35446, n6_adj_4076, n36600, n35633, 
        n36742, n36032, n36838, n36839, n32_adj_4077, n36601, n35435, 
        n36793, n36543, n25_adj_4078, n36692, n27_adj_4079, n36693, 
        n35516, n35986, n36347, n36541, n36481, n36860, n36596, 
        n36870, n36871, n36867, n36762, n38_adj_4080, n36622, n36623, 
        n35400, n36781, n32959, n36508, n35079, n35080, n36854, 
        n36855, n36837, n35_adj_4081, n39_adj_4082, n37_adj_4083, 
        n19_adj_4084, n21_adj_4085, n23_adj_4086, n33_adj_4087, n23_adj_4088, 
        n25_adj_4089, n17_adj_4090, n27_adj_4091, n29_adj_4092, n35783, 
        n35779, n36578, n11_adj_4093, n16_adj_4094, n13_adj_4095, 
        n36453, n21_adj_4096, n36454, n36211, n36528, n36046, n15_adj_4097, 
        n17_adj_4098, n28_adj_4099, n19_adj_4100, n31_adj_4101, n35526, 
        n36085, n36752, n36753, n36643, n36213, n36638, n36044, 
        n36799, n36349, n36341, n35539, n8_adj_4102, n36604, n36605, 
        n34_adj_4103, n35521, n36791, n36537, n36606, n36607, n36033, 
        n20_adj_4104, n26_adj_4105, n36491, n36858, n36343, n36872, 
        n36873, n36865, n35157, n36619, n35163, n35154, n41_adj_4106, 
        n35160, n40_adj_4107, n36748, n36749, n36653, n37_adj_4108, 
        n41_adj_4109, n43_adj_4110, n35_adj_4111, n39_adj_4112, n23_adj_4113, 
        n25_adj_4114, n27_adj_4115, n29_adj_4116, n38_adj_4117, n42_adj_4118, 
        n31_adj_4119, n36744, n36745, n46_adj_4120, n13_adj_4121, 
        n15_adj_4122, n17_adj_4123, n19_adj_4124, n21_adj_4125, n33_adj_4126, 
        n35594, n36119, n40_adj_4127, n36365, n36363, n35596, n10_adj_4128, 
        n36437, n36438, n36_adj_4129, n35590, n36716, n36072, n22_adj_4130, 
        n36758, n36759, n36629, n36558, n36840, n36070, n36874, 
        n36875, n6674, n46_adj_4131;
    
    SB_LUT4 div_37_LessThan_965_i45_2_lut (.I0(n1409), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n45));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i45_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i41_2_lut (.I0(n2830), .I1(baudrate[16]), 
            .I2(GND_net), .I3(GND_net), .O(n41));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_1546_13_lut (.I0(GND_net), .I1(n2481), .I2(n2144), .I3(n25911), 
            .O(n5050[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1922_i31_2_lut (.I0(n2835), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n31));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i33_2_lut (.I0(n2834), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n33));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i25_2_lut (.I0(n2838), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n25));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i27_2_lut (.I0(n2837), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n27_c));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i29_2_lut (.I0(n2836), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n29_c));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i29_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_1546_13 (.CI(n25911), .I0(n2481), .I1(n2144), .CO(n25912));
    SB_LUT4 div_37_LessThan_1922_i15_2_lut (.I0(n2843), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n15));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i15_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_1541_8 (.CI(n25842), .I0(n1836), .I1(n1459), .CO(n25843));
    SB_LUT4 div_37_LessThan_1922_i17_2_lut (.I0(n2842), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n17));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i17_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i19_2_lut (.I0(n2841), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n19));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i21_2_lut (.I0(n2840), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n21));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i21_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_1538_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n25811));
    SB_LUT4 add_1541_7_lut (.I0(GND_net), .I1(n1837), .I2(n1460), .I3(n25841), 
            .O(n4920[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1541_7 (.CI(n25841), .I0(n1837), .I1(n1460), .CO(n25842));
    SB_LUT4 add_1537_9_lut (.I0(GND_net), .I1(n1261), .I2(n1602), .I3(n25810), 
            .O(n4816[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1537_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1541_6_lut (.I0(GND_net), .I1(n1838), .I2(n1011), .I3(n25840), 
            .O(n4920[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1922_i23_2_lut (.I0(n2839), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n23_c));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i35_2_lut (.I0(n2833_adj_3856), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n35));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31234_4_lut (.I0(n35), .I1(n23_c), .I2(n21), .I3(n19), 
            .O(n35637));
    defparam i31234_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i31761_4_lut (.I0(n17), .I1(n15), .I2(n2844), .I3(baudrate[2]), 
            .O(n36165));
    defparam i31761_4_lut.LUT_INIT = 16'heffe;
    SB_LUT4 i31979_4_lut (.I0(n23_c), .I1(n21), .I2(n19), .I3(n36165), 
            .O(n36383));
    defparam i31979_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i31977_4_lut (.I0(n29_c), .I1(n27_c), .I2(n25), .I3(n36383), 
            .O(n36381));
    defparam i31977_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i31237_4_lut (.I0(n35), .I1(n33), .I2(n31), .I3(n36381), 
            .O(n35640));
    defparam i31237_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_1922_i12_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n2845), .I3(GND_net), .O(n12));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i12_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32038_3_lut (.I0(n12), .I1(baudrate[13]), .I2(n35), .I3(GND_net), 
            .O(n36443));   // verilog/uart_rx.v(119[33:55])
    defparam i32038_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1537_8_lut (.I0(GND_net), .I1(n1262), .I2(n1459), .I3(n25809), 
            .O(n4816[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1537_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1541_6 (.CI(n25840), .I0(n1838), .I1(n1011), .CO(n25841));
    SB_LUT4 add_1541_5_lut (.I0(GND_net), .I1(n1839), .I2(n856), .I3(n25839), 
            .O(n4920[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1546_12_lut (.I0(GND_net), .I1(n2482), .I2(n2013), .I3(n25910), 
            .O(n5050[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1922_i38_3_lut (.I0(n20), .I1(baudrate[17]), 
            .I2(n43), .I3(GND_net), .O(n38));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i38_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32039_3_lut (.I0(n36443), .I1(baudrate[14]), .I2(n37), .I3(GND_net), 
            .O(n36444));   // verilog/uart_rx.v(119[33:55])
    defparam i32039_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31228_4_lut (.I0(n41), .I1(n39), .I2(n37), .I3(n35637), 
            .O(n35631));
    defparam i31228_4_lut.LUT_INIT = 16'haaab;
    SB_CARRY add_1537_8 (.CI(n25809), .I0(n1262), .I1(n1459), .CO(n25810));
    SB_CARRY add_1549_17 (.CI(n25966), .I0(n2831), .I1(n2638), .CO(n25967));
    SB_CARRY add_1546_12 (.CI(n25910), .I0(n2482), .I1(n2013), .CO(n25911));
    SB_LUT4 add_1549_16_lut (.I0(GND_net), .I1(n2832), .I2(n2519), .I3(n25965), 
            .O(n5128[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1537_7_lut (.I0(GND_net), .I1(n1263), .I2(n1460), .I3(n25808), 
            .O(n4816[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1537_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1546_11_lut (.I0(GND_net), .I1(n2483), .I2(n1879), .I3(n25909), 
            .O(n5050[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32068_3_lut (.I0(n34), .I1(baudrate[5]), .I2(n41_adj_3857), 
            .I3(GND_net), .O(n36473));   // verilog/uart_rx.v(119[33:55])
    defparam i32068_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32325_4_lut (.I0(n38), .I1(n18), .I2(n43), .I3(n35627), 
            .O(n36730));   // verilog/uart_rx.v(119[33:55])
    defparam i32325_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32069_3_lut (.I0(n36473), .I1(baudrate[6]), .I2(n43_adj_3858), 
            .I3(GND_net), .O(n36474));   // verilog/uart_rx.v(119[33:55])
    defparam i32069_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31661_3_lut (.I0(n36444), .I1(baudrate[15]), .I2(n39), .I3(GND_net), 
            .O(n36064));   // verilog/uart_rx.v(119[33:55])
    defparam i31661_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1549_16 (.CI(n25965), .I0(n2832), .I1(n2519), .CO(n25966));
    SB_LUT4 add_1549_15_lut (.I0(GND_net), .I1(n2833_adj_3856), .I2(n2397), 
            .I3(n25964), .O(n5128[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1546_11 (.CI(n25909), .I0(n2483), .I1(n1879), .CO(n25910));
    SB_CARRY add_1549_15 (.CI(n25964), .I0(n2833_adj_3856), .I1(n2397), 
            .CO(n25965));
    SB_CARRY add_1537_7 (.CI(n25808), .I0(n1263), .I1(n1460), .CO(n25809));
    SB_LUT4 i31789_4_lut (.I0(n43_adj_3858), .I1(n41_adj_3857), .I2(n39_adj_3859), 
            .I3(n35739), .O(n36193));
    defparam i31789_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 div_37_LessThan_965_i38_3_lut (.I0(n36), .I1(baudrate[4]), .I2(n39_adj_3859), 
            .I3(GND_net), .O(n38_adj_3860));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i38_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1922_i24_3_lut (.I0(n16), .I1(baudrate[9]), 
            .I2(n27_c), .I3(GND_net), .O(n24));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i24_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31621_3_lut (.I0(n36474), .I1(baudrate[7]), .I2(n45), .I3(GND_net), 
            .O(n36024));   // verilog/uart_rx.v(119[33:55])
    defparam i31621_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1544_4_lut (.I0(GND_net), .I1(n2239), .I2(n698), .I3(n25873), 
            .O(n4998[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1541_5 (.CI(n25839), .I0(n1839), .I1(n856), .CO(n25840));
    SB_LUT4 add_1537_6_lut (.I0(GND_net), .I1(n1264), .I2(n1011), .I3(n25807), 
            .O(n4816[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1537_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32351_4_lut (.I0(n24), .I1(n14), .I2(n27_c), .I3(n35662), 
            .O(n36756));   // verilog/uart_rx.v(119[33:55])
    defparam i32351_4_lut.LUT_INIT = 16'haaac;
    SB_CARRY add_1544_4 (.CI(n25873), .I0(n2239), .I1(n698), .CO(n25874));
    SB_LUT4 i32352_3_lut (.I0(n36756), .I1(baudrate[10]), .I2(n29_c), 
            .I3(GND_net), .O(n36757));   // verilog/uart_rx.v(119[33:55])
    defparam i32352_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1537_6 (.CI(n25807), .I0(n1264), .I1(n1011), .CO(n25808));
    SB_LUT4 i32228_3_lut (.I0(n36757), .I1(baudrate[11]), .I2(n31), .I3(GND_net), 
            .O(n36633));   // verilog/uart_rx.v(119[33:55])
    defparam i32228_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32094_4_lut (.I0(n36024), .I1(n38_adj_3860), .I2(n45), .I3(n36193), 
            .O(n36499));   // verilog/uart_rx.v(119[33:55])
    defparam i32094_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32161_4_lut (.I0(n41), .I1(n39), .I2(n37), .I3(n35640), 
            .O(n36566));
    defparam i32161_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i2825_2_lut_2_lut_4_lut (.I0(baudrate[2]), .I1(n805), .I2(baudrate[1]), 
            .I3(baudrate[0]), .O(n6503));   // verilog/uart_rx.v(119[33:55])
    defparam i2825_2_lut_2_lut_4_lut.LUT_INIT = 16'h0445;
    SB_LUT4 i32427_4_lut (.I0(n36064), .I1(n36730), .I2(n43), .I3(n35631), 
            .O(n36832));   // verilog/uart_rx.v(119[33:55])
    defparam i32427_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 add_1541_4_lut (.I0(GND_net), .I1(n1840), .I2(n698), .I3(n25838), 
            .O(n4920[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1142_3_lut (.I0(n1560), .I1(n4868[15]), .I2(n294[14]), 
            .I3(GND_net), .O(n1701));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1142_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1537_5_lut (.I0(GND_net), .I1(n1265), .I2(n856), .I3(n25806), 
            .O(n4816[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1537_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1537_5 (.CI(n25806), .I0(n1265), .I1(n856), .CO(n25807));
    SB_LUT4 i31659_3_lut (.I0(n36633), .I1(baudrate[12]), .I2(n33), .I3(GND_net), 
            .O(n36062));   // verilog/uart_rx.v(119[33:55])
    defparam i31659_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32457_4_lut (.I0(n36062), .I1(n36832), .I2(n43), .I3(n36566), 
            .O(n36862));   // verilog/uart_rx.v(119[33:55])
    defparam i32457_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i32458_3_lut (.I0(n36862), .I1(baudrate[18]), .I2(n2828), 
            .I3(GND_net), .O(n36863));   // verilog/uart_rx.v(119[33:55])
    defparam i32458_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_1549_14_lut (.I0(GND_net), .I1(n2834), .I2(n2272), .I3(n25963), 
            .O(n5128[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1546_10_lut (.I0(GND_net), .I1(n2484), .I2(n1742), .I3(n25908), 
            .O(n5050[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1544_3_lut (.I0(GND_net), .I1(n2240), .I2(n858), .I3(n25872), 
            .O(n4998[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1541_4 (.CI(n25838), .I0(n1840), .I1(n698), .CO(n25839));
    SB_CARRY add_1544_3 (.CI(n25872), .I0(n2240), .I1(n858), .CO(n25873));
    SB_LUT4 add_1544_2_lut (.I0(n30777), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n32365)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_1541_3_lut (.I0(GND_net), .I1(n1841), .I2(n858), .I3(n25837), 
            .O(n4920[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1544_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n25872));
    SB_LUT4 add_1537_4_lut (.I0(GND_net), .I1(n1266), .I2(n698), .I3(n25805), 
            .O(n4816[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1537_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1543_14_lut (.I0(GND_net), .I1(n2098), .I2(n2397), .I3(n25871), 
            .O(n4972[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1543_13_lut (.I0(GND_net), .I1(n2099), .I2(n2272), .I3(n25870), 
            .O(n4972[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1543_13 (.CI(n25870), .I0(n2099), .I1(n2272), .CO(n25871));
    SB_LUT4 add_1543_12_lut (.I0(GND_net), .I1(n2100), .I2(n2144), .I3(n25869), 
            .O(n4972[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1235_3_lut (.I0(n1701), .I1(n4894[15]), .I2(n294[13]), 
            .I3(GND_net), .O(n1839));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1235_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1546_10 (.CI(n25908), .I0(n2484), .I1(n1742), .CO(n25909));
    SB_LUT4 div_37_i2157_1_lut (.I0(baudrate[18]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2977));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2157_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY add_1537_4 (.CI(n25805), .I0(n1266), .I1(n698), .CO(n25806));
    SB_LUT4 div_37_i535_4_lut (.I0(n36888), .I1(n44), .I2(n294[20]), .I3(baudrate[2]), 
            .O(n803));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i535_4_lut.LUT_INIT = 16'h9565;
    SB_CARRY add_1543_12 (.CI(n25869), .I0(n2100), .I1(n2144), .CO(n25870));
    SB_CARRY add_1549_14 (.CI(n25963), .I0(n2834), .I1(n2272), .CO(n25964));
    SB_CARRY add_1541_3 (.CI(n25837), .I0(n1841), .I1(n858), .CO(n25838));
    SB_LUT4 add_1537_3_lut (.I0(GND_net), .I1(n1267), .I2(n858), .I3(n25804), 
            .O(n4816[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1537_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1537_3 (.CI(n25804), .I0(n1267), .I1(n858), .CO(n25805));
    SB_LUT4 i2827_2_lut (.I0(n7532), .I1(n6503), .I2(GND_net), .I3(GND_net), 
            .O(n44_adj_3861));   // verilog/uart_rx.v(119[33:55])
    defparam i2827_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 add_1537_2_lut (.I0(n30799), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n32359)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1537_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_1543_11_lut (.I0(GND_net), .I1(n2101), .I2(n2013), .I3(n25868), 
            .O(n4972[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1541_2_lut (.I0(n30786), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n32363)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_1537_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n25804));
    SB_LUT4 sub_38_add_2_26_lut (.I0(GND_net), .I1(GND_net), .I2(VCC_net), 
            .I3(n25706), .O(\o_Rx_DV_N_3358[24] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_25_lut (.I0(n32265), .I1(n10933), .I2(VCC_net), 
            .I3(n25705), .O(n27)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_25_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_38_add_2_25 (.CI(n25705), .I0(n10933), .I1(VCC_net), 
            .CO(n25706));
    SB_LUT4 add_1536_8_lut (.I0(GND_net), .I1(n1111), .I2(n1459), .I3(n25803), 
            .O(n4790[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1536_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1546_9_lut (.I0(GND_net), .I1(n2485), .I2(n1602), .I3(n25907), 
            .O(n5050[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i640_4_lut (.I0(n803), .I1(baudrate[3]), .I2(n294[19]), 
            .I3(n44_adj_3861), .O(n959));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i640_4_lut.LUT_INIT = 16'h6a9a;
    SB_LUT4 sub_38_add_2_24_lut (.I0(n32395), .I1(n33710), .I2(VCC_net), 
            .I3(n25704), .O(n29)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_24_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 div_37_i1326_3_lut (.I0(n1839), .I1(n4920[15]), .I2(n294[12]), 
            .I3(GND_net), .O(n1974));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1326_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1541_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n25837));
    SB_LUT4 add_1536_7_lut (.I0(GND_net), .I1(n1112), .I2(n1460), .I3(n25802), 
            .O(n4790[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1536_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1549_13_lut (.I0(GND_net), .I1(n2835), .I2(n2144), .I3(n25962), 
            .O(n5128[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_24 (.CI(n25704), .I0(n33710), .I1(VCC_net), 
            .CO(n25705));
    SB_CARRY add_1549_13 (.CI(n25962), .I0(n2835), .I1(n2144), .CO(n25963));
    SB_LUT4 sub_38_add_2_23_lut (.I0(o_Rx_DV_N_3358[18]), .I1(n294[21]), 
            .I2(VCC_net), .I3(n25703), .O(n23)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_23_lut.LUT_INIT = 16'hebbe;
    SB_CARRY add_1536_7 (.CI(n25802), .I0(n1112), .I1(n1460), .CO(n25803));
    SB_LUT4 div_37_i1415_3_lut (.I0(n1974), .I1(n4946[15]), .I2(n294[11]), 
            .I3(GND_net), .O(n2106));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1415_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY sub_38_add_2_23 (.CI(n25703), .I0(n294[21]), .I1(VCC_net), 
            .CO(n25704));
    SB_CARRY add_1543_11 (.CI(n25868), .I0(n2101), .I1(n2013), .CO(n25869));
    SB_LUT4 sub_38_add_2_22_lut (.I0(n32393), .I1(n294[20]), .I2(VCC_net), 
            .I3(n25702), .O(n32395)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_22_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 add_1543_10_lut (.I0(GND_net), .I1(n2102), .I2(n1879), .I3(n25867), 
            .O(n4972[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1546_9 (.CI(n25907), .I0(n2485), .I1(n1602), .CO(n25908));
    SB_LUT4 add_1549_12_lut (.I0(GND_net), .I1(n2836), .I2(n2013), .I3(n25961), 
            .O(n5128[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1502_3_lut (.I0(n2106), .I1(n4972[15]), .I2(n294[10]), 
            .I3(GND_net), .O(n2235));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1502_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1549_12 (.CI(n25961), .I0(n2836), .I1(n2013), .CO(n25962));
    SB_LUT4 add_1540_11_lut (.I0(GND_net), .I1(n1693), .I2(n2013), .I3(n25836), 
            .O(n4894[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1540_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1546_8_lut (.I0(GND_net), .I1(n2486), .I2(n1459), .I3(n25906), 
            .O(n5050[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1546_8 (.CI(n25906), .I0(n2486), .I1(n1459), .CO(n25907));
    SB_LUT4 add_1546_7_lut (.I0(GND_net), .I1(n2487), .I2(n1460), .I3(n25905), 
            .O(n5050[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1543_10 (.CI(n25867), .I0(n2102), .I1(n1879), .CO(n25868));
    SB_LUT4 add_1540_10_lut (.I0(GND_net), .I1(n1694), .I2(n1879), .I3(n25835), 
            .O(n4894[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1540_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1536_6_lut (.I0(GND_net), .I1(n1113), .I2(n1011), .I3(n25801), 
            .O(n4790[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1536_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1536_6 (.CI(n25801), .I0(n1113), .I1(n1011), .CO(n25802));
    SB_CARRY add_1540_10 (.CI(n25835), .I0(n1694), .I1(n1879), .CO(n25836));
    SB_LUT4 add_1536_5_lut (.I0(GND_net), .I1(n1114), .I2(n856), .I3(n25800), 
            .O(n4790[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1536_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1536_5 (.CI(n25800), .I0(n1114), .I1(n856), .CO(n25801));
    SB_LUT4 add_1543_9_lut (.I0(GND_net), .I1(n2103), .I2(n1742), .I3(n25866), 
            .O(n4972[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1540_9_lut (.I0(GND_net), .I1(n1695), .I2(n1742), .I3(n25834), 
            .O(n4894[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1540_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1536_4_lut (.I0(GND_net), .I1(n1115), .I2(n698), .I3(n25799), 
            .O(n4790[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1536_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1549_11_lut (.I0(GND_net), .I1(n2837), .I2(n1879), .I3(n25960), 
            .O(n5128[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1536_4 (.CI(n25799), .I0(n1115), .I1(n698), .CO(n25800));
    SB_CARRY add_1549_11 (.CI(n25960), .I0(n2837), .I1(n1879), .CO(n25961));
    SB_CARRY add_1540_9 (.CI(n25834), .I0(n1695), .I1(n1742), .CO(n25835));
    SB_LUT4 add_1536_3_lut (.I0(GND_net), .I1(n1116), .I2(n858), .I3(n25798), 
            .O(n4790[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1536_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1536_3 (.CI(n25798), .I0(n1116), .I1(n858), .CO(n25799));
    SB_CARRY add_1546_7 (.CI(n25905), .I0(n2487), .I1(n1460), .CO(n25906));
    SB_CARRY add_1543_9 (.CI(n25866), .I0(n2103), .I1(n1742), .CO(n25867));
    SB_LUT4 add_1540_8_lut (.I0(GND_net), .I1(n1696), .I2(n1602), .I3(n25833), 
            .O(n4894[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1540_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1587_3_lut (.I0(n2235), .I1(n4998[15]), .I2(n294[9]), 
            .I3(GND_net), .O(n2361));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1587_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1549_10_lut (.I0(GND_net), .I1(n2838), .I2(n1742), .I3(n25959), 
            .O(n5128[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_22 (.CI(n25702), .I0(n294[20]), .I1(VCC_net), 
            .CO(n25703));
    SB_LUT4 add_1536_2_lut (.I0(n30803), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n32349)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1536_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 div_37_LessThan_1602_i31_2_lut (.I0(n2361), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_3865));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i31_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_1536_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n25798));
    SB_CARRY add_1540_8 (.CI(n25833), .I0(n1696), .I1(n1602), .CO(n25834));
    SB_LUT4 div_37_LessThan_1602_i41_2_lut (.I0(n2356), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_3866));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i21_2_lut (.I0(n2366), .I1(baudrate[2]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_3867));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_1543_8_lut (.I0(GND_net), .I1(n2104), .I2(n1602), .I3(n25865), 
            .O(n4972[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1540_7_lut (.I0(GND_net), .I1(n1697), .I2(n1459), .I3(n25832), 
            .O(n4894[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1540_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i30887_4_lut (.I0(n27_adj_3868), .I1(n25_adj_3869), .I2(n23_adj_3870), 
            .I3(n21_adj_3867), .O(n35290));
    defparam i30887_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i30878_4_lut (.I0(n33_adj_3871), .I1(n31_adj_3865), .I2(n29_adj_3872), 
            .I3(n35290), .O(n35281));
    defparam i30878_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i26397_1_lut (.I0(n10979), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n30757));
    defparam i26397_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_LessThan_1602_i20_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n2367), .I3(GND_net), .O(n20_adj_3873));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i20_3_lut.LUT_INIT = 16'h8e8e;
    SB_CARRY add_1543_8 (.CI(n25865), .I0(n2104), .I1(n1602), .CO(n25866));
    SB_CARRY add_1540_7 (.CI(n25832), .I0(n1697), .I1(n1459), .CO(n25833));
    SB_LUT4 add_1540_6_lut (.I0(GND_net), .I1(n1698), .I2(n1460), .I3(n25831), 
            .O(n4894[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1540_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut (.I0(r_SM_Main[0]), .I1(r_SM_Main[2]), .I2(GND_net), 
            .I3(GND_net), .O(n6));
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_1602_i28_3_lut (.I0(n26), .I1(baudrate[7]), 
            .I2(n31_adj_3865), .I3(GND_net), .O(n28));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i28_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1540_6 (.CI(n25831), .I0(n1698), .I1(n1460), .CO(n25832));
    SB_LUT4 i3861_4_lut (.I0(n960), .I1(n6667), .I2(n7540), .I3(baudrate[3]), 
            .O(n7542));   // verilog/uart_rx.v(119[33:55])
    defparam i3861_4_lut.LUT_INIT = 16'ha8aa;
    SB_LUT4 div_37_LessThan_1602_i32_3_lut (.I0(n24_adj_3874), .I1(baudrate[9]), 
            .I2(n35_adj_3875), .I3(GND_net), .O(n32));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i32_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32382_4_lut (.I0(n32), .I1(n22), .I2(n35_adj_3875), .I3(n35278), 
            .O(n36787));   // verilog/uart_rx.v(119[33:55])
    defparam i32382_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 sub_38_add_2_21_lut (.I0(n32567), .I1(n294[19]), .I2(VCC_net), 
            .I3(n25701), .O(n32017)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_21_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 i32383_3_lut (.I0(n36787), .I1(baudrate[10]), .I2(n37_adj_3876), 
            .I3(GND_net), .O(n36788));   // verilog/uart_rx.v(119[33:55])
    defparam i32383_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31295_4_lut (.I0(\o_Rx_DV_N_3358[8] ), .I1(\o_Rx_DV_N_3358[12] ), 
            .I2(n2833), .I3(n29929), .O(n35073));
    defparam i31295_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 i31292_4_lut (.I0(n35073), .I1(\o_Rx_DV_N_3358[24] ), .I2(n29), 
            .I3(n23), .O(n35070));
    defparam i31292_4_lut.LUT_INIT = 16'h0002;
    SB_LUT4 i14_4_lut (.I0(r_SM_Main[1]), .I1(n35070), .I2(r_SM_Main[0]), 
            .I3(n27), .O(n13044));
    defparam i14_4_lut.LUT_INIT = 16'h05c5;
    SB_LUT4 i32330_3_lut (.I0(n36788), .I1(baudrate[11]), .I2(n39_adj_3877), 
            .I3(GND_net), .O(n36735));   // verilog/uart_rx.v(119[33:55])
    defparam i32330_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1549_10 (.CI(n25959), .I0(n2838), .I1(n1742), .CO(n25960));
    SB_LUT4 equal_117_i4_2_lut (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(GND_net), .I3(GND_net), .O(n4));   // verilog/uart_rx.v(98[17:39])
    defparam equal_117_i4_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 add_1549_9_lut (.I0(GND_net), .I1(n2839), .I2(n1602), .I3(n25958), 
            .O(n5128[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_9_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR r_SM_Main_i0 (.Q(r_SM_Main[0]), .C(clk16MHz), .D(n3), .R(r_SM_Main[2]));   // verilog/uart_rx.v(50[10] 145[8])
    SB_DFF r_Rx_Data_56 (.Q(r_Rx_Data), .C(clk16MHz), .D(r_Rx_Data_R));   // verilog/uart_rx.v(42[10] 46[8])
    SB_DFF r_Rx_Data_R_55 (.Q(r_Rx_Data_R), .C(clk16MHz), .D(RX_N_2));   // verilog/uart_rx.v(42[10] 46[8])
    SB_LUT4 add_1546_6_lut (.I0(GND_net), .I1(n2488), .I2(n1011), .I3(n25904), 
            .O(n5050[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1543_7_lut (.I0(GND_net), .I1(n2105), .I2(n1459), .I3(n25864), 
            .O(n4972[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_4_lut (.I0(n36863), .I1(baudrate[19]), .I2(n2827), 
            .I3(n32375), .O(n2957));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'h7100;
    SB_LUT4 div_37_i743_4_lut (.I0(n959), .I1(baudrate[4]), .I2(n294[18]), 
            .I3(n44_adj_3878), .O(n1112));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i743_4_lut.LUT_INIT = 16'h6a9a;
    SB_LUT4 add_1540_5_lut (.I0(GND_net), .I1(n1699), .I2(n1011), .I3(n25830), 
            .O(n4894[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1540_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i844_3_lut (.I0(n1112), .I1(n4790[22]), .I2(n294[17]), 
            .I3(GND_net), .O(n1262));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i844_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i943_3_lut (.I0(n1262), .I1(n4816[22]), .I2(n294[16]), 
            .I3(GND_net), .O(n1409));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i943_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1040_3_lut (.I0(n1409), .I1(n4842[22]), .I2(n294[15]), 
            .I3(GND_net), .O(n1553));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1040_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1135_3_lut (.I0(n1553), .I1(n4868[22]), .I2(n294[14]), 
            .I3(GND_net), .O(n1694));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1135_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1546_6 (.CI(n25904), .I0(n2488), .I1(n1011), .CO(n25905));
    SB_CARRY add_1549_9 (.CI(n25958), .I0(n2839), .I1(n1602), .CO(n25959));
    SB_LUT4 add_1549_8_lut (.I0(GND_net), .I1(n2840), .I2(n1459), .I3(n25957), 
            .O(n5128[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1228_3_lut (.I0(n1694), .I1(n4894[22]), .I2(n294[13]), 
            .I3(GND_net), .O(n1832));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1228_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1549_8 (.CI(n25957), .I0(n2840), .I1(n1459), .CO(n25958));
    SB_LUT4 add_1549_7_lut (.I0(GND_net), .I1(n2841), .I2(n1460), .I3(n25956), 
            .O(n5128[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1319_3_lut (.I0(n1832), .I1(n4920[22]), .I2(n294[12]), 
            .I3(GND_net), .O(n1967));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1319_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32452_3_lut (.I0(n36856), .I1(baudrate[11]), .I2(n2100), 
            .I3(GND_net), .O(n36857));   // verilog/uart_rx.v(119[33:55])
    defparam i32452_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32022_4_lut (.I0(n39_adj_3877), .I1(n37_adj_3876), .I2(n35_adj_3875), 
            .I3(n35281), .O(n36427));
    defparam i32022_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i32355_4_lut (.I0(n28), .I1(n20_adj_3873), .I2(n31_adj_3865), 
            .I3(n35286), .O(n36760));   // verilog/uart_rx.v(119[33:55])
    defparam i32355_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32280_3_lut (.I0(n36735), .I1(baudrate[12]), .I2(n41_adj_3866), 
            .I3(GND_net), .O(n36685));   // verilog/uart_rx.v(119[33:55])
    defparam i32280_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32384_4_lut (.I0(n36685), .I1(n36760), .I2(n41_adj_3866), 
            .I3(n36427), .O(n36789));   // verilog/uart_rx.v(119[33:55])
    defparam i32384_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32378_4_lut (.I0(n38_adj_3879), .I1(n28_adj_3880), .I2(n41_adj_3881), 
            .I3(n35329), .O(n36783));   // verilog/uart_rx.v(119[33:55])
    defparam i32378_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32385_3_lut (.I0(n36789), .I1(baudrate[13]), .I2(n2355), 
            .I3(GND_net), .O(n36790));   // verilog/uart_rx.v(119[33:55])
    defparam i32385_3_lut.LUT_INIT = 16'h8e8e;
    SB_DFFESR r_Clock_Count_1116__i0 (.Q(r_Clock_Count[0]), .C(clk16MHz), 
            .E(n13088), .D(n1[0]), .R(n14312));   // verilog/uart_rx.v(121[34:51])
    SB_LUT4 i32328_3_lut (.I0(n36790), .I1(baudrate[14]), .I2(n2354), 
            .I3(GND_net), .O(n36733));   // verilog/uart_rx.v(119[33:55])
    defparam i32328_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32282_3_lut (.I0(n36733), .I1(baudrate[15]), .I2(n2353), 
            .I3(GND_net), .O(n48));   // verilog/uart_rx.v(119[33:55])
    defparam i32282_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_2_lut_adj_919 (.I0(baudrate[16]), .I1(baudrate[17]), .I2(GND_net), 
            .I3(GND_net), .O(n33085));
    defparam i1_2_lut_adj_919.LUT_INIT = 16'heeee;
    SB_CARRY sub_38_add_2_21 (.CI(n25701), .I0(n294[19]), .I1(VCC_net), 
            .CO(n25702));
    SB_CARRY add_1549_7 (.CI(n25956), .I0(n2841), .I1(n1460), .CO(n25957));
    SB_LUT4 sub_38_add_2_20_lut (.I0(GND_net), .I1(n294[18]), .I2(VCC_net), 
            .I3(n25700), .O(o_Rx_DV_N_3358[18])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_20 (.CI(n25700), .I0(n294[18]), .I1(VCC_net), 
            .CO(n25701));
    SB_LUT4 add_1549_6_lut (.I0(GND_net), .I1(n2842), .I2(n1011), .I3(n25955), 
            .O(n5128[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_920 (.I0(baudrate[18]), .I1(baudrate[19]), .I2(GND_net), 
            .I3(GND_net), .O(n33123));
    defparam i1_2_lut_adj_920.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_921 (.I0(baudrate[8]), .I1(baudrate[9]), .I2(GND_net), 
            .I3(GND_net), .O(n33093));
    defparam i1_2_lut_adj_921.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_922 (.I0(baudrate[6]), .I1(baudrate[7]), .I2(GND_net), 
            .I3(GND_net), .O(n33095));
    defparam i1_2_lut_adj_922.LUT_INIT = 16'heeee;
    SB_LUT4 sub_38_add_2_19_lut (.I0(o_Rx_DV_N_3358[10]), .I1(n294[17]), 
            .I2(VCC_net), .I3(n25699), .O(n32391)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_19_lut.LUT_INIT = 16'hebbe;
    SB_CARRY add_1540_5 (.CI(n25830), .I0(n1699), .I1(n1011), .CO(n25831));
    SB_CARRY add_1549_6 (.CI(n25955), .I0(n2842), .I1(n1011), .CO(n25956));
    SB_LUT4 i1_2_lut_adj_923 (.I0(baudrate[27]), .I1(baudrate[30]), .I2(GND_net), 
            .I3(GND_net), .O(n33065));
    defparam i1_2_lut_adj_923.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_i1408_3_lut (.I0(n1967), .I1(n4946[22]), .I2(n294[11]), 
            .I3(GND_net), .O(n2099));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1408_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY sub_38_add_2_19 (.CI(n25699), .I0(n294[17]), .I1(VCC_net), 
            .CO(n25700));
    SB_LUT4 sub_38_add_2_18_lut (.I0(n32565), .I1(n294[16]), .I2(VCC_net), 
            .I3(n25698), .O(n32567)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_18_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_38_add_2_18 (.CI(n25698), .I0(n294[16]), .I1(VCC_net), 
            .CO(n25699));
    SB_LUT4 sub_38_add_2_17_lut (.I0(n32263), .I1(n294[15]), .I2(VCC_net), 
            .I3(n25697), .O(n32265)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_17_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 div_37_i1916_3_lut (.I0(n2730), .I1(n5102[6]), .I2(n294[5]), 
            .I3(GND_net), .O(n2844));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1916_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY sub_38_add_2_17 (.CI(n25697), .I0(n294[15]), .I1(VCC_net), 
            .CO(n25698));
    SB_LUT4 sub_38_add_2_16_lut (.I0(o_Rx_DV_N_3358[13]), .I1(n294[14]), 
            .I2(VCC_net), .I3(n25696), .O(n32565)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_16_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 add_1549_5_lut (.I0(GND_net), .I1(n2843), .I2(n856), .I3(n25954), 
            .O(n5128[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_924 (.I0(baudrate[25]), .I1(baudrate[29]), .I2(GND_net), 
            .I3(GND_net), .O(n33203));
    defparam i1_2_lut_adj_924.LUT_INIT = 16'heeee;
    SB_CARRY add_1549_5 (.CI(n25954), .I0(n2843), .I1(n856), .CO(n25955));
    SB_LUT4 div_37_i1915_3_lut (.I0(n2729), .I1(n5102[7]), .I2(n294[5]), 
            .I3(GND_net), .O(n2843));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1915_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1546_5_lut (.I0(GND_net), .I1(n2489), .I2(n856), .I3(n25903), 
            .O(n5050[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1549_4_lut (.I0(GND_net), .I1(n2844), .I2(n698), .I3(n25953), 
            .O(n5128[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1549_4 (.CI(n25953), .I0(n2844), .I1(n698), .CO(n25954));
    SB_CARRY add_1543_7 (.CI(n25864), .I0(n2105), .I1(n1459), .CO(n25865));
    SB_CARRY add_1546_5 (.CI(n25903), .I0(n2489), .I1(n856), .CO(n25904));
    SB_LUT4 add_1549_3_lut (.I0(GND_net), .I1(n2845), .I2(n858), .I3(n25952), 
            .O(n5128[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1546_4_lut (.I0(GND_net), .I1(n2490), .I2(n698), .I3(n25902), 
            .O(n5050[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1543_6_lut (.I0(GND_net), .I1(n2106), .I2(n1460), .I3(n25863), 
            .O(n4972[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1495_3_lut (.I0(n2099), .I1(n4972[22]), .I2(n294[10]), 
            .I3(GND_net), .O(n2228));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1495_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_925 (.I0(baudrate[24]), .I1(baudrate[31]), .I2(GND_net), 
            .I3(GND_net), .O(n33205));
    defparam i1_2_lut_adj_925.LUT_INIT = 16'heeee;
    SB_CARRY add_1543_6 (.CI(n25863), .I0(n2106), .I1(n1460), .CO(n25864));
    SB_CARRY sub_38_add_2_16 (.CI(n25696), .I0(n294[14]), .I1(VCC_net), 
            .CO(n25697));
    SB_LUT4 add_1543_5_lut (.I0(GND_net), .I1(n2107), .I2(n1011), .I3(n25862), 
            .O(n4972[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1914_3_lut (.I0(n2728), .I1(n5102[8]), .I2(n294[5]), 
            .I3(GND_net), .O(n2842));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1914_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1540_4_lut (.I0(GND_net), .I1(n1700), .I2(n856), .I3(n25829), 
            .O(n4894[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1540_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1540_4 (.CI(n25829), .I0(n1700), .I1(n856), .CO(n25830));
    SB_LUT4 sub_38_add_2_15_lut (.I0(GND_net), .I1(n294[13]), .I2(VCC_net), 
            .I3(n25695), .O(o_Rx_DV_N_3358[13])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_15 (.CI(n25695), .I0(n294[13]), .I1(VCC_net), 
            .CO(n25696));
    SB_DFF r_Rx_Byte_i7 (.Q(rx_data[7]), .C(clk16MHz), .D(n14947));   // verilog/uart_rx.v(50[10] 145[8])
    SB_DFF r_Rx_Byte_i6 (.Q(rx_data[6]), .C(clk16MHz), .D(n14945));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 sub_38_add_2_14_lut (.I0(GND_net), .I1(n294[12]), .I2(VCC_net), 
            .I3(n25694), .O(\o_Rx_DV_N_3358[12] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1546_4 (.CI(n25902), .I0(n2490), .I1(n698), .CO(n25903));
    SB_CARRY sub_38_add_2_14 (.CI(n25694), .I0(n294[12]), .I1(VCC_net), 
            .CO(n25695));
    SB_DFF r_Rx_Byte_i5 (.Q(rx_data[5]), .C(clk16MHz), .D(n14944));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 add_1540_3_lut (.I0(GND_net), .I1(n1701), .I2(n698), .I3(n25828), 
            .O(n4894[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1540_3_lut.LUT_INIT = 16'hC33C;
    SB_DFF r_Rx_Byte_i4 (.Q(rx_data[4]), .C(clk16MHz), .D(n14943));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 sub_38_add_2_13_lut (.I0(o_Rx_DV_N_3358[9]), .I1(n294[11]), 
            .I2(VCC_net), .I3(n25693), .O(n32263)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_13_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_38_add_2_13 (.CI(n25693), .I0(n294[11]), .I1(VCC_net), 
            .CO(n25694));
    SB_LUT4 sub_38_add_2_12_lut (.I0(GND_net), .I1(n294[10]), .I2(VCC_net), 
            .I3(n25692), .O(o_Rx_DV_N_3358[10])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_12 (.CI(n25692), .I0(n294[10]), .I1(VCC_net), 
            .CO(n25693));
    SB_LUT4 sub_38_add_2_11_lut (.I0(GND_net), .I1(n294[9]), .I2(VCC_net), 
            .I3(n25691), .O(o_Rx_DV_N_3358[9])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1549_3 (.CI(n25952), .I0(n2845), .I1(n858), .CO(n25953));
    SB_LUT4 add_1546_3_lut (.I0(GND_net), .I1(n2491), .I2(n858), .I3(n25901), 
            .O(n5050[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_11 (.CI(n25691), .I0(n294[9]), .I1(VCC_net), 
            .CO(n25692));
    SB_CARRY add_1543_5 (.CI(n25862), .I0(n2107), .I1(n1011), .CO(n25863));
    SB_LUT4 add_1549_2_lut (.I0(n30757), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n32375)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_38_add_2_10_lut (.I0(GND_net), .I1(n294[8]), .I2(VCC_net), 
            .I3(n25690), .O(\o_Rx_DV_N_3358[8] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1546_3 (.CI(n25901), .I0(n2491), .I1(n858), .CO(n25902));
    SB_CARRY add_1549_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n25952));
    SB_LUT4 add_1546_2_lut (.I0(n30769), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n32369)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_1546_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n25901));
    SB_LUT4 add_1543_4_lut (.I0(GND_net), .I1(n2108), .I2(n856), .I3(n25861), 
            .O(n4972[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32625_2_lut_4_lut (.I0(n36863), .I1(baudrate[19]), .I2(n2827), 
            .I3(n10979), .O(n294[4]));   // verilog/uart_rx.v(119[33:55])
    defparam i32625_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_CARRY add_1540_3 (.CI(n25828), .I0(n1701), .I1(n698), .CO(n25829));
    SB_LUT4 add_1540_2_lut (.I0(GND_net), .I1(n1702), .I2(n858), .I3(VCC_net), 
            .O(n4894[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1540_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1545_17_lut (.I0(GND_net), .I1(n2353), .I2(n2638), .I3(n25900), 
            .O(n5024[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1540_2 (.CI(VCC_net), .I0(n1702), .I1(n858), .CO(n25828));
    SB_LUT4 add_1539_11_lut (.I0(GND_net), .I1(n1552), .I2(n1879), .I3(n25827), 
            .O(n4868[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1539_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_10 (.CI(n25690), .I0(n294[8]), .I1(VCC_net), 
            .CO(n25691));
    SB_LUT4 add_1539_10_lut (.I0(GND_net), .I1(n1553), .I2(n1742), .I3(n25826), 
            .O(n4868[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1539_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1545_16_lut (.I0(GND_net), .I1(n2354), .I2(n2519), .I3(n25899), 
            .O(n5024[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1539_10 (.CI(n25826), .I0(n1553), .I1(n1742), .CO(n25827));
    SB_CARRY add_1545_16 (.CI(n25899), .I0(n2354), .I1(n2519), .CO(n25900));
    SB_LUT4 i32430_3_lut (.I0(n36857), .I1(baudrate[12]), .I2(n2099), 
            .I3(GND_net), .O(n36835));   // verilog/uart_rx.v(119[33:55])
    defparam i32430_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31343_2_lut (.I0(n29805), .I1(r_Rx_Data), .I2(GND_net), .I3(GND_net), 
            .O(n35105));
    defparam i31343_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i31340_4_lut (.I0(n35105), .I1(n29), .I2(n23), .I3(\o_Rx_DV_N_3358[12] ), 
            .O(n35102));
    defparam i31340_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i31038_4_lut (.I0(n35102), .I1(r_SM_Main[0]), .I2(n27), .I3(\o_Rx_DV_N_3358[24] ), 
            .O(n35099));
    defparam i31038_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 i32551_4_lut (.I0(r_SM_Main[2]), .I1(n35099), .I2(\r_SM_Main_2__N_3316[1] ), 
            .I3(r_SM_Main[1]), .O(n14312));
    defparam i32551_4_lut.LUT_INIT = 16'h0511;
    SB_LUT4 i1_4_lut (.I0(n29805), .I1(r_SM_Main[1]), .I2(r_Rx_Data), 
            .I3(r_SM_Main[0]), .O(n32429));
    defparam i1_4_lut.LUT_INIT = 16'h1000;
    SB_LUT4 i1_4_lut_adj_926 (.I0(n29), .I1(n23), .I2(\o_Rx_DV_N_3358[12] ), 
            .I3(n32429), .O(n32435));
    defparam i1_4_lut_adj_926.LUT_INIT = 16'h0100;
    SB_LUT4 i32491_4_lut (.I0(r_SM_Main[2]), .I1(\o_Rx_DV_N_3358[24] ), 
            .I2(n27), .I3(n32435), .O(n13088));   // verilog/uart_rx.v(53[7] 144[14])
    defparam i32491_4_lut.LUT_INIT = 16'h5455;
    SB_CARRY add_1543_4 (.CI(n25861), .I0(n2108), .I1(n856), .CO(n25862));
    SB_LUT4 add_1543_3_lut (.I0(GND_net), .I1(n2109), .I2(n698), .I3(n25860), 
            .O(n4972[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1545_15_lut (.I0(GND_net), .I1(n2355), .I2(n2397), .I3(n25898), 
            .O(n5024[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1548_20_lut (.I0(GND_net), .I1(n2713), .I2(n2977), .I3(n25951), 
            .O(n5102[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_9_lut (.I0(GND_net), .I1(n294[7]), .I2(VCC_net), 
            .I3(n25689), .O(\o_Rx_DV_N_3358[7] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_9 (.CI(n25689), .I0(n294[7]), .I1(VCC_net), 
            .CO(n25690));
    SB_LUT4 div_37_i1913_3_lut (.I0(n2727), .I1(n5102[9]), .I2(n294[5]), 
            .I3(GND_net), .O(n2841));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1913_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1912_3_lut (.I0(n2726), .I1(n5102[10]), .I2(n294[5]), 
            .I3(GND_net), .O(n2840));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1912_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_927 (.I0(n33087), .I1(n33123), .I2(n33085), .I3(n33081), 
            .O(n33145));
    defparam i1_4_lut_adj_927.LUT_INIT = 16'hfffe;
    SB_CARRY add_1543_3 (.CI(n25860), .I0(n2109), .I1(n698), .CO(n25861));
    SB_LUT4 add_1543_2_lut (.I0(GND_net), .I1(n2110), .I2(n858), .I3(VCC_net), 
            .O(n4972[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_8_lut (.I0(GND_net), .I1(n294[6]), .I2(VCC_net), 
            .I3(n25688), .O(\o_Rx_DV_N_3358[6] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1539_9_lut (.I0(GND_net), .I1(n1554), .I2(n1602), .I3(n25825), 
            .O(n4868[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1539_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1545_15 (.CI(n25898), .I0(n2355), .I1(n2397), .CO(n25899));
    SB_CARRY sub_38_add_2_8 (.CI(n25688), .I0(n294[6]), .I1(VCC_net), 
            .CO(n25689));
    SB_LUT4 sub_38_add_2_7_lut (.I0(GND_net), .I1(n294[5]), .I2(VCC_net), 
            .I3(n25687), .O(\o_Rx_DV_N_3358[5] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1543_2 (.CI(VCC_net), .I0(n2110), .I1(n858), .CO(n25860));
    SB_LUT4 add_1545_14_lut (.I0(GND_net), .I1(n2356), .I2(n2272), .I3(n25897), 
            .O(n5024[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1542_14_lut (.I0(GND_net), .I1(n1966), .I2(n2272), .I3(n25859), 
            .O(n4946[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1542_13_lut (.I0(GND_net), .I1(n1967), .I2(n2144), .I3(n25858), 
            .O(n4946[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1545_14 (.CI(n25897), .I0(n2356), .I1(n2272), .CO(n25898));
    SB_CARRY add_1542_13 (.CI(n25858), .I0(n1967), .I1(n2144), .CO(n25859));
    SB_CARRY sub_38_add_2_7 (.CI(n25687), .I0(n294[5]), .I1(VCC_net), 
            .CO(n25688));
    SB_LUT4 add_1542_12_lut (.I0(GND_net), .I1(n1968), .I2(n2013), .I3(n25857), 
            .O(n4946[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_6_lut (.I0(GND_net), .I1(n294[4]), .I2(VCC_net), 
            .I3(n25686), .O(\o_Rx_DV_N_3358[4] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1542_12 (.CI(n25857), .I0(n1968), .I1(n2013), .CO(n25858));
    SB_LUT4 add_1542_11_lut (.I0(GND_net), .I1(n1969), .I2(n1879), .I3(n25856), 
            .O(n4946[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1539_9 (.CI(n25825), .I0(n1554), .I1(n1602), .CO(n25826));
    SB_CARRY sub_38_add_2_6 (.CI(n25686), .I0(n294[4]), .I1(VCC_net), 
            .CO(n25687));
    SB_LUT4 add_1539_8_lut (.I0(GND_net), .I1(n1555), .I2(n1459), .I3(n25824), 
            .O(n4868[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1539_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1539_8 (.CI(n25824), .I0(n1555), .I1(n1459), .CO(n25825));
    SB_LUT4 add_1545_13_lut (.I0(GND_net), .I1(n2357), .I2(n2144), .I3(n25896), 
            .O(n5024[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_13_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR r_Clock_Count_1116__i1 (.Q(r_Clock_Count[1]), .C(clk16MHz), 
            .E(n13088), .D(n1[1]), .R(n14312));   // verilog/uart_rx.v(121[34:51])
    SB_LUT4 i31327_4_lut (.I0(n10997), .I1(n35424), .I2(n48_adj_3884), 
            .I3(baudrate[0]), .O(n804));
    defparam i31327_4_lut.LUT_INIT = 16'h3633;
    SB_LUT4 add_1539_7_lut (.I0(GND_net), .I1(n1556), .I2(n1460), .I3(n25823), 
            .O(n4868[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1539_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1548_19_lut (.I0(GND_net), .I1(n2714), .I2(n2867), .I3(n25950), 
            .O(n5102[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1539_7 (.CI(n25823), .I0(n1556), .I1(n1460), .CO(n25824));
    SB_LUT4 i32407_3_lut (.I0(n36835), .I1(baudrate[13]), .I2(n2098), 
            .I3(GND_net), .O(n48_adj_3885));   // verilog/uart_rx.v(119[33:55])
    defparam i32407_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_4_lut_adj_928 (.I0(n33203), .I1(n33075), .I2(n33073), .I3(n33065), 
            .O(n10985));
    defparam i1_4_lut_adj_928.LUT_INIT = 16'hfffe;
    SB_LUT4 sub_38_add_2_5_lut (.I0(GND_net), .I1(n294[3]), .I2(VCC_net), 
            .I3(n25685), .O(\o_Rx_DV_N_3358[3] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1542_11 (.CI(n25856), .I0(n1969), .I1(n1879), .CO(n25857));
    SB_CARRY add_1545_13 (.CI(n25896), .I0(n2357), .I1(n2144), .CO(n25897));
    SB_LUT4 add_1545_12_lut (.I0(GND_net), .I1(n2358), .I2(n2013), .I3(n25895), 
            .O(n5024[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1539_6_lut (.I0(GND_net), .I1(n1557), .I2(n1011), .I3(n25822), 
            .O(n4868[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1539_6_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR r_SM_Main_i1 (.Q(r_SM_Main[1]), .C(clk16MHz), .D(n3_adj_3886), 
            .R(r_SM_Main[2]));   // verilog/uart_rx.v(50[10] 145[8])
    SB_CARRY add_1539_6 (.CI(n25822), .I0(n1557), .I1(n1011), .CO(n25823));
    SB_CARRY add_1545_12 (.CI(n25895), .I0(n2358), .I1(n2013), .CO(n25896));
    SB_CARRY sub_38_add_2_5 (.CI(n25685), .I0(n294[3]), .I1(VCC_net), 
            .CO(n25686));
    SB_LUT4 add_1545_11_lut (.I0(GND_net), .I1(n2359), .I2(n1879), .I3(n25894), 
            .O(n5024[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_4_lut (.I0(GND_net), .I1(n294[2]), .I2(VCC_net), 
            .I3(n25684), .O(\o_Rx_DV_N_3358[2] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1539_5_lut (.I0(GND_net), .I1(n1558), .I2(n856), .I3(n25821), 
            .O(n4868[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1539_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1539_5 (.CI(n25821), .I0(n1558), .I1(n856), .CO(n25822));
    SB_CARRY sub_38_add_2_4 (.CI(n25684), .I0(n294[2]), .I1(VCC_net), 
            .CO(n25685));
    SB_CARRY add_1548_19 (.CI(n25950), .I0(n2714), .I1(n2867), .CO(n25951));
    SB_LUT4 add_1548_18_lut (.I0(GND_net), .I1(n2715), .I2(n2754), .I3(n25949), 
            .O(n5102[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1548_18 (.CI(n25949), .I0(n2715), .I1(n2754), .CO(n25950));
    SB_LUT4 i1_2_lut_adj_929 (.I0(baudrate[22]), .I1(baudrate[23]), .I2(GND_net), 
            .I3(GND_net), .O(n33073));
    defparam i1_2_lut_adj_929.LUT_INIT = 16'heeee;
    SB_LUT4 add_1548_17_lut (.I0(GND_net), .I1(n2716), .I2(n2638), .I3(n25948), 
            .O(n5102[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1548_17 (.CI(n25948), .I0(n2716), .I1(n2638), .CO(n25949));
    SB_LUT4 add_1548_16_lut (.I0(GND_net), .I1(n2717), .I2(n2519), .I3(n25947), 
            .O(n5102[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_3_lut (.I0(GND_net), .I1(n294[1]), .I2(VCC_net), 
            .I3(n25683), .O(\o_Rx_DV_N_3358[1] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_3_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR r_Clock_Count_1116__i2 (.Q(r_Clock_Count[2]), .C(clk16MHz), 
            .E(n13088), .D(n1[2]), .R(n14312));   // verilog/uart_rx.v(121[34:51])
    SB_CARRY add_1548_16 (.CI(n25947), .I0(n2717), .I1(n2519), .CO(n25948));
    SB_LUT4 add_1539_4_lut (.I0(GND_net), .I1(n1559), .I2(n698), .I3(n25820), 
            .O(n4868[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1539_4_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR r_Clock_Count_1116__i3 (.Q(r_Clock_Count[3]), .C(clk16MHz), 
            .E(n13088), .D(n1[3]), .R(n14312));   // verilog/uart_rx.v(121[34:51])
    SB_DFFESR r_Clock_Count_1116__i4 (.Q(r_Clock_Count[4]), .C(clk16MHz), 
            .E(n13088), .D(n1[4]), .R(n14312));   // verilog/uart_rx.v(121[34:51])
    SB_LUT4 i1_2_lut_adj_930 (.I0(baudrate[20]), .I1(baudrate[21]), .I2(GND_net), 
            .I3(GND_net), .O(n33081));
    defparam i1_2_lut_adj_930.LUT_INIT = 16'heeee;
    SB_LUT4 add_1548_15_lut (.I0(GND_net), .I1(n2718), .I2(n2397), .I3(n25946), 
            .O(n5102[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_3 (.CI(n25683), .I0(n294[1]), .I1(VCC_net), 
            .CO(n25684));
    SB_CARRY add_1548_15 (.CI(n25946), .I0(n2718), .I1(n2397), .CO(n25947));
    SB_LUT4 add_1552_25_lut (.I0(GND_net), .I1(n3151), .I2(n3186), .I3(n26034), 
            .O(n5206[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1552_24_lut (.I0(GND_net), .I1(n3152), .I2(n3082), .I3(n26033), 
            .O(n5206[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1552_24 (.CI(n26033), .I0(n3152), .I1(n3082), .CO(n26034));
    SB_LUT4 i1_2_lut_adj_931 (.I0(baudrate[30]), .I1(baudrate[25]), .I2(GND_net), 
            .I3(GND_net), .O(n33111));
    defparam i1_2_lut_adj_931.LUT_INIT = 16'heeee;
    SB_LUT4 add_1552_23_lut (.I0(GND_net), .I1(n3153), .I2(n3188), .I3(n26032), 
            .O(n5206[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1552_23 (.CI(n26032), .I0(n3153), .I1(n3188), .CO(n26033));
    SB_LUT4 i1_2_lut_adj_932 (.I0(baudrate[29]), .I1(baudrate[24]), .I2(GND_net), 
            .I3(GND_net), .O(n33115));
    defparam i1_2_lut_adj_932.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_1997_i12_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2955), .I3(GND_net), .O(n12_adj_3889));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i12_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_1552_22_lut (.I0(GND_net), .I1(n3154), .I2(n3084), .I3(n26031), 
            .O(n5206[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31199_2_lut_4_lut (.I0(n2950), .I1(baudrate[8]), .I2(n2954), 
            .I3(baudrate[4]), .O(n35602));
    defparam i31199_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 add_1542_10_lut (.I0(GND_net), .I1(n1970), .I2(n1742), .I3(n25855), 
            .O(n4946[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1997_i14_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2950), .I3(GND_net), .O(n14_adj_3890));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i14_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1997_i16_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2952), .I3(GND_net), .O(n16_adj_3891));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i16_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31184_2_lut_4_lut (.I0(n2942), .I1(baudrate[16]), .I2(n2951), 
            .I3(baudrate[7]), .O(n35587));
    defparam i31184_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_i1134_3_lut (.I0(n1552), .I1(n4868[23]), .I2(n294[14]), 
            .I3(GND_net), .O(n1693));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1134_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1227_3_lut (.I0(n1693), .I1(n4894[23]), .I2(n294[13]), 
            .I3(GND_net), .O(n1831));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1227_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1407_3_lut (.I0(n1966), .I1(n4946[23]), .I2(n294[11]), 
            .I3(GND_net), .O(n2098));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1407_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_933 (.I0(n33175), .I1(n33171), .I2(n33173), .I3(n33167), 
            .O(n11016));
    defparam i1_4_lut_adj_933.LUT_INIT = 16'hfffe;
    SB_LUT4 i30945_4_lut (.I0(n33_adj_3892), .I1(n31_adj_3893), .I2(n29_adj_3894), 
            .I3(n27_adj_3895), .O(n35348));
    defparam i30945_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_1997_i18_3_lut_3_lut (.I0(baudrate[7]), .I1(baudrate[16]), 
            .I2(n2942), .I3(GND_net), .O(n18_adj_3896));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i18_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1430_i38_3_lut (.I0(n30), .I1(baudrate[10]), 
            .I2(n41_adj_3881), .I3(GND_net), .O(n38_adj_3879));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i38_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1552_22 (.CI(n26031), .I0(n3154), .I1(n3084), .CO(n26032));
    SB_LUT4 i17340_rep_2_2_lut (.I0(n4946[11]), .I1(n294[11]), .I2(GND_net), 
            .I3(GND_net), .O(n30780));   // verilog/uart_rx.v(119[33:55])
    defparam i17340_rep_2_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i32213_3_lut (.I0(n26_adj_3897), .I1(baudrate[6]), .I2(n33_adj_3892), 
            .I3(GND_net), .O(n36618));   // verilog/uart_rx.v(119[33:55])
    defparam i32213_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1552_21_lut (.I0(GND_net), .I1(n3155), .I2(n2977), .I3(n26030), 
            .O(n5206[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_2_lut (.I0(GND_net), .I1(n31745), .I2(GND_net), 
            .I3(VCC_net), .O(\o_Rx_DV_N_3358[0] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1409_3_lut (.I0(n1968), .I1(n4946[21]), .I2(n294[11]), 
            .I3(GND_net), .O(n2100));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1409_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1552_21 (.CI(n26030), .I0(n3155), .I1(n2977), .CO(n26031));
    SB_LUT4 add_1548_14_lut (.I0(GND_net), .I1(n2719), .I2(n2272), .I3(n25945), 
            .O(n5102[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1552_20_lut (.I0(GND_net), .I1(n3156), .I2(n2867), .I3(n26029), 
            .O(n5206[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1552_20 (.CI(n26029), .I0(n3156), .I1(n2867), .CO(n26030));
    SB_CARRY add_1545_11 (.CI(n25894), .I0(n2359), .I1(n1879), .CO(n25895));
    SB_LUT4 div_37_LessThan_1430_i28_3_lut_3_lut (.I0(baudrate[3]), .I1(baudrate[4]), 
            .I2(n2107), .I3(GND_net), .O(n28_adj_3880));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i28_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_1552_19_lut (.I0(GND_net), .I1(n3157), .I2(n2754), .I3(n26028), 
            .O(n5206[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1496_3_lut (.I0(n2100), .I1(n4972[21]), .I2(n294[10]), 
            .I3(GND_net), .O(n2229));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1496_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY sub_38_add_2_2 (.CI(VCC_net), .I0(n31745), .I1(GND_net), 
            .CO(n25683));
    SB_CARRY add_1552_19 (.CI(n26028), .I0(n3157), .I1(n2754), .CO(n26029));
    SB_LUT4 add_1545_10_lut (.I0(GND_net), .I1(n2360), .I2(n1742), .I3(n25893), 
            .O(n5024[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1552_18_lut (.I0(GND_net), .I1(n3158), .I2(n2638), .I3(n26027), 
            .O(n5206[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32607_2_lut_3_lut_4_lut (.I0(baudrate[16]), .I1(baudrate[17]), 
            .I2(n11025), .I3(n48), .O(n294[8]));
    defparam i32607_2_lut_3_lut_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 div_37_LessThan_1517_i43_2_lut (.I0(n2229), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_3898));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i43_2_lut.LUT_INIT = 16'h6666;
    SB_DFFESR r_Clock_Count_1116__i5 (.Q(r_Clock_Count[5]), .C(clk16MHz), 
            .E(n13088), .D(n1[5]), .R(n14312));   // verilog/uart_rx.v(121[34:51])
    SB_LUT4 i32533_2_lut_4_lut (.I0(n36625), .I1(baudrate[5]), .I2(n30557), 
            .I3(n11048), .O(n294[18]));   // verilog/uart_rx.v(119[33:55])
    defparam i32533_2_lut_4_lut.LUT_INIT = 16'h0017;
    SB_LUT4 div_37_LessThan_1517_i23_2_lut (.I0(n2239), .I1(baudrate[2]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_3899));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i23_2_lut.LUT_INIT = 16'h6666;
    SB_DFFESR r_Clock_Count_1116__i6 (.Q(r_Clock_Count[6]), .C(clk16MHz), 
            .E(n13088), .D(n1[6]), .R(n14312));   // verilog/uart_rx.v(121[34:51])
    SB_DFFESR r_Clock_Count_1116__i7 (.Q(r_Clock_Count[7]), .C(clk16MHz), 
            .E(n13088), .D(n1[7]), .R(n14312));   // verilog/uart_rx.v(121[34:51])
    SB_LUT4 i1_4_lut_adj_934 (.I0(r_Clock_Count[1]), .I1(r_Clock_Count[0]), 
            .I2(\o_Rx_DV_N_3358[2] ), .I3(\o_Rx_DV_N_3358[1] ), .O(n33053));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_934.LUT_INIT = 16'h7bde;
    SB_LUT4 i30910_4_lut (.I0(n29_adj_3902), .I1(n27_adj_3903), .I2(n25_adj_3904), 
            .I3(n23_adj_3899), .O(n35313));
    defparam i30910_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i29206_2_lut_3_lut_4_lut (.I0(baudrate[16]), .I1(baudrate[17]), 
            .I2(n11025), .I3(baudrate[15]), .O(n33600));
    defparam i29206_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 equal_56_i3_2_lut (.I0(r_Clock_Count[2]), .I1(\o_Rx_DV_N_3358[3] ), 
            .I2(GND_net), .I3(GND_net), .O(n3_adj_3905));   // verilog/uart_rx.v(69[17:62])
    defparam equal_56_i3_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_935 (.I0(r_Clock_Count[3]), .I1(n3_adj_3905), .I2(\o_Rx_DV_N_3358[4] ), 
            .I3(n33053), .O(n33057));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_935.LUT_INIT = 16'hffde;
    SB_CARRY add_1552_18 (.CI(n26027), .I0(n3158), .I1(n2638), .CO(n26028));
    SB_LUT4 equal_56_i5_2_lut (.I0(r_Clock_Count[4]), .I1(\o_Rx_DV_N_3358[5] ), 
            .I2(GND_net), .I3(GND_net), .O(n5));   // verilog/uart_rx.v(69[17:62])
    defparam equal_56_i5_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_662_i42_4_lut (.I0(n30806), .I1(baudrate[2]), 
            .I2(n961), .I3(baudrate[1]), .O(n42_adj_3906));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_662_i42_4_lut.LUT_INIT = 16'h4d0c;
    SB_LUT4 i30904_4_lut (.I0(n35_adj_3907), .I1(n33_adj_3908), .I2(n31_adj_3909), 
            .I3(n35313), .O(n35307));
    defparam i30904_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i1_4_lut_adj_936 (.I0(r_Clock_Count[5]), .I1(n5), .I2(\o_Rx_DV_N_3358[6] ), 
            .I3(n33057), .O(n33061));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_936.LUT_INIT = 16'hffde;
    SB_LUT4 equal_56_i8_2_lut (.I0(r_Clock_Count[7]), .I1(\o_Rx_DV_N_3358[8] ), 
            .I2(GND_net), .I3(GND_net), .O(n8));   // verilog/uart_rx.v(69[17:62])
    defparam equal_56_i8_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_937 (.I0(r_Clock_Count[6]), .I1(n8), .I2(n33061), 
            .I3(\o_Rx_DV_N_3358[7] ), .O(n29805));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_937.LUT_INIT = 16'hfdfe;
    SB_LUT4 i29205_1_lut_2_lut_3_lut (.I0(baudrate[16]), .I1(baudrate[17]), 
            .I2(n11025), .I3(GND_net), .O(n30773));
    defparam i29205_1_lut_2_lut_3_lut.LUT_INIT = 16'h0101;
    SB_CARRY add_1539_4 (.CI(n25820), .I0(n1559), .I1(n698), .CO(n25821));
    SB_LUT4 add_1552_17_lut (.I0(GND_net), .I1(n3159), .I2(n2519), .I3(n26026), 
            .O(n5206[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1552_17 (.CI(n26026), .I0(n3159), .I1(n2519), .CO(n26027));
    SB_LUT4 add_1552_16_lut (.I0(GND_net), .I1(n3160), .I2(n2397), .I3(n26025), 
            .O(n5206[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1548_14 (.CI(n25945), .I0(n2719), .I1(n2272), .CO(n25946));
    SB_CARRY add_1552_16 (.CI(n26025), .I0(n3160), .I1(n2397), .CO(n26026));
    SB_LUT4 add_1552_15_lut (.I0(GND_net), .I1(n3161), .I2(n2272), .I3(n26024), 
            .O(n5206[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1552_15 (.CI(n26024), .I0(n3161), .I1(n2272), .CO(n26025));
    SB_LUT4 add_1552_14_lut (.I0(GND_net), .I1(n3162), .I2(n2144), .I3(n26023), 
            .O(n5206[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1552_14 (.CI(n26023), .I0(n3162), .I1(n2144), .CO(n26024));
    SB_LUT4 add_1552_13_lut (.I0(GND_net), .I1(n3163), .I2(n2013), .I3(n26022), 
            .O(n5206[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1548_13_lut (.I0(GND_net), .I1(n2720), .I2(n2144), .I3(n25944), 
            .O(n5102[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1552_13 (.CI(n26022), .I0(n3163), .I1(n2013), .CO(n26023));
    SB_LUT4 add_1552_12_lut (.I0(GND_net), .I1(n3164), .I2(n1879), .I3(n26021), 
            .O(n5206[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1552_12 (.CI(n26021), .I0(n3164), .I1(n1879), .CO(n26022));
    SB_LUT4 add_1552_11_lut (.I0(GND_net), .I1(n3165), .I2(n1742), .I3(n26020), 
            .O(n5206[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1552_11 (.CI(n26020), .I0(n3165), .I1(n1742), .CO(n26021));
    SB_LUT4 add_1552_10_lut (.I0(GND_net), .I1(n3166), .I2(n1602), .I3(n26019), 
            .O(n5206[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1548_13 (.CI(n25944), .I0(n2720), .I1(n2144), .CO(n25945));
    SB_LUT4 div_37_LessThan_866_i36_3_lut_4_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n32349), .I3(n48_adj_3910), .O(n36_adj_3911));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_866_i36_3_lut_4_lut.LUT_INIT = 16'hee8e;
    SB_CARRY add_1545_10 (.CI(n25893), .I0(n2360), .I1(n1742), .CO(n25894));
    SB_LUT4 i2_3_lut (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), .I2(\r_Bit_Index[0] ), 
            .I3(GND_net), .O(n31572));
    defparam i2_3_lut.LUT_INIT = 16'h8080;
    SB_CARRY add_1552_10 (.CI(n26019), .I0(n3166), .I1(n1602), .CO(n26020));
    SB_LUT4 add_1552_9_lut (.I0(GND_net), .I1(n3167), .I2(n1459), .I3(n26018), 
            .O(n5206[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1552_9 (.CI(n26018), .I0(n3167), .I1(n1459), .CO(n26019));
    SB_LUT4 add_1545_9_lut (.I0(GND_net), .I1(n2361), .I2(n1602), .I3(n25892), 
            .O(n5024[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32219_3_lut (.I0(n42_adj_3906), .I1(baudrate[3]), .I2(n960), 
            .I3(GND_net), .O(n36624));   // verilog/uart_rx.v(119[33:55])
    defparam i32219_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32220_3_lut (.I0(n36624), .I1(baudrate[4]), .I2(n959), .I3(GND_net), 
            .O(n36625));   // verilog/uart_rx.v(119[33:55])
    defparam i32220_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32091_3_lut (.I0(n36625), .I1(baudrate[5]), .I2(n30557), 
            .I3(GND_net), .O(n48_adj_3912));   // verilog/uart_rx.v(119[33:55])
    defparam i32091_3_lut.LUT_INIT = 16'he8e8;
    SB_LUT4 i29194_2_lut (.I0(\o_Rx_DV_N_3358[12] ), .I1(n29805), .I2(GND_net), 
            .I3(GND_net), .O(n33588));
    defparam i29194_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i29298_4_lut (.I0(\o_Rx_DV_N_3358[24] ), .I1(n29), .I2(n23), 
            .I3(n33588), .O(n33692));
    defparam i29298_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 add_1548_12_lut (.I0(GND_net), .I1(n2721), .I2(n2013), .I3(n25943), 
            .O(n5102[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1552_8_lut (.I0(GND_net), .I1(n3168), .I2(n1460), .I3(n26017), 
            .O(n5206[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 r_SM_Main_2__I_0_62_Mux_0_i2_4_lut (.I0(n32477), .I1(\r_SM_Main_2__N_3316[1] ), 
            .I2(r_SM_Main[0]), .I3(n27), .O(n2));   // verilog/uart_rx.v(53[7] 144[14])
    defparam r_SM_Main_2__I_0_62_Mux_0_i2_4_lut.LUT_INIT = 16'hc0c5;
    SB_CARRY add_1552_8 (.CI(n26017), .I0(n3168), .I1(n1460), .CO(n26018));
    SB_LUT4 i1_4_lut_adj_938 (.I0(baudrate[28]), .I1(baudrate[27]), .I2(baudrate[31]), 
            .I3(baudrate[26]), .O(n33011));
    defparam i1_4_lut_adj_938.LUT_INIT = 16'hfffe;
    SB_CARRY add_1548_12 (.CI(n25943), .I0(n2721), .I1(n2013), .CO(n25944));
    SB_LUT4 r_SM_Main_2__I_0_62_Mux_0_i1_4_lut (.I0(r_Rx_Data), .I1(n33692), 
            .I2(r_SM_Main[0]), .I3(n27), .O(n6789));   // verilog/uart_rx.v(53[7] 144[14])
    defparam r_SM_Main_2__I_0_62_Mux_0_i1_4_lut.LUT_INIT = 16'h0a3a;
    SB_LUT4 i1_4_lut_adj_939 (.I0(n33103), .I1(n10985), .I2(n33145), .I3(n33101), 
            .O(n11048));
    defparam i1_4_lut_adj_939.LUT_INIT = 16'hfffe;
    SB_LUT4 r_SM_Main_2__I_0_62_Mux_0_i3_3_lut (.I0(n6789), .I1(n2), .I2(r_SM_Main[1]), 
            .I3(GND_net), .O(n3));   // verilog/uart_rx.v(53[7] 144[14])
    defparam r_SM_Main_2__I_0_62_Mux_0_i3_3_lut.LUT_INIT = 16'hc5c5;
    SB_LUT4 div_37_i1911_3_lut (.I0(n2725), .I1(n5102[11]), .I2(n294[5]), 
            .I3(GND_net), .O(n2839));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1911_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut (.I0(n11048), .I1(n48_adj_3912), .I2(baudrate[0]), 
            .I3(GND_net), .O(n1116));
    defparam i1_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 add_1552_7_lut (.I0(GND_net), .I1(n3169), .I2(n1011), .I3(n26016), 
            .O(n5206[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1548_11_lut (.I0(GND_net), .I1(n2722), .I2(n1879), .I3(n25942), 
            .O(n5102[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_11_lut.LUT_INIT = 16'hC33C;
    SB_DFF r_SM_Main_i2 (.Q(r_SM_Main[2]), .C(clk16MHz), .D(n37172));   // verilog/uart_rx.v(50[10] 145[8])
    SB_CARRY add_1548_11 (.CI(n25942), .I0(n2722), .I1(n1879), .CO(n25943));
    SB_CARRY add_1552_7 (.CI(n26016), .I0(n3169), .I1(n1011), .CO(n26017));
    SB_LUT4 i30926_2_lut_4_lut (.I0(n2102), .I1(baudrate[9]), .I2(n2106), 
            .I3(baudrate[5]), .O(n35329));
    defparam i30926_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_2070_i10_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n3064), .I3(GND_net), .O(n10));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i10_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_1552_6_lut (.I0(GND_net), .I1(n3170), .I2(n856), .I3(n26015), 
            .O(n5206[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1552_6 (.CI(n26015), .I0(n3170), .I1(n856), .CO(n26016));
    SB_LUT4 add_1552_5_lut (.I0(GND_net), .I1(n3171), .I2(n698), .I3(n26014), 
            .O(n5206[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1548_10_lut (.I0(GND_net), .I1(n2723), .I2(n1742), .I3(n25941), 
            .O(n5102[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1552_5 (.CI(n26014), .I0(n3171), .I1(n698), .CO(n26015));
    SB_LUT4 div_37_LessThan_2070_i14_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n3061), .I3(GND_net), .O(n14_adj_3913));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i14_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31115_2_lut_4_lut (.I0(n3051), .I1(baudrate[16]), .I2(n3060), 
            .I3(baudrate[7]), .O(n35518));
    defparam i31115_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 add_1552_4_lut (.I0(GND_net), .I1(n3172), .I2(n858), .I3(n26013), 
            .O(n5206[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1548_10 (.CI(n25941), .I0(n2723), .I1(n1742), .CO(n25942));
    SB_CARRY add_1552_4 (.CI(n26013), .I0(n3172), .I1(n858), .CO(n26014));
    SB_LUT4 add_1552_3_lut (.I0(n30745), .I1(GND_net), .I2(n538), .I3(n26012), 
            .O(n32381)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_3_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i1_4_lut_adj_940 (.I0(n33011), .I1(n33171), .I2(n33115), .I3(n33111), 
            .O(n10979));
    defparam i1_4_lut_adj_940.LUT_INIT = 16'hfffe;
    SB_CARRY add_1552_3 (.CI(n26012), .I0(GND_net), .I1(n538), .CO(n26013));
    SB_LUT4 i2820_2_lut_4_lut_3_lut (.I0(n805), .I1(baudrate[1]), .I2(baudrate[0]), 
            .I3(GND_net), .O(n42_adj_3914));   // verilog/uart_rx.v(119[33:55])
    defparam i2820_2_lut_4_lut_3_lut.LUT_INIT = 16'h2b2b;
    SB_LUT4 div_37_LessThan_2070_i16_3_lut_3_lut (.I0(baudrate[7]), .I1(baudrate[16]), 
            .I2(n3051), .I3(GND_net), .O(n16_adj_3915));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i16_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_CARRY add_1552_2 (.CI(VCC_net), .I0(GND_net), .I1(VCC_net), .CO(n26012));
    SB_LUT4 add_1551_23_lut (.I0(GND_net), .I1(n3046), .I2(n3082), .I3(n26011), 
            .O(n5180[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1551_22_lut (.I0(GND_net), .I1(n3047), .I2(n3188), .I3(n26010), 
            .O(n5180[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1517_i22_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n2240), .I3(GND_net), .O(n22_adj_3916));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i22_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_1548_9_lut (.I0(GND_net), .I1(n2724), .I2(n1602), .I3(n25940), 
            .O(n5102[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1517_i30_3_lut (.I0(n28_adj_3917), .I1(baudrate[7]), 
            .I2(n33_adj_3908), .I3(GND_net), .O(n30_adj_3918));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1551_22 (.CI(n26010), .I0(n3047), .I1(n3188), .CO(n26011));
    SB_LUT4 add_1551_21_lut (.I0(GND_net), .I1(n3048), .I2(n3084), .I3(n26009), 
            .O(n5180[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1551_21 (.CI(n26009), .I0(n3048), .I1(n3084), .CO(n26010));
    SB_LUT4 add_1551_20_lut (.I0(GND_net), .I1(n3049), .I2(n2977), .I3(n26008), 
            .O(n5180[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1551_20 (.CI(n26008), .I0(n3049), .I1(n2977), .CO(n26009));
    SB_LUT4 add_1551_19_lut (.I0(GND_net), .I1(n3050), .I2(n2867), .I3(n26007), 
            .O(n5180[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1548_9 (.CI(n25940), .I0(n2724), .I1(n1602), .CO(n25941));
    SB_LUT4 i29281_1_lut_2_lut_3_lut_4_lut (.I0(baudrate[8]), .I1(baudrate[9]), 
            .I2(n33652), .I3(baudrate[7]), .O(n30803));
    defparam i29281_1_lut_2_lut_3_lut_4_lut.LUT_INIT = 16'h0001;
    SB_CARRY add_1551_19 (.CI(n26007), .I0(n3050), .I1(n2867), .CO(n26008));
    SB_LUT4 add_1551_18_lut (.I0(GND_net), .I1(n3051), .I2(n2754), .I3(n26006), 
            .O(n5180[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1551_18 (.CI(n26006), .I0(n3051), .I1(n2754), .CO(n26007));
    SB_LUT4 i32557_2_lut_3_lut_4_lut (.I0(baudrate[8]), .I1(baudrate[9]), 
            .I2(n33652), .I3(n48_adj_3919), .O(n294[16]));
    defparam i32557_2_lut_3_lut_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 add_1551_17_lut (.I0(GND_net), .I1(n3052), .I2(n2638), .I3(n26005), 
            .O(n5180[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i848_3_lut (.I0(n1116), .I1(n4790[18]), .I2(n294[17]), 
            .I3(GND_net), .O(n1266));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i848_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1548_8_lut (.I0(GND_net), .I1(n2725), .I2(n1459), .I3(n25939), 
            .O(n5102[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1551_17 (.CI(n26005), .I0(n3052), .I1(n2638), .CO(n26006));
    SB_LUT4 add_1551_16_lut (.I0(GND_net), .I1(n3053), .I2(n2519), .I3(n26004), 
            .O(n5180[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i29279_1_lut_2_lut_3_lut (.I0(baudrate[8]), .I1(baudrate[9]), 
            .I2(n33652), .I3(GND_net), .O(n30799));
    defparam i29279_1_lut_2_lut_3_lut.LUT_INIT = 16'h0101;
    SB_CARRY add_1548_8 (.CI(n25939), .I0(n2725), .I1(n1459), .CO(n25940));
    SB_LUT4 div_37_LessThan_2070_i12_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n3059), .I3(GND_net), .O(n12_adj_3920));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i12_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i947_3_lut (.I0(n1266), .I1(n4816[18]), .I2(n294[16]), 
            .I3(GND_net), .O(n1413));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i947_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1551_16 (.CI(n26004), .I0(n3053), .I1(n2519), .CO(n26005));
    SB_LUT4 add_1551_15_lut (.I0(GND_net), .I1(n3054), .I2(n2397), .I3(n26003), 
            .O(n5180[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1548_7_lut (.I0(GND_net), .I1(n2726), .I2(n1460), .I3(n25938), 
            .O(n5102[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_450_i46_4_lut (.I0(n35169), .I1(baudrate[2]), 
            .I2(n36888), .I3(n48_adj_3884), .O(n46));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_450_i46_4_lut.LUT_INIT = 16'hc0e8;
    SB_CARRY add_1551_15 (.CI(n26003), .I0(n3054), .I1(n2397), .CO(n26004));
    SB_LUT4 i31168_2_lut_4_lut (.I0(n3059), .I1(baudrate[8]), .I2(n3063), 
            .I3(baudrate[4]), .O(n35571));
    defparam i31168_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 add_1551_14_lut (.I0(GND_net), .I1(n3055), .I2(n2272), .I3(n26002), 
            .O(n5180[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1551_14 (.CI(n26002), .I0(n3055), .I1(n2272), .CO(n26003));
    SB_LUT4 div_37_LessThan_1766_i18_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2610), .I3(GND_net), .O(n18_adj_3921));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i18_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i1044_3_lut (.I0(n1413), .I1(n4842[18]), .I2(n294[15]), 
            .I3(GND_net), .O(n1557));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1044_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_450_i48_3_lut (.I0(n46), .I1(baudrate[3]), .I2(n30553), 
            .I3(GND_net), .O(n48_adj_3922));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_450_i48_3_lut.LUT_INIT = 16'he8e8;
    SB_LUT4 add_1551_13_lut (.I0(GND_net), .I1(n3056), .I2(n2144), .I3(n26001), 
            .O(n5180[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31374_2_lut_4_lut (.I0(n2605), .I1(baudrate[8]), .I2(n2609), 
            .I3(baudrate[4]), .O(n35777));
    defparam i31374_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1766_i20_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2605), .I3(GND_net), .O(n20_adj_3923));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i20_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1766_i22_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2607), .I3(GND_net), .O(n22_adj_3924));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i22_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1430_i30_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[9]), 
            .I2(n2102), .I3(GND_net), .O(n30));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i30_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_CARRY add_1545_9 (.CI(n25892), .I0(n2361), .I1(n1602), .CO(n25893));
    SB_LUT4 i1_2_lut_4_lut_adj_941 (.I0(n36869), .I1(baudrate[20]), .I2(n2938), 
            .I3(n32377), .O(n3066));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_941.LUT_INIT = 16'h7100;
    SB_LUT4 div_37_i1139_3_lut (.I0(n1557), .I1(n4868[18]), .I2(n294[14]), 
            .I3(GND_net), .O(n1698));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1139_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1551_13 (.CI(n26001), .I0(n3056), .I1(n2144), .CO(n26002));
    SB_CARRY add_1548_7 (.CI(n25938), .I0(n2726), .I1(n1460), .CO(n25939));
    SB_LUT4 div_37_LessThan_1517_i34_3_lut (.I0(n26_adj_3925), .I1(baudrate[9]), 
            .I2(n37_adj_3926), .I3(GND_net), .O(n34_adj_3927));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i34_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1545_8_lut (.I0(GND_net), .I1(n2362), .I2(n1459), .I3(n25891), 
            .O(n5024[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1548_6_lut (.I0(GND_net), .I1(n2727), .I2(n1011), .I3(n25937), 
            .O(n5102[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32631_2_lut_4_lut (.I0(n36869), .I1(baudrate[20]), .I2(n2938), 
            .I3(n33678), .O(n294[3]));   // verilog/uart_rx.v(119[33:55])
    defparam i32631_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 i32380_4_lut (.I0(n34_adj_3927), .I1(n24_adj_3928), .I2(n37_adj_3926), 
            .I3(n35305), .O(n36785));   // verilog/uart_rx.v(119[33:55])
    defparam i32380_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i1_4_lut_adj_942 (.I0(n33033), .I1(n33093), .I2(n33095), .I3(n33091), 
            .O(n33045));
    defparam i1_4_lut_adj_942.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_3_lut (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), .I2(n32769), 
            .I3(GND_net), .O(n32771));   // verilog/uart_rx.v(98[17:39])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hfdfd;
    SB_LUT4 i31378_2_lut_4_lut (.I0(n2607), .I1(baudrate[6]), .I2(n2608), 
            .I3(baudrate[5]), .O(n35781));
    defparam i31378_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i1_4_lut_adj_943 (.I0(n33045), .I1(n10979), .I2(n33037), .I3(n33173), 
            .O(n11032));
    defparam i1_4_lut_adj_943.LUT_INIT = 16'hfffe;
    SB_LUT4 add_1551_12_lut (.I0(GND_net), .I1(n3057), .I2(n2013), .I3(n26000), 
            .O(n5180[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_3_lut_adj_944 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(n32787), .I3(GND_net), .O(n32825));   // verilog/uart_rx.v(98[17:39])
    defparam i1_2_lut_3_lut_adj_944.LUT_INIT = 16'hfdfd;
    SB_LUT4 div_37_LessThan_765_i40_3_lut_3_lut (.I0(n1114), .I1(baudrate[3]), 
            .I2(baudrate[2]), .I3(GND_net), .O(n40_adj_3929));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_765_i40_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 i31448_3_lut_4_lut (.I0(n1114), .I1(baudrate[3]), .I2(baudrate[2]), 
            .I3(n1115), .O(n35851));   // verilog/uart_rx.v(119[33:55])
    defparam i31448_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i1_3_lut_4_lut (.I0(baudrate[28]), .I1(baudrate[25]), .I2(baudrate[26]), 
            .I3(baudrate[29]), .O(n32331));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY add_1545_8 (.CI(n25891), .I0(n2362), .I1(n1459), .CO(n25892));
    SB_LUT4 add_1545_7_lut (.I0(GND_net), .I1(n2363), .I2(n1460), .I3(n25890), 
            .O(n5024[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1548_6 (.CI(n25937), .I0(n2727), .I1(n1011), .CO(n25938));
    SB_LUT4 add_1548_5_lut (.I0(GND_net), .I1(n2728), .I2(n856), .I3(n25936), 
            .O(n5102[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1545_7 (.CI(n25890), .I0(n2363), .I1(n1460), .CO(n25891));
    SB_CARRY add_1548_5 (.CI(n25936), .I0(n2728), .I1(n856), .CO(n25937));
    SB_LUT4 add_1545_6_lut (.I0(GND_net), .I1(n2364), .I2(n1011), .I3(n25889), 
            .O(n5024[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1542_10 (.CI(n25855), .I0(n1970), .I1(n1742), .CO(n25856));
    SB_CARRY add_1551_12 (.CI(n26000), .I0(n3057), .I1(n2013), .CO(n26001));
    SB_CARRY add_1545_6 (.CI(n25889), .I0(n2364), .I1(n1011), .CO(n25890));
    SB_LUT4 add_1548_4_lut (.I0(GND_net), .I1(n2729), .I2(n698), .I3(n25935), 
            .O(n5102[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1551_11_lut (.I0(GND_net), .I1(n3058), .I2(n1879), .I3(n25999), 
            .O(n5180[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1545_5_lut (.I0(GND_net), .I1(n2365), .I2(n856), .I3(n25888), 
            .O(n5024[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1548_4 (.CI(n25935), .I0(n2729), .I1(n698), .CO(n25936));
    SB_LUT4 i32381_3_lut (.I0(n36785), .I1(baudrate[10]), .I2(n39_adj_3930), 
            .I3(GND_net), .O(n36786));   // verilog/uart_rx.v(119[33:55])
    defparam i32381_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32628_2_lut_3_lut_4_lut (.I0(\r_SM_Main_2__N_3316[1] ), .I1(r_SM_Main[1]), 
            .I2(r_SM_Main[0]), .I3(r_SM_Main[2]), .O(n13161));
    defparam i32628_2_lut_3_lut_4_lut.LUT_INIT = 16'h0007;
    SB_LUT4 div_37_LessThan_866_i38_3_lut_3_lut (.I0(n1265), .I1(baudrate[3]), 
            .I2(baudrate[2]), .I3(GND_net), .O(n38_adj_3931));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_866_i38_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_CARRY add_1545_5 (.CI(n25888), .I0(n2365), .I1(n856), .CO(n25889));
    SB_LUT4 add_1539_3_lut (.I0(GND_net), .I1(n1560), .I2(n858), .I3(n25819), 
            .O(n4868[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1539_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1548_3_lut (.I0(GND_net), .I1(n2730), .I2(n858), .I3(n25934), 
            .O(n5102[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1548_3 (.CI(n25934), .I0(n2730), .I1(n858), .CO(n25935));
    SB_CARRY add_1551_11 (.CI(n25999), .I0(n3058), .I1(n1879), .CO(n26000));
    SB_LUT4 add_1545_4_lut (.I0(GND_net), .I1(n2366), .I2(n698), .I3(n25887), 
            .O(n5024[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1542_9_lut (.I0(GND_net), .I1(n1971), .I2(n1602), .I3(n25854), 
            .O(n4946[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1545_4 (.CI(n25887), .I0(n2366), .I1(n698), .CO(n25888));
    SB_LUT4 add_1551_10_lut (.I0(GND_net), .I1(n3059), .I2(n1742), .I3(n25998), 
            .O(n5180[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1548_2_lut (.I0(n30761), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n32373)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_1542_9 (.CI(n25854), .I0(n1971), .I1(n1602), .CO(n25855));
    SB_CARRY add_1548_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n25934));
    SB_LUT4 add_1542_8_lut (.I0(GND_net), .I1(n1972), .I2(n1459), .I3(n25853), 
            .O(n4946[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1551_10 (.CI(n25998), .I0(n3059), .I1(n1742), .CO(n25999));
    SB_LUT4 add_1545_3_lut (.I0(GND_net), .I1(n2367), .I2(n858), .I3(n25886), 
            .O(n5024[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31432_3_lut_4_lut (.I0(n1265), .I1(baudrate[3]), .I2(baudrate[2]), 
            .I3(n1266), .O(n35835));   // verilog/uart_rx.v(119[33:55])
    defparam i31432_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 add_1551_9_lut (.I0(GND_net), .I1(n3060), .I2(n1602), .I3(n25997), 
            .O(n5180[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1547_19_lut (.I0(GND_net), .I1(n2596), .I2(n2867), .I3(n25933), 
            .O(n5076[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1551_9 (.CI(n25997), .I0(n3060), .I1(n1602), .CO(n25998));
    SB_CARRY add_1545_3 (.CI(n25886), .I0(n2367), .I1(n858), .CO(n25887));
    SB_LUT4 add_1547_18_lut (.I0(GND_net), .I1(n2597), .I2(n2754), .I3(n25932), 
            .O(n5076[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1551_8_lut (.I0(GND_net), .I1(n3061), .I2(n1459), .I3(n25996), 
            .O(n5180[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1547_18 (.CI(n25932), .I0(n2597), .I1(n2754), .CO(n25933));
    SB_CARRY add_1551_8 (.CI(n25996), .I0(n3061), .I1(n1459), .CO(n25997));
    SB_LUT4 add_1547_17_lut (.I0(GND_net), .I1(n2598), .I2(n2638), .I3(n25931), 
            .O(n5076[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1551_7_lut (.I0(GND_net), .I1(n3062), .I2(n1460), .I3(n25995), 
            .O(n5180[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_4_lut_adj_945 (.I0(n36345), .I1(baudrate[21]), .I2(n3046), 
            .I3(n32379), .O(n3172));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_945.LUT_INIT = 16'h7100;
    SB_LUT4 i32636_2_lut_4_lut (.I0(n36345), .I1(baudrate[21]), .I2(n3046), 
            .I3(n10985), .O(n294[2]));   // verilog/uart_rx.v(119[33:55])
    defparam i32636_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_CARRY add_1539_3 (.CI(n25819), .I0(n1560), .I1(n858), .CO(n25820));
    SB_CARRY add_1551_7 (.CI(n25995), .I0(n3062), .I1(n1460), .CO(n25996));
    SB_LUT4 add_1551_6_lut (.I0(GND_net), .I1(n3063), .I2(n1011), .I3(n25994), 
            .O(n5180[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1542_8 (.CI(n25853), .I0(n1972), .I1(n1459), .CO(n25854));
    SB_DFFESR r_Bit_Index_i1 (.Q(r_Bit_Index[1]), .C(clk16MHz), .E(n13161), 
            .D(n479[1]), .R(n30722));   // verilog/uart_rx.v(50[10] 145[8])
    SB_DFFESR r_Bit_Index_i2 (.Q(r_Bit_Index[2]), .C(clk16MHz), .E(n13161), 
            .D(n479[2]), .R(n30722));   // verilog/uart_rx.v(50[10] 145[8])
    SB_CARRY add_1551_6 (.CI(n25994), .I0(n3063), .I1(n1011), .CO(n25995));
    SB_LUT4 i32332_3_lut (.I0(n36786), .I1(baudrate[11]), .I2(n41_adj_3932), 
            .I3(GND_net), .O(n36737));   // verilog/uart_rx.v(119[33:55])
    defparam i32332_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_adj_946 (.I0(n11032), .I1(n48_adj_3922), .I2(baudrate[0]), 
            .I3(GND_net), .O(n805));
    defparam i1_3_lut_adj_946.LUT_INIT = 16'hefef;
    SB_LUT4 i1_2_lut_4_lut_adj_947 (.I0(n36800), .I1(baudrate[17]), .I2(n2596), 
            .I3(n32371), .O(n2730));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_947.LUT_INIT = 16'h7100;
    SB_LUT4 i32618_2_lut_4_lut (.I0(n36800), .I1(baudrate[17]), .I2(n2596), 
            .I3(n11025), .O(n294[6]));   // verilog/uart_rx.v(119[33:55])
    defparam i32618_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 add_1551_5_lut (.I0(GND_net), .I1(n3064), .I2(n856), .I3(n25993), 
            .O(n5180[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 r_Clock_Count_1116_add_4_9_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[7]), .I3(n26110), .O(n1[7])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1116_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut_4_lut_adj_948 (.I0(baudrate[30]), .I1(baudrate[31]), 
            .I2(baudrate[27]), .I3(baudrate[24]), .O(n32329));
    defparam i1_3_lut_4_lut_adj_948.LUT_INIT = 16'hfffe;
    SB_LUT4 r_Clock_Count_1116_add_4_8_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[6]), .I3(n26109), .O(n1[6])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1116_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1341_i26_3_lut_4_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n32363), .I3(n48_adj_3933), .O(n26_adj_3934));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i26_3_lut_4_lut.LUT_INIT = 16'hee8e;
    SB_LUT4 i29238_3_lut_4_lut (.I0(baudrate[30]), .I1(baudrate[31]), .I2(baudrate[26]), 
            .I3(baudrate[24]), .O(n33632));
    defparam i29238_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY add_1551_5 (.CI(n25993), .I0(n3064), .I1(n856), .CO(n25994));
    SB_LUT4 add_1551_4_lut (.I0(GND_net), .I1(n3065), .I2(n698), .I3(n25992), 
            .O(n5180[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1545_2_lut (.I0(n30773), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n32367)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_1547_17 (.CI(n25931), .I0(n2598), .I1(n2638), .CO(n25932));
    SB_CARRY add_1551_4 (.CI(n25992), .I0(n3065), .I1(n698), .CO(n25993));
    SB_CARRY r_Clock_Count_1116_add_4_8 (.CI(n26109), .I0(GND_net), .I1(r_Clock_Count[6]), 
            .CO(n26110));
    SB_LUT4 add_1551_3_lut (.I0(GND_net), .I1(n3066), .I2(n858), .I3(n25991), 
            .O(n5180[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1551_3 (.CI(n25991), .I0(n3066), .I1(n858), .CO(n25992));
    SB_LUT4 add_1551_2_lut (.I0(n30749), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n32379)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i32639_2_lut_4_lut (.I0(n36763), .I1(baudrate[22]), .I2(n3151), 
            .I3(n10988), .O(n294[1]));
    defparam i32639_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 div_37_i1232_3_lut (.I0(n1698), .I1(n4894[18]), .I2(n294[13]), 
            .I3(GND_net), .O(n1836));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1232_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 r_Clock_Count_1116_add_4_7_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[5]), .I3(n26108), .O(n1[5])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1116_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1551_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n25991));
    SB_CARRY r_Clock_Count_1116_add_4_7 (.CI(n26108), .I0(GND_net), .I1(r_Clock_Count[5]), 
            .CO(n26109));
    SB_LUT4 r_Clock_Count_1116_add_4_6_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[4]), .I3(n26107), .O(n1[4])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1116_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1547_16_lut (.I0(GND_net), .I1(n2599), .I2(n2519), .I3(n25930), 
            .O(n5076[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1547_16 (.CI(n25930), .I0(n2599), .I1(n2519), .CO(n25931));
    SB_LUT4 i1_3_lut_adj_949 (.I0(n33682), .I1(n48_adj_3935), .I2(baudrate[0]), 
            .I3(GND_net), .O(n962));
    defparam i1_3_lut_adj_949.LUT_INIT = 16'h1010;
    SB_LUT4 div_37_i1323_3_lut (.I0(n1836), .I1(n4920[18]), .I2(n294[12]), 
            .I3(GND_net), .O(n1971));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1323_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1341_i28_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n1975), .I3(GND_net), .O(n28_adj_3936));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i28_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_1550_22_lut (.I0(GND_net), .I1(n2938), .I2(n3188), .I3(n25990), 
            .O(n5154[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1550_21_lut (.I0(GND_net), .I1(n2939), .I2(n3084), .I3(n25989), 
            .O(n5154[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1116_add_4_6 (.CI(n26107), .I0(GND_net), .I1(r_Clock_Count[4]), 
            .CO(n26108));
    SB_LUT4 i1_3_lut_4_lut_adj_950 (.I0(n32883), .I1(n33600), .I2(n4946[11]), 
            .I3(n48_adj_3937), .O(n2110));
    defparam i1_3_lut_4_lut_adj_950.LUT_INIT = 16'h0010;
    SB_LUT4 i29258_2_lut_3_lut_4_lut (.I0(n32883), .I1(n33600), .I2(n33091), 
            .I3(baudrate[12]), .O(n33652));
    defparam i29258_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i32592_2_lut_3_lut_4_lut (.I0(n32883), .I1(n33600), .I2(n48_adj_3933), 
            .I3(baudrate[12]), .O(n294[12]));
    defparam i32592_2_lut_3_lut_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 i30987_2_lut_4_lut (.I0(n1970), .I1(baudrate[8]), .I2(n1974), 
            .I3(baudrate[4]), .O(n35390));
    defparam i30987_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1341_i30_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n1970), .I3(GND_net), .O(n30_adj_3938));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i30_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_1547_15_lut (.I0(GND_net), .I1(n2600), .I2(n2397), .I3(n25929), 
            .O(n5076[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_2141_i8_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n3170), .I3(GND_net), .O(n8_adj_3939));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i8_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_CARRY add_1547_15 (.CI(n25929), .I0(n2600), .I1(n2397), .CO(n25930));
    SB_LUT4 r_Clock_Count_1116_add_4_5_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[3]), .I3(n26106), .O(n1[3])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1116_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32026_4_lut (.I0(n41_adj_3932), .I1(n39_adj_3930), .I2(n37_adj_3926), 
            .I3(n35307), .O(n36431));
    defparam i32026_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY add_1550_21 (.CI(n25989), .I0(n2939), .I1(n3084), .CO(n25990));
    SB_LUT4 add_1547_14_lut (.I0(GND_net), .I1(n2601), .I2(n2272), .I3(n25928), 
            .O(n5076[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i642_4_lut (.I0(n805), .I1(baudrate[1]), .I2(n294[19]), 
            .I3(baudrate[0]), .O(n961));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i642_4_lut.LUT_INIT = 16'h9a6a;
    SB_CARRY r_Clock_Count_1116_add_4_5 (.CI(n26106), .I0(GND_net), .I1(r_Clock_Count[3]), 
            .CO(n26107));
    SB_LUT4 div_37_i1412_3_lut (.I0(n1971), .I1(n4946[18]), .I2(n294[11]), 
            .I3(GND_net), .O(n2103));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1412_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1547_14 (.CI(n25928), .I0(n2601), .I1(n2272), .CO(n25929));
    SB_LUT4 r_Clock_Count_1116_add_4_4_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[2]), .I3(n26105), .O(n1[2])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1116_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1116_add_4_4 (.CI(n26105), .I0(GND_net), .I1(r_Clock_Count[2]), 
            .CO(n26106));
    SB_LUT4 i32024_4_lut (.I0(n30_adj_3918), .I1(n22_adj_3916), .I2(n33_adj_3908), 
            .I3(n35310), .O(n36429));   // verilog/uart_rx.v(119[33:55])
    defparam i32024_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 add_1550_20_lut (.I0(GND_net), .I1(n2940), .I2(n2977), .I3(n25988), 
            .O(n5154[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1545_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n25886));
    SB_LUT4 r_Clock_Count_1116_add_4_3_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[1]), .I3(n26104), .O(n1[1])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1116_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1116_add_4_3 (.CI(n26104), .I0(GND_net), .I1(r_Clock_Count[1]), 
            .CO(n26105));
    SB_LUT4 i32278_3_lut (.I0(n36737), .I1(baudrate[12]), .I2(n43_adj_3898), 
            .I3(GND_net), .O(n42_adj_3940));   // verilog/uart_rx.v(119[33:55])
    defparam i32278_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 r_Clock_Count_1116_add_4_2_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[0]), .I3(VCC_net), .O(n1[0])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1116_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1116_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(r_Clock_Count[0]), 
            .CO(n26104));
    SB_CARRY add_1550_20 (.CI(n25988), .I0(n2940), .I1(n2977), .CO(n25989));
    SB_LUT4 add_1550_19_lut (.I0(GND_net), .I1(n2941), .I2(n2867), .I3(n25987), 
            .O(n5154[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i3860_4_lut (.I0(n961), .I1(baudrate[2]), .I2(n962), .I3(baudrate[1]), 
            .O(n7540));   // verilog/uart_rx.v(119[33:55])
    defparam i3860_4_lut.LUT_INIT = 16'ha2aa;
    SB_LUT4 div_37_i1494_3_lut (.I0(n2098), .I1(n4972[23]), .I2(n294[10]), 
            .I3(GND_net), .O(n2227));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1494_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_951 (.I0(baudrate[23]), .I1(baudrate[28]), .I2(baudrate[27]), 
            .I3(baudrate[0]), .O(n32677));
    defparam i1_4_lut_adj_951.LUT_INIT = 16'h0100;
    SB_LUT4 add_1547_13_lut (.I0(GND_net), .I1(n2602), .I2(n2144), .I3(n25927), 
            .O(n5076[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1550_19 (.CI(n25987), .I0(n2941), .I1(n2867), .CO(n25988));
    SB_LUT4 div_37_LessThan_2141_i12_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n3167), .I3(GND_net), .O(n12_adj_3941));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i12_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31027_2_lut_4_lut (.I0(n3157), .I1(baudrate[16]), .I2(n3166), 
            .I3(baudrate[7]), .O(n35430));
    defparam i31027_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 add_1542_7_lut (.I0(GND_net), .I1(n1973), .I2(n1460), .I3(n25852), 
            .O(n4946[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1550_18_lut (.I0(GND_net), .I1(n2942), .I2(n2754), .I3(n25986), 
            .O(n5154[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1544_16_lut (.I0(GND_net), .I1(n2227), .I2(n2519), .I3(n25885), 
            .O(n4998[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1544_15_lut (.I0(GND_net), .I1(n2228), .I2(n2397), .I3(n25884), 
            .O(n4998[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1547_13 (.CI(n25927), .I0(n2602), .I1(n2144), .CO(n25928));
    SB_LUT4 add_1547_12_lut (.I0(GND_net), .I1(n2603), .I2(n2013), .I3(n25926), 
            .O(n5076[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1542_7 (.CI(n25852), .I0(n1973), .I1(n1460), .CO(n25853));
    SB_CARRY add_1544_15 (.CI(n25884), .I0(n2228), .I1(n2397), .CO(n25885));
    SB_CARRY add_1550_18 (.CI(n25986), .I0(n2942), .I1(n2754), .CO(n25987));
    SB_LUT4 add_1542_6_lut (.I0(GND_net), .I1(n1974), .I2(n1011), .I3(n25851), 
            .O(n4946[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1542_6 (.CI(n25851), .I0(n1974), .I1(n1011), .CO(n25852));
    SB_LUT4 add_1544_14_lut (.I0(GND_net), .I1(n2229), .I2(n2272), .I3(n25883), 
            .O(n4998[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1547_12 (.CI(n25926), .I0(n2603), .I1(n2013), .CO(n25927));
    SB_LUT4 add_1547_11_lut (.I0(GND_net), .I1(n2604), .I2(n1879), .I3(n25925), 
            .O(n5076[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1544_14 (.CI(n25883), .I0(n2229), .I1(n2272), .CO(n25884));
    SB_DFF r_Rx_Byte_i0 (.Q(rx_data[0]), .C(clk16MHz), .D(n15418));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 add_1542_5_lut (.I0(GND_net), .I1(n1975), .I2(n856), .I3(n25850), 
            .O(n4946[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_5_lut.LUT_INIT = 16'hC33C;
    SB_DFFE r_Rx_DV_58 (.Q(rx_data_ready), .C(clk16MHz), .E(VCC_net), 
            .D(n27581));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 add_1539_2_lut (.I0(GND_net), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n4868[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1539_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_2141_i14_3_lut_3_lut (.I0(baudrate[7]), .I1(baudrate[16]), 
            .I2(n3157), .I3(GND_net), .O(n14_adj_3942));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i14_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_2141_i10_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n3165), .I3(GND_net), .O(n10_adj_3943));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i10_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i2991_2_lut (.I0(n7540), .I1(n6667), .I2(GND_net), .I3(GND_net), 
            .O(n42_adj_3944));   // verilog/uart_rx.v(119[33:55])
    defparam i2991_2_lut.LUT_INIT = 16'heeee;
    SB_DFFE r_Bit_Index_i0 (.Q(\r_Bit_Index[0] ), .C(clk16MHz), .E(VCC_net), 
            .D(n15369));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 div_37_i1910_3_lut (.I0(n2724), .I1(n5102[12]), .I2(n294[5]), 
            .I3(GND_net), .O(n2838));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1910_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1544_13_lut (.I0(GND_net), .I1(n2230), .I2(n2144), .I3(n25882), 
            .O(n4998[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1547_11 (.CI(n25925), .I0(n2604), .I1(n1879), .CO(n25926));
    SB_LUT4 add_1550_17_lut (.I0(GND_net), .I1(n2943), .I2(n2638), .I3(n25985), 
            .O(n5154[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i26389_1_lut (.I0(n10985), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n30749));
    defparam i26389_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1909_3_lut (.I0(n2723), .I1(n5102[13]), .I2(n294[5]), 
            .I3(GND_net), .O(n2837));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1909_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1550_17 (.CI(n25985), .I0(n2943), .I1(n2638), .CO(n25986));
    SB_CARRY add_1542_5 (.CI(n25850), .I0(n1975), .I1(n856), .CO(n25851));
    SB_CARRY add_1544_13 (.CI(n25882), .I0(n2230), .I1(n2144), .CO(n25883));
    SB_LUT4 i31068_2_lut_4_lut (.I0(n3165), .I1(baudrate[8]), .I2(n3169), 
            .I3(baudrate[4]), .O(n35471));
    defparam i31068_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 add_1550_16_lut (.I0(GND_net), .I1(n2944), .I2(n2519), .I3(n25984), 
            .O(n5154[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1250_i30_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n1839), .I3(GND_net), .O(n30_adj_3945));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i30_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_CARRY add_1539_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n25819));
    SB_LUT4 i32207_4_lut (.I0(n42_adj_3940), .I1(n36429), .I2(n43_adj_3898), 
            .I3(n36431), .O(n36612));   // verilog/uart_rx.v(119[33:55])
    defparam i32207_4_lut.LUT_INIT = 16'haaac;
    SB_CARRY add_1550_16 (.CI(n25984), .I0(n2944), .I1(n2519), .CO(n25985));
    SB_LUT4 i31226_2_lut_4_lut (.I0(n1834), .I1(baudrate[8]), .I2(n1838), 
            .I3(baudrate[4]), .O(n35629));
    defparam i31226_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1250_i32_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n1834), .I3(GND_net), .O(n32_adj_3946));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i32_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_2_lut_3_lut_adj_952 (.I0(baudrate[26]), .I1(baudrate[30]), 
            .I2(baudrate[23]), .I3(GND_net), .O(n33207));
    defparam i1_2_lut_3_lut_adj_952.LUT_INIT = 16'hfefe;
    SB_LUT4 add_1550_15_lut (.I0(GND_net), .I1(n2945), .I2(n2397), .I3(n25983), 
            .O(n5154[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1542_4_lut (.I0(GND_net), .I1(n1976), .I2(n698), .I3(n25849), 
            .O(n4946[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1550_15 (.CI(n25983), .I0(n2945), .I1(n2397), .CO(n25984));
    SB_LUT4 add_1550_14_lut (.I0(GND_net), .I1(n2946), .I2(n2272), .I3(n25982), 
            .O(n5154[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1547_10_lut (.I0(GND_net), .I1(n2605), .I2(n1742), .I3(n25924), 
            .O(n5076[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1547_10 (.CI(n25924), .I0(n2605), .I1(n1742), .CO(n25925));
    SB_CARRY add_1550_14 (.CI(n25982), .I0(n2946), .I1(n2272), .CO(n25983));
    SB_LUT4 add_1547_9_lut (.I0(GND_net), .I1(n2606), .I2(n1602), .I3(n25923), 
            .O(n5076[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1538_10_lut (.I0(GND_net), .I1(n1408), .I2(n1742), .I3(n25818), 
            .O(n4842[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1538_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1544_12_lut (.I0(GND_net), .I1(n2231), .I2(n2013), .I3(n25881), 
            .O(n4998[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1542_4 (.CI(n25849), .I0(n1976), .I1(n698), .CO(n25850));
    SB_CARRY add_1547_9 (.CI(n25923), .I0(n2606), .I1(n1602), .CO(n25924));
    SB_CARRY add_1544_12 (.CI(n25881), .I0(n2231), .I1(n2013), .CO(n25882));
    SB_LUT4 add_1544_11_lut (.I0(GND_net), .I1(n2232), .I2(n1879), .I3(n25880), 
            .O(n4998[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1547_8_lut (.I0(GND_net), .I1(n2607), .I2(n1459), .I3(n25922), 
            .O(n5076[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1547_8 (.CI(n25922), .I0(n2607), .I1(n1459), .CO(n25923));
    SB_LUT4 add_1550_13_lut (.I0(GND_net), .I1(n2947), .I2(n2144), .I3(n25981), 
            .O(n5154[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i29232_4_lut (.I0(baudrate[25]), .I1(baudrate[31]), .I2(baudrate[24]), 
            .I3(baudrate[29]), .O(n33626));
    defparam i29232_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY add_1544_11 (.CI(n25880), .I0(n2232), .I1(n1879), .CO(n25881));
    SB_CARRY add_1550_13 (.CI(n25981), .I0(n2947), .I1(n2144), .CO(n25982));
    SB_LUT4 add_1547_7_lut (.I0(GND_net), .I1(n2608), .I2(n1460), .I3(n25921), 
            .O(n5076[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1550_12_lut (.I0(GND_net), .I1(n2948), .I2(n2013), .I3(n25980), 
            .O(n5154[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1542_3_lut (.I0(GND_net), .I1(n1977), .I2(n858), .I3(n25848), 
            .O(n4946[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1550_12 (.CI(n25980), .I0(n2948), .I1(n2013), .CO(n25981));
    SB_CARRY add_1547_7 (.CI(n25921), .I0(n2608), .I1(n1460), .CO(n25922));
    SB_LUT4 add_1550_11_lut (.I0(GND_net), .I1(n2949), .I2(n1879), .I3(n25979), 
            .O(n5154[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1542_3 (.CI(n25848), .I0(n1977), .I1(n858), .CO(n25849));
    SB_LUT4 add_1538_9_lut (.I0(GND_net), .I1(n1409), .I2(n1602), .I3(n25817), 
            .O(n4842[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1538_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1547_6_lut (.I0(GND_net), .I1(n2609), .I2(n1011), .I3(n25920), 
            .O(n5076[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1544_10_lut (.I0(GND_net), .I1(n2233), .I2(n1742), .I3(n25879), 
            .O(n4998[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1550_11 (.CI(n25979), .I0(n2949), .I1(n1879), .CO(n25980));
    SB_LUT4 i1_4_lut_adj_953 (.I0(n30591), .I1(n32677), .I2(n33201), .I3(baudrate[16]), 
            .O(n32705));
    defparam i1_4_lut_adj_953.LUT_INIT = 16'h0004;
    SB_LUT4 div_37_i1908_3_lut (.I0(n2722), .I1(n5102[14]), .I2(n294[5]), 
            .I3(GND_net), .O(n2836));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1908_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i29277_1_lut_2_lut (.I0(baudrate[9]), .I1(n33652), .I2(GND_net), 
            .I3(GND_net), .O(n30795));
    defparam i29277_1_lut_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 add_1550_10_lut (.I0(GND_net), .I1(n2950), .I2(n1742), .I3(n25978), 
            .O(n5154[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i641_4_lut (.I0(n804), .I1(n42_adj_3914), .I2(n294[19]), 
            .I3(baudrate[2]), .O(n960));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i641_4_lut.LUT_INIT = 16'h6a9a;
    SB_CARRY add_1538_9 (.CI(n25817), .I0(n1409), .I1(n1602), .CO(n25818));
    SB_CARRY add_1550_10 (.CI(n25978), .I0(n2950), .I1(n1742), .CO(n25979));
    SB_CARRY add_1544_10 (.CI(n25879), .I0(n2233), .I1(n1742), .CO(n25880));
    SB_LUT4 add_1550_9_lut (.I0(GND_net), .I1(n2951), .I2(n1602), .I3(n25977), 
            .O(n5154[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1907_3_lut (.I0(n2721), .I1(n5102[15]), .I2(n294[5]), 
            .I3(GND_net), .O(n2835));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1907_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_954 (.I0(baudrate[15]), .I1(baudrate[16]), .I2(GND_net), 
            .I3(GND_net), .O(n32881));
    defparam i1_2_lut_adj_954.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_955 (.I0(baudrate[11]), .I1(baudrate[12]), .I2(GND_net), 
            .I3(GND_net), .O(n32885));
    defparam i1_2_lut_adj_955.LUT_INIT = 16'heeee;
    SB_CARRY add_1547_6 (.CI(n25920), .I0(n2609), .I1(n1011), .CO(n25921));
    SB_LUT4 add_1544_9_lut (.I0(GND_net), .I1(n2234), .I2(n1602), .I3(n25878), 
            .O(n4998[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1547_5_lut (.I0(GND_net), .I1(n2610), .I2(n856), .I3(n25919), 
            .O(n5076[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1550_9 (.CI(n25977), .I0(n2951), .I1(n1602), .CO(n25978));
    SB_LUT4 add_1550_8_lut (.I0(GND_net), .I1(n2952), .I2(n1459), .I3(n25976), 
            .O(n5154[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1550_8 (.CI(n25976), .I0(n2952), .I1(n1459), .CO(n25977));
    SB_LUT4 add_1550_7_lut (.I0(GND_net), .I1(n2953), .I2(n1460), .I3(n25975), 
            .O(n5154[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1544_9 (.CI(n25878), .I0(n2234), .I1(n1602), .CO(n25879));
    SB_LUT4 div_37_i744_4_lut (.I0(n960), .I1(baudrate[3]), .I2(n294[18]), 
            .I3(n42_adj_3944), .O(n1113));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i744_4_lut.LUT_INIT = 16'h6a9a;
    SB_LUT4 i1_2_lut_adj_956 (.I0(baudrate[9]), .I1(baudrate[10]), .I2(GND_net), 
            .I3(GND_net), .O(n32887));
    defparam i1_2_lut_adj_956.LUT_INIT = 16'heeee;
    SB_LUT4 i29306_4_lut (.I0(n33626), .I1(n33543), .I2(n33547), .I3(n33471), 
            .O(n33700));
    defparam i29306_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i29078_2_lut (.I0(baudrate[19]), .I1(baudrate[20]), .I2(GND_net), 
            .I3(GND_net), .O(n33469));
    defparam i29078_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_957 (.I0(baudrate[17]), .I1(baudrate[18]), .I2(GND_net), 
            .I3(GND_net), .O(n33471));
    defparam i1_2_lut_adj_957.LUT_INIT = 16'heeee;
    SB_LUT4 add_1542_2_lut (.I0(GND_net), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n4946[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1538_8_lut (.I0(GND_net), .I1(n1410), .I2(n1459), .I3(n25816), 
            .O(n4842[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1538_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1544_8_lut (.I0(GND_net), .I1(n2235), .I2(n1459), .I3(n25877), 
            .O(n4998[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1547_5 (.CI(n25919), .I0(n2610), .I1(n856), .CO(n25920));
    SB_CARRY add_1542_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n25848));
    SB_CARRY add_1550_7 (.CI(n25975), .I0(n2953), .I1(n1460), .CO(n25976));
    SB_CARRY add_1538_8 (.CI(n25816), .I0(n1410), .I1(n1459), .CO(n25817));
    SB_LUT4 add_1547_4_lut (.I0(GND_net), .I1(n2611), .I2(n698), .I3(n25918), 
            .O(n5076[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_4_lut.LUT_INIT = 16'hC33C;
    SB_DFF r_Rx_Byte_i3 (.Q(rx_data[3]), .C(clk16MHz), .D(n15138));   // verilog/uart_rx.v(50[10] 145[8])
    SB_DFF r_Rx_Byte_i2 (.Q(rx_data[2]), .C(clk16MHz), .D(n15134));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 add_1550_6_lut (.I0(GND_net), .I1(n2954), .I2(n1011), .I3(n25974), 
            .O(n5154[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_6_lut.LUT_INIT = 16'hC33C;
    SB_DFF r_Rx_Byte_i1 (.Q(rx_data[1]), .C(clk16MHz), .D(n15133));   // verilog/uart_rx.v(50[10] 145[8])
    SB_CARRY add_1550_6 (.CI(n25974), .I0(n2954), .I1(n1011), .CO(n25975));
    SB_LUT4 i29254_4_lut (.I0(n32887), .I1(n32883), .I2(n32885), .I3(n32881), 
            .O(n33648));
    defparam i29254_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_958 (.I0(baudrate[7]), .I1(baudrate[8]), .I2(GND_net), 
            .I3(GND_net), .O(n32889));
    defparam i1_2_lut_adj_958.LUT_INIT = 16'heeee;
    SB_LUT4 add_1541_13_lut (.I0(GND_net), .I1(n1831), .I2(n2144), .I3(n25847), 
            .O(n4920[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1547_4 (.CI(n25918), .I0(n2611), .I1(n698), .CO(n25919));
    SB_LUT4 add_1550_5_lut (.I0(GND_net), .I1(n2955), .I2(n856), .I3(n25973), 
            .O(n5154[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1541_12_lut (.I0(GND_net), .I1(n1832), .I2(n2013), .I3(n25846), 
            .O(n4920[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1547_3_lut (.I0(GND_net), .I1(n2612), .I2(n858), .I3(n25917), 
            .O(n5076[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1550_5 (.CI(n25973), .I0(n2955), .I1(n856), .CO(n25974));
    SB_LUT4 add_1550_4_lut (.I0(GND_net), .I1(n2956), .I2(n698), .I3(n25972), 
            .O(n5154[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32483_4_lut (.I0(n33688), .I1(n35420), .I2(n33700), .I3(n32705), 
            .O(n36888));
    defparam i32483_4_lut.LUT_INIT = 16'hc9cc;
    SB_LUT4 i1_2_lut_adj_959 (.I0(baudrate[5]), .I1(baudrate[6]), .I2(GND_net), 
            .I3(GND_net), .O(n32891));
    defparam i1_2_lut_adj_959.LUT_INIT = 16'heeee;
    SB_CARRY add_1547_3 (.CI(n25917), .I0(n2612), .I1(n858), .CO(n25918));
    SB_CARRY add_1550_4 (.CI(n25972), .I0(n2956), .I1(n698), .CO(n25973));
    SB_LUT4 add_1550_3_lut (.I0(GND_net), .I1(n2957), .I2(n858), .I3(n25971), 
            .O(n5154[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1550_3 (.CI(n25971), .I0(n2957), .I1(n858), .CO(n25972));
    SB_LUT4 add_1547_2_lut (.I0(n30765), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n32371)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_1547_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n25917));
    SB_LUT4 i29220_3_lut (.I0(baudrate[31]), .I1(baudrate[21]), .I2(baudrate[27]), 
            .I3(GND_net), .O(n33614));
    defparam i29220_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i29284_4_lut (.I0(n33614), .I1(n33073), .I2(n33612), .I3(n33111), 
            .O(n33678));
    defparam i29284_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i29312_4_lut (.I0(n33678), .I1(n33543), .I2(n30591), .I3(baudrate[4]), 
            .O(n33706));
    defparam i29312_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i32516_4_lut (.I0(n33648), .I1(n33471), .I2(n33706), .I3(n33469), 
            .O(n33710));
    defparam i32516_4_lut.LUT_INIT = 16'h0001;
    SB_CARRY add_1544_8 (.CI(n25877), .I0(n2235), .I1(n1459), .CO(n25878));
    SB_LUT4 add_1544_7_lut (.I0(GND_net), .I1(n2236), .I2(n1460), .I3(n25876), 
            .O(n4998[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1550_2_lut (.I0(n30753), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n32377)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i32527_3_lut (.I0(n10997), .I1(baudrate[1]), .I2(baudrate[2]), 
            .I3(GND_net), .O(n10933));   // verilog/uart_rx.v(119[33:55])
    defparam i32527_3_lut.LUT_INIT = 16'h0101;
    SB_CARRY add_1550_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n25971));
    SB_LUT4 add_1546_18_lut (.I0(GND_net), .I1(n2476), .I2(n2754), .I3(n25916), 
            .O(n5050[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1544_7 (.CI(n25876), .I0(n2236), .I1(n1460), .CO(n25877));
    SB_CARRY add_1541_12 (.CI(n25846), .I0(n1832), .I1(n2013), .CO(n25847));
    SB_LUT4 add_1538_7_lut (.I0(GND_net), .I1(n1411), .I2(n1460), .I3(n25815), 
            .O(n4842[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1538_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32615_2_lut_4_lut (.I0(n36527), .I1(baudrate[16]), .I2(n2476), 
            .I3(n33578), .O(n294[7]));   // verilog/uart_rx.v(119[33:55])
    defparam i32615_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 add_1549_21_lut (.I0(GND_net), .I1(n2827), .I2(n3084), .I3(n25970), 
            .O(n5128[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1549_20_lut (.I0(GND_net), .I1(n2828), .I2(n2977), .I3(n25969), 
            .O(n5128[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1538_7 (.CI(n25815), .I0(n1411), .I1(n1460), .CO(n25816));
    SB_CARRY add_1549_20 (.CI(n25969), .I0(n2828), .I1(n2977), .CO(n25970));
    SB_LUT4 add_1541_11_lut (.I0(GND_net), .I1(n1833), .I2(n1879), .I3(n25845), 
            .O(n4920[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1546_17_lut (.I0(GND_net), .I1(n2477), .I2(n2638), .I3(n25915), 
            .O(n5050[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1546_17 (.CI(n25915), .I0(n2477), .I1(n2638), .CO(n25916));
    SB_LUT4 i1_2_lut_4_lut_adj_960 (.I0(n36527), .I1(baudrate[16]), .I2(n2476), 
            .I3(n32369), .O(n2612));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_960.LUT_INIT = 16'h7100;
    SB_LUT4 i1_2_lut_4_lut_adj_961 (.I0(baudrate[30]), .I1(baudrate[25]), 
            .I2(baudrate[31]), .I3(baudrate[26]), .O(n33133));
    defparam i1_2_lut_4_lut_adj_961.LUT_INIT = 16'hfffe;
    SB_LUT4 add_1546_16_lut (.I0(GND_net), .I1(n2478), .I2(n2519), .I3(n25914), 
            .O(n5050[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31336_3_lut_4_lut (.I0(n1413), .I1(baudrate[3]), .I2(baudrate[2]), 
            .I3(n1414), .O(n35739));   // verilog/uart_rx.v(119[33:55])
    defparam i31336_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i29276_2_lut (.I0(baudrate[9]), .I1(n33652), .I2(GND_net), 
            .I3(GND_net), .O(n33670));
    defparam i29276_2_lut.LUT_INIT = 16'heeee;
    SB_CARRY add_1546_16 (.CI(n25914), .I0(n2478), .I1(n2519), .CO(n25915));
    SB_CARRY add_1541_11 (.CI(n25845), .I0(n1833), .I1(n1879), .CO(n25846));
    SB_LUT4 add_1541_10_lut (.I0(GND_net), .I1(n1834), .I2(n1742), .I3(n25844), 
            .O(n4920[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1538_6_lut (.I0(GND_net), .I1(n1412), .I2(n1011), .I3(n25814), 
            .O(n4842[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1538_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32208_3_lut (.I0(n36612), .I1(baudrate[13]), .I2(n2228), 
            .I3(GND_net), .O(n36613));   // verilog/uart_rx.v(119[33:55])
    defparam i32208_3_lut.LUT_INIT = 16'h8e8e;
    SB_CARRY add_1538_6 (.CI(n25814), .I0(n1412), .I1(n1011), .CO(n25815));
    SB_LUT4 div_37_LessThan_965_i36_3_lut_3_lut (.I0(n1413), .I1(baudrate[3]), 
            .I2(baudrate[2]), .I3(GND_net), .O(n36));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i36_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 add_1546_15_lut (.I0(GND_net), .I1(n2479), .I2(n2397), .I3(n25913), 
            .O(n5050[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1544_6_lut (.I0(GND_net), .I1(n2237), .I2(n1011), .I3(n25875), 
            .O(n4998[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1544_6 (.CI(n25875), .I0(n2237), .I1(n1011), .CO(n25876));
    SB_LUT4 i29207_1_lut (.I0(n33600), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n30777));
    defparam i29207_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i2174_1_lut (.I0(baudrate[1]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n858));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2174_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i2167_1_lut (.I0(baudrate[8]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1742));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2167_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i2163_1_lut (.I0(baudrate[12]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2272));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2163_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1906_3_lut (.I0(n2720), .I1(n5102[16]), .I2(n294[5]), 
            .I3(GND_net), .O(n2834));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1906_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i845_3_lut (.I0(n1113), .I1(n4790[21]), .I2(n294[17]), 
            .I3(GND_net), .O(n1263));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i845_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1546_15 (.CI(n25913), .I0(n2479), .I1(n2397), .CO(n25914));
    SB_CARRY add_1541_10 (.CI(n25844), .I0(n1834), .I1(n1742), .CO(n25845));
    SB_LUT4 div_37_i2173_1_lut (.I0(baudrate[2]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n698));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2173_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i2162_1_lut (.I0(baudrate[13]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2397));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2162_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1905_3_lut (.I0(n2719), .I1(n5102[17]), .I2(n294[5]), 
            .I3(GND_net), .O(n2833_adj_3856));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1905_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2166_1_lut (.I0(baudrate[9]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1879));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2166_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i944_3_lut (.I0(n1263), .I1(n4816[21]), .I2(n294[16]), 
            .I3(GND_net), .O(n1410));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i944_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2161_1_lut (.I0(baudrate[14]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2519));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2161_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1904_3_lut (.I0(n2718), .I1(n5102[18]), .I2(n294[5]), 
            .I3(GND_net), .O(n2832));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1904_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1834_3_lut (.I0(n2608), .I1(n5076[11]), .I2(n294[6]), 
            .I3(GND_net), .O(n2725));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1834_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1822_3_lut (.I0(n2596), .I1(n5076[23]), .I2(n294[6]), 
            .I3(GND_net), .O(n2713));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1822_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1538_5_lut (.I0(GND_net), .I1(n1413), .I2(n856), .I3(n25813), 
            .O(n4842[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1538_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1549_19_lut (.I0(GND_net), .I1(n2829), .I2(n2867), .I3(n25968), 
            .O(n5128[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1549_19 (.CI(n25968), .I0(n2829), .I1(n2867), .CO(n25969));
    SB_LUT4 div_37_i1041_3_lut (.I0(n1410), .I1(n4842[21]), .I2(n294[15]), 
            .I3(GND_net), .O(n1554));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1041_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1825_3_lut (.I0(n2599), .I1(n5076[20]), .I2(n294[6]), 
            .I3(GND_net), .O(n2716));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1825_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1845_i41_2_lut (.I0(n2716), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_3947));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1823_3_lut (.I0(n2597), .I1(n5076[22]), .I2(n294[6]), 
            .I3(GND_net), .O(n2714));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1823_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1845_i45_2_lut (.I0(n2714), .I1(baudrate[17]), 
            .I2(GND_net), .I3(GND_net), .O(n45_adj_3948));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i45_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i39_2_lut (.I0(n2717), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_3949));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i39_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_1538_5 (.CI(n25813), .I0(n1413), .I1(n856), .CO(n25814));
    SB_LUT4 add_1538_4_lut (.I0(GND_net), .I1(n1414), .I2(n698), .I3(n25812), 
            .O(n4842[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1538_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1541_9_lut (.I0(GND_net), .I1(n1835), .I2(n1602), .I3(n25843), 
            .O(n4920[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1538_4 (.CI(n25812), .I0(n1414), .I1(n698), .CO(n25813));
    SB_LUT4 div_37_i1824_3_lut (.I0(n2598), .I1(n5076[21]), .I2(n294[6]), 
            .I3(GND_net), .O(n2715));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1824_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1845_i43_2_lut (.I0(n2715), .I1(baudrate[16]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_3950));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1830_3_lut (.I0(n2604), .I1(n5076[15]), .I2(n294[6]), 
            .I3(GND_net), .O(n2721));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1830_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1832_3_lut (.I0(n2606), .I1(n5076[13]), .I2(n294[6]), 
            .I3(GND_net), .O(n2723));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1832_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1831_3_lut (.I0(n2605), .I1(n5076[14]), .I2(n294[6]), 
            .I3(GND_net), .O(n2722));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1831_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1845_i27_2_lut (.I0(n2723), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_3951));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_1546_14_lut (.I0(GND_net), .I1(n2480), .I2(n2272), .I3(n25912), 
            .O(n5050[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1845_i29_2_lut (.I0(n2722), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_3952));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_1549_18_lut (.I0(GND_net), .I1(n2830), .I2(n2754), .I3(n25967), 
            .O(n5128[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1845_i31_2_lut (.I0(n2721), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_3953));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1829_3_lut (.I0(n2603), .I1(n5076[16]), .I2(n294[6]), 
            .I3(GND_net), .O(n2720));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1829_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1828_3_lut (.I0(n2602), .I1(n5076[17]), .I2(n294[6]), 
            .I3(GND_net), .O(n2719));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1828_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1845_i33_2_lut (.I0(n2720), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_3954));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i35_2_lut (.I0(n2719), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_3955));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1836_3_lut (.I0(n2610), .I1(n5076[9]), .I2(n294[6]), 
            .I3(GND_net), .O(n2727));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1836_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1837_3_lut (.I0(n2611), .I1(n5076[8]), .I2(n294[6]), 
            .I3(GND_net), .O(n2728));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1837_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1838_3_lut (.I0(n2612), .I1(n5076[7]), .I2(n294[6]), 
            .I3(GND_net), .O(n2729));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1838_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1845_i17_2_lut (.I0(n2728), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n17_adj_3956));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i17_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i19_2_lut (.I0(n2727), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n19_adj_3957));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i3853_2_lut_3_lut (.I0(n805), .I1(baudrate[1]), .I2(baudrate[0]), 
            .I3(GND_net), .O(n7530));   // verilog/uart_rx.v(119[33:55])
    defparam i3853_2_lut_3_lut.LUT_INIT = 16'h2a2a;
    SB_LUT4 div_37_i1827_3_lut (.I0(n2601), .I1(n5076[18]), .I2(n294[6]), 
            .I3(GND_net), .O(n2718));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1827_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1835_3_lut (.I0(n2609), .I1(n5076[10]), .I2(n294[6]), 
            .I3(GND_net), .O(n2726));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1835_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1039_3_lut (.I0(n1408), .I1(n4842[23]), .I2(n294[15]), 
            .I3(GND_net), .O(n1552));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1039_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i942_3_lut (.I0(n1261), .I1(n4816[23]), .I2(n294[16]), 
            .I3(GND_net), .O(n1408));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i942_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i29154_2_lut_3_lut (.I0(baudrate[19]), .I1(baudrate[20]), .I2(baudrate[4]), 
            .I3(GND_net), .O(n33547));
    defparam i29154_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 div_37_i1833_3_lut (.I0(n2607), .I1(n5076[12]), .I2(n294[6]), 
            .I3(GND_net), .O(n2724));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1833_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1845_i21_2_lut (.I0(n2726), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_3958));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i23_2_lut (.I0(n2725), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_3959));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i25_2_lut (.I0(n2724), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_3960));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i37_2_lut (.I0(n2718), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_3961));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_962 (.I0(n33073), .I1(n33065), .I2(n32857), .I3(baudrate[19]), 
            .O(n32877));
    defparam i1_4_lut_adj_962.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_963 (.I0(n32877), .I1(n33117), .I2(n33081), .I3(n33115), 
            .O(n10940));
    defparam i1_4_lut_adj_963.LUT_INIT = 16'hfffe;
    SB_LUT4 i31310_4_lut (.I0(n37_adj_3961), .I1(n25_adj_3960), .I2(n23_adj_3959), 
            .I3(n21_adj_3958), .O(n35713));
    defparam i31310_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 add_1538_3_lut (.I0(GND_net), .I1(n1415), .I2(n858), .I3(n25811), 
            .O(n4842[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1538_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31799_4_lut (.I0(n19_adj_3957), .I1(n17_adj_3956), .I2(n2729), 
            .I3(baudrate[2]), .O(n36203));
    defparam i31799_4_lut.LUT_INIT = 16'heffe;
    SB_LUT4 i31998_4_lut (.I0(n25_adj_3960), .I1(n23_adj_3959), .I2(n21_adj_3958), 
            .I3(n36203), .O(n36403));
    defparam i31998_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i31996_4_lut (.I0(n31_adj_3953), .I1(n29_adj_3952), .I2(n27_adj_3951), 
            .I3(n36403), .O(n36401));
    defparam i31996_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i31312_4_lut (.I0(n37_adj_3961), .I1(n35_adj_3955), .I2(n33_adj_3954), 
            .I3(n36401), .O(n35715));
    defparam i31312_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_1845_i14_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n2730), .I3(GND_net), .O(n14_adj_3962));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i14_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32044_3_lut (.I0(n14_adj_3962), .I1(baudrate[13]), .I2(n37_adj_3961), 
            .I3(GND_net), .O(n36449));   // verilog/uart_rx.v(119[33:55])
    defparam i32044_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32045_3_lut (.I0(n36449), .I1(baudrate[14]), .I2(n39_adj_3949), 
            .I3(GND_net), .O(n36450));   // verilog/uart_rx.v(119[33:55])
    defparam i32045_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1136_3_lut (.I0(n1554), .I1(n4868[21]), .I2(n294[14]), 
            .I3(GND_net), .O(n1695));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1136_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1845_i40_3_lut (.I0(n22_adj_3963), .I1(baudrate[17]), 
            .I2(n45_adj_3948), .I3(GND_net), .O(n40_adj_3964));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i40_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31303_4_lut (.I0(n43_adj_3950), .I1(n41_adj_3947), .I2(n39_adj_3949), 
            .I3(n35713), .O(n35706));
    defparam i31303_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i32125_4_lut (.I0(n40_adj_3964), .I1(n20_adj_3965), .I2(n45_adj_3948), 
            .I3(n35700), .O(n36530));   // verilog/uart_rx.v(119[33:55])
    defparam i32125_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31655_3_lut (.I0(n36450), .I1(baudrate[15]), .I2(n41_adj_3947), 
            .I3(GND_net), .O(n36058));   // verilog/uart_rx.v(119[33:55])
    defparam i31655_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1685_i25_2_lut (.I0(n2487), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_3966));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i26_3_lut (.I0(n18_adj_3967), .I1(baudrate[9]), 
            .I2(n29_adj_3952), .I3(GND_net), .O(n26_adj_3968));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32349_4_lut (.I0(n26_adj_3968), .I1(n16_adj_3969), .I2(n29_adj_3952), 
            .I3(n35728), .O(n36754));   // verilog/uart_rx.v(119[33:55])
    defparam i32349_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 div_37_LessThan_1685_i27_2_lut (.I0(n2486), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_3970));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i29_2_lut (.I0(n2485), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_3971));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i23_2_lut (.I0(n2488), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_3972));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i31_2_lut (.I0(n2484), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_3973));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i21_2_lut (.I0(n2489), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_3974));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32350_3_lut (.I0(n36754), .I1(baudrate[10]), .I2(n31_adj_3953), 
            .I3(GND_net), .O(n36755));   // verilog/uart_rx.v(119[33:55])
    defparam i32350_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1685_i33_2_lut (.I0(n2483), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_3975));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i33_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_1549_18 (.CI(n25967), .I0(n2830), .I1(n2754), .CO(n25968));
    SB_LUT4 div_37_LessThan_1157_i39_2_lut (.I0(n1697), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_3976));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i39_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_1546_14 (.CI(n25912), .I0(n2480), .I1(n2272), .CO(n25913));
    SB_LUT4 add_1544_5_lut (.I0(GND_net), .I1(n2238), .I2(n856), .I3(n25874), 
            .O(n4998[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1544_5 (.CI(n25874), .I0(n2238), .I1(n856), .CO(n25875));
    SB_LUT4 i32230_3_lut (.I0(n36755), .I1(baudrate[11]), .I2(n33_adj_3954), 
            .I3(GND_net), .O(n36635));   // verilog/uart_rx.v(119[33:55])
    defparam i32230_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1157_i41_2_lut (.I0(n1696), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_3977));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32167_4_lut (.I0(n43_adj_3950), .I1(n41_adj_3947), .I2(n39_adj_3949), 
            .I3(n35715), .O(n36572));
    defparam i32167_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i32365_4_lut (.I0(n36058), .I1(n36530), .I2(n45_adj_3948), 
            .I3(n35706), .O(n36770));   // verilog/uart_rx.v(119[33:55])
    defparam i32365_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i31653_3_lut (.I0(n36635), .I1(baudrate[12]), .I2(n35_adj_3955), 
            .I3(GND_net), .O(n36056));   // verilog/uart_rx.v(119[33:55])
    defparam i31653_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32367_4_lut (.I0(n36056), .I1(n36770), .I2(n45_adj_3948), 
            .I3(n36572), .O(n36772));   // verilog/uart_rx.v(119[33:55])
    defparam i32367_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 add_1549_17_lut (.I0(GND_net), .I1(n2831), .I2(n2638), .I3(n25966), 
            .O(n5128[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1229_3_lut (.I0(n1695), .I1(n4894[21]), .I2(n294[13]), 
            .I3(GND_net), .O(n1833));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1229_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1157_i37_2_lut (.I0(n1698), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_3978));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1157_i43_2_lut (.I0(n1695), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_3979));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i43_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_1541_9 (.CI(n25843), .I0(n1835), .I1(n1602), .CO(n25844));
    SB_CARRY add_1538_3 (.CI(n25811), .I0(n1415), .I1(n858), .CO(n25812));
    SB_LUT4 div_37_LessThan_1062_i39_2_lut (.I0(n1556), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_3980));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1320_3_lut (.I0(n1833), .I1(n4920[21]), .I2(n294[12]), 
            .I3(GND_net), .O(n1968));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1320_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1541_8_lut (.I0(GND_net), .I1(n1836), .I2(n1459), .I3(n25842), 
            .O(n4920[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1538_2_lut (.I0(n30795), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n32361)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1538_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i32566_2_lut_4_lut (.I0(n36499), .I1(baudrate[8]), .I2(n1408), 
            .I3(n33670), .O(n294[15]));   // verilog/uart_rx.v(119[33:55])
    defparam i32566_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 div_37_LessThan_1062_i41_2_lut (.I0(n1555), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_3981));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1062_i37_2_lut (.I0(n1557), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_3982));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1250_i33_2_lut (.I0(n1838), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_3983));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1250_i31_2_lut (.I0(n1839), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_3984));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1322_3_lut (.I0(n1835), .I1(n4920[19]), .I2(n294[12]), 
            .I3(GND_net), .O(n1970));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1322_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1250_i35_2_lut (.I0(n1837), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_3985));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1250_i37_2_lut (.I0(n1836), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_3986));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_964 (.I0(baudrate[14]), .I1(baudrate[15]), .I2(GND_net), 
            .I3(GND_net), .O(n33087));
    defparam i1_2_lut_adj_964.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_965 (.I0(baudrate[12]), .I1(baudrate[13]), .I2(GND_net), 
            .I3(GND_net), .O(n33025));
    defparam i1_2_lut_adj_965.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_1685_i20_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2489), .I3(GND_net), .O(n20_adj_3987));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i20_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1250_i41_2_lut (.I0(n1834), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_3988));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31411_2_lut_4_lut (.I0(n2484), .I1(baudrate[8]), .I2(n2488), 
            .I3(baudrate[4]), .O(n35814));
    defparam i31411_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1341_i31_2_lut (.I0(n1974), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_3989));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_966 (.I0(baudrate[10]), .I1(baudrate[11]), .I2(GND_net), 
            .I3(GND_net), .O(n33091));
    defparam i1_2_lut_adj_966.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_1685_i22_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2484), .I3(GND_net), .O(n22_adj_3990));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i22_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1341_i29_2_lut (.I0(n1975), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_3991));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1411_3_lut (.I0(n1970), .I1(n4946[19]), .I2(n294[11]), 
            .I3(GND_net), .O(n2102));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1411_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1498_3_lut (.I0(n2102), .I1(n4972[19]), .I2(n294[10]), 
            .I3(GND_net), .O(n2231));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1498_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1242_3_lut (.I0(r_Bit_Index[2]), .I1(r_Bit_Index[1]), .I2(\r_Bit_Index[0] ), 
            .I3(GND_net), .O(n479[2]));   // verilog/uart_rx.v(103[36:51])
    defparam i1242_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 div_37_i1583_3_lut (.I0(n2231), .I1(n4998[19]), .I2(n294[9]), 
            .I3(GND_net), .O(n2357));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1583_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1666_3_lut (.I0(n2357), .I1(n5024[19]), .I2(n294[8]), 
            .I3(GND_net), .O(n2480));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1666_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1341_i33_2_lut (.I0(n1973), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_3992));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1341_i35_2_lut (.I0(n1972), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_3993));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1341_i39_2_lut (.I0(n1970), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_3994));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1341_i37_2_lut (.I0(n1971), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_3995));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i24_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2486), .I3(GND_net), .O(n24_adj_3996));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i24_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1341_i41_2_lut (.I0(n1969), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_3997));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1235_2_lut (.I0(r_Bit_Index[1]), .I1(\r_Bit_Index[0] ), .I2(GND_net), 
            .I3(GND_net), .O(n479[1]));   // verilog/uart_rx.v(103[36:51])
    defparam i1235_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1743_3_lut (.I0(n2476), .I1(n5050[23]), .I2(n294[7]), 
            .I3(GND_net), .O(n2596));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1743_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_adj_967 (.I0(baudrate[12]), .I1(baudrate[13]), 
            .I2(baudrate[14]), .I3(baudrate[15]), .O(n33037));
    defparam i1_2_lut_4_lut_adj_967.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1685_i18_3_lut_4_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n32367), .I3(n48), .O(n18_adj_3998));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i18_3_lut_4_lut.LUT_INIT = 16'hee8e;
    SB_LUT4 div_37_i1744_3_lut (.I0(n2477), .I1(n5050[22]), .I2(n294[7]), 
            .I3(GND_net), .O(n2597));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1744_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1748_3_lut (.I0(n2481), .I1(n5050[18]), .I2(n294[7]), 
            .I3(GND_net), .O(n2601));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1748_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1766_i37_2_lut (.I0(n2601), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_3999));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1745_3_lut (.I0(n2478), .I1(n5050[21]), .I2(n294[7]), 
            .I3(GND_net), .O(n2598));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1745_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1766_i43_2_lut (.I0(n2598), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_4000));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1746_3_lut (.I0(n2479), .I1(n5050[20]), .I2(n294[7]), 
            .I3(GND_net), .O(n2599));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1746_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31439_2_lut_4_lut (.I0(n2486), .I1(baudrate[6]), .I2(n2487), 
            .I3(baudrate[5]), .O(n35842));
    defparam i31439_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i26385_1_lut_4_lut (.I0(n33205), .I1(n33207), .I2(n33113), 
            .I3(n33203), .O(n30745));
    defparam i26385_1_lut_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 div_37_LessThan_1766_i41_2_lut (.I0(n2599), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4001));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i26401_1_lut (.I0(n10940), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n30761));
    defparam i26401_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_LessThan_1766_i39_2_lut (.I0(n2600), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4002));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_968 (.I0(n32367), .I1(n48), .I2(GND_net), .I3(GND_net), 
            .O(n2491));
    defparam i1_2_lut_adj_968.LUT_INIT = 16'h2222;
    SB_LUT4 div_37_i1758_3_lut (.I0(n2491), .I1(n5050[8]), .I2(n294[7]), 
            .I3(GND_net), .O(n2611));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1758_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1662_3_lut (.I0(n2353), .I1(n5024[23]), .I2(n294[8]), 
            .I3(GND_net), .O(n2476));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1662_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1685_i35_2_lut (.I0(n2482), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_4003));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1664_3_lut (.I0(n2355), .I1(n5024[21]), .I2(n294[8]), 
            .I3(GND_net), .O(n2478));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1664_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1665_3_lut (.I0(n2356), .I1(n5024[20]), .I2(n294[8]), 
            .I3(GND_net), .O(n2479));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1665_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1845_i16_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2728), .I3(GND_net), .O(n16_adj_3969));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i16_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1685_i39_2_lut (.I0(n2480), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4004));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i41_2_lut (.I0(n2479), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4005));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i43_2_lut (.I0(n2478), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_4006));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1663_3_lut (.I0(n2354), .I1(n5024[22]), .I2(n294[8]), 
            .I3(GND_net), .O(n2477));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1663_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1685_i45_2_lut (.I0(n2477), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n45_adj_4007));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i45_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i37_2_lut (.I0(n2481), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4008));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31325_2_lut_4_lut (.I0(n2723), .I1(baudrate[8]), .I2(n2727), 
            .I3(baudrate[4]), .O(n35728));
    defparam i31325_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1845_i18_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2723), .I3(GND_net), .O(n18_adj_3967));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i18_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1845_i20_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2725), .I3(GND_net), .O(n20_adj_3965));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i20_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31297_2_lut_4_lut (.I0(n2715), .I1(baudrate[16]), .I2(n2724), 
            .I3(baudrate[7]), .O(n35700));
    defparam i31297_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1685_i19_2_lut (.I0(n2490), .I1(baudrate[2]), 
            .I2(GND_net), .I3(GND_net), .O(n19_adj_4009));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i5_3_lut (.I0(r_SM_Main[0]), .I1(\o_Rx_DV_N_3358[24] ), .I2(n27), 
            .I3(GND_net), .O(n14_adj_4010));
    defparam i5_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i6_4_lut (.I0(n29), .I1(\o_Rx_DV_N_3358[12] ), .I2(n23), .I3(n2833), 
            .O(n15_adj_4011));
    defparam i6_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 i8_4_lut (.I0(n15_adj_4011), .I1(\o_Rx_DV_N_3358[8] ), .I2(n14_adj_4010), 
            .I3(n29929), .O(n37172));
    defparam i8_4_lut.LUT_INIT = 16'h2000;
    SB_LUT4 i31442_4_lut (.I0(n25_adj_3966), .I1(n23_adj_3972), .I2(n21_adj_3974), 
            .I3(n19_adj_4009), .O(n35845));
    defparam i31442_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_1845_i22_3_lut_3_lut (.I0(baudrate[7]), .I1(baudrate[16]), 
            .I2(n2715), .I3(GND_net), .O(n22_adj_3963));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i22_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31426_4_lut (.I0(n31_adj_3973), .I1(n29_adj_3971), .I2(n27_adj_3970), 
            .I3(n35845), .O(n35829));
    defparam i31426_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i32177_4_lut (.I0(n37_adj_4008), .I1(n35_adj_4003), .I2(n33_adj_3975), 
            .I3(n35829), .O(n36582));
    defparam i32177_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i32575_2_lut_4_lut (.I0(n36651), .I1(baudrate[9]), .I2(n1552), 
            .I3(n33652), .O(n294[14]));
    defparam i32575_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 i32056_3_lut (.I0(n18_adj_3998), .I1(baudrate[13]), .I2(n41_adj_4005), 
            .I3(GND_net), .O(n36461));   // verilog/uart_rx.v(119[33:55])
    defparam i32056_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1499_3_lut (.I0(n2103), .I1(n4972[18]), .I2(n294[10]), 
            .I3(GND_net), .O(n2232));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1499_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_adj_969 (.I0(n36499), .I1(baudrate[8]), .I2(n1408), 
            .I3(n32361), .O(n1560));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_969.LUT_INIT = 16'h7100;
    SB_LUT4 i32057_3_lut (.I0(n36461), .I1(baudrate[14]), .I2(n43_adj_4006), 
            .I3(GND_net), .O(n36462));   // verilog/uart_rx.v(119[33:55])
    defparam i32057_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31829_4_lut (.I0(n43_adj_4006), .I1(n41_adj_4005), .I2(n29_adj_3971), 
            .I3(n35842), .O(n36233));
    defparam i31829_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 div_37_LessThan_1685_i26_3_lut (.I0(n24_adj_3996), .I1(baudrate[7]), 
            .I2(n29_adj_3971), .I3(GND_net), .O(n26_adj_4012));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31637_3_lut (.I0(n36462), .I1(baudrate[15]), .I2(n45_adj_4007), 
            .I3(GND_net), .O(n36040));   // verilog/uart_rx.v(119[33:55])
    defparam i31637_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i26237_2_lut (.I0(baudrate[2]), .I1(baudrate[3]), .I2(GND_net), 
            .I3(GND_net), .O(n30591));
    defparam i26237_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i29175_2_lut (.I0(baudrate[21]), .I1(baudrate[22]), .I2(GND_net), 
            .I3(GND_net), .O(n33568));
    defparam i29175_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_3_lut_4_lut_adj_970 (.I0(n10997), .I1(n48_adj_3884), .I2(baudrate[1]), 
            .I3(baudrate[0]), .O(n44));
    defparam i1_3_lut_4_lut_adj_970.LUT_INIT = 16'hefff;
    SB_LUT4 i29150_2_lut_4_lut (.I0(baudrate[5]), .I1(baudrate[6]), .I2(baudrate[7]), 
            .I3(baudrate[8]), .O(n33543));
    defparam i29150_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1685_i30_3_lut (.I0(n22_adj_3990), .I1(baudrate[9]), 
            .I2(n33_adj_3975), .I3(GND_net), .O(n30_adj_4013));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32345_4_lut (.I0(n30_adj_4013), .I1(n20_adj_3987), .I2(n33_adj_3975), 
            .I3(n35814), .O(n36750));   // verilog/uart_rx.v(119[33:55])
    defparam i32345_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 div_37_i1584_3_lut (.I0(n2232), .I1(n4998[18]), .I2(n294[9]), 
            .I3(GND_net), .O(n2358));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1584_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32346_3_lut (.I0(n36750), .I1(baudrate[10]), .I2(n35_adj_4003), 
            .I3(GND_net), .O(n36751));   // verilog/uart_rx.v(119[33:55])
    defparam i32346_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32240_3_lut (.I0(n36751), .I1(baudrate[11]), .I2(n37_adj_4008), 
            .I3(GND_net), .O(n36645));   // verilog/uart_rx.v(119[33:55])
    defparam i32240_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31831_4_lut (.I0(n43_adj_4006), .I1(n41_adj_4005), .I2(n39_adj_4004), 
            .I3(n36582), .O(n36235));
    defparam i31831_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i31017_2_lut_3_lut (.I0(baudrate[1]), .I1(n48_adj_3884), .I2(n10997), 
            .I3(GND_net), .O(n35420));   // verilog/uart_rx.v(119[33:55])
    defparam i31017_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i32120_4_lut (.I0(n36040), .I1(n26_adj_4012), .I2(n45_adj_4007), 
            .I3(n36233), .O(n36525));   // verilog/uart_rx.v(119[33:55])
    defparam i32120_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31635_3_lut (.I0(n36645), .I1(baudrate[12]), .I2(n39_adj_4004), 
            .I3(GND_net), .O(n36038));   // verilog/uart_rx.v(119[33:55])
    defparam i31635_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32122_4_lut (.I0(n36038), .I1(n36525), .I2(n45_adj_4007), 
            .I3(n36235), .O(n36527));   // verilog/uart_rx.v(119[33:55])
    defparam i32122_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 div_37_LessThan_965_i41_2_lut (.I0(n1411), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_3857));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2164_1_lut (.I0(baudrate[11]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2144));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2164_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_LessThan_965_i43_2_lut (.I0(n1410), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_3858));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_965_i39_2_lut (.I0(n1412), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_3859));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i27_2_lut (.I0(n2363), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_3868));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i29294_4_lut (.I0(n33568), .I1(n33037), .I2(n33091), .I3(baudrate[9]), 
            .O(n33688));
    defparam i29294_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1602_i29_2_lut (.I0(n2362), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_3872));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i25_2_lut (.I0(n2364), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_3869));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i33_2_lut (.I0(n2360), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_3871));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i23_2_lut (.I0(n2365), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_3870));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i35_2_lut (.I0(n2359), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_3875));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i37_2_lut (.I0(n2358), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_3876));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i39_2_lut (.I0(n2357), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_3877));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_971 (.I0(baudrate[3]), .I1(baudrate[4]), .I2(GND_net), 
            .I3(GND_net), .O(n32893));
    defparam i1_2_lut_adj_971.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_972 (.I0(baudrate[4]), .I1(baudrate[5]), .I2(GND_net), 
            .I3(GND_net), .O(n33033));
    defparam i1_2_lut_adj_972.LUT_INIT = 16'heeee;
    SB_LUT4 i2989_2_lut_3_lut (.I0(baudrate[2]), .I1(n962), .I2(baudrate[1]), 
            .I3(GND_net), .O(n6667));   // verilog/uart_rx.v(119[33:55])
    defparam i2989_2_lut_3_lut.LUT_INIT = 16'h4545;
    SB_LUT4 div_37_LessThan_557_i42_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n805), .I3(GND_net), .O(n42_adj_4014));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_557_i42_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32221_3_lut (.I0(n42_adj_4014), .I1(baudrate[2]), .I2(n804), 
            .I3(GND_net), .O(n36626));   // verilog/uart_rx.v(119[33:55])
    defparam i32221_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32222_3_lut (.I0(n36626), .I1(baudrate[3]), .I2(n803), .I3(GND_net), 
            .O(n36627));   // verilog/uart_rx.v(119[33:55])
    defparam i32222_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32089_3_lut (.I0(n36627), .I1(baudrate[4]), .I2(n30555), 
            .I3(GND_net), .O(n48_adj_3935));   // verilog/uart_rx.v(119[33:55])
    defparam i32089_3_lut.LUT_INIT = 16'he8e8;
    SB_LUT4 i17294_2_lut (.I0(baudrate[1]), .I1(baudrate[0]), .I2(GND_net), 
            .I3(GND_net), .O(n21218));
    defparam i17294_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i17292_2_lut (.I0(baudrate[1]), .I1(baudrate[0]), .I2(GND_net), 
            .I3(GND_net), .O(n21216));
    defparam i17292_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i3854_4_lut (.I0(n804), .I1(n21216), .I2(n7530), .I3(baudrate[2]), 
            .O(n7532));   // verilog/uart_rx.v(119[33:55])
    defparam i3854_4_lut.LUT_INIT = 16'ha2aa;
    SB_LUT4 div_37_LessThan_1430_i31_2_lut (.I0(n2106), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_3893));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2210_i41_4_lut (.I0(n3154), .I1(baudrate[20]), 
            .I2(n5206[20]), .I3(n294[1]), .O(n41_adj_4015));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i41_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_1430_i29_2_lut (.I0(n2107), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_3894));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2210_i39_4_lut (.I0(n3155), .I1(baudrate[19]), 
            .I2(n5206[19]), .I3(n294[1]), .O(n39_adj_4016));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i39_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_1430_i33_2_lut (.I0(n2105), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_3892));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1430_i35_2_lut (.I0(n2104), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_4017));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1430_i39_2_lut (.I0(n2102), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4018));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1430_i37_2_lut (.I0(n2103), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4019));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2210_i33_4_lut (.I0(n3158), .I1(baudrate[16]), 
            .I2(n5206[16]), .I3(n294[1]), .O(n33_adj_4020));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i33_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i35_4_lut (.I0(n3157), .I1(baudrate[17]), 
            .I2(n5206[17]), .I3(n294[1]), .O(n35_adj_4021));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i35_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_1430_i41_2_lut (.I0(n2101), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_3881));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2210_i37_4_lut (.I0(n3156), .I1(baudrate[18]), 
            .I2(n5206[18]), .I3(n294[1]), .O(n37_adj_4022));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i37_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i29_4_lut (.I0(n3160), .I1(baudrate[14]), 
            .I2(n5206[14]), .I3(n294[1]), .O(n29_adj_4023));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i29_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_1517_i29_2_lut (.I0(n2236), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_3902));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2210_i31_4_lut (.I0(n3159), .I1(baudrate[15]), 
            .I2(n5206[15]), .I3(n294[1]), .O(n31_adj_4024));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i31_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i23_4_lut (.I0(n3163), .I1(baudrate[11]), 
            .I2(n5206[11]), .I3(n294[1]), .O(n23_adj_4025));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i23_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i25_4_lut (.I0(n3162), .I1(baudrate[12]), 
            .I2(n5206[12]), .I3(n294[1]), .O(n25_adj_4026));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i25_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i7_4_lut (.I0(n3171), .I1(baudrate[3]), 
            .I2(n5206[3]), .I3(n294[1]), .O(n7));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i7_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i45_4_lut (.I0(n3152), .I1(baudrate[22]), 
            .I2(n5206[22]), .I3(n294[1]), .O(n45_adj_4027));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i45_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i9_4_lut (.I0(n3170), .I1(baudrate[4]), 
            .I2(n5206[4]), .I3(n294[1]), .O(n9));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i9_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_1517_i31_2_lut (.I0(n2235), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_3909));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1517_i27_2_lut (.I0(n2237), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_3903));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1517_i35_2_lut (.I0(n2233), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_3907));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1517_i25_2_lut (.I0(n2238), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_3904));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1325_3_lut (.I0(n1838), .I1(n4920[16]), .I2(n294[12]), 
            .I3(GND_net), .O(n1973));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1325_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1517_i37_2_lut (.I0(n2232), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_3926));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1517_i39_2_lut (.I0(n2231), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_3930));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1414_3_lut (.I0(n1973), .I1(n4946[16]), .I2(n294[11]), 
            .I3(GND_net), .O(n2105));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1414_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1517_i41_2_lut (.I0(n2230), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_3932));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1501_3_lut (.I0(n2105), .I1(n4972[16]), .I2(n294[10]), 
            .I3(GND_net), .O(n2234));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1501_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1517_i33_2_lut (.I0(n2234), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_3908));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2210_i17_4_lut (.I0(n3166), .I1(baudrate[8]), 
            .I2(n5206[8]), .I3(n294[1]), .O(n17_adj_4028));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i17_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i19_4_lut (.I0(n3165), .I1(baudrate[9]), 
            .I2(n5206[9]), .I3(n294[1]), .O(n19_adj_4029));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i19_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i21_4_lut (.I0(n3164), .I1(baudrate[10]), 
            .I2(n5206[10]), .I3(n294[1]), .O(n21_adj_4030));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i21_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i11_4_lut (.I0(n3169), .I1(baudrate[5]), 
            .I2(n5206[5]), .I3(n294[1]), .O(n11));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i11_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i13_4_lut (.I0(n3168), .I1(baudrate[6]), 
            .I2(n5206[6]), .I3(n294[1]), .O(n13));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i13_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_i1667_3_lut (.I0(n2358), .I1(n5024[18]), .I2(n294[8]), 
            .I3(GND_net), .O(n2481));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1667_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1586_3_lut (.I0(n2234), .I1(n4998[16]), .I2(n294[9]), 
            .I3(GND_net), .O(n2360));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1586_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1669_3_lut (.I0(n2360), .I1(n5024[16]), .I2(n294[8]), 
            .I3(GND_net), .O(n2483));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1669_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2210_i15_4_lut (.I0(n3167), .I1(baudrate[7]), 
            .I2(n5206[7]), .I3(n294[1]), .O(n15_adj_4031));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i15_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i27_4_lut (.I0(n3161), .I1(baudrate[13]), 
            .I2(n5206[13]), .I3(n294[1]), .O(n27_adj_4032));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i27_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i43_4_lut (.I0(n3153), .I1(baudrate[21]), 
            .I2(n5206[21]), .I3(n294[1]), .O(n43_adj_4033));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i43_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i30993_4_lut (.I0(n27_adj_4032), .I1(n15_adj_4031), .I2(n13), 
            .I3(n11), .O(n35396));
    defparam i30993_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i31001_4_lut (.I0(n21_adj_4030), .I1(n19_adj_4029), .I2(n17_adj_4028), 
            .I3(n9), .O(n35404));
    defparam i31001_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_2210_i16_3_lut (.I0(baudrate[9]), .I1(baudrate[21]), 
            .I2(n43_adj_4033), .I3(GND_net), .O(n16_adj_4034));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_973 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(n32769), .I3(GND_net), .O(n32807));
    defparam i1_2_lut_3_lut_adj_973.LUT_INIT = 16'hf7f7;
    SB_LUT4 i30966_2_lut (.I0(n43_adj_4033), .I1(n19_adj_4029), .I2(GND_net), 
            .I3(GND_net), .O(n35369));
    defparam i30966_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_2210_i8_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n17_adj_4028), .I3(GND_net), .O(n8_adj_4035));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1749_3_lut (.I0(n2482), .I1(n5050[17]), .I2(n294[7]), 
            .I3(GND_net), .O(n2602));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1749_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1670_3_lut (.I0(n2361), .I1(n5024[15]), .I2(n294[8]), 
            .I3(GND_net), .O(n2484));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1670_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_974 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(n32787), .I3(GND_net), .O(n32753));
    defparam i1_2_lut_3_lut_adj_974.LUT_INIT = 16'hf7f7;
    SB_LUT4 div_37_LessThan_2210_i24_3_lut (.I0(n16_adj_4034), .I1(baudrate[22]), 
            .I2(n45_adj_4027), .I3(GND_net), .O(n24_adj_4036));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i24_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1751_3_lut (.I0(n2484), .I1(n5050[15]), .I2(n294[7]), 
            .I3(GND_net), .O(n2604));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1751_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1750_3_lut (.I0(n2483), .I1(n5050[16]), .I2(n294[7]), 
            .I3(GND_net), .O(n2603));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1750_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2208_3_lut (.I0(n3172), .I1(n5206[2]), .I2(n294[1]), 
            .I3(GND_net), .O(n3274));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2208_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31011_3_lut (.I0(n7), .I1(n3274), .I2(baudrate[2]), .I3(GND_net), 
            .O(n35414));
    defparam i31011_3_lut.LUT_INIT = 16'hbebe;
    SB_LUT4 i31554_4_lut (.I0(n13), .I1(n11), .I2(n9), .I3(n35414), 
            .O(n35957));
    defparam i31554_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 div_37_LessThan_1766_i31_2_lut (.I0(n2604), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_4037));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i33_2_lut (.I0(n2603), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_4038));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i35_2_lut (.I0(n2602), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_4039));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_975 (.I0(baudrate[31]), .I1(baudrate[26]), .I2(GND_net), 
            .I3(GND_net), .O(n33117));
    defparam i1_2_lut_adj_975.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_976 (.I0(baudrate[27]), .I1(baudrate[28]), .I2(GND_net), 
            .I3(GND_net), .O(n33113));
    defparam i1_2_lut_adj_976.LUT_INIT = 16'heeee;
    SB_LUT4 i32599_2_lut_3_lut_4_lut (.I0(baudrate[13]), .I1(baudrate[14]), 
            .I2(n33600), .I3(n48_adj_3937), .O(n294[11]));
    defparam i32599_2_lut_3_lut_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 i29253_1_lut_2_lut_3_lut_4_lut (.I0(baudrate[13]), .I1(baudrate[14]), 
            .I2(n33600), .I3(baudrate[12]), .O(n30786));
    defparam i29253_1_lut_2_lut_3_lut_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 i31550_4_lut (.I0(n19_adj_4029), .I1(n17_adj_4028), .I2(n15_adj_4031), 
            .I3(n35957), .O(n35953));
    defparam i31550_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i32249_4_lut (.I0(n25_adj_4026), .I1(n23_adj_4025), .I2(n21_adj_4030), 
            .I3(n35953), .O(n36654));
    defparam i32249_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i31889_4_lut (.I0(n31_adj_4024), .I1(n29_adj_4023), .I2(n27_adj_4032), 
            .I3(n36654), .O(n36293));
    defparam i31889_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i32359_4_lut (.I0(n37_adj_4022), .I1(n35_adj_4021), .I2(n33_adj_4020), 
            .I3(n36293), .O(n36764));
    defparam i32359_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_2210_i12_3_lut (.I0(baudrate[7]), .I1(baudrate[16]), 
            .I2(n33_adj_4020), .I3(GND_net), .O(n12_adj_4040));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i12_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17316_rep_3_2_lut (.I0(n4868[14]), .I1(n294[14]), .I2(GND_net), 
            .I3(GND_net), .O(n30789));   // verilog/uart_rx.v(119[33:55])
    defparam i17316_rep_3_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 div_37_LessThan_2210_i4_4_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n32381), .I3(n48_adj_4041), .O(n4_adj_4042));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i4_4_lut.LUT_INIT = 16'hee8e;
    SB_LUT4 i32187_3_lut (.I0(n4_adj_4042), .I1(baudrate[13]), .I2(n27_adj_4032), 
            .I3(GND_net), .O(n36592));   // verilog/uart_rx.v(119[33:55])
    defparam i32187_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32451_4_lut (.I0(n36512), .I1(n36783), .I2(n41_adj_3881), 
            .I3(n35331), .O(n36856));   // verilog/uart_rx.v(119[33:55])
    defparam i32451_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i32188_3_lut (.I0(n36592), .I1(baudrate[14]), .I2(n29_adj_4023), 
            .I3(GND_net), .O(n36593));   // verilog/uart_rx.v(119[33:55])
    defparam i32188_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30983_2_lut (.I0(n33_adj_4020), .I1(n15_adj_4031), .I2(GND_net), 
            .I3(GND_net), .O(n35386));
    defparam i30983_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_2210_i10_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n13), .I3(GND_net), .O(n10_adj_4043));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i10_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2210_i30_3_lut (.I0(n12_adj_4040), .I1(baudrate[17]), 
            .I2(n35_adj_4021), .I3(GND_net), .O(n30_adj_4044));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1157_i32_4_lut (.I0(n30789), .I1(baudrate[2]), 
            .I2(n1701), .I3(baudrate[1]), .O(n32_adj_4045));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i32_4_lut.LUT_INIT = 16'h4d0c;
    SB_LUT4 i32062_3_lut (.I0(n32_adj_4045), .I1(baudrate[6]), .I2(n39_adj_3976), 
            .I3(GND_net), .O(n36467));   // verilog/uart_rx.v(119[33:55])
    defparam i32062_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32063_3_lut (.I0(n36467), .I1(baudrate[7]), .I2(n41_adj_3977), 
            .I3(GND_net), .O(n36468));   // verilog/uart_rx.v(119[33:55])
    defparam i32063_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30985_4_lut (.I0(n33_adj_4020), .I1(n31_adj_4024), .I2(n29_adj_4023), 
            .I3(n35396), .O(n35388));
    defparam i30985_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i32374_4_lut (.I0(n30_adj_4044), .I1(n10_adj_4043), .I2(n35_adj_4021), 
            .I3(n35386), .O(n36779));   // verilog/uart_rx.v(119[33:55])
    defparam i32374_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31757_4_lut (.I0(n41_adj_3977), .I1(n39_adj_3976), .I2(n37_adj_3978), 
            .I3(n35681), .O(n36161));
    defparam i31757_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i32098_3_lut (.I0(n34_adj_4046), .I1(baudrate[5]), .I2(n37_adj_3978), 
            .I3(GND_net), .O(n36503));   // verilog/uart_rx.v(119[33:55])
    defparam i32098_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32148_3_lut (.I0(n36593), .I1(baudrate[15]), .I2(n31_adj_4024), 
            .I3(GND_net), .O(n36553));   // verilog/uart_rx.v(119[33:55])
    defparam i32148_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32447_4_lut (.I0(n36553), .I1(n36779), .I2(n35_adj_4021), 
            .I3(n35388), .O(n36852));   // verilog/uart_rx.v(119[33:55])
    defparam i32447_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i32448_3_lut (.I0(n36852), .I1(baudrate[18]), .I2(n37_adj_4022), 
            .I3(GND_net), .O(n36853));   // verilog/uart_rx.v(119[33:55])
    defparam i32448_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31626_3_lut (.I0(n36468), .I1(baudrate[8]), .I2(n43_adj_3979), 
            .I3(GND_net), .O(n36029));   // verilog/uart_rx.v(119[33:55])
    defparam i31626_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2210_i6_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n7), .I3(GND_net), .O(n6_adj_4047));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32189_3_lut (.I0(n6_adj_4047), .I1(baudrate[10]), .I2(n21_adj_4030), 
            .I3(GND_net), .O(n36594));   // verilog/uart_rx.v(119[33:55])
    defparam i32189_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32241_4_lut (.I0(n36029), .I1(n36503), .I2(n43_adj_3979), 
            .I3(n36161), .O(n36646));   // verilog/uart_rx.v(119[33:55])
    defparam i32241_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32242_3_lut (.I0(n36646), .I1(baudrate[9]), .I2(n1694), .I3(GND_net), 
            .O(n36647));   // verilog/uart_rx.v(119[33:55])
    defparam i32242_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32190_3_lut (.I0(n36594), .I1(baudrate[11]), .I2(n23_adj_4025), 
            .I3(GND_net), .O(n36595));   // verilog/uart_rx.v(119[33:55])
    defparam i32190_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30968_4_lut (.I0(n43_adj_4033), .I1(n25_adj_4026), .I2(n23_adj_4025), 
            .I3(n35404), .O(n35371));
    defparam i30968_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i31947_4_lut (.I0(n24_adj_4036), .I1(n8_adj_4035), .I2(n45_adj_4027), 
            .I3(n35369), .O(n36351));   // verilog/uart_rx.v(119[33:55])
    defparam i31947_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32146_3_lut (.I0(n36595), .I1(baudrate[12]), .I2(n25_adj_4026), 
            .I3(GND_net), .O(n36551));   // verilog/uart_rx.v(119[33:55])
    defparam i32146_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1157_i48_3_lut (.I0(n36647), .I1(baudrate[10]), 
            .I2(n1693), .I3(GND_net), .O(n48_adj_4048));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i48_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32422_3_lut (.I0(n36853), .I1(baudrate[19]), .I2(n39_adj_4016), 
            .I3(GND_net), .O(n36827));   // verilog/uart_rx.v(119[33:55])
    defparam i32422_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30971_4_lut (.I0(n43_adj_4033), .I1(n41_adj_4015), .I2(n39_adj_4016), 
            .I3(n36764), .O(n35374));
    defparam i30971_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i1_4_lut_adj_977 (.I0(n33073), .I1(n33113), .I2(n33115), .I3(baudrate[11]), 
            .O(n33143));
    defparam i1_4_lut_adj_977.LUT_INIT = 16'hfffe;
    SB_LUT4 i32293_4_lut (.I0(n36551), .I1(n36351), .I2(n45_adj_4027), 
            .I3(n35371), .O(n36698));   // verilog/uart_rx.v(119[33:55])
    defparam i32293_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1_4_lut_adj_978 (.I0(n33143), .I1(n33145), .I2(n33133), .I3(n33025), 
            .O(n11039));
    defparam i1_4_lut_adj_978.LUT_INIT = 16'hfffe;
    SB_LUT4 i32416_3_lut (.I0(n36827), .I1(baudrate[20]), .I2(n41_adj_4015), 
            .I3(GND_net), .O(n40_adj_4049));   // verilog/uart_rx.v(119[33:55])
    defparam i32416_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_adj_979 (.I0(n11039), .I1(n48_adj_4048), .I2(n538), 
            .I3(GND_net), .O(n1841));
    defparam i1_3_lut_adj_979.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_adj_980 (.I0(baudrate[25]), .I1(baudrate[31]), .I2(GND_net), 
            .I3(GND_net), .O(n32271));
    defparam i1_2_lut_adj_980.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_i2187_3_lut (.I0(n3151), .I1(n5206[23]), .I2(n294[1]), 
            .I3(GND_net), .O(n3253));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2187_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32295_4_lut (.I0(n40_adj_4049), .I1(n36698), .I2(n45_adj_4027), 
            .I3(n35374), .O(n36700));   // verilog/uart_rx.v(119[33:55])
    defparam i32295_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1_4_lut_adj_981 (.I0(n33201), .I1(n33115), .I2(n32271), .I3(n33113), 
            .O(n32279));
    defparam i1_4_lut_adj_981.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i1328_3_lut (.I0(n1841), .I1(n4920[13]), .I2(n294[12]), 
            .I3(GND_net), .O(n1976));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1328_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32554_4_lut (.I0(n32279), .I1(n36700), .I2(baudrate[23]), 
            .I3(n3253), .O(n31745));   // verilog/uart_rx.v(119[33:55])
    defparam i32554_4_lut.LUT_INIT = 16'h1501;
    SB_LUT4 div_37_i1417_3_lut (.I0(n1976), .I1(n4946[13]), .I2(n294[11]), 
            .I3(GND_net), .O(n2108));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1417_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1504_3_lut (.I0(n2108), .I1(n4972[13]), .I2(n294[10]), 
            .I3(GND_net), .O(n2237));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1504_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1589_3_lut (.I0(n2237), .I1(n4998[13]), .I2(n294[9]), 
            .I3(GND_net), .O(n2363));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1589_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1672_3_lut (.I0(n2363), .I1(n5024[13]), .I2(n294[8]), 
            .I3(GND_net), .O(n2486));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1672_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1062_i43_2_lut (.I0(n1554), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_4050));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1517_i24_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2238), .I3(GND_net), .O(n24_adj_3928));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i24_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31283_2_lut_3_lut (.I0(n10997), .I1(baudrate[1]), .I2(baudrate[0]), 
            .I3(GND_net), .O(n35169));   // verilog/uart_rx.v(119[33:55])
    defparam i31283_2_lut_3_lut.LUT_INIT = 16'h4040;
    SB_LUT4 div_37_LessThan_1062_i32_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n1560), .I3(GND_net), .O(n32_adj_4051));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i32_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i30902_2_lut_4_lut (.I0(n2233), .I1(baudrate[8]), .I2(n2237), 
            .I3(baudrate[4]), .O(n35305));
    defparam i30902_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1430_i26_4_lut (.I0(n30780), .I1(baudrate[2]), 
            .I2(n2109), .I3(baudrate[1]), .O(n26_adj_3897));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i26_4_lut.LUT_INIT = 16'h4d0c;
    SB_LUT4 i30928_4_lut (.I0(n39_adj_4018), .I1(n37_adj_4019), .I2(n35_adj_4017), 
            .I3(n35348), .O(n35331));
    defparam i30928_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i32066_3_lut (.I0(n32_adj_4051), .I1(baudrate[5]), .I2(n39_adj_3980), 
            .I3(GND_net), .O(n36471));   // verilog/uart_rx.v(119[33:55])
    defparam i32066_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1517_i26_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2233), .I3(GND_net), .O(n26_adj_3925));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i26_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i2156_1_lut (.I0(baudrate[19]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n3084));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2156_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i32067_3_lut (.I0(n36471), .I1(baudrate[6]), .I2(n41_adj_3981), 
            .I3(GND_net), .O(n36472));   // verilog/uart_rx.v(119[33:55])
    defparam i32067_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31771_4_lut (.I0(n41_adj_3981), .I1(n39_adj_3980), .I2(n37_adj_3982), 
            .I3(n35717), .O(n36175));
    defparam i31771_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i32096_3_lut (.I0(n34_adj_4052), .I1(baudrate[4]), .I2(n37_adj_3982), 
            .I3(GND_net), .O(n36501));   // verilog/uart_rx.v(119[33:55])
    defparam i32096_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31623_3_lut (.I0(n36472), .I1(baudrate[7]), .I2(n43_adj_4050), 
            .I3(GND_net), .O(n36026));   // verilog/uart_rx.v(119[33:55])
    defparam i31623_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2155_1_lut (.I0(baudrate[20]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n3188));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2155_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i30907_2_lut_4_lut (.I0(n2235), .I1(baudrate[6]), .I2(n2236), 
            .I3(baudrate[5]), .O(n35310));
    defparam i30907_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_i2083_1_lut (.I0(baudrate[21]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n3082));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2083_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i2153_1_lut (.I0(baudrate[22]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n3186));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2153_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i2118_3_lut (.I0(n3046), .I1(n5180[23]), .I2(n294[2]), 
            .I3(GND_net), .O(n3151));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2118_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2119_3_lut (.I0(n3047), .I1(n5180[22]), .I2(n294[2]), 
            .I3(GND_net), .O(n3152));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2119_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2120_3_lut (.I0(n3048), .I1(n5180[21]), .I2(n294[2]), 
            .I3(GND_net), .O(n3153));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2120_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32245_4_lut (.I0(n36026), .I1(n36501), .I2(n43_adj_4050), 
            .I3(n36175), .O(n36650));   // verilog/uart_rx.v(119[33:55])
    defparam i32245_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32246_3_lut (.I0(n36650), .I1(baudrate[8]), .I2(n1553), .I3(GND_net), 
            .O(n36651));   // verilog/uart_rx.v(119[33:55])
    defparam i32246_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1062_i48_3_lut (.I0(n36651), .I1(baudrate[9]), 
            .I2(n1552), .I3(GND_net), .O(n48_adj_4053));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i48_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i2121_3_lut (.I0(n3049), .I1(n5180[20]), .I2(n294[2]), 
            .I3(GND_net), .O(n3154));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2121_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2122_3_lut (.I0(n3050), .I1(n5180[19]), .I2(n294[2]), 
            .I3(GND_net), .O(n3155));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2122_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2125_3_lut (.I0(n3053), .I1(n5180[16]), .I2(n294[2]), 
            .I3(GND_net), .O(n3158));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2125_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2126_3_lut (.I0(n3054), .I1(n5180[15]), .I2(n294[2]), 
            .I3(GND_net), .O(n3159));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2126_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i31_2_lut (.I0(n3159), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_4054));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_adj_982 (.I0(n33652), .I1(n48_adj_4053), .I2(n4868[14]), 
            .I3(GND_net), .O(n1702));
    defparam i1_3_lut_adj_982.LUT_INIT = 16'h1010;
    SB_LUT4 i1_4_lut_adj_983 (.I0(baudrate[17]), .I1(n32893), .I2(baudrate[2]), 
            .I3(n21216), .O(n32307));
    defparam i1_4_lut_adj_983.LUT_INIT = 16'h0100;
    SB_LUT4 div_37_LessThan_2141_i33_2_lut (.I0(n3158), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_4055));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2123_3_lut (.I0(n3051), .I1(n5180[18]), .I2(n294[2]), 
            .I3(GND_net), .O(n3156));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2123_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1236_3_lut (.I0(n1702), .I1(n4894[14]), .I2(n294[13]), 
            .I3(GND_net), .O(n1840));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1236_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1327_3_lut (.I0(n1840), .I1(n4920[14]), .I2(n294[12]), 
            .I3(GND_net), .O(n1975));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1327_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1416_3_lut (.I0(n1975), .I1(n4946[14]), .I2(n294[11]), 
            .I3(GND_net), .O(n2107));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1416_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_984 (.I0(n33648), .I1(n32307), .I2(n11025), .I3(n33543), 
            .O(n31674));
    defparam i1_4_lut_adj_984.LUT_INIT = 16'h0004;
    SB_LUT4 div_37_i1503_3_lut (.I0(n2107), .I1(n4972[14]), .I2(n294[10]), 
            .I3(GND_net), .O(n2236));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1503_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1588_3_lut (.I0(n2236), .I1(n4998[14]), .I2(n294[9]), 
            .I3(GND_net), .O(n2362));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1588_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i37_2_lut (.I0(n3156), .I1(baudrate[17]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4056));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_985 (.I0(baudrate[23]), .I1(baudrate[27]), .I2(baudrate[25]), 
            .I3(n21218), .O(n32593));
    defparam i1_4_lut_adj_985.LUT_INIT = 16'h0100;
    SB_LUT4 div_37_i2128_3_lut (.I0(n3056), .I1(n5180[13]), .I2(n294[2]), 
            .I3(GND_net), .O(n3161));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2128_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2129_3_lut (.I0(n3057), .I1(n5180[12]), .I2(n294[2]), 
            .I3(GND_net), .O(n3162));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2129_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1671_3_lut (.I0(n2362), .I1(n5024[14]), .I2(n294[8]), 
            .I3(GND_net), .O(n2485));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1671_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i25_2_lut (.I0(n3162), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_4057));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2141_i27_2_lut (.I0(n3161), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_4058));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1752_3_lut (.I0(n2485), .I1(n5050[14]), .I2(n294[7]), 
            .I3(GND_net), .O(n2605));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1752_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2124_3_lut (.I0(n3052), .I1(n5180[17]), .I2(n294[2]), 
            .I3(GND_net), .O(n3157));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2124_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i35_2_lut (.I0(n3157), .I1(baudrate[16]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_4059));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2131_3_lut (.I0(n3059), .I1(n5180[10]), .I2(n294[2]), 
            .I3(GND_net), .O(n3164));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2131_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2130_3_lut (.I0(n3058), .I1(n5180[11]), .I2(n294[2]), 
            .I3(GND_net), .O(n3163));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2130_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_986 (.I0(n32593), .I1(baudrate[29]), .I2(baudrate[16]), 
            .I3(baudrate[28]), .O(n32611));
    defparam i1_4_lut_adj_986.LUT_INIT = 16'h0002;
    SB_LUT4 div_37_LessThan_2141_i21_2_lut (.I0(n3164), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_4060));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2141_i23_2_lut (.I0(n3163), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_4061));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i29308_4_lut (.I0(n33632), .I1(n33543), .I2(n33547), .I3(n33471), 
            .O(n33702));
    defparam i29308_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i2137_3_lut (.I0(n3065), .I1(n5180[4]), .I2(n294[2]), 
            .I3(GND_net), .O(n3170));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2137_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2138_3_lut (.I0(n3066), .I1(n5180[3]), .I2(n294[2]), 
            .I3(GND_net), .O(n3171));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2138_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i9_2_lut (.I0(n3170), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n9_adj_4062));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i9_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2132_3_lut (.I0(n3060), .I1(n5180[9]), .I2(n294[2]), 
            .I3(GND_net), .O(n3165));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2132_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2136_3_lut (.I0(n3064), .I1(n5180[5]), .I2(n294[2]), 
            .I3(GND_net), .O(n3169));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2136_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i11_2_lut (.I0(n3169), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n11_adj_4063));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i11_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2141_i19_2_lut (.I0(n3165), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n19_adj_4064));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1753_3_lut (.I0(n2486), .I1(n5050[13]), .I2(n294[7]), 
            .I3(GND_net), .O(n2606));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1753_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_987 (.I0(n33688), .I1(n33702), .I2(n30591), .I3(n32611), 
            .O(n31284));
    defparam i1_4_lut_adj_987.LUT_INIT = 16'h0100;
    SB_LUT4 i1_2_lut_3_lut_adj_988 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(n32769), .I3(GND_net), .O(n32735));   // verilog/uart_rx.v(98[17:39])
    defparam i1_2_lut_3_lut_adj_988.LUT_INIT = 16'hfbfb;
    SB_LUT4 div_37_LessThan_1766_i27_2_lut (.I0(n2606), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_4065));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2127_3_lut (.I0(n3055), .I1(n5180[14]), .I2(n294[2]), 
            .I3(GND_net), .O(n3160));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2127_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1766_i29_2_lut (.I0(n2605), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_4066));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_3_lut_adj_989 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(n32787), .I3(GND_net), .O(n32789));   // verilog/uart_rx.v(98[17:39])
    defparam i1_2_lut_3_lut_adj_989.LUT_INIT = 16'hfbfb;
    SB_LUT4 div_37_LessThan_1250_i43_2_lut (.I0(n1833), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_4067));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i946_3_lut (.I0(n1265), .I1(n4816[19]), .I2(n294[16]), 
            .I3(GND_net), .O(n1412));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i946_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2133_3_lut (.I0(n3061), .I1(n5180[8]), .I2(n294[2]), 
            .I3(GND_net), .O(n3166));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2133_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2134_3_lut (.I0(n3062), .I1(n5180[7]), .I2(n294[2]), 
            .I3(GND_net), .O(n3167));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2134_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2135_3_lut (.I0(n3063), .I1(n5180[6]), .I2(n294[2]), 
            .I3(GND_net), .O(n3168));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2135_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1043_3_lut (.I0(n1412), .I1(n4842[19]), .I2(n294[15]), 
            .I3(GND_net), .O(n1556));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1043_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i13_2_lut (.I0(n3168), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n13_adj_4068));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i13_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2141_i15_2_lut (.I0(n3167), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n15_adj_4069));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i15_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1138_3_lut (.I0(n1556), .I1(n4868[19]), .I2(n294[14]), 
            .I3(GND_net), .O(n1697));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1138_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1231_3_lut (.I0(n1697), .I1(n4894[19]), .I2(n294[13]), 
            .I3(GND_net), .O(n1835));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1231_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1250_i39_2_lut (.I0(n1835), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4070));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2141_i17_2_lut (.I0(n3166), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n17_adj_4071));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i17_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1250_i29_2_lut (.I0(n1840), .I1(baudrate[2]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_4072));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31252_4_lut (.I0(n35_adj_3985), .I1(n33_adj_3983), .I2(n31_adj_3984), 
            .I3(n29_adj_4072), .O(n35655));
    defparam i31252_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_2141_i29_2_lut (.I0(n3160), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_4073));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_990 (.I0(baudrate[26]), .I1(baudrate[30]), .I2(GND_net), 
            .I3(GND_net), .O(n33201));
    defparam i1_2_lut_adj_990.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_991 (.I0(n33205), .I1(n33207), .I2(n33113), .I3(n33203), 
            .O(n10988));
    defparam i1_4_lut_adj_991.LUT_INIT = 16'hfffe;
    SB_LUT4 i31039_4_lut (.I0(n29_adj_4073), .I1(n17_adj_4071), .I2(n15_adj_4069), 
            .I3(n13_adj_4068), .O(n35442));
    defparam i31039_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i1_4_lut_adj_992 (.I0(n32885), .I1(n32881), .I2(n32883), .I3(n33471), 
            .O(n32903));
    defparam i1_4_lut_adj_992.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1250_i40_3_lut (.I0(n32_adj_3946), .I1(baudrate[9]), 
            .I2(n43_adj_4067), .I3(GND_net), .O(n40_adj_4074));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i40_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1250_i28_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n1841), .I3(GND_net), .O(n28_adj_4075));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i28_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_4_lut_adj_993 (.I0(n32893), .I1(n32889), .I2(n32891), .I3(n32887), 
            .O(n32905));
    defparam i1_4_lut_adj_993.LUT_INIT = 16'hfffe;
    SB_LUT4 i32060_3_lut (.I0(n28_adj_4075), .I1(baudrate[5]), .I2(n35_adj_3985), 
            .I3(GND_net), .O(n36465));   // verilog/uart_rx.v(119[33:55])
    defparam i32060_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31597_4_lut (.I0(n11_adj_4063), .I1(n9_adj_4062), .I2(n3171), 
            .I3(baudrate[2]), .O(n36000));
    defparam i31597_4_lut.LUT_INIT = 16'heffe;
    SB_LUT4 i31915_4_lut (.I0(n17_adj_4071), .I1(n15_adj_4069), .I2(n13_adj_4068), 
            .I3(n36000), .O(n36319));
    defparam i31915_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i32061_3_lut (.I0(n36465), .I1(baudrate[6]), .I2(n37_adj_3986), 
            .I3(GND_net), .O(n36466));   // verilog/uart_rx.v(119[33:55])
    defparam i32061_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31913_4_lut (.I0(n23_adj_4061), .I1(n21_adj_4060), .I2(n19_adj_4064), 
            .I3(n36319), .O(n36317));
    defparam i31913_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i31043_4_lut (.I0(n29_adj_4073), .I1(n27_adj_4058), .I2(n25_adj_4057), 
            .I3(n36317), .O(n35446));
    defparam i31043_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_2141_i6_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n3172), .I3(GND_net), .O(n6_adj_4076));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i6_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32195_3_lut (.I0(n6_adj_4076), .I1(baudrate[13]), .I2(n29_adj_4073), 
            .I3(GND_net), .O(n36600));   // verilog/uart_rx.v(119[33:55])
    defparam i32195_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31230_4_lut (.I0(n41_adj_3988), .I1(n39_adj_4070), .I2(n37_adj_3986), 
            .I3(n35655), .O(n35633));
    defparam i31230_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i32337_4_lut (.I0(n40_adj_4074), .I1(n30_adj_3945), .I2(n43_adj_4067), 
            .I3(n35629), .O(n36742));   // verilog/uart_rx.v(119[33:55])
    defparam i32337_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31629_3_lut (.I0(n36466), .I1(baudrate[7]), .I2(n39_adj_4070), 
            .I3(GND_net), .O(n36032));   // verilog/uart_rx.v(119[33:55])
    defparam i31629_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32433_4_lut (.I0(n36032), .I1(n36742), .I2(n43_adj_4067), 
            .I3(n35633), .O(n36838));   // verilog/uart_rx.v(119[33:55])
    defparam i32433_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i32434_3_lut (.I0(n36838), .I1(baudrate[10]), .I2(n1832), 
            .I3(GND_net), .O(n36839));   // verilog/uart_rx.v(119[33:55])
    defparam i32434_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32403_3_lut (.I0(n36839), .I1(baudrate[11]), .I2(n1831), 
            .I3(GND_net), .O(n48_adj_3933));   // verilog/uart_rx.v(119[33:55])
    defparam i32403_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_2_lut_adj_994 (.I0(n32363), .I1(n48_adj_3933), .I2(GND_net), 
            .I3(GND_net), .O(n1977));
    defparam i1_2_lut_adj_994.LUT_INIT = 16'h2222;
    SB_LUT4 div_37_i1418_3_lut (.I0(n1977), .I1(n4946[12]), .I2(n294[11]), 
            .I3(GND_net), .O(n2109));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1418_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1505_3_lut (.I0(n2109), .I1(n4972[12]), .I2(n294[10]), 
            .I3(GND_net), .O(n2238));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1505_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i32_3_lut (.I0(n14_adj_3942), .I1(baudrate[17]), 
            .I2(n37_adj_4056), .I3(GND_net), .O(n32_adj_4077));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i32_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1590_3_lut (.I0(n2238), .I1(n4998[12]), .I2(n294[9]), 
            .I3(GND_net), .O(n2364));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1590_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1673_3_lut (.I0(n2364), .I1(n5024[12]), .I2(n294[8]), 
            .I3(GND_net), .O(n2487));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1673_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32196_3_lut (.I0(n36600), .I1(baudrate[14]), .I2(n31_adj_4054), 
            .I3(GND_net), .O(n36601));   // verilog/uart_rx.v(119[33:55])
    defparam i32196_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31032_4_lut (.I0(n35_adj_4059), .I1(n33_adj_4055), .I2(n31_adj_4054), 
            .I3(n35442), .O(n35435));
    defparam i31032_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i32388_4_lut (.I0(n32_adj_4077), .I1(n12_adj_3941), .I2(n37_adj_4056), 
            .I3(n35430), .O(n36793));   // verilog/uart_rx.v(119[33:55])
    defparam i32388_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32138_3_lut (.I0(n36601), .I1(baudrate[15]), .I2(n33_adj_4055), 
            .I3(GND_net), .O(n36543));   // verilog/uart_rx.v(119[33:55])
    defparam i32138_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1754_3_lut (.I0(n2487), .I1(n5050[12]), .I2(n294[7]), 
            .I3(GND_net), .O(n2607));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1754_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_adj_995 (.I0(n32905), .I1(n10940), .I2(n32903), .I3(GND_net), 
            .O(n10997));
    defparam i1_3_lut_adj_995.LUT_INIT = 16'hfefe;
    SB_LUT4 div_37_LessThan_1766_i25_2_lut (.I0(n2607), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_4078));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32287_3_lut (.I0(n8_adj_3939), .I1(baudrate[10]), .I2(n23_adj_4061), 
            .I3(GND_net), .O(n36692));   // verilog/uart_rx.v(119[33:55])
    defparam i32287_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_adj_996 (.I0(n11016), .I1(n48_adj_3885), .I2(n538), 
            .I3(GND_net), .O(n2240));
    defparam i1_3_lut_adj_996.LUT_INIT = 16'hfefe;
    SB_LUT4 div_37_i1592_3_lut (.I0(n2240), .I1(n4998[10]), .I2(n294[9]), 
            .I3(GND_net), .O(n2366));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1592_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1675_3_lut (.I0(n2366), .I1(n5024[10]), .I2(n294[8]), 
            .I3(GND_net), .O(n2489));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1675_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_341_i48_3_lut (.I0(n31284), .I1(baudrate[2]), 
            .I2(n31674), .I3(GND_net), .O(n48_adj_3884));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_341_i48_3_lut.LUT_INIT = 16'he8e8;
    SB_LUT4 i29185_2_lut (.I0(baudrate[17]), .I1(n11025), .I2(GND_net), 
            .I3(GND_net), .O(n33578));
    defparam i29185_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_997 (.I0(baudrate[13]), .I1(baudrate[14]), .I2(GND_net), 
            .I3(GND_net), .O(n32883));
    defparam i1_2_lut_adj_997.LUT_INIT = 16'heeee;
    SB_LUT4 i32569_2_lut (.I0(n48_adj_3884), .I1(n10997), .I2(GND_net), 
            .I3(GND_net), .O(n294[21]));
    defparam i32569_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 div_37_LessThan_1341_i27_2_lut (.I0(n1976), .I1(baudrate[2]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_4079));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32288_3_lut (.I0(n36692), .I1(baudrate[11]), .I2(n25_adj_4057), 
            .I3(GND_net), .O(n36693));   // verilog/uart_rx.v(119[33:55])
    defparam i32288_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32530_2_lut (.I0(n48_adj_3922), .I1(n11032), .I2(GND_net), 
            .I3(GND_net), .O(n294[20]));   // verilog/uart_rx.v(119[33:55])
    defparam i32530_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 i31113_4_lut (.I0(n33_adj_3992), .I1(n31_adj_3989), .I2(n29_adj_3991), 
            .I3(n27_adj_4079), .O(n35516));
    defparam i31113_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i31583_4_lut (.I0(n25_adj_4057), .I1(n23_adj_4061), .I2(n21_adj_4060), 
            .I3(n35471), .O(n35986));
    defparam i31583_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i31943_3_lut (.I0(n10_adj_3943), .I1(baudrate[9]), .I2(n21_adj_4060), 
            .I3(GND_net), .O(n36347));   // verilog/uart_rx.v(119[33:55])
    defparam i31943_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32136_3_lut (.I0(n36693), .I1(baudrate[12]), .I2(n27_adj_4058), 
            .I3(GND_net), .O(n36541));   // verilog/uart_rx.v(119[33:55])
    defparam i32136_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32076_4_lut (.I0(n35_adj_4059), .I1(n33_adj_4055), .I2(n31_adj_4054), 
            .I3(n35446), .O(n36481));
    defparam i32076_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i32455_4_lut (.I0(n36543), .I1(n36793), .I2(n37_adj_4056), 
            .I3(n35435), .O(n36860));   // verilog/uart_rx.v(119[33:55])
    defparam i32455_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i32191_4_lut (.I0(n36541), .I1(n36347), .I2(n27_adj_4058), 
            .I3(n35986), .O(n36596));   // verilog/uart_rx.v(119[33:55])
    defparam i32191_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32465_4_lut (.I0(n36596), .I1(n36860), .I2(n37_adj_4056), 
            .I3(n36481), .O(n36870));   // verilog/uart_rx.v(119[33:55])
    defparam i32465_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i32466_3_lut (.I0(n36870), .I1(baudrate[18]), .I2(n3155), 
            .I3(GND_net), .O(n36871));   // verilog/uart_rx.v(119[33:55])
    defparam i32466_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32462_3_lut (.I0(n36871), .I1(baudrate[19]), .I2(n3154), 
            .I3(GND_net), .O(n36867));   // verilog/uart_rx.v(119[33:55])
    defparam i32462_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32357_3_lut (.I0(n36867), .I1(baudrate[20]), .I2(n3153), 
            .I3(GND_net), .O(n36762));   // verilog/uart_rx.v(119[33:55])
    defparam i32357_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32358_3_lut (.I0(n36762), .I1(baudrate[21]), .I2(n3152), 
            .I3(GND_net), .O(n36763));   // verilog/uart_rx.v(119[33:55])
    defparam i32358_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1341_i38_3_lut (.I0(n30_adj_3938), .I1(baudrate[9]), 
            .I2(n41_adj_3997), .I3(GND_net), .O(n38_adj_4080));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i38_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32144_3_lut (.I0(n36763), .I1(baudrate[22]), .I2(n3151), 
            .I3(GND_net), .O(n48_adj_4041));   // verilog/uart_rx.v(119[33:55])
    defparam i32144_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1517_i28_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2235), .I3(GND_net), .O(n28_adj_3917));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i28_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32217_3_lut (.I0(n26_adj_3934), .I1(baudrate[5]), .I2(n33_adj_3992), 
            .I3(GND_net), .O(n36622));   // verilog/uart_rx.v(119[33:55])
    defparam i32217_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32218_3_lut (.I0(n36622), .I1(baudrate[6]), .I2(n35_adj_3993), 
            .I3(GND_net), .O(n36623));   // verilog/uart_rx.v(119[33:55])
    defparam i32218_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30997_4_lut (.I0(n39_adj_3994), .I1(n37_adj_3995), .I2(n35_adj_3993), 
            .I3(n35516), .O(n35400));
    defparam i30997_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i32376_4_lut (.I0(n38_adj_4080), .I1(n28_adj_3936), .I2(n41_adj_3997), 
            .I3(n35390), .O(n36781));   // verilog/uart_rx.v(119[33:55])
    defparam i32376_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i1_4_lut_adj_998 (.I0(n33101), .I1(n33087), .I2(baudrate[16]), 
            .I3(n21216), .O(n32959));
    defparam i1_4_lut_adj_998.LUT_INIT = 16'h0100;
    SB_LUT4 i32103_3_lut (.I0(n36623), .I1(baudrate[7]), .I2(n37_adj_3995), 
            .I3(GND_net), .O(n36508));   // verilog/uart_rx.v(119[33:55])
    defparam i32103_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2159_1_lut (.I0(baudrate[16]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2754));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2159_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i17299_rep_4_2_lut_3_lut (.I0(baudrate[0]), .I1(n48_adj_3935), 
            .I2(n33682), .I3(GND_net), .O(n30806));   // verilog/uart_rx.v(119[33:55])
    defparam i17299_rep_4_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_2_lut_4_lut_adj_999 (.I0(baudrate[16]), .I1(baudrate[17]), 
            .I2(baudrate[18]), .I3(baudrate[19]), .O(n33173));
    defparam i1_2_lut_4_lut_adj_999.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_4_lut_adj_1000 (.I0(baudrate[20]), .I1(baudrate[21]), 
            .I2(baudrate[22]), .I3(baudrate[23]), .O(n33171));
    defparam i1_2_lut_4_lut_adj_1000.LUT_INIT = 16'hfffe;
    SB_LUT4 i31447_3_lut (.I0(n31284), .I1(n31674), .I2(baudrate[2]), 
            .I3(GND_net), .O(n35079));   // verilog/uart_rx.v(119[33:55])
    defparam i31447_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i31236_4_lut (.I0(n30591), .I1(n32959), .I2(n33103), .I3(n33033), 
            .O(n35080));   // verilog/uart_rx.v(119[33:55])
    defparam i31236_4_lut.LUT_INIT = 16'h0004;
    SB_LUT4 i32449_4_lut (.I0(n36508), .I1(n36781), .I2(n41_adj_3997), 
            .I3(n35400), .O(n36854));   // verilog/uart_rx.v(119[33:55])
    defparam i32449_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i32450_3_lut (.I0(n36854), .I1(baudrate[10]), .I2(n1968), 
            .I3(GND_net), .O(n36855));   // verilog/uart_rx.v(119[33:55])
    defparam i32450_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32432_3_lut (.I0(n36855), .I1(baudrate[11]), .I2(n1967), 
            .I3(GND_net), .O(n36837));   // verilog/uart_rx.v(119[33:55])
    defparam i32432_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32405_3_lut (.I0(n36837), .I1(baudrate[12]), .I2(n1966), 
            .I3(GND_net), .O(n48_adj_3937));   // verilog/uart_rx.v(119[33:55])
    defparam i32405_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i2047_3_lut (.I0(n2938), .I1(n5154[23]), .I2(n294[3]), 
            .I3(GND_net), .O(n3046));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2047_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32539_2_lut_4_lut (.I0(n36647), .I1(baudrate[10]), .I2(n1693), 
            .I3(n11039), .O(n294[13]));   // verilog/uart_rx.v(119[33:55])
    defparam i32539_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 i32548_2_lut_4_lut (.I0(n36835), .I1(baudrate[13]), .I2(n2098), 
            .I3(n11016), .O(n294[10]));   // verilog/uart_rx.v(119[33:55])
    defparam i32548_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 div_37_i2055_3_lut (.I0(n2946), .I1(n5154[15]), .I2(n294[3]), 
            .I3(GND_net), .O(n3054));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2055_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2049_3_lut (.I0(n2940), .I1(n5154[21]), .I2(n294[3]), 
            .I3(GND_net), .O(n3048));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2049_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2050_3_lut (.I0(n2941), .I1(n5154[20]), .I2(n294[3]), 
            .I3(GND_net), .O(n3049));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2050_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1506_3_lut (.I0(n2110), .I1(n4972[11]), .I2(n294[10]), 
            .I3(GND_net), .O(n2239));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1506_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1591_3_lut (.I0(n2239), .I1(n4998[11]), .I2(n294[9]), 
            .I3(GND_net), .O(n2365));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1591_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2048_3_lut (.I0(n2939), .I1(n5154[22]), .I2(n294[3]), 
            .I3(GND_net), .O(n3047));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2048_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2053_3_lut (.I0(n2944), .I1(n5154[17]), .I2(n294[3]), 
            .I3(GND_net), .O(n3052));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2053_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2070_i35_2_lut (.I0(n3052), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_4081));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2051_3_lut (.I0(n2942), .I1(n5154[19]), .I2(n294[3]), 
            .I3(GND_net), .O(n3050));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2051_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1674_3_lut (.I0(n2365), .I1(n5024[11]), .I2(n294[8]), 
            .I3(GND_net), .O(n2488));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1674_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1755_3_lut (.I0(n2488), .I1(n5050[11]), .I2(n294[7]), 
            .I3(GND_net), .O(n2608));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1755_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_adj_1001 (.I0(baudrate[6]), .I1(baudrate[7]), 
            .I2(baudrate[8]), .I3(baudrate[9]), .O(n33103));
    defparam i1_2_lut_4_lut_adj_1001.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_2070_i39_2_lut (.I0(n3050), .I1(baudrate[17]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4082));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32583_4_lut_4_lut (.I0(\r_SM_Main_2__N_3316[1] ), .I1(r_SM_Main[1]), 
            .I2(n6), .I3(n31572), .O(n30722));
    defparam i32583_4_lut_4_lut.LUT_INIT = 16'h0703;
    SB_LUT4 div_37_i1676_3_lut (.I0(n2367), .I1(n5024[9]), .I2(n294[8]), 
            .I3(GND_net), .O(n2490));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1676_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1757_3_lut (.I0(n2490), .I1(n5050[9]), .I2(n294[7]), 
            .I3(GND_net), .O(n2610));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1757_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2052_3_lut (.I0(n2943), .I1(n5154[18]), .I2(n294[3]), 
            .I3(GND_net), .O(n3051));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2052_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2070_i37_2_lut (.I0(n3051), .I1(baudrate[16]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4083));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2054_3_lut (.I0(n2945), .I1(n5154[16]), .I2(n294[3]), 
            .I3(GND_net), .O(n3053));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2054_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1756_3_lut (.I0(n2489), .I1(n5050[10]), .I2(n294[7]), 
            .I3(GND_net), .O(n2609));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1756_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1766_i19_2_lut (.I0(n2610), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n19_adj_4084));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i21_2_lut (.I0(n2609), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_4085));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i23_2_lut (.I0(n2608), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_4086));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2070_i33_2_lut (.I0(n3053), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_4087));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2058_3_lut (.I0(n2949), .I1(n5154[12]), .I2(n294[3]), 
            .I3(GND_net), .O(n3057));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2058_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2059_3_lut (.I0(n2950), .I1(n5154[11]), .I2(n294[3]), 
            .I3(GND_net), .O(n3058));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2059_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2070_i23_2_lut (.I0(n3058), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_4088));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1002 (.I0(baudrate[28]), .I1(baudrate[25]), .I2(GND_net), 
            .I3(GND_net), .O(n32857));
    defparam i1_2_lut_adj_1002.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_1003 (.I0(n33171), .I1(n32331), .I2(n32329), 
            .I3(n33123), .O(n11025));
    defparam i1_4_lut_adj_1003.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i427_4_lut (.I0(n35080), .I1(n35079), .I2(n294[21]), 
            .I3(n33578), .O(n30553));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i427_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i31314_3_lut_4_lut (.I0(n1558), .I1(baudrate[3]), .I2(baudrate[2]), 
            .I3(n1559), .O(n35717));   // verilog/uart_rx.v(119[33:55])
    defparam i31314_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1062_i34_3_lut_3_lut (.I0(n1558), .I1(baudrate[3]), 
            .I2(baudrate[2]), .I3(GND_net), .O(n34_adj_4052));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i34_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 div_37_LessThan_2070_i25_2_lut (.I0(n3057), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_4089));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_4_lut_adj_1004 (.I0(n36772), .I1(baudrate[18]), .I2(n2713), 
            .I3(n32373), .O(n2845));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_1004.LUT_INIT = 16'h7100;
    SB_LUT4 i32621_2_lut_4_lut (.I0(n36772), .I1(baudrate[18]), .I2(n2713), 
            .I3(n10940), .O(n294[5]));   // verilog/uart_rx.v(119[33:55])
    defparam i32621_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 i31278_3_lut_4_lut (.I0(n1699), .I1(baudrate[4]), .I2(baudrate[3]), 
            .I3(n1700), .O(n35681));   // verilog/uart_rx.v(119[33:55])
    defparam i31278_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_i2056_3_lut (.I0(n2947), .I1(n5154[14]), .I2(n294[3]), 
            .I3(GND_net), .O(n3055));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2056_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1157_i34_3_lut_3_lut (.I0(n1699), .I1(baudrate[4]), 
            .I2(baudrate[3]), .I3(GND_net), .O(n34_adj_4046));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i34_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 div_37_i2057_3_lut (.I0(n2948), .I1(n5154[13]), .I2(n294[3]), 
            .I3(GND_net), .O(n3056));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2057_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1766_i17_2_lut (.I0(n2611), .I1(baudrate[2]), 
            .I2(GND_net), .I3(GND_net), .O(n17_adj_4090));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i17_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2070_i27_2_lut (.I0(n3056), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_4091));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2070_i29_2_lut (.I0(n3055), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_4092));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31380_4_lut (.I0(n23_adj_4086), .I1(n21_adj_4085), .I2(n19_adj_4084), 
            .I3(n17_adj_4090), .O(n35783));
    defparam i31380_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i31376_4_lut (.I0(n29_adj_4066), .I1(n27_adj_4065), .I2(n25_adj_4078), 
            .I3(n35783), .O(n35779));
    defparam i31376_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_i2065_3_lut (.I0(n2956), .I1(n5154[5]), .I2(n294[3]), 
            .I3(GND_net), .O(n3064));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2065_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2066_3_lut (.I0(n2957), .I1(n5154[4]), .I2(n294[3]), 
            .I3(GND_net), .O(n3065));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2066_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32173_4_lut (.I0(n35_adj_4039), .I1(n33_adj_4038), .I2(n31_adj_4037), 
            .I3(n35779), .O(n36578));
    defparam i32173_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_2070_i11_2_lut (.I0(n3064), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n11_adj_4093));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i11_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2060_3_lut (.I0(n2951), .I1(n5154[10]), .I2(n294[3]), 
            .I3(GND_net), .O(n3059));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2060_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1766_i16_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n2612), .I3(GND_net), .O(n16_adj_4094));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i16_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i2064_3_lut (.I0(n2955), .I1(n5154[6]), .I2(n294[3]), 
            .I3(GND_net), .O(n3063));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2064_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_adj_1005 (.I0(n36613), .I1(baudrate[14]), .I2(n2227), 
            .I3(n32365), .O(n2367));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_1005.LUT_INIT = 16'h7100;
    SB_LUT4 div_37_LessThan_2070_i13_2_lut (.I0(n3063), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n13_adj_4095));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i13_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32048_3_lut (.I0(n16_adj_4094), .I1(baudrate[13]), .I2(n39_adj_4002), 
            .I3(GND_net), .O(n36453));   // verilog/uart_rx.v(119[33:55])
    defparam i32048_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2070_i21_2_lut (.I0(n3059), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_4096));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2061_3_lut (.I0(n2952), .I1(n5154[9]), .I2(n294[3]), 
            .I3(GND_net), .O(n3060));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2061_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2062_3_lut (.I0(n2953), .I1(n5154[8]), .I2(n294[3]), 
            .I3(GND_net), .O(n3061));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2062_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2063_3_lut (.I0(n2954), .I1(n5154[7]), .I2(n294[3]), 
            .I3(GND_net), .O(n3062));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2063_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32049_3_lut (.I0(n36453), .I1(baudrate[14]), .I2(n41_adj_4001), 
            .I3(GND_net), .O(n36454));   // verilog/uart_rx.v(119[33:55])
    defparam i32049_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31807_4_lut (.I0(n41_adj_4001), .I1(n39_adj_4002), .I2(n27_adj_4065), 
            .I3(n35781), .O(n36211));
    defparam i31807_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i32123_3_lut (.I0(n22_adj_3924), .I1(baudrate[7]), .I2(n27_adj_4065), 
            .I3(GND_net), .O(n36528));   // verilog/uart_rx.v(119[33:55])
    defparam i32123_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31643_3_lut (.I0(n36454), .I1(baudrate[15]), .I2(n43_adj_4000), 
            .I3(GND_net), .O(n36046));   // verilog/uart_rx.v(119[33:55])
    defparam i31643_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32602_2_lut_4_lut (.I0(n36613), .I1(baudrate[14]), .I2(n2227), 
            .I3(n33600), .O(n294[9]));   // verilog/uart_rx.v(119[33:55])
    defparam i32602_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 div_37_LessThan_2070_i15_2_lut (.I0(n3062), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n15_adj_4097));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i15_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2070_i17_2_lut (.I0(n3061), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n17_adj_4098));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i17_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i28_3_lut (.I0(n20_adj_3923), .I1(baudrate[9]), 
            .I2(n31_adj_4037), .I3(GND_net), .O(n28_adj_4099));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i28_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2070_i19_2_lut (.I0(n3060), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n19_adj_4100));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2070_i31_2_lut (.I0(n3054), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_4101));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31123_4_lut (.I0(n31_adj_4101), .I1(n19_adj_4100), .I2(n17_adj_4098), 
            .I3(n15_adj_4097), .O(n35526));
    defparam i31123_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i31021_2_lut_3_lut (.I0(baudrate[1]), .I1(n48_adj_3922), .I2(n11032), 
            .I3(GND_net), .O(n35424));   // verilog/uart_rx.v(119[33:55])
    defparam i31021_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i31682_4_lut (.I0(n13_adj_4095), .I1(n11_adj_4093), .I2(n3065), 
            .I3(baudrate[2]), .O(n36085));
    defparam i31682_4_lut.LUT_INIT = 16'heffe;
    SB_LUT4 i32347_4_lut (.I0(n28_adj_4099), .I1(n18_adj_3921), .I2(n31_adj_4037), 
            .I3(n35777), .O(n36752));   // verilog/uart_rx.v(119[33:55])
    defparam i32347_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32348_3_lut (.I0(n36752), .I1(baudrate[10]), .I2(n33_adj_4038), 
            .I3(GND_net), .O(n36753));   // verilog/uart_rx.v(119[33:55])
    defparam i32348_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32238_3_lut (.I0(n36753), .I1(baudrate[11]), .I2(n35_adj_4039), 
            .I3(GND_net), .O(n36643));   // verilog/uart_rx.v(119[33:55])
    defparam i32238_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31809_4_lut (.I0(n41_adj_4001), .I1(n39_adj_4002), .I2(n37_adj_3999), 
            .I3(n36578), .O(n36213));
    defparam i31809_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i32545_2_lut_3_lut_4_lut (.I0(baudrate[8]), .I1(n33670), .I2(n48_adj_3910), 
            .I3(baudrate[7]), .O(n294[17]));
    defparam i32545_2_lut_3_lut_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 i32233_4_lut (.I0(n36046), .I1(n36528), .I2(n43_adj_4000), 
            .I3(n36211), .O(n36638));   // verilog/uart_rx.v(119[33:55])
    defparam i32233_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31641_3_lut (.I0(n36643), .I1(baudrate[12]), .I2(n37_adj_3999), 
            .I3(GND_net), .O(n36044));   // verilog/uart_rx.v(119[33:55])
    defparam i31641_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32394_4_lut (.I0(n36044), .I1(n36638), .I2(n43_adj_4000), 
            .I3(n36213), .O(n36799));   // verilog/uart_rx.v(119[33:55])
    defparam i32394_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i32395_3_lut (.I0(n36799), .I1(baudrate[16]), .I2(n2597), 
            .I3(GND_net), .O(n36800));   // verilog/uart_rx.v(119[33:55])
    defparam i32395_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i29288_2_lut_3_lut_4_lut (.I0(baudrate[8]), .I1(n33670), .I2(n32891), 
            .I3(baudrate[7]), .O(n33682));
    defparam i29288_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i31945_4_lut (.I0(n19_adj_4100), .I1(n17_adj_4098), .I2(n15_adj_4097), 
            .I3(n36085), .O(n36349));
    defparam i31945_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i31937_4_lut (.I0(n25_adj_4089), .I1(n23_adj_4088), .I2(n21_adj_4096), 
            .I3(n36349), .O(n36341));
    defparam i31937_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i31136_4_lut (.I0(n31_adj_4101), .I1(n29_adj_4092), .I2(n27_adj_4091), 
            .I3(n36341), .O(n35539));
    defparam i31136_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i1_2_lut_4_lut_adj_1006 (.I0(baudrate[10]), .I1(baudrate[11]), 
            .I2(baudrate[12]), .I3(baudrate[13]), .O(n33101));
    defparam i1_2_lut_4_lut_adj_1006.LUT_INIT = 16'hfffe;
    SB_LUT4 i29285_1_lut (.I0(n33678), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n30753));
    defparam i29285_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1747_3_lut (.I0(n2480), .I1(n5050[19]), .I2(n294[7]), 
            .I3(GND_net), .O(n2600));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1747_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1826_3_lut (.I0(n2600), .I1(n5076[19]), .I2(n294[6]), 
            .I3(GND_net), .O(n2717));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1826_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2160_1_lut (.I0(baudrate[15]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2638));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2160_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1903_3_lut (.I0(n2717), .I1(n5102[19]), .I2(n294[5]), 
            .I3(GND_net), .O(n2831));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1903_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2070_i8_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n3066), .I3(GND_net), .O(n8_adj_4102));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i8_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32199_3_lut (.I0(n8_adj_4102), .I1(baudrate[13]), .I2(n31_adj_4101), 
            .I3(GND_net), .O(n36604));   // verilog/uart_rx.v(119[33:55])
    defparam i32199_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32200_3_lut (.I0(n36604), .I1(baudrate[14]), .I2(n33_adj_4087), 
            .I3(GND_net), .O(n36605));   // verilog/uart_rx.v(119[33:55])
    defparam i32200_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2070_i34_3_lut (.I0(n16_adj_3915), .I1(baudrate[17]), 
            .I2(n39_adj_4082), .I3(GND_net), .O(n34_adj_4103));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i34_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31118_4_lut (.I0(n37_adj_4083), .I1(n35_adj_4081), .I2(n33_adj_4087), 
            .I3(n35526), .O(n35521));
    defparam i31118_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i32386_4_lut (.I0(n34_adj_4103), .I1(n14_adj_3913), .I2(n39_adj_4082), 
            .I3(n35518), .O(n36791));   // verilog/uart_rx.v(119[33:55])
    defparam i32386_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32132_3_lut (.I0(n36605), .I1(baudrate[15]), .I2(n35_adj_4081), 
            .I3(GND_net), .O(n36537));   // verilog/uart_rx.v(119[33:55])
    defparam i32132_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i26405_1_lut (.I0(n11025), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n30765));
    defparam i26405_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i32201_3_lut (.I0(n10), .I1(baudrate[10]), .I2(n25_adj_4089), 
            .I3(GND_net), .O(n36606));   // verilog/uart_rx.v(119[33:55])
    defparam i32201_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32202_3_lut (.I0(n36606), .I1(baudrate[11]), .I2(n27_adj_4091), 
            .I3(GND_net), .O(n36607));   // verilog/uart_rx.v(119[33:55])
    defparam i32202_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31630_4_lut (.I0(n27_adj_4091), .I1(n25_adj_4089), .I2(n23_adj_4088), 
            .I3(n35571), .O(n36033));
    defparam i31630_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 div_37_LessThan_2070_i20_3_lut (.I0(n12_adj_3920), .I1(baudrate[9]), 
            .I2(n23_adj_4088), .I3(GND_net), .O(n20_adj_4104));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32130_3_lut (.I0(n36607), .I1(baudrate[12]), .I2(n29_adj_4092), 
            .I3(GND_net), .O(n26_adj_4105));   // verilog/uart_rx.v(119[33:55])
    defparam i32130_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32086_4_lut (.I0(n37_adj_4083), .I1(n35_adj_4081), .I2(n33_adj_4087), 
            .I3(n35539), .O(n36491));
    defparam i32086_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i32453_4_lut (.I0(n36537), .I1(n36791), .I2(n39_adj_4082), 
            .I3(n35521), .O(n36858));   // verilog/uart_rx.v(119[33:55])
    defparam i32453_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i31939_4_lut (.I0(n26_adj_4105), .I1(n20_adj_4104), .I2(n29_adj_4092), 
            .I3(n36033), .O(n36343));   // verilog/uart_rx.v(119[33:55])
    defparam i31939_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32467_4_lut (.I0(n36343), .I1(n36858), .I2(n39_adj_4082), 
            .I3(n36491), .O(n36872));   // verilog/uart_rx.v(119[33:55])
    defparam i32467_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i32468_3_lut (.I0(n36872), .I1(baudrate[18]), .I2(n3049), 
            .I3(GND_net), .O(n36873));   // verilog/uart_rx.v(119[33:55])
    defparam i32468_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i1324_3_lut (.I0(n1837), .I1(n4920[17]), .I2(n294[12]), 
            .I3(GND_net), .O(n1972));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1324_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1413_3_lut (.I0(n1972), .I1(n4946[17]), .I2(n294[11]), 
            .I3(GND_net), .O(n2104));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1413_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32460_3_lut (.I0(n36873), .I1(baudrate[19]), .I2(n3048), 
            .I3(GND_net), .O(n36865));   // verilog/uart_rx.v(119[33:55])
    defparam i32460_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1430_i27_2_lut (.I0(n2108), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_3895));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31941_3_lut (.I0(n36865), .I1(baudrate[20]), .I2(n3047), 
            .I3(GND_net), .O(n36345));   // verilog/uart_rx.v(119[33:55])
    defparam i31941_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i1500_3_lut (.I0(n2104), .I1(n4972[17]), .I2(n294[10]), 
            .I3(GND_net), .O(n2233));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1500_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31128_4_lut (.I0(r_SM_Main[0]), .I1(\o_Rx_DV_N_3358[12] ), 
            .I2(n2833), .I3(\o_Rx_DV_N_3358[8] ), .O(n35157));   // verilog/uart_rx.v(53[7] 144[14])
    defparam i31128_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 div_37_i1585_3_lut (.I0(n2233), .I1(n4998[17]), .I2(n294[9]), 
            .I3(GND_net), .O(n2359));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1585_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32214_3_lut (.I0(n36618), .I1(baudrate[7]), .I2(n35_adj_4017), 
            .I3(GND_net), .O(n36619));   // verilog/uart_rx.v(119[33:55])
    defparam i32214_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31242_4_lut (.I0(r_Rx_Data), .I1(\o_Rx_DV_N_3358[12] ), .I2(n29805), 
            .I3(r_SM_Main[0]), .O(n35163));   // verilog/uart_rx.v(53[7] 144[14])
    defparam i31242_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 i32536_2_lut (.I0(n48_adj_3935), .I1(n33682), .I2(GND_net), 
            .I3(GND_net), .O(n294[19]));
    defparam i32536_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 i29218_2_lut_3_lut_4_lut (.I0(baudrate[28]), .I1(baudrate[26]), 
            .I2(baudrate[29]), .I3(baudrate[24]), .O(n33612));
    defparam i29218_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i31125_4_lut (.I0(n35157), .I1(\o_Rx_DV_N_3358[24] ), .I2(n29), 
            .I3(n23), .O(n35154));   // verilog/uart_rx.v(53[7] 144[14])
    defparam i31125_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i2165_1_lut (.I0(baudrate[10]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2013));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2165_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1668_3_lut (.I0(n2359), .I1(n5024[17]), .I2(n294[8]), 
            .I3(GND_net), .O(n2482));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1668_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i534_3_lut (.I0(n30553), .I1(n294[20]), .I2(baudrate[3]), 
            .I3(GND_net), .O(n30555));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i534_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 div_37_i2172_1_lut (.I0(baudrate[3]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n856));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2172_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i843_3_lut (.I0(n1111), .I1(n4790[23]), .I2(n294[17]), 
            .I3(GND_net), .O(n1261));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i843_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i847_3_lut (.I0(n1115), .I1(n4790[19]), .I2(n294[17]), 
            .I3(GND_net), .O(n1265));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i847_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_866_i41_2_lut (.I0(n1264), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4106));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_866_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31131_4_lut (.I0(n35163), .I1(\o_Rx_DV_N_3358[24] ), .I2(n29), 
            .I3(n23), .O(n35160));   // verilog/uart_rx.v(53[7] 144[14])
    defparam i31131_4_lut.LUT_INIT = 16'h0002;
    SB_LUT4 r_SM_Main_2__I_0_62_Mux_1_i3_4_lut (.I0(n35160), .I1(n35154), 
            .I2(r_SM_Main[1]), .I3(n27), .O(n3_adj_3886));   // verilog/uart_rx.v(53[7] 144[14])
    defparam r_SM_Main_2__I_0_62_Mux_1_i3_4_lut.LUT_INIT = 16'hf0ca;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(baudrate[28]), .I1(baudrate[26]), 
            .I2(baudrate[24]), .I3(baudrate[31]), .O(n33075));
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_866_i40_3_lut (.I0(n38_adj_3931), .I1(baudrate[4]), 
            .I2(n41_adj_4106), .I3(GND_net), .O(n40_adj_4107));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_866_i40_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32343_4_lut (.I0(n40_adj_4107), .I1(n36_adj_3911), .I2(n41_adj_4106), 
            .I3(n35835), .O(n36748));   // verilog/uart_rx.v(119[33:55])
    defparam i32343_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32344_3_lut (.I0(n36748), .I1(baudrate[5]), .I2(n1263), .I3(GND_net), 
            .O(n36749));   // verilog/uart_rx.v(119[33:55])
    defparam i32344_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i1974_3_lut (.I0(n2827), .I1(n5128[23]), .I2(n294[4]), 
            .I3(GND_net), .O(n2938));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1974_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1975_3_lut (.I0(n2828), .I1(n5128[22]), .I2(n294[4]), 
            .I3(GND_net), .O(n2939));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1975_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1981_3_lut (.I0(n2834), .I1(n5128[16]), .I2(n294[4]), 
            .I3(GND_net), .O(n2945));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1981_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2998_2_lut_4_lut (.I0(n960), .I1(n6667), .I2(n7540), .I3(baudrate[3]), 
            .O(n44_adj_3878));   // verilog/uart_rx.v(119[33:55])
    defparam i2998_2_lut_4_lut.LUT_INIT = 16'ha8fe;
    SB_LUT4 div_37_i1976_3_lut (.I0(n2829), .I1(n5128[21]), .I2(n294[4]), 
            .I3(GND_net), .O(n2940));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1976_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32248_3_lut (.I0(n36749), .I1(baudrate[6]), .I2(n1262), .I3(GND_net), 
            .O(n36653));   // verilog/uart_rx.v(119[33:55])
    defparam i32248_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31619_3_lut (.I0(n36653), .I1(baudrate[7]), .I2(n1261), .I3(GND_net), 
            .O(n48_adj_3919));   // verilog/uart_rx.v(119[33:55])
    defparam i31619_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_2_lut_adj_1007 (.I0(n32359), .I1(n48_adj_3919), .I2(GND_net), 
            .I3(GND_net), .O(n1415));
    defparam i1_2_lut_adj_1007.LUT_INIT = 16'h2222;
    SB_LUT4 div_37_i1046_3_lut (.I0(n1415), .I1(n4842[16]), .I2(n294[15]), 
            .I3(GND_net), .O(n1559));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1046_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1979_3_lut (.I0(n2832), .I1(n5128[18]), .I2(n294[4]), 
            .I3(GND_net), .O(n2943));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1979_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1997_i37_2_lut (.I0(n2943), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4108));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1977_3_lut (.I0(n2830), .I1(n5128[20]), .I2(n294[4]), 
            .I3(GND_net), .O(n2941));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1977_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1997_i41_2_lut (.I0(n2941), .I1(baudrate[17]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4109));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1141_3_lut (.I0(n1559), .I1(n4868[16]), .I2(n294[14]), 
            .I3(GND_net), .O(n1700));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1141_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2171_1_lut (.I0(baudrate[4]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1011));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2171_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1234_3_lut (.I0(n1700), .I1(n4894[16]), .I2(n294[13]), 
            .I3(GND_net), .O(n1838));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1234_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2168_1_lut (.I0(baudrate[7]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1602));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2168_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_LessThan_765_i43_2_lut (.I0(n1113), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_4110));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_765_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1980_3_lut (.I0(n2833_adj_3856), .I1(n5128[17]), .I2(n294[4]), 
            .I3(GND_net), .O(n2944));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1980_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1997_i35_2_lut (.I0(n2944), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_4111));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1978_3_lut (.I0(n2831), .I1(n5128[19]), .I2(n294[4]), 
            .I3(GND_net), .O(n2942));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1978_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1997_i39_2_lut (.I0(n2942), .I1(baudrate[16]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4112));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1984_3_lut (.I0(n2837), .I1(n5128[13]), .I2(n294[4]), 
            .I3(GND_net), .O(n2948));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1984_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1986_3_lut (.I0(n2839), .I1(n5128[11]), .I2(n294[4]), 
            .I3(GND_net), .O(n2950));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1986_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1985_3_lut (.I0(n2838), .I1(n5128[12]), .I2(n294[4]), 
            .I3(GND_net), .O(n2949));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1985_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1997_i23_2_lut (.I0(n2950), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_4113));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i22_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2365), .I3(GND_net), .O(n22));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i22_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1997_i25_2_lut (.I0(n2949), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_4114));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1997_i27_2_lut (.I0(n2948), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_4115));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31322_3_lut (.I0(n962), .I1(baudrate[1]), .I2(n294[18]), 
            .I3(GND_net), .O(n1115));
    defparam i31322_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 i30875_2_lut_4_lut (.I0(n2360), .I1(baudrate[8]), .I2(n2364), 
            .I3(baudrate[4]), .O(n35278));
    defparam i30875_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i1_4_lut_adj_1008 (.I0(baudrate[27]), .I1(baudrate[24]), .I2(baudrate[29]), 
            .I3(baudrate[30]), .O(n33167));
    defparam i1_4_lut_adj_1008.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i1982_3_lut (.I0(n2835), .I1(n5128[15]), .I2(n294[4]), 
            .I3(GND_net), .O(n2946));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1982_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1602_i24_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2360), .I3(GND_net), .O(n24_adj_3874));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i24_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i1983_3_lut (.I0(n2836), .I1(n5128[14]), .I2(n294[4]), 
            .I3(GND_net), .O(n2947));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1983_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1997_i29_2_lut (.I0(n2947), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_4116));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_765_i38_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n1116), .I3(GND_net), .O(n38_adj_4117));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_765_i38_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_765_i42_3_lut (.I0(n40_adj_3929), .I1(baudrate[4]), 
            .I2(n43_adj_4110), .I3(GND_net), .O(n42_adj_4118));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_765_i42_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1997_i31_2_lut (.I0(n2946), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_4119));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32339_4_lut (.I0(n42_adj_4118), .I1(n38_adj_4117), .I2(n43_adj_4110), 
            .I3(n35851), .O(n36744));   // verilog/uart_rx.v(119[33:55])
    defparam i32339_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32340_3_lut (.I0(n36744), .I1(baudrate[5]), .I2(n1112), .I3(GND_net), 
            .O(n36745));   // verilog/uart_rx.v(119[33:55])
    defparam i32340_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i1318_3_lut (.I0(n1831), .I1(n4920[23]), .I2(n294[12]), 
            .I3(GND_net), .O(n1966));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1318_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2834_4_lut (.I0(n803), .I1(baudrate[3]), .I2(n6503), .I3(n7532), 
            .O(n46_adj_4120));   // verilog/uart_rx.v(119[33:55])
    defparam i2834_4_lut.LUT_INIT = 16'hbbb2;
    SB_LUT4 div_37_i1990_3_lut (.I0(n2843), .I1(n5128[7]), .I2(n294[4]), 
            .I3(GND_net), .O(n2954));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1990_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32268_3_lut (.I0(n36745), .I1(baudrate[6]), .I2(n1111), .I3(GND_net), 
            .O(n48_adj_3910));   // verilog/uart_rx.v(119[33:55])
    defparam i32268_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i1991_3_lut (.I0(n2844), .I1(n5128[6]), .I2(n294[4]), 
            .I3(GND_net), .O(n2955));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1991_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1992_3_lut (.I0(n2845), .I1(n5128[5]), .I2(n294[4]), 
            .I3(GND_net), .O(n2956));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1992_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1997_i13_2_lut (.I0(n2955), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n13_adj_4121));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i13_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1997_i15_2_lut (.I0(n2954), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n15_adj_4122));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i15_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i639_4_lut (.I0(n30555), .I1(n294[19]), .I2(n46_adj_4120), 
            .I3(baudrate[4]), .O(n30557));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i639_4_lut.LUT_INIT = 16'h6aa6;
    SB_LUT4 i1_2_lut_adj_1009 (.I0(n32349), .I1(n48_adj_3910), .I2(GND_net), 
            .I3(GND_net), .O(n1267));
    defparam i1_2_lut_adj_1009.LUT_INIT = 16'h2222;
    SB_LUT4 div_37_i1987_3_lut (.I0(n2840), .I1(n5128[10]), .I2(n294[4]), 
            .I3(GND_net), .O(n2951));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1987_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1988_3_lut (.I0(n2841), .I1(n5128[9]), .I2(n294[4]), 
            .I3(GND_net), .O(n2952));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1988_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1989_3_lut (.I0(n2842), .I1(n5128[8]), .I2(n294[4]), 
            .I3(GND_net), .O(n2953));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1989_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i948_3_lut (.I0(n1267), .I1(n4816[17]), .I2(n294[16]), 
            .I3(GND_net), .O(n1414));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i948_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1045_3_lut (.I0(n1414), .I1(n4842[17]), .I2(n294[15]), 
            .I3(GND_net), .O(n1558));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1045_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1140_3_lut (.I0(n1558), .I1(n4868[17]), .I2(n294[14]), 
            .I3(GND_net), .O(n1699));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1140_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2170_1_lut (.I0(baudrate[5]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1460));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2170_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_LessThan_1997_i17_2_lut (.I0(n2953), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n17_adj_4123));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i17_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1997_i19_2_lut (.I0(n2952), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n19_adj_4124));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1997_i21_2_lut (.I0(n2951), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_4125));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1997_i33_2_lut (.I0(n2945), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_4126));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31191_4_lut (.I0(n33_adj_4126), .I1(n21_adj_4125), .I2(n19_adj_4124), 
            .I3(n17_adj_4123), .O(n35594));
    defparam i31191_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_i1233_3_lut (.I0(n1699), .I1(n4894[17]), .I2(n294[13]), 
            .I3(GND_net), .O(n1837));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1233_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2175_1_lut (.I0(baudrate[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n538));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2175_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i31716_4_lut (.I0(n15_adj_4122), .I1(n13_adj_4121), .I2(n2956), 
            .I3(baudrate[2]), .O(n36119));
    defparam i31716_4_lut.LUT_INIT = 16'heffe;
    SB_LUT4 i2983_2_lut (.I0(n962), .I1(baudrate[1]), .I2(GND_net), .I3(GND_net), 
            .O(n40_adj_4127));   // verilog/uart_rx.v(119[33:55])
    defparam i2983_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i31961_4_lut (.I0(n21_adj_4125), .I1(n19_adj_4124), .I2(n17_adj_4123), 
            .I3(n36119), .O(n36365));
    defparam i31961_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i31959_4_lut (.I0(n27_adj_4115), .I1(n25_adj_4114), .I2(n23_adj_4113), 
            .I3(n36365), .O(n36363));
    defparam i31959_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i31193_4_lut (.I0(n33_adj_4126), .I1(n31_adj_4119), .I2(n29_adj_4116), 
            .I3(n36363), .O(n35596));
    defparam i31193_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_1997_i10_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n2957), .I3(GND_net), .O(n10_adj_4128));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i10_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32032_3_lut (.I0(n10_adj_4128), .I1(baudrate[13]), .I2(n33_adj_4126), 
            .I3(GND_net), .O(n36437));   // verilog/uart_rx.v(119[33:55])
    defparam i32032_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32033_3_lut (.I0(n36437), .I1(baudrate[14]), .I2(n35_adj_4111), 
            .I3(GND_net), .O(n36438));   // verilog/uart_rx.v(119[33:55])
    defparam i32033_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i745_4_lut (.I0(n961), .I1(n40_adj_4127), .I2(n294[18]), 
            .I3(baudrate[2]), .O(n1114));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i745_4_lut.LUT_INIT = 16'h6a9a;
    SB_LUT4 div_37_LessThan_1997_i36_3_lut (.I0(n18_adj_3896), .I1(baudrate[17]), 
            .I2(n41_adj_4109), .I3(GND_net), .O(n36_adj_4129));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i36_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31187_4_lut (.I0(n39_adj_4112), .I1(n37_adj_4108), .I2(n35_adj_4111), 
            .I3(n35594), .O(n35590));
    defparam i31187_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i32311_4_lut (.I0(n36_adj_4129), .I1(n16_adj_3891), .I2(n41_adj_4109), 
            .I3(n35587), .O(n36716));   // verilog/uart_rx.v(119[33:55])
    defparam i32311_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31669_3_lut (.I0(n36438), .I1(baudrate[15]), .I2(n37_adj_4108), 
            .I3(GND_net), .O(n36072));   // verilog/uart_rx.v(119[33:55])
    defparam i31669_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30883_2_lut_4_lut (.I0(n2362), .I1(baudrate[6]), .I2(n2363), 
            .I3(baudrate[5]), .O(n35286));
    defparam i30883_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1997_i22_3_lut (.I0(n14_adj_3890), .I1(baudrate[9]), 
            .I2(n25_adj_4114), .I3(GND_net), .O(n22_adj_4130));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32353_4_lut (.I0(n22_adj_4130), .I1(n12_adj_3889), .I2(n25_adj_4114), 
            .I3(n35602), .O(n36758));   // verilog/uart_rx.v(119[33:55])
    defparam i32353_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32354_3_lut (.I0(n36758), .I1(baudrate[10]), .I2(n27_adj_4115), 
            .I3(GND_net), .O(n36759));   // verilog/uart_rx.v(119[33:55])
    defparam i32354_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32224_3_lut (.I0(n36759), .I1(baudrate[11]), .I2(n29_adj_4116), 
            .I3(GND_net), .O(n36629));   // verilog/uart_rx.v(119[33:55])
    defparam i32224_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32153_4_lut (.I0(n39_adj_4112), .I1(n37_adj_4108), .I2(n35_adj_4111), 
            .I3(n35596), .O(n36558));
    defparam i32153_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i32435_4_lut (.I0(n36072), .I1(n36716), .I2(n41_adj_4109), 
            .I3(n35590), .O(n36840));   // verilog/uart_rx.v(119[33:55])
    defparam i32435_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i31667_3_lut (.I0(n36629), .I1(baudrate[12]), .I2(n31_adj_4119), 
            .I3(GND_net), .O(n36070));   // verilog/uart_rx.v(119[33:55])
    defparam i31667_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32469_4_lut (.I0(n36070), .I1(n36840), .I2(n41_adj_4109), 
            .I3(n36558), .O(n36874));   // verilog/uart_rx.v(119[33:55])
    defparam i32469_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i32470_3_lut (.I0(n36874), .I1(baudrate[18]), .I2(n2940), 
            .I3(GND_net), .O(n36875));   // verilog/uart_rx.v(119[33:55])
    defparam i32470_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32464_3_lut (.I0(n36875), .I1(baudrate[19]), .I2(n2939), 
            .I3(GND_net), .O(n36869));   // verilog/uart_rx.v(119[33:55])
    defparam i32464_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1602_i26_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2362), .I3(GND_net), .O(n26));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i26_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i29186_1_lut_2_lut (.I0(baudrate[17]), .I1(n11025), .I2(GND_net), 
            .I3(GND_net), .O(n30769));
    defparam i29186_1_lut_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 div_37_i2158_1_lut (.I0(baudrate[17]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2867));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2158_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i846_3_lut (.I0(n1114), .I1(n4790[20]), .I2(n294[17]), 
            .I3(GND_net), .O(n1264));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i846_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2996_2_lut_3_lut (.I0(baudrate[3]), .I1(n7540), .I2(n6667), 
            .I3(GND_net), .O(n6674));   // verilog/uart_rx.v(119[33:55])
    defparam i2996_2_lut_3_lut.LUT_INIT = 16'h5454;
    SB_LUT4 div_37_i1899_3_lut (.I0(n2713), .I1(n5102[23]), .I2(n294[5]), 
            .I3(GND_net), .O(n2827));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1899_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1900_3_lut (.I0(n2714), .I1(n5102[22]), .I2(n294[5]), 
            .I3(GND_net), .O(n2828));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1900_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1922_i39_2_lut (.I0(n2831), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n39));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1901_3_lut (.I0(n2715), .I1(n5102[21]), .I2(n294[5]), 
            .I3(GND_net), .O(n2829));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1901_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1922_i43_2_lut (.I0(n2829), .I1(baudrate[17]), 
            .I2(GND_net), .I3(GND_net), .O(n43));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i945_3_lut (.I0(n1264), .I1(n4816[20]), .I2(n294[16]), 
            .I3(GND_net), .O(n1411));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i945_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1922_i37_2_lut (.I0(n2832), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n37));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1042_3_lut (.I0(n1411), .I1(n4842[20]), .I2(n294[15]), 
            .I3(GND_net), .O(n1555));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1042_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2169_1_lut (.I0(baudrate[6]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1459));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2169_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1902_3_lut (.I0(n2716), .I1(n5102[20]), .I2(n294[5]), 
            .I3(GND_net), .O(n2830));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1902_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1137_3_lut (.I0(n1555), .I1(n4868[20]), .I2(n294[14]), 
            .I3(GND_net), .O(n1696));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1137_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1230_3_lut (.I0(n1696), .I1(n4894[20]), .I2(n294[13]), 
            .I3(GND_net), .O(n1834));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1230_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1321_3_lut (.I0(n1834), .I1(n4920[20]), .I2(n294[12]), 
            .I3(GND_net), .O(n1969));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1321_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1410_3_lut (.I0(n1969), .I1(n4946[20]), .I2(n294[11]), 
            .I3(GND_net), .O(n2101));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1410_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3005_4_lut (.I0(n959), .I1(baudrate[4]), .I2(n6674), .I3(n7542), 
            .O(n46_adj_4131));   // verilog/uart_rx.v(119[33:55])
    defparam i3005_4_lut.LUT_INIT = 16'hbbb2;
    SB_LUT4 div_37_i742_4_lut (.I0(n30557), .I1(n294[18]), .I2(n46_adj_4131), 
            .I3(baudrate[5]), .O(n1111));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i742_4_lut.LUT_INIT = 16'h9559;
    SB_LUT4 div_37_i1497_3_lut (.I0(n2101), .I1(n4972[20]), .I2(n294[10]), 
            .I3(GND_net), .O(n2230));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1497_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1582_3_lut (.I0(n2230), .I1(n4998[20]), .I2(n294[9]), 
            .I3(GND_net), .O(n2356));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1582_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1581_3_lut (.I0(n2229), .I1(n4998[21]), .I2(n294[9]), 
            .I3(GND_net), .O(n2355));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1581_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1579_3_lut (.I0(n2227), .I1(n4998[23]), .I2(n294[9]), 
            .I3(GND_net), .O(n2353));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1579_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1922_i14_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2843), .I3(GND_net), .O(n14));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i14_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31259_2_lut_4_lut (.I0(n2838), .I1(baudrate[8]), .I2(n2842), 
            .I3(baudrate[4]), .O(n35662));
    defparam i31259_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1922_i16_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2838), .I3(GND_net), .O(n16));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i16_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i1580_3_lut (.I0(n2228), .I1(n4998[22]), .I2(n294[9]), 
            .I3(GND_net), .O(n2354));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1580_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1922_i18_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2840), .I3(GND_net), .O(n18));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i18_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_965_i34_3_lut_4_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n32359), .I3(n48_adj_3919), .O(n34));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i34_3_lut_4_lut.LUT_INIT = 16'hee8e;
    SB_LUT4 i31224_2_lut_4_lut (.I0(n2830), .I1(baudrate[16]), .I2(n2839), 
            .I3(baudrate[7]), .O(n35627));
    defparam i31224_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1922_i20_3_lut_3_lut (.I0(baudrate[7]), .I1(baudrate[16]), 
            .I2(n2830), .I3(GND_net), .O(n20));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i20_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_3_lut_adj_1010 (.I0(n33117), .I1(n33087), .I2(n32857), 
            .I3(GND_net), .O(n33175));
    defparam i1_3_lut_adj_1010.LUT_INIT = 16'hfefe;
    SB_LUT4 i32107_3_lut (.I0(n36619), .I1(baudrate[8]), .I2(n37_adj_4019), 
            .I3(GND_net), .O(n36512));   // verilog/uart_rx.v(119[33:55])
    defparam i32107_3_lut.LUT_INIT = 16'hcaca;
    
endmodule
