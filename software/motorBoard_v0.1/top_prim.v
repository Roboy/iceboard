// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Sun Aug 25 21:33:58 2019
//
// Verilog Description of module top
//

module top (CLK, LED, USBPU, PIN_1, PIN_2, PIN_3, PIN_4, PIN_5, 
            PIN_6, PIN_7, PIN_8, PIN_9, PIN_10, PIN_11, PIN_12, 
            PIN_13, PIN_14, PIN_15, PIN_16, PIN_17, PIN_18, PIN_19, 
            PIN_20, PIN_21, PIN_22, PIN_23, PIN_24) /* synthesis syn_preserve=0, syn_noprune=0, syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(2[8:11])
    input CLK;   // verilog/TinyFPGA_B.v(3[9:12])
    output LED;   // verilog/TinyFPGA_B.v(4[10:13])
    output USBPU;   // verilog/TinyFPGA_B.v(5[10:15])
    output PIN_1 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(6[9:14])
    input PIN_2 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(7[9:14])
    output PIN_3 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(8[9:14])
    input PIN_4 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(9[9:14])
    input PIN_5 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(10[9:14])
    input PIN_6 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(11[9:14])
    input PIN_7 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(12[9:14])
    input PIN_8 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(13[9:14])
    input PIN_9 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(14[9:14])
    input PIN_10 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(15[9:15])
    input PIN_11 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(16[9:15])
    input PIN_12 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(17[9:15])
    input PIN_13 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(18[9:15])
    input PIN_14 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(19[9:15])
    input PIN_15 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(20[9:15])
    input PIN_16 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(21[9:15])
    input PIN_17 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(22[9:15])
    input PIN_18 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(23[9:15])
    input PIN_19 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(24[9:15])
    input PIN_20 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(25[9:15])
    input PIN_21 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(26[9:15])
    input PIN_22 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(27[9:15])
    input PIN_23 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(28[9:15])
    input PIN_24 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(29[9:15])
    
    wire CLK_c /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(3[9:12])
    
    wire GND_net, VCC_net, LED_c, PIN_1_c, PIN_2_c, PIN_3_c;
    wire [25:0]blink_counter;   // verilog/TinyFPGA_B.v(39[14:27])
    
    wire n10, n9, n8, n7, n6, n1864, n1874;
    wire [7:0]\data_out[7] ;   // coms.v(13[12:20])
    wire [7:0]\data_out[6] ;   // coms.v(13[12:20])
    
    wire data_out_field_43, data_out_field_34, data_out_field_31, data_out_field_30, 
        data_out_field_29, data_out_field_28, data_out_field_27, data_out_field_26, 
        data_out_field_25, data_out_field_24, data_out_field_23, data_out_field_22, 
        data_out_field_21, data_out_field_20, data_out_field_19, data_out_field_18, 
        data_out_field_17, data_out_field_16, data_out_field_15, data_out_field_14, 
        data_out_field_13, data_out_field_12, data_out_field_11, data_out_field_10, 
        data_out_field_9, data_out_field_8, data_out_field_7, data_out_field_6, 
        data_out_field_5, data_out_field_4, data_out_field_3, data_out_field_2, 
        data_out_field_1, data_out_field_0, rx_data_ready_keep, n1882_adj_917, 
        n1884_adj_918, n1886_adj_919, n1888_adj_920, n1890_adj_921, 
        n1892_adj_922, n1894_adj_923;
    wire [7:0]\data_in[7] ;   // coms.v(143[13:20])
    wire [7:0]\data_in[6] ;   // coms.v(143[13:20])
    wire [7:0]\data_in[5] ;   // coms.v(143[13:20])
    wire [7:0]\data_in[4] ;   // coms.v(143[13:20])
    wire [7:0]\data_in[3] ;   // coms.v(143[13:20])
    wire [7:0]\data_in[2] ;   // coms.v(143[13:20])
    wire [7:0]\data_in[1] ;   // coms.v(143[13:20])
    wire [7:0]\data_in[0] ;   // coms.v(143[13:20])
    
    wire n607, n21, n13;
    wire [7:0]i_Tx_Byte;   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(18[16:25])
    
    wire n3848, n4331, n2030, n2029, n2028, n2027, n2026, n2025, 
        n2024, n2023, n2022, n2021, n2020, n2019, n2018, n2017, 
        n2016, n2015, n2014, n2013, n2012, n2011, n2010, n2009, 
        n2008, n2007, n2006, n2005, n2004, n2003, n2002, n2001, 
        n2000, n1999, n1998, n1997, n1996, n1995, n1994, n1993, 
        n1992, n1991, n1990, n1989, n1988, n1987, n1986, n1985, 
        n1984, n1983, n1982, n1981, n1980, n1979, n1978, n1977, 
        n1976, n1975, n1974, n1973, n1972, n1971, n1970, n1969, 
        n1968, n3847, n1965, n1964, n1963, n1962, n1961, n1960, 
        n1959, n1940, n1939, n1938, n1936, n1935, n1932, n1291, 
        n1906, n1905, n1904, n1903, n1902, n1300, n1901, n1900, 
        n1899, n1898, n1897, n1896, n1895, n1894, n1893, n1892, 
        n1891, n1890, n1889, n1888, n1887, n1886, n1843, n1867, 
        n1801, n1800, n1799, n1797, n1796, n1795, n1793, n1792, 
        n1789, n1788, n4322, n26, n3846, n114, n1868, n115, 
        n3845, n1869, n1870, n3, n117, n1862, n3844, n1871, 
        n116, n1872, n41, n3843, n3842, n4259, n4116, n1880_adj_924, 
        n2717, n1844, n1834, n1880, n3_adj_925, n1833, n135, n134, 
        n133, n132, n131, n130, n129, n128, n127, n126, n125, 
        n124, n123, n122, n121, n120, n1832;
    wire [7:0]i_Tx_Byte_adj_973;   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(18[16:25])
    
    wire n1831, n1556, n1553, n1522, n1777, n1879, n3841, n3840, 
        n11, n4258, n4108, n1809, n3839, n3838, n3837, n4256, 
        n1883, n1828, n1884, n1885, n12, n20, n11_adj_926, n4, 
        n4_adj_927, n1267, n4_adj_928, n1876, n19, n3836, n4334, 
        n18, n17, n1878, n16, n15, n14, n3835, n859, n4448, 
        n4583, n110, n111, n112, n4573, n113, n4_adj_929, tx_active, 
        tx_o, tx_done, rx_data_ready;
    wire [7:0]o_Rx_Byte;   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(19[17:26])
    
    wire n25, tx2_active, tx2_o, tx2_done;
    wire [2:0]r_SM_Main;   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(30[16:25])
    wire [8:0]r_Clock_Count;   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(31[16:29])
    wire [2:0]r_Bit_Index;   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(32[16:27])
    wire [7:0]r_Tx_Data;   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(33[16:25])
    wire [2:0]r_SM_Main_2__N_733;
    
    wire n312, n313, n314, n1873, n1776, n1774, n1771, n1768, 
        n315, n316, n1863, r_Rx_Data;
    wire [2:0]r_Bit_Index_adj_968;   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(33[17:28])
    wire [2:0]r_SM_Main_adj_969;   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(36[17:26])
    
    wire n24;
    wire [2:0]r_SM_Main_2__N_789;
    
    wire n1347, n1765, n4270;
    wire [2:0]r_SM_Main_adj_974;   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(30[16:25])
    wire [8:0]r_Clock_Count_adj_975;   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(31[16:29])
    wire [7:0]r_Tx_Data_adj_977;   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(33[16:25])
    
    wire n4423, n1855, n23, n314_adj_945, n119, n22, n10_adj_946, 
        n1049, n118, n8_adj_947, n7_adj_948, n1755, n1752, n317, 
        n318, n319, n320, n1671, n4078, n9_adj_949, n1859, n1866, 
        n1865, n1853, n1861, n1882, n1845, n1881, n1877, n1740, 
        n1749, n1739, n1737, n3859, n8_adj_950, n7_adj_951, n1875, 
        n8_adj_952, n7_adj_953, n3858, n3857, n8_adj_954, n7_adj_955, 
        n1815, n12_adj_956, n11_adj_957, n4300, n3856, n1149, n3855, 
        n3854, n10_adj_958, n10_adj_959, n1272, n9_adj_960, n4449, 
        n8_adj_961, n7_adj_962, n4_adj_963, n21_adj_964, n9_adj_965, 
        n3853, n3852, n3851, n3850, n4326, n4_adj_966, n3849;
    
    VCC i2 (.Y(VCC_net));
    SB_LUT4 i1749_3_lut (.I0(\data_in[0] [3]), .I1(\data_in[1] [3]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1970));   // coms.v(146[10] 154[6])
    defparam i1749_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1750_3_lut (.I0(\data_in[0] [4]), .I1(\data_in[1] [4]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1971));   // coms.v(146[10] 154[6])
    defparam i1750_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 blink_counter_308_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n17), .I3(n3843), .O(n126)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_308_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_308_add_4_11 (.CI(n3843), .I0(GND_net), .I1(n17), 
            .CO(n3844));
    SB_LUT4 i1781_3_lut (.I0(\data_in[4] [3]), .I1(\data_in[5] [3]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2002));   // coms.v(146[10] 154[6])
    defparam i1781_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 blink_counter_308_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n18), .I3(n3842), .O(n127)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_308_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1771_3_lut (.I0(\data_in[3] [1]), .I1(\data_in[4] [1]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1992));   // coms.v(146[10] 154[6])
    defparam i1771_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1782_3_lut (.I0(\data_in[4] [4]), .I1(\data_in[5] [4]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2003));   // coms.v(146[10] 154[6])
    defparam i1782_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1772_3_lut (.I0(\data_in[3] [2]), .I1(\data_in[4] [2]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1993));   // coms.v(146[10] 154[6])
    defparam i1772_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1761_3_lut (.I0(\data_in[1] [7]), .I1(\data_in[2] [7]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1982));   // coms.v(146[10] 154[6])
    defparam i1761_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4284_4_lut (.I0(n1291), .I1(data_out_field_20), .I2(data_out_field_34), 
            .I3(n4334), .O(n4583));   // coms.v(115[10] 136[6])
    defparam i4284_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i1654_3_lut (.I0(\data_out[6] [0]), .I1(n4583), .I2(n1553), 
            .I3(GND_net), .O(n1875));   // coms.v(115[10] 136[6])
    defparam i1654_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1655_2_lut (.I0(n1553), .I1(data_out_field_31), .I2(GND_net), 
            .I3(GND_net), .O(n1876));   // coms.v(115[10] 136[6])
    defparam i1655_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i1547_4_lut (.I0(n1776), .I1(r_Clock_Count[7]), .I2(n313), 
            .I3(r_SM_Main[2]), .O(n1768));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1547_4_lut.LUT_INIT = 16'h88a0;
    SB_LUT4 i1528_4_lut (.I0(n1739), .I1(r_Clock_Count_adj_975[3]), .I2(n317), 
            .I3(r_SM_Main_adj_974[2]), .O(n1749));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1528_4_lut.LUT_INIT = 16'h88a0;
    SB_LUT4 i1805_3_lut (.I0(\data_in[7] [3]), .I1(n1888_adj_920), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2026));   // coms.v(146[10] 154[6])
    defparam i1805_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1715_3_lut (.I0(r_Tx_Data[2]), .I1(i_Tx_Byte[2]), .I2(n1149), 
            .I3(GND_net), .O(n1936));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1715_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1717_3_lut (.I0(r_Tx_Data[4]), .I1(i_Tx_Byte[4]), .I2(n1149), 
            .I3(GND_net), .O(n1938));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1717_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1806_3_lut (.I0(\data_in[7] [4]), .I1(n1886_adj_919), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2027));   // coms.v(146[10] 154[6])
    defparam i1806_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY blink_counter_308_add_4_10 (.CI(n3842), .I0(GND_net), .I1(n18), 
            .CO(n3843));
    SB_LUT4 i1718_3_lut (.I0(r_Tx_Data[5]), .I1(i_Tx_Byte[5]), .I2(n1149), 
            .I3(GND_net), .O(n1939));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1718_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1773_3_lut (.I0(\data_in[3] [3]), .I1(\data_in[4] [3]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1994));   // coms.v(146[10] 154[6])
    defparam i1773_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 blink_counter_308_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(n19), 
            .I3(n3841), .O(n128)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_308_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_308_add_4_9 (.CI(n3841), .I0(GND_net), .I1(n19), 
            .CO(n3842));
    SB_LUT4 blink_counter_308_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(n20), 
            .I3(n3840), .O(n129)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_308_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_308_add_4_8 (.CI(n3840), .I0(GND_net), .I1(n20), 
            .CO(n3841));
    SB_LUT4 blink_counter_308_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(n21), 
            .I3(n3839), .O(n130)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_308_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_308_add_4_7 (.CI(n3839), .I0(GND_net), .I1(n21), 
            .CO(n3840));
    SB_LUT4 i1785_3_lut (.I0(\data_in[4] [7]), .I1(\data_in[5] [7]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2006));   // coms.v(146[10] 154[6])
    defparam i1785_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1719_3_lut (.I0(r_Tx_Data[6]), .I1(i_Tx_Byte[6]), .I2(n1149), 
            .I3(GND_net), .O(n1940));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1719_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1807_3_lut (.I0(\data_in[7] [5]), .I1(n1884_adj_918), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2028));   // coms.v(146[10] 154[6])
    defparam i1807_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1783_3_lut (.I0(\data_in[4] [5]), .I1(\data_in[5] [5]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2004));   // coms.v(146[10] 154[6])
    defparam i1783_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1774_3_lut (.I0(\data_in[3] [4]), .I1(\data_in[4] [4]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1995));   // coms.v(146[10] 154[6])
    defparam i1774_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1762_3_lut (.I0(\data_in[2] [0]), .I1(\data_in[3] [0]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1983));   // coms.v(146[10] 154[6])
    defparam i1762_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1775_3_lut (.I0(\data_in[3] [5]), .I1(\data_in[4] [5]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1996));   // coms.v(146[10] 154[6])
    defparam i1775_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 blink_counter_308_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(n22), 
            .I3(n3838), .O(n131)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_308_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1610_3_lut (.I0(tx_o), .I1(n3), .I2(r_SM_Main[2]), .I3(GND_net), 
            .O(n1831));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1610_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY blink_counter_308_add_4_6 (.CI(n3838), .I0(GND_net), .I1(n22), 
            .CO(n3839));
    SB_IO PIN_1_pad (.PACKAGE_PIN(PIN_1), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_1_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_1_pad.PIN_TYPE = 6'b011001;
    defparam PIN_1_pad.PULLUP = 1'b0;
    defparam PIN_1_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_1_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i1611_4_lut (.I0(tx_active), .I1(r_SM_Main[1]), .I2(r_SM_Main[2]), 
            .I3(n4270), .O(n1832));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1611_4_lut.LUT_INIT = 16'ha3aa;
    SB_LUT4 i1612_3_lut (.I0(r_Tx_Data[0]), .I1(i_Tx_Byte[0]), .I2(n1149), 
            .I3(GND_net), .O(n1833));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1612_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1763_3_lut (.I0(\data_in[2] [1]), .I1(\data_in[3] [1]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1984));   // coms.v(146[10] 154[6])
    defparam i1763_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 blink_counter_308_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(n23), 
            .I3(n3837), .O(n132)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_308_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1613_4_lut (.I0(r_SM_Main[2]), .I1(n41), .I2(r_SM_Main_2__N_733[1]), 
            .I3(r_SM_Main[0]), .O(n1834));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1613_4_lut.LUT_INIT = 16'h0544;
    SB_LUT4 i1756_3_lut (.I0(\data_in[1] [2]), .I1(\data_in[2] [2]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1977));   // coms.v(146[10] 154[6])
    defparam i1756_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1607_3_lut (.I0(n1788), .I1(r_Bit_Index_adj_968[0]), .I2(n4423), 
            .I3(GND_net), .O(n1828));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    defparam i1607_3_lut.LUT_INIT = 16'h8282;
    SB_LUT4 i1764_3_lut (.I0(\data_in[2] [2]), .I1(\data_in[3] [2]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1985));   // coms.v(146[10] 154[6])
    defparam i1764_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1776_3_lut (.I0(\data_in[3] [6]), .I1(\data_in[4] [6]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1997));   // coms.v(146[10] 154[6])
    defparam i1776_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1784_3_lut (.I0(\data_in[4] [6]), .I1(\data_in[5] [6]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2005));   // coms.v(146[10] 154[6])
    defparam i1784_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1622_3_lut (.I0(tx2_o), .I1(n3_adj_925), .I2(r_SM_Main_adj_974[2]), 
            .I3(GND_net), .O(n1843));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1622_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1808_3_lut (.I0(\data_in[7] [6]), .I1(n1882_adj_917), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2029));   // coms.v(146[10] 154[6])
    defparam i1808_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1809_3_lut (.I0(\data_in[7] [7]), .I1(n1880_adj_924), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2030));   // coms.v(146[10] 154[6])
    defparam i1809_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1685_2_lut (.I0(n1553), .I1(data_out_field_1), .I2(GND_net), 
            .I3(GND_net), .O(n1906));   // coms.v(115[10] 136[6])
    defparam i1685_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1777_3_lut (.I0(\data_in[3] [7]), .I1(\data_in[4] [7]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1998));   // coms.v(146[10] 154[6])
    defparam i1777_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1765_3_lut (.I0(\data_in[2] [3]), .I1(\data_in[3] [3]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1986));   // coms.v(146[10] 154[6])
    defparam i1765_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1684_2_lut (.I0(n1553), .I1(data_out_field_2), .I2(GND_net), 
            .I3(GND_net), .O(n1905));   // coms.v(115[10] 136[6])
    defparam i1684_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i1683_2_lut (.I0(n1553), .I1(data_out_field_3), .I2(GND_net), 
            .I3(GND_net), .O(n1904));   // coms.v(115[10] 136[6])
    defparam i1683_2_lut.LUT_INIT = 16'heeee;
    SB_CARRY blink_counter_308_add_4_5 (.CI(n3837), .I0(GND_net), .I1(n23), 
            .CO(n3838));
    SB_LUT4 blink_counter_308_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(n24), 
            .I3(n3836), .O(n133)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_308_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1623_4_lut (.I0(tx2_active), .I1(r_SM_Main_adj_974[1]), .I2(r_SM_Main_adj_974[2]), 
            .I3(n4_adj_928), .O(n1844));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1623_4_lut.LUT_INIT = 16'ha3aa;
    SB_IO USBPU_pad (.PACKAGE_PIN(USBPU), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam USBPU_pad.PIN_TYPE = 6'b011001;
    defparam USBPU_pad.PULLUP = 1'b0;
    defparam USBPU_pad.NEG_TRIGGER = 1'b0;
    defparam USBPU_pad.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY blink_counter_308_add_4_4 (.CI(n3836), .I0(GND_net), .I1(n24), 
            .CO(n3837));
    SB_LUT4 blink_counter_308_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(n25), 
            .I3(n3835), .O(n134)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_308_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1778_3_lut (.I0(\data_in[4] [0]), .I1(\data_in[5] [0]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1999));   // coms.v(146[10] 154[6])
    defparam i1778_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1766_3_lut (.I0(\data_in[2] [4]), .I1(\data_in[3] [4]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1987));   // coms.v(146[10] 154[6])
    defparam i1766_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1544_4_lut (.I0(n1776), .I1(r_Clock_Count[8]), .I2(n312), 
            .I3(r_SM_Main[2]), .O(n1765));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1544_4_lut.LUT_INIT = 16'h88a0;
    SB_LUT4 i1739_3_lut (.I0(r_Tx_Data_adj_977[2]), .I1(i_Tx_Byte_adj_973[2]), 
            .I2(n1049), .I3(GND_net), .O(n1960));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1739_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut (.I0(r_SM_Main_adj_974[1]), .I1(r_SM_Main_adj_974[0]), 
            .I2(GND_net), .I3(GND_net), .O(n11));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_CARRY blink_counter_308_add_4_3 (.CI(n3835), .I0(GND_net), .I1(n25), 
            .CO(n3836));
    SB_LUT4 blink_counter_308_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(n26), 
            .I3(VCC_net), .O(n135)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_308_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_308_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(n26), 
            .CO(n3835));
    SB_IO LED_pad (.PACKAGE_PIN(LED), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(LED_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam LED_pad.PIN_TYPE = 6'b011001;
    defparam LED_pad.PULLUP = 1'b0;
    defparam LED_pad.NEG_TRIGGER = 1'b0;
    defparam LED_pad.IO_STANDARD = "SB_LVCMOS";
    SB_GB_IO CLK_pad (.PACKAGE_PIN(CLK), .OUTPUT_ENABLE(VCC_net), .GLOBAL_BUFFER_OUTPUT(CLK_c));   // verilog/TinyFPGA_B.v(3[9:12])
    defparam CLK_pad.PIN_TYPE = 6'b000001;
    defparam CLK_pad.PULLUP = 1'b0;
    defparam CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CLK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_DFF blink_counter_308__i0 (.Q(n26), .C(CLK_c), .D(n135));   // verilog/TinyFPGA_B.v(46[24:41])
    SB_LUT4 i1682_2_lut (.I0(n1553), .I1(data_out_field_4), .I2(GND_net), 
            .I3(GND_net), .O(n1903));   // coms.v(115[10] 136[6])
    defparam i1682_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1741_3_lut (.I0(r_Tx_Data_adj_977[4]), .I1(i_Tx_Byte_adj_973[4]), 
            .I2(n1049), .I3(GND_net), .O(n1962));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1741_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut (.I0(tx2_done), .I1(n4256), .I2(n11), .I3(r_SM_Main_adj_974[2]), 
            .O(n4108));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1_4_lut.LUT_INIT = 16'hafec;
    SB_LUT4 i1681_2_lut (.I0(n1553), .I1(data_out_field_5), .I2(GND_net), 
            .I3(GND_net), .O(n1902));   // coms.v(115[10] 136[6])
    defparam i1681_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i1680_2_lut (.I0(n1553), .I1(data_out_field_6), .I2(GND_net), 
            .I3(GND_net), .O(n1901));   // coms.v(115[10] 136[6])
    defparam i1680_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1679_2_lut (.I0(n1553), .I1(data_out_field_7), .I2(GND_net), 
            .I3(GND_net), .O(n1900));   // coms.v(115[10] 136[6])
    defparam i1679_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1678_2_lut (.I0(n1553), .I1(data_out_field_8), .I2(GND_net), 
            .I3(GND_net), .O(n1899));   // coms.v(115[10] 136[6])
    defparam i1678_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i4118_4_lut (.I0(blink_counter[22]), .I1(blink_counter[23]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n4449));
    defparam i4118_4_lut.LUT_INIT = 16'hfec4;
    SB_LUT4 i1677_2_lut (.I0(n1553), .I1(data_out_field_9), .I2(GND_net), 
            .I3(GND_net), .O(n1898));   // coms.v(115[10] 136[6])
    defparam i1677_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i4117_4_lut (.I0(blink_counter[23]), .I1(blink_counter[22]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n4448));
    defparam i4117_4_lut.LUT_INIT = 16'hcf08;
    SB_LUT4 i1676_2_lut (.I0(n1553), .I1(data_out_field_10), .I2(GND_net), 
            .I3(GND_net), .O(n1897));   // coms.v(115[10] 136[6])
    defparam i1676_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i4119_3_lut (.I0(n4448), .I1(n4449), .I2(blink_counter[25]), 
            .I3(GND_net), .O(LED_c));
    defparam i4119_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i1786_3_lut (.I0(\data_in[5] [0]), .I1(\data_in[6] [0]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2007));   // coms.v(146[10] 154[6])
    defparam i1786_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1675_2_lut (.I0(n1553), .I1(data_out_field_11), .I2(GND_net), 
            .I3(GND_net), .O(n1896));   // coms.v(115[10] 136[6])
    defparam i1675_2_lut.LUT_INIT = 16'heeee;
    SB_IO PIN_2_pad (.PACKAGE_PIN(PIN_2), .OUTPUT_ENABLE(VCC_net), .D_IN_0(PIN_2_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_2_pad.PIN_TYPE = 6'b000001;
    defparam PIN_2_pad.PULLUP = 1'b0;
    defparam PIN_2_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_2_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i1674_2_lut (.I0(n1553), .I1(data_out_field_12), .I2(GND_net), 
            .I3(GND_net), .O(n1895));   // coms.v(115[10] 136[6])
    defparam i1674_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1673_2_lut (.I0(n1553), .I1(data_out_field_13), .I2(GND_net), 
            .I3(GND_net), .O(n1894));   // coms.v(115[10] 136[6])
    defparam i1673_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1672_2_lut (.I0(n1553), .I1(data_out_field_14), .I2(GND_net), 
            .I3(GND_net), .O(n1893));   // coms.v(115[10] 136[6])
    defparam i1672_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i1671_2_lut (.I0(n1553), .I1(data_out_field_15), .I2(GND_net), 
            .I3(GND_net), .O(n1892));   // coms.v(115[10] 136[6])
    defparam i1671_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1670_2_lut (.I0(n1553), .I1(data_out_field_16), .I2(GND_net), 
            .I3(GND_net), .O(n1891));   // coms.v(115[10] 136[6])
    defparam i1670_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1669_2_lut (.I0(n1553), .I1(data_out_field_17), .I2(GND_net), 
            .I3(GND_net), .O(n1890));   // coms.v(115[10] 136[6])
    defparam i1669_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i1668_2_lut (.I0(n1553), .I1(data_out_field_18), .I2(GND_net), 
            .I3(GND_net), .O(n1889));   // coms.v(115[10] 136[6])
    defparam i1668_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1667_2_lut (.I0(n1553), .I1(data_out_field_19), .I2(GND_net), 
            .I3(GND_net), .O(n1888));   // coms.v(115[10] 136[6])
    defparam i1667_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1666_2_lut (.I0(n1553), .I1(data_out_field_20), .I2(GND_net), 
            .I3(GND_net), .O(n1887));   // coms.v(115[10] 136[6])
    defparam i1666_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i1571_4_lut (.I0(n1788), .I1(r_Bit_Index_adj_968[1]), .I2(r_Bit_Index_adj_968[0]), 
            .I3(n4423), .O(n1792));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    defparam i1571_4_lut.LUT_INIT = 16'h8828;
    SB_LUT4 i1665_2_lut (.I0(n1553), .I1(data_out_field_21), .I2(GND_net), 
            .I3(GND_net), .O(n1886));   // coms.v(115[10] 136[6])
    defparam i1665_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1664_2_lut (.I0(n1553), .I1(data_out_field_22), .I2(GND_net), 
            .I3(GND_net), .O(n1885));   // coms.v(115[10] 136[6])
    defparam i1664_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i1663_2_lut (.I0(n1553), .I1(data_out_field_23), .I2(GND_net), 
            .I3(GND_net), .O(n1884));   // coms.v(115[10] 136[6])
    defparam i1663_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1662_2_lut (.I0(n1553), .I1(data_out_field_24), .I2(GND_net), 
            .I3(GND_net), .O(n1883));   // coms.v(115[10] 136[6])
    defparam i1662_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i1757_3_lut (.I0(\data_in[1] [3]), .I1(\data_in[2] [3]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1978));   // coms.v(146[10] 154[6])
    defparam i1757_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1572_4_lut (.I0(r_Rx_Data), .I1(o_Rx_Byte[7]), .I2(n2717), 
            .I3(n1272), .O(n1793));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    defparam i1572_4_lut.LUT_INIT = 16'hccac;
    SB_LUT4 i1568_4_lut (.I0(n1788), .I1(r_Bit_Index_adj_968[2]), .I2(n607), 
            .I3(n4423), .O(n1789));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    defparam i1568_4_lut.LUT_INIT = 16'h8828;
    SB_IO PIN_3_pad (.PACKAGE_PIN(PIN_3), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_3_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_3_pad.PIN_TYPE = 6'b011001;
    defparam PIN_3_pad.PULLUP = 1'b0;
    defparam PIN_3_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_3_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i1661_2_lut (.I0(n1553), .I1(data_out_field_25), .I2(GND_net), 
            .I3(GND_net), .O(n1882));   // coms.v(115[10] 136[6])
    defparam i1661_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i1574_4_lut (.I0(r_Rx_Data), .I1(o_Rx_Byte[6]), .I2(n2717), 
            .I3(n1267), .O(n1795));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    defparam i1574_4_lut.LUT_INIT = 16'hccac;
    SB_LUT4 i1575_4_lut (.I0(r_Rx_Data), .I1(o_Rx_Byte[5]), .I2(n4_adj_927), 
            .I3(n1272), .O(n1796));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    defparam i1575_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1767_3_lut (.I0(\data_in[2] [5]), .I1(\data_in[3] [5]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1988));   // coms.v(146[10] 154[6])
    defparam i1767_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1578_4_lut (.I0(r_Rx_Data), .I1(o_Rx_Byte[3]), .I2(n4), .I3(n1272), 
            .O(n1799));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    defparam i1578_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1779_3_lut (.I0(\data_in[4] [1]), .I1(\data_in[5] [1]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2000));   // coms.v(146[10] 154[6])
    defparam i1779_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1576_4_lut (.I0(r_Rx_Data), .I1(o_Rx_Byte[4]), .I2(n4_adj_927), 
            .I3(n1267), .O(n1797));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    defparam i1576_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1579_4_lut (.I0(r_Rx_Data), .I1(o_Rx_Byte[2]), .I2(n4), .I3(n1267), 
            .O(n1800));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    defparam i1579_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1744_3_lut (.I0(r_Tx_Data_adj_977[7]), .I1(i_Tx_Byte_adj_973[7]), 
            .I2(n1049), .I3(GND_net), .O(n1965));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1744_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1768_3_lut (.I0(\data_in[2] [6]), .I1(\data_in[3] [6]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1989));   // coms.v(146[10] 154[6])
    defparam i1768_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1519_4_lut (.I0(n1739), .I1(r_Clock_Count_adj_975[6]), .I2(n314_adj_945), 
            .I3(r_SM_Main_adj_974[2]), .O(n1740));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1519_4_lut.LUT_INIT = 16'h88a0;
    SB_LUT4 i1714_3_lut (.I0(r_Tx_Data[1]), .I1(i_Tx_Byte[1]), .I2(n1149), 
            .I3(GND_net), .O(n1935));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1714_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1787_3_lut (.I0(\data_in[5] [1]), .I1(\data_in[6] [1]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2008));   // coms.v(146[10] 154[6])
    defparam i1787_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1789_3_lut (.I0(\data_in[5] [3]), .I1(\data_in[6] [3]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2010));   // coms.v(146[10] 154[6])
    defparam i1789_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1788_3_lut (.I0(\data_in[5] [2]), .I1(\data_in[6] [2]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2009));   // coms.v(146[10] 154[6])
    defparam i1788_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1791_3_lut (.I0(\data_in[5] [5]), .I1(\data_in[6] [5]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2012));   // coms.v(146[10] 154[6])
    defparam i1791_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1790_3_lut (.I0(\data_in[5] [4]), .I1(\data_in[6] [4]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2011));   // coms.v(146[10] 154[6])
    defparam i1790_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1793_3_lut (.I0(\data_in[5] [7]), .I1(\data_in[6] [7]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2014));   // coms.v(146[10] 154[6])
    defparam i1793_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 blink_counter_308_add_4_27_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[25]), .I3(n3859), .O(n110)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_308_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_308_add_4_26_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[24]), .I3(n3858), .O(n111)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_308_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1792_3_lut (.I0(\data_in[5] [6]), .I1(\data_in[6] [6]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2013));   // coms.v(146[10] 154[6])
    defparam i1792_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1795_3_lut (.I0(\data_in[6] [1]), .I1(\data_in[7] [1]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2016));   // coms.v(146[10] 154[6])
    defparam i1795_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY blink_counter_308_add_4_26 (.CI(n3858), .I0(GND_net), .I1(blink_counter[24]), 
            .CO(n3859));
    SB_LUT4 i1794_3_lut (.I0(\data_in[6] [0]), .I1(\data_in[7] [0]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2015));   // coms.v(146[10] 154[6])
    defparam i1794_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF blink_counter_308__i1 (.Q(n25), .C(CLK_c), .D(n134));   // verilog/TinyFPGA_B.v(46[24:41])
    SB_LUT4 i1797_3_lut (.I0(\data_in[6] [3]), .I1(\data_in[7] [3]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2018));   // coms.v(146[10] 154[6])
    defparam i1797_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1796_3_lut (.I0(\data_in[6] [2]), .I1(\data_in[7] [2]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2017));   // coms.v(146[10] 154[6])
    defparam i1796_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF blink_counter_308__i2 (.Q(n24), .C(CLK_c), .D(n133));   // verilog/TinyFPGA_B.v(46[24:41])
    SB_LUT4 i1799_3_lut (.I0(\data_in[6] [5]), .I1(\data_in[7] [5]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2020));   // coms.v(146[10] 154[6])
    defparam i1799_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1798_3_lut (.I0(\data_in[6] [4]), .I1(\data_in[7] [4]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2019));   // coms.v(146[10] 154[6])
    defparam i1798_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1801_3_lut (.I0(\data_in[6] [7]), .I1(\data_in[7] [7]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2022));   // coms.v(146[10] 154[6])
    defparam i1801_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1800_3_lut (.I0(\data_in[6] [6]), .I1(\data_in[7] [6]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2021));   // coms.v(146[10] 154[6])
    defparam i1800_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1802_3_lut (.I0(\data_in[7] [0]), .I1(n1894_adj_923), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2023));   // coms.v(146[10] 154[6])
    defparam i1802_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1804_3_lut (.I0(\data_in[7] [2]), .I1(n1890_adj_921), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2025));   // coms.v(146[10] 154[6])
    defparam i1804_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1751_3_lut (.I0(\data_in[0] [5]), .I1(\data_in[1] [5]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1972));   // coms.v(146[10] 154[6])
    defparam i1751_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1803_3_lut (.I0(\data_in[7] [1]), .I1(n1892_adj_922), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2024));   // coms.v(146[10] 154[6])
    defparam i1803_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1516_2_lut (.I0(n1553), .I1(data_out_field_0), .I2(GND_net), 
            .I3(GND_net), .O(n1737));   // coms.v(115[10] 136[6])
    defparam i1516_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i1632_3_lut (.I0(\data_in[0] [0]), .I1(\data_in[1] [0]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1853));   // coms.v(146[10] 154[6])
    defparam i1632_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1754_3_lut (.I0(\data_in[1] [0]), .I1(\data_in[2] [0]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1975));   // coms.v(146[10] 154[6])
    defparam i1754_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1634_4_lut (.I0(r_Rx_Data), .I1(o_Rx_Byte[0]), .I2(n4_adj_929), 
            .I3(n1267), .O(n1855));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    defparam i1634_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1752_3_lut (.I0(\data_in[0] [6]), .I1(\data_in[1] [6]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1973));   // coms.v(146[10] 154[6])
    defparam i1752_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1753_3_lut (.I0(\data_in[0] [7]), .I1(\data_in[1] [7]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1974));   // coms.v(146[10] 154[6])
    defparam i1753_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1755_3_lut (.I0(\data_in[1] [1]), .I1(\data_in[2] [1]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1976));   // coms.v(146[10] 154[6])
    defparam i1755_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1758_3_lut (.I0(\data_in[1] [4]), .I1(\data_in[2] [4]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1979));   // coms.v(146[10] 154[6])
    defparam i1758_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1748_3_lut (.I0(\data_in[0] [2]), .I1(\data_in[1] [2]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1969));   // coms.v(146[10] 154[6])
    defparam i1748_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1553_4_lut (.I0(n1776), .I1(r_Clock_Count[5]), .I2(n315), 
            .I3(r_SM_Main[2]), .O(n1774));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1553_4_lut.LUT_INIT = 16'h88a0;
    SB_LUT4 i1769_3_lut (.I0(\data_in[2] [7]), .I1(\data_in[3] [7]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1990));   // coms.v(146[10] 154[6])
    defparam i1769_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_3_lut (.I0(r_SM_Main[0]), .I1(r_SM_Main[1]), .I2(r_SM_Main_2__N_733[1]), 
            .I3(GND_net), .O(n4258));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i2_3_lut.LUT_INIT = 16'h8080;
    SB_DFF blink_counter_308__i3 (.Q(n23), .C(CLK_c), .D(n132));   // verilog/TinyFPGA_B.v(46[24:41])
    SB_DFF blink_counter_308__i4 (.Q(n22), .C(CLK_c), .D(n131));   // verilog/TinyFPGA_B.v(46[24:41])
    SB_DFF blink_counter_308__i5 (.Q(n21), .C(CLK_c), .D(n130));   // verilog/TinyFPGA_B.v(46[24:41])
    SB_DFF blink_counter_308__i6 (.Q(n20), .C(CLK_c), .D(n129));   // verilog/TinyFPGA_B.v(46[24:41])
    SB_DFF blink_counter_308__i7 (.Q(n19), .C(CLK_c), .D(n128));   // verilog/TinyFPGA_B.v(46[24:41])
    SB_DFF blink_counter_308__i8 (.Q(n18), .C(CLK_c), .D(n127));   // verilog/TinyFPGA_B.v(46[24:41])
    SB_DFF blink_counter_308__i9 (.Q(n17), .C(CLK_c), .D(n126));   // verilog/TinyFPGA_B.v(46[24:41])
    SB_DFF blink_counter_308__i10 (.Q(n16), .C(CLK_c), .D(n125));   // verilog/TinyFPGA_B.v(46[24:41])
    SB_DFF blink_counter_308__i11 (.Q(n15), .C(CLK_c), .D(n124));   // verilog/TinyFPGA_B.v(46[24:41])
    SB_DFF blink_counter_308__i12 (.Q(n14), .C(CLK_c), .D(n123));   // verilog/TinyFPGA_B.v(46[24:41])
    SB_DFF blink_counter_308__i13 (.Q(n13), .C(CLK_c), .D(n122));   // verilog/TinyFPGA_B.v(46[24:41])
    SB_DFF blink_counter_308__i14 (.Q(n12), .C(CLK_c), .D(n121));   // verilog/TinyFPGA_B.v(46[24:41])
    SB_DFF blink_counter_308__i15 (.Q(n11_adj_926), .C(CLK_c), .D(n120));   // verilog/TinyFPGA_B.v(46[24:41])
    SB_DFF blink_counter_308__i16 (.Q(n10), .C(CLK_c), .D(n119));   // verilog/TinyFPGA_B.v(46[24:41])
    SB_DFF blink_counter_308__i17 (.Q(n9), .C(CLK_c), .D(n118));   // verilog/TinyFPGA_B.v(46[24:41])
    SB_DFF blink_counter_308__i18 (.Q(n8), .C(CLK_c), .D(n117));   // verilog/TinyFPGA_B.v(46[24:41])
    SB_DFF blink_counter_308__i19 (.Q(n7), .C(CLK_c), .D(n116));   // verilog/TinyFPGA_B.v(46[24:41])
    SB_DFF blink_counter_308__i20 (.Q(n6), .C(CLK_c), .D(n115));   // verilog/TinyFPGA_B.v(46[24:41])
    SB_DFF blink_counter_308__i21 (.Q(blink_counter[21]), .C(CLK_c), .D(n114));   // verilog/TinyFPGA_B.v(46[24:41])
    SB_DFF blink_counter_308__i22 (.Q(blink_counter[22]), .C(CLK_c), .D(n113));   // verilog/TinyFPGA_B.v(46[24:41])
    SB_DFF blink_counter_308__i23 (.Q(blink_counter[23]), .C(CLK_c), .D(n112));   // verilog/TinyFPGA_B.v(46[24:41])
    SB_DFF blink_counter_308__i24 (.Q(blink_counter[24]), .C(CLK_c), .D(n111));   // verilog/TinyFPGA_B.v(46[24:41])
    SB_DFF blink_counter_308__i25 (.Q(blink_counter[25]), .C(CLK_c), .D(n110));   // verilog/TinyFPGA_B.v(46[24:41])
    SB_LUT4 i1534_4_lut (.I0(n1739), .I1(r_Clock_Count_adj_975[1]), .I2(n319), 
            .I3(r_SM_Main_adj_974[2]), .O(n1755));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1534_4_lut.LUT_INIT = 16'h88a0;
    SB_LUT4 i1_4_lut_adj_382 (.I0(tx_done), .I1(n4258), .I2(n859), .I3(r_SM_Main[2]), 
            .O(n4116));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1_4_lut_adj_382.LUT_INIT = 16'hafec;
    SB_LUT4 i1580_4_lut (.I0(r_Rx_Data), .I1(o_Rx_Byte[1]), .I2(n4_adj_929), 
            .I3(n1272), .O(n1801));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    defparam i1580_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1638_4_lut (.I0(\data_out[7] [7]), .I1(n9_adj_965), .I2(n1553), 
            .I3(n10_adj_958), .O(n1859));   // coms.v(115[10] 136[6])
    defparam i1638_4_lut.LUT_INIT = 16'hca3a;
    SB_LUT4 i1550_4_lut (.I0(n1776), .I1(r_Clock_Count[6]), .I2(n314), 
            .I3(r_SM_Main[2]), .O(n1771));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1550_4_lut.LUT_INIT = 16'h88a0;
    SB_LUT4 i1531_4_lut (.I0(n1739), .I1(r_Clock_Count_adj_975[2]), .I2(n318), 
            .I3(r_SM_Main_adj_974[2]), .O(n1752));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1531_4_lut.LUT_INIT = 16'h88a0;
    SB_LUT4 i1640_4_lut (.I0(\data_out[7] [6]), .I1(n9_adj_960), .I2(n1553), 
            .I3(n10_adj_959), .O(n1861));   // coms.v(115[10] 136[6])
    defparam i1640_4_lut.LUT_INIT = 16'hca3a;
    SB_LUT4 i1641_3_lut (.I0(\data_out[7] [5]), .I1(n1347), .I2(n1553), 
            .I3(GND_net), .O(n1862));   // coms.v(115[10] 136[6])
    defparam i1641_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1642_4_lut (.I0(\data_out[7] [4]), .I1(n9_adj_949), .I2(n1553), 
            .I3(n10_adj_946), .O(n1863));   // coms.v(115[10] 136[6])
    defparam i1642_4_lut.LUT_INIT = 16'hca3a;
    SB_LUT4 i1643_3_lut (.I0(\data_out[7] [3]), .I1(n4326), .I2(n1553), 
            .I3(GND_net), .O(n1864));   // coms.v(115[10] 136[6])
    defparam i1643_3_lut.LUT_INIT = 16'h3a3a;
    SB_LUT4 i1624_3_lut (.I0(r_Tx_Data_adj_977[0]), .I1(i_Tx_Byte_adj_973[0]), 
            .I2(n1049), .I3(GND_net), .O(n1845));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1624_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1556_4_lut (.I0(n1776), .I1(r_Clock_Count[4]), .I2(n316), 
            .I3(r_SM_Main[2]), .O(n1777));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1556_4_lut.LUT_INIT = 16'h88a0;
    SB_LUT4 i1656_2_lut (.I0(n1553), .I1(data_out_field_30), .I2(GND_net), 
            .I3(GND_net), .O(n1877));   // coms.v(115[10] 136[6])
    defparam i1656_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i1759_3_lut (.I0(\data_in[1] [5]), .I1(\data_in[2] [5]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1980));   // coms.v(146[10] 154[6])
    defparam i1759_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1644_4_lut (.I0(\data_out[7] [2]), .I1(n7_adj_948), .I2(n1553), 
            .I3(n8_adj_947), .O(n1865));   // coms.v(115[10] 136[6])
    defparam i1644_4_lut.LUT_INIT = 16'h3aca;
    SB_LUT4 blink_counter_308_add_4_25_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[23]), .I3(n3857), .O(n112)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_308_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_308_add_4_25 (.CI(n3857), .I0(GND_net), .I1(blink_counter[23]), 
            .CO(n3858));
    SB_LUT4 blink_counter_308_add_4_24_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[22]), .I3(n3856), .O(n113)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_308_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_308_add_4_24 (.CI(n3856), .I0(GND_net), .I1(blink_counter[22]), 
            .CO(n3857));
    SB_LUT4 i1657_2_lut (.I0(n1553), .I1(data_out_field_29), .I2(GND_net), 
            .I3(GND_net), .O(n1878));   // coms.v(115[10] 136[6])
    defparam i1657_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i1645_4_lut (.I0(\data_out[7] [1]), .I1(n7_adj_955), .I2(n1553), 
            .I3(n8_adj_954), .O(n1866));   // coms.v(115[10] 136[6])
    defparam i1645_4_lut.LUT_INIT = 16'h3aca;
    SB_LUT4 blink_counter_308_add_4_23_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[21]), .I3(n3855), .O(n114)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_308_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1740_3_lut (.I0(r_Tx_Data_adj_977[3]), .I1(i_Tx_Byte_adj_973[3]), 
            .I2(n1049), .I3(GND_net), .O(n1961));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1740_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1646_4_lut (.I0(\data_out[7] [0]), .I1(n7_adj_953), .I2(n1553), 
            .I3(n8_adj_952), .O(n1867));   // coms.v(115[10] 136[6])
    defparam i1646_4_lut.LUT_INIT = 16'h3aca;
    SB_CARRY blink_counter_308_add_4_23 (.CI(n3855), .I0(GND_net), .I1(blink_counter[21]), 
            .CO(n3856));
    SB_LUT4 i1711_3_lut_3_lut_4_lut (.I0(n1556), .I1(r_SM_Main[1]), .I2(n21_adj_964), 
            .I3(r_Bit_Index[0]), .O(n1932));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1711_3_lut_3_lut_4_lut.LUT_INIT = 16'h5508;
    SB_LUT4 blink_counter_308_add_4_22_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n6), .I3(n3854), .O(n115)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_308_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_308_add_4_22 (.CI(n3854), .I0(GND_net), .I1(n6), 
            .CO(n3855));
    SB_LUT4 blink_counter_308_add_4_21_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n7), .I3(n3853), .O(n116)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_308_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_308_add_4_21 (.CI(n3853), .I0(GND_net), .I1(n7), 
            .CO(n3854));
    SB_LUT4 blink_counter_308_add_4_20_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n8), .I3(n3852), .O(n117)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_308_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_308_add_4_20 (.CI(n3852), .I0(GND_net), .I1(n8), 
            .CO(n3853));
    SB_LUT4 i1588_4_lut_4_lut (.I0(n1556), .I1(n1671), .I2(r_Bit_Index[1]), 
            .I3(r_Bit_Index[0]), .O(n1809));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1588_4_lut_4_lut.LUT_INIT = 16'h58d0;
    SB_LUT4 blink_counter_308_add_4_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n9), .I3(n3851), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_308_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_308_add_4_19 (.CI(n3851), .I0(GND_net), .I1(n9), 
            .CO(n3852));
    SB_LUT4 i1738_3_lut (.I0(r_Tx_Data_adj_977[1]), .I1(i_Tx_Byte_adj_973[1]), 
            .I2(n1049), .I3(GND_net), .O(n1959));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1738_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1647_4_lut (.I0(\data_out[6] [7]), .I1(n11_adj_957), .I2(n1553), 
            .I3(n12_adj_956), .O(n1868));   // coms.v(115[10] 136[6])
    defparam i1647_4_lut.LUT_INIT = 16'h3aca;
    SB_LUT4 i1658_2_lut (.I0(n1553), .I1(data_out_field_28), .I2(GND_net), 
            .I3(GND_net), .O(n1879));   // coms.v(115[10] 136[6])
    defparam i1658_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i4290_4_lut (.I0(data_out_field_43), .I1(n4300), .I2(data_out_field_26), 
            .I3(n4331), .O(n4573));   // coms.v(115[10] 136[6])
    defparam i4290_4_lut.LUT_INIT = 16'h6996;
    GND i1 (.Y(GND_net));
    SB_LUT4 i1648_3_lut (.I0(\data_out[6] [6]), .I1(n4573), .I2(n1553), 
            .I3(GND_net), .O(n1869));   // coms.v(115[10] 136[6])
    defparam i1648_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1659_2_lut (.I0(n1553), .I1(data_out_field_27), .I2(GND_net), 
            .I3(GND_net), .O(n1880));   // coms.v(115[10] 136[6])
    defparam i1659_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 blink_counter_308_add_4_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n10), .I3(n3850), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_308_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1660_2_lut (.I0(n1553), .I1(data_out_field_26), .I2(GND_net), 
            .I3(GND_net), .O(n1881));   // coms.v(115[10] 136[6])
    defparam i1660_2_lut.LUT_INIT = 16'h4444;
    SB_CARRY blink_counter_308_add_4_18 (.CI(n3850), .I0(GND_net), .I1(n10), 
            .CO(n3851));
    SB_LUT4 i1_2_lut_4_lut (.I0(r_SM_Main[0]), .I1(r_SM_Main[1]), .I2(r_SM_Main_2__N_733[1]), 
            .I3(r_SM_Main[2]), .O(n4259));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 blink_counter_308_add_4_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n11_adj_926), .I3(n3849), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_308_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_308_add_4_17 (.CI(n3849), .I0(GND_net), .I1(n11_adj_926), 
            .CO(n3850));
    SB_LUT4 blink_counter_308_add_4_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n12), .I3(n3848), .O(n121)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_308_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_308_add_4_16 (.CI(n3848), .I0(GND_net), .I1(n12), 
            .CO(n3849));
    SB_LUT4 i1760_3_lut (.I0(\data_in[1] [6]), .I1(\data_in[2] [6]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1981));   // coms.v(146[10] 154[6])
    defparam i1760_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1770_3_lut (.I0(\data_in[3] [0]), .I1(\data_in[4] [0]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1991));   // coms.v(146[10] 154[6])
    defparam i1770_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1649_4_lut (.I0(\data_out[6] [5]), .I1(n4_adj_966), .I2(n1553), 
            .I3(n4331), .O(n1870));   // coms.v(115[10] 136[6])
    defparam i1649_4_lut.LUT_INIT = 16'h3aca;
    SB_LUT4 i1742_3_lut (.I0(r_Tx_Data_adj_977[5]), .I1(i_Tx_Byte_adj_973[5]), 
            .I2(n1049), .I3(GND_net), .O(n1963));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1742_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1743_3_lut (.I0(r_Tx_Data_adj_977[6]), .I1(i_Tx_Byte_adj_973[6]), 
            .I2(n1049), .I3(GND_net), .O(n1964));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1743_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1650_3_lut (.I0(\data_out[6] [4]), .I1(n1300), .I2(n1553), 
            .I3(GND_net), .O(n1871));   // coms.v(115[10] 136[6])
    defparam i1650_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 blink_counter_308_add_4_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n13), .I3(n3847), .O(n122)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_308_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_308_add_4_15 (.CI(n3847), .I0(GND_net), .I1(n13), 
            .CO(n3848));
    SB_LUT4 blink_counter_308_add_4_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n14), .I3(n3846), .O(n123)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_308_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_308_add_4_14 (.CI(n3846), .I0(GND_net), .I1(n14), 
            .CO(n3847));
    SB_LUT4 blink_counter_308_add_4_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n15), .I3(n3845), .O(n124)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_308_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_308_add_4_13 (.CI(n3845), .I0(GND_net), .I1(n15), 
            .CO(n3846));
    SB_LUT4 i1651_4_lut (.I0(\data_out[6] [3]), .I1(n7_adj_951), .I2(n1553), 
            .I3(n8_adj_950), .O(n1872));   // coms.v(115[10] 136[6])
    defparam i1651_4_lut.LUT_INIT = 16'h3aca;
    SB_LUT4 i20_4_lut_4_lut (.I0(r_SM_Main_adj_969[1]), .I1(r_SM_Main_adj_969[2]), 
            .I2(r_SM_Main_2__N_789[2]), .I3(r_SM_Main_adj_969[0]), .O(n1522));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    defparam i20_4_lut_4_lut.LUT_INIT = 16'h2055;
    SB_LUT4 i12_3_lut_4_lut (.I0(r_SM_Main_adj_969[1]), .I1(r_SM_Main_adj_969[2]), 
            .I2(n1522), .I3(rx_data_ready), .O(n4078));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    defparam i12_3_lut_4_lut.LUT_INIT = 16'h2f20;
    SB_LUT4 blink_counter_308_add_4_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n16), .I3(n3844), .O(n125)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_308_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1652_4_lut (.I0(\data_out[6] [2]), .I1(n7_adj_962), .I2(n1553), 
            .I3(n8_adj_961), .O(n1873));   // coms.v(115[10] 136[6])
    defparam i1652_4_lut.LUT_INIT = 16'h3aca;
    SB_LUT4 i1594_4_lut (.I0(n1739), .I1(r_Clock_Count_adj_975[0]), .I2(n320), 
            .I3(r_SM_Main_adj_974[2]), .O(n1815));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1594_4_lut.LUT_INIT = 16'h88a0;
    SB_CARRY blink_counter_308_add_4_12 (.CI(n3844), .I0(GND_net), .I1(n16), 
            .CO(n3845));
    SB_LUT4 i1780_3_lut (.I0(\data_in[4] [2]), .I1(\data_in[5] [2]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n2001));   // coms.v(146[10] 154[6])
    defparam i1780_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1653_4_lut (.I0(\data_out[6] [1]), .I1(n4_adj_963), .I2(n1553), 
            .I3(n4322), .O(n1874));   // coms.v(115[10] 136[6])
    defparam i1653_4_lut.LUT_INIT = 16'h3aca;
    coms c0 (.\data_in[7] ({\data_in[7] }), .GND_net(GND_net), .\data_in[3] ({\data_in[3] }), 
         .\data_in[2] ({\data_in[2] }), .\data_in[0] ({\data_in[0] }), .n1882(n1882), 
         .CLK_c(CLK_c), .n1883(n1883), .n1884(n1884), .n1885(n1885), 
         .n1886(n1886), .n1887(n1887), .n1888(n1888), .n1889(n1889), 
         .n1890(n1890), .n1891(n1891), .n1892(n1892), .n1893(n1893), 
         .n1894(n1894), .n1895(n1895), .n1896(n1896), .n1897(n1897), 
         .n1898(n1898), .n1899(n1899), .n1900(n1900), .n1901(n1901), 
         .n1902(n1902), .n1903(n1903), .n1904(n1904), .n1905(n1905), 
         .n1906(n1906), .\data_out_field[22] (data_out_field_22), .\data_out_field[6] (data_out_field_6), 
         .n4334(n4334), .n1553(n1553), .\data_in[4] ({\data_in[4] }), 
         .\data_out[6] ({\data_out[6] }), .\data_out[7] ({\data_out[7] }), 
         .n2006(n2006), .VCC_net(VCC_net), .\data_out_field[14] (data_out_field_14), 
         .n2001(n2001), .\data_out_field[30] (data_out_field_30), .\data_in[6] ({\data_in[6] }), 
         .\data_out_field[3] (data_out_field_3), .\data_out_field[11] (data_out_field_11), 
         .\data_out_field[19] (data_out_field_19), .\data_out_field[27] (data_out_field_27), 
         .n1991(n1991), .\data_out_field[7] (data_out_field_7), .\data_out_field[15] (data_out_field_15), 
         .\data_out_field[23] (data_out_field_23), .\data_out_field[31] (data_out_field_31), 
         .n1981(n1981), .\data_in[1] ({\data_in[1] }), .n1881(n1881), 
         .n1880(n1880), .n1879(n1879), .\data_out_field[43] (data_out_field_43), 
         .\data_out_field[34] (data_out_field_34), .\data_out_field[29] (data_out_field_29), 
         .\data_out_field[28] (data_out_field_28), .\data_out_field[26] (data_out_field_26), 
         .\data_out_field[25] (data_out_field_25), .\data_out_field[24] (data_out_field_24), 
         .\data_out_field[21] (data_out_field_21), .\data_out_field[20] (data_out_field_20), 
         .\data_out_field[18] (data_out_field_18), .\data_out_field[17] (data_out_field_17), 
         .\data_out_field[16] (data_out_field_16), .\data_out_field[13] (data_out_field_13), 
         .\data_out_field[12] (data_out_field_12), .\data_out_field[10] (data_out_field_10), 
         .\data_out_field[9] (data_out_field_9), .\data_out_field[8] (data_out_field_8), 
         .\data_out_field[5] (data_out_field_5), .\data_out_field[4] (data_out_field_4), 
         .\data_out_field[2] (data_out_field_2), .\data_out_field[1] (data_out_field_1), 
         .\data_out_field[0] (data_out_field_0), .\tx_data[6]_keep (i_Tx_Byte[6]), 
         .\tx_data[5]_keep (i_Tx_Byte[5]), .\tx_data[4]_keep (i_Tx_Byte[4]), 
         .\tx_data[2]_keep (i_Tx_Byte[2]), .\tx_data[1]_keep (i_Tx_Byte[1]), 
         .\tx_data[0]_keep (i_Tx_Byte[0]), .n1880_adj_3(n1880_adj_924), 
         .n1882_adj_4(n1882_adj_917), .n1884_adj_5(n1884_adj_918), .n1886_adj_6(n1886_adj_919), 
         .n1888_adj_7(n1888_adj_920), .n1890_adj_8(n1890_adj_921), .n1892_adj_9(n1892_adj_922), 
         .n1894_adj_10(n1894_adj_923), .i_Tx_Byte({i_Tx_Byte_adj_973}), 
         .tx_active(tx_active), .PIN_1_c(PIN_1_c), .tx_o(tx_o), .tx_done(tx_done), 
         .PIN_2_c(PIN_2_c), .rx_data_ready_keep(rx_data_ready_keep), .rx_data_ready(rx_data_ready), 
         .o_Rx_Byte({o_Rx_Byte}), .tx2_active(tx2_active), .PIN_3_c(PIN_3_c), 
         .tx2_o(tx2_o), .tx2_done(tx2_done), .n1878(n1878), .n1980(n1980), 
         .n1877(n1877), .n1990(n1990), .n1969(n1969), .n1979(n1979), 
         .n1976(n1976), .n1974(n1974), .n1973(n1973), .n1975(n1975), 
         .n1972(n1972), .n1989(n1989), .n2000(n2000), .n1988(n1988), 
         .n1978(n1978), .n1987(n1987), .n1999(n1999), .n1986(n1986), 
         .n1998(n1998), .n2005(n2005), .n1997(n1997), .n1985(n1985), 
         .n1977(n1977), .n1984(n1984), .n1996(n1996), .n1983(n1983), 
         .n1995(n1995), .n2004(n2004), .n1994(n1994), .n1982(n1982), 
         .n1993(n1993), .n2003(n2003), .n1992(n1992), .n2002(n2002), 
         .n1971(n1971), .n1970(n1970), .n1968(n1968), .\data_in[5] ({\data_in[5] }), 
         .n2030(n2030), .n2029(n2029), .n2028(n2028), .n10(n10_adj_958), 
         .n10_adj_11(n10_adj_959), .n10_adj_12(n10_adj_946), .n4(n4_adj_963), 
         .n4326(n4326), .n8(n8_adj_947), .n7(n7_adj_962), .n2027(n2027), 
         .n2026(n2026), .n7_adj_13(n7_adj_951), .n1300(n1300), .n8_adj_14(n8_adj_952), 
         .n8_adj_15(n8_adj_950), .n1347(n1347), .n7_adj_16(n7_adj_953), 
         .n4_adj_17(n4_adj_966), .n1876(n1876), .n1875(n1875), .n1874(n1874), 
         .n1873(n1873), .n1872(n1872), .n1871(n1871), .n1870(n1870), 
         .n1869(n1869), .n1868(n1868), .n1867(n1867), .n1866(n1866), 
         .n1865(n1865), .n1864(n1864), .n1863(n1863), .n1862(n1862), 
         .n1861(n1861), .n1859(n1859), .n4322(n4322), .n1853(n1853), 
         .n7_adj_18(n7_adj_948), .n9(n9_adj_960), .n1737(n1737), .n2024(n2024), 
         .n2025(n2025), .n2023(n2023), .n12(n12_adj_956), .n2021(n2021), 
         .n2022(n2022), .n2019(n2019), .n2020(n2020), .n2017(n2017), 
         .n2018(n2018), .n2015(n2015), .n2016(n2016), .n2013(n2013), 
         .n2014(n2014), .n2011(n2011), .n2012(n2012), .n2009(n2009), 
         .n11(n11_adj_957), .n2010(n2010), .n2008(n2008), .n4300(n4300), 
         .n2007(n2007), .n4331(n4331), .n1291(n1291), .n8_adj_19(n8_adj_954), 
         .n9_adj_20(n9_adj_965), .n9_adj_21(n9_adj_949), .n7_adj_22(n7_adj_955), 
         .n8_adj_23(n8_adj_961), .n1776(n1776), .n1834(n1834), .r_SM_Main({r_SM_Main}), 
         .n1833(n1833), .\r_Tx_Data[0] (r_Tx_Data[0]), .n1832(n1832), 
         .n1831(n1831), .n1149(n1149), .n314(n314), .\r_Clock_Count[6] (r_Clock_Count[6]), 
         .\r_Bit_Index[0] (r_Bit_Index[0]), .n3(n3), .\r_Bit_Index[1] (r_Bit_Index[1]), 
         .n21(n21_adj_964), .\r_Clock_Count[5] (r_Clock_Count[5]), .\r_Clock_Count[4] (r_Clock_Count[4]), 
         .\r_Clock_Count[7] (r_Clock_Count[7]), .\r_Clock_Count[8] (r_Clock_Count[8]), 
         .\r_SM_Main_2__N_733[1] (r_SM_Main_2__N_733[1]), .n41(n41), .n4270(n4270), 
         .n1809(n1809), .\r_Tx_Data[5] (r_Tx_Data[5]), .\r_Tx_Data[1] (r_Tx_Data[1]), 
         .n1777(n1777), .n315(n315), .n1765(n1765), .n859(n859), .n1940(n1940), 
         .\r_Tx_Data[6] (r_Tx_Data[6]), .n1939(n1939), .n1938(n1938), 
         .\r_Tx_Data[4] (r_Tx_Data[4]), .n1936(n1936), .\r_Tx_Data[2] (r_Tx_Data[2]), 
         .n1556(n1556), .n1768(n1768), .n1771(n1771), .n4116(n4116), 
         .n1774(n1774), .n1932(n1932), .n1935(n1935), .n4259(n4259), 
         .n1671(n1671), .n316(n316), .n312(n312), .n313(n313), .r_Tx_Data({r_Tx_Data_adj_977}), 
         .\r_Clock_Count[0] (r_Clock_Count_adj_975[0]), .\r_Clock_Count[1] (r_Clock_Count_adj_975[1]), 
         .\r_Clock_Count[2] (r_Clock_Count_adj_975[2]), .\r_Clock_Count[3] (r_Clock_Count_adj_975[3]), 
         .r_SM_Main_adj_45({r_SM_Main_adj_974}), .n1739(n1739), .n3_adj_33(n3_adj_925), 
         .n1959(n1959), .n314_adj_34(n314_adj_945), .\r_Clock_Count[6]_adj_35 (r_Clock_Count_adj_975[6]), 
         .n1965(n1965), .n1962(n1962), .n4256(n4256), .n1960(n1960), 
         .n1749(n1749), .n317(n317), .n1815(n1815), .n1964(n1964), .n1963(n1963), 
         .n1961(n1961), .n1845(n1845), .n1752(n1752), .n1755(n1755), 
         .n4108(n4108), .n318(n318), .n1844(n1844), .n319(n319), .n1843(n1843), 
         .n320(n320), .n1740(n1740), .n4_adj_36(n4_adj_928), .n1049(n1049), 
         .n1801(n1801), .n1800(n1800), .n1799(n1799), .n1797(n1797), 
         .n1796(n1796), .n1795(n1795), .n1789(n1789), .r_Bit_Index({r_Bit_Index_adj_968}), 
         .n1793(n1793), .n1792(n1792), .\r_SM_Main_2__N_789[2] (r_SM_Main_2__N_789[2]), 
         .r_SM_Main_adj_46({r_SM_Main_adj_969}), .r_Rx_Data(r_Rx_Data), 
         .n4078(n4078), .n4423(n4423), .n607(n607), .n2717(n2717), .n1267(n1267), 
         .n4_adj_42(n4), .n4_adj_43(n4_adj_927), .n1828(n1828), .n1272(n1272), 
         .n4_adj_44(n4_adj_929), .n1855(n1855), .n1788(n1788)) /* synthesis lattice_noprune=1, syn_preserve=0, syn_module_defined=1, syn_noprune=0 */ ;   // verilog/TinyFPGA_B.v(52[8] 57[4])
    SB_LUT4 i1747_3_lut (.I0(\data_in[0] [1]), .I1(\data_in[1] [1]), .I2(rx_data_ready_keep), 
            .I3(GND_net), .O(n1968));   // coms.v(146[10] 154[6])
    defparam i1747_3_lut.LUT_INIT = 16'hcaca;
    
endmodule
//
// Verilog Description of module coms
//

module coms (\data_in[7] , GND_net, \data_in[3] , \data_in[2] , \data_in[0] , 
            n1882, CLK_c, n1883, n1884, n1885, n1886, n1887, n1888, 
            n1889, n1890, n1891, n1892, n1893, n1894, n1895, n1896, 
            n1897, n1898, n1899, n1900, n1901, n1902, n1903, n1904, 
            n1905, n1906, \data_out_field[22] , \data_out_field[6] , 
            n4334, n1553, \data_in[4] , \data_out[6] , \data_out[7] , 
            n2006, VCC_net, \data_out_field[14] , n2001, \data_out_field[30] , 
            \data_in[6] , \data_out_field[3] , \data_out_field[11] , \data_out_field[19] , 
            \data_out_field[27] , n1991, \data_out_field[7] , \data_out_field[15] , 
            \data_out_field[23] , \data_out_field[31] , n1981, \data_in[1] , 
            n1881, n1880, n1879, \data_out_field[43] , \data_out_field[34] , 
            \data_out_field[29] , \data_out_field[28] , \data_out_field[26] , 
            \data_out_field[25] , \data_out_field[24] , \data_out_field[21] , 
            \data_out_field[20] , \data_out_field[18] , \data_out_field[17] , 
            \data_out_field[16] , \data_out_field[13] , \data_out_field[12] , 
            \data_out_field[10] , \data_out_field[9] , \data_out_field[8] , 
            \data_out_field[5] , \data_out_field[4] , \data_out_field[2] , 
            \data_out_field[1] , \data_out_field[0] , \tx_data[6]_keep , 
            \tx_data[5]_keep , \tx_data[4]_keep , \tx_data[2]_keep , \tx_data[1]_keep , 
            \tx_data[0]_keep , n1880_adj_3, n1882_adj_4, n1884_adj_5, 
            n1886_adj_6, n1888_adj_7, n1890_adj_8, n1892_adj_9, n1894_adj_10, 
            i_Tx_Byte, tx_active, PIN_1_c, tx_o, tx_done, PIN_2_c, 
            rx_data_ready_keep, rx_data_ready, o_Rx_Byte, tx2_active, 
            PIN_3_c, tx2_o, tx2_done, n1878, n1980, n1877, n1990, 
            n1969, n1979, n1976, n1974, n1973, n1975, n1972, n1989, 
            n2000, n1988, n1978, n1987, n1999, n1986, n1998, n2005, 
            n1997, n1985, n1977, n1984, n1996, n1983, n1995, n2004, 
            n1994, n1982, n1993, n2003, n1992, n2002, n1971, n1970, 
            n1968, \data_in[5] , n2030, n2029, n2028, n10, n10_adj_11, 
            n10_adj_12, n4, n4326, n8, n7, n2027, n2026, n7_adj_13, 
            n1300, n8_adj_14, n8_adj_15, n1347, n7_adj_16, n4_adj_17, 
            n1876, n1875, n1874, n1873, n1872, n1871, n1870, n1869, 
            n1868, n1867, n1866, n1865, n1864, n1863, n1862, n1861, 
            n1859, n4322, n1853, n7_adj_18, n9, n1737, n2024, 
            n2025, n2023, n12, n2021, n2022, n2019, n2020, n2017, 
            n2018, n2015, n2016, n2013, n2014, n2011, n2012, n2009, 
            n11, n2010, n2008, n4300, n2007, n4331, n1291, n8_adj_19, 
            n9_adj_20, n9_adj_21, n7_adj_22, n8_adj_23, n1776, n1834, 
            r_SM_Main, n1833, \r_Tx_Data[0] , n1832, n1831, n1149, 
            n314, \r_Clock_Count[6] , \r_Bit_Index[0] , n3, \r_Bit_Index[1] , 
            n21, \r_Clock_Count[5] , \r_Clock_Count[4] , \r_Clock_Count[7] , 
            \r_Clock_Count[8] , \r_SM_Main_2__N_733[1] , n41, n4270, 
            n1809, \r_Tx_Data[5] , \r_Tx_Data[1] , n1777, n315, n1765, 
            n859, n1940, \r_Tx_Data[6] , n1939, n1938, \r_Tx_Data[4] , 
            n1936, \r_Tx_Data[2] , n1556, n1768, n1771, n4116, n1774, 
            n1932, n1935, n4259, n1671, n316, n312, n313, r_Tx_Data, 
            \r_Clock_Count[0] , \r_Clock_Count[1] , \r_Clock_Count[2] , 
            \r_Clock_Count[3] , r_SM_Main_adj_45, n1739, n3_adj_33, 
            n1959, n314_adj_34, \r_Clock_Count[6]_adj_35 , n1965, n1962, 
            n4256, n1960, n1749, n317, n1815, n1964, n1963, n1961, 
            n1845, n1752, n1755, n4108, n318, n1844, n319, n1843, 
            n320, n1740, n4_adj_36, n1049, n1801, n1800, n1799, 
            n1797, n1796, n1795, n1789, r_Bit_Index, n1793, n1792, 
            \r_SM_Main_2__N_789[2] , r_SM_Main_adj_46, r_Rx_Data, n4078, 
            n4423, n607, n2717, n1267, n4_adj_42, n4_adj_43, n1828, 
            n1272, n4_adj_44, n1855, n1788) /* synthesis lattice_noprune=1, syn_preserve=0, syn_module_defined=1, syn_noprune=0 */ ;
    output [7:0]\data_in[7] ;
    input GND_net;
    output [7:0]\data_in[3] ;
    output [7:0]\data_in[2] ;
    output [7:0]\data_in[0] ;
    input n1882;
    input CLK_c;
    input n1883;
    input n1884;
    input n1885;
    input n1886;
    input n1887;
    input n1888;
    input n1889;
    input n1890;
    input n1891;
    input n1892;
    input n1893;
    input n1894;
    input n1895;
    input n1896;
    input n1897;
    input n1898;
    input n1899;
    input n1900;
    input n1901;
    input n1902;
    input n1903;
    input n1904;
    input n1905;
    input n1906;
    output \data_out_field[22] ;
    output \data_out_field[6] ;
    output n4334;
    output n1553;
    output [7:0]\data_in[4] ;
    output [7:0]\data_out[6] ;
    output [7:0]\data_out[7] ;
    input n2006;
    input VCC_net;
    output \data_out_field[14] ;
    input n2001;
    output \data_out_field[30] ;
    output [7:0]\data_in[6] ;
    output \data_out_field[3] ;
    output \data_out_field[11] ;
    output \data_out_field[19] ;
    output \data_out_field[27] ;
    input n1991;
    output \data_out_field[7] ;
    output \data_out_field[15] ;
    output \data_out_field[23] ;
    output \data_out_field[31] ;
    input n1981;
    output [7:0]\data_in[1] ;
    input n1881;
    input n1880;
    input n1879;
    output \data_out_field[43] ;
    output \data_out_field[34] ;
    output \data_out_field[29] ;
    output \data_out_field[28] ;
    output \data_out_field[26] ;
    output \data_out_field[25] ;
    output \data_out_field[24] ;
    output \data_out_field[21] ;
    output \data_out_field[20] ;
    output \data_out_field[18] ;
    output \data_out_field[17] ;
    output \data_out_field[16] ;
    output \data_out_field[13] ;
    output \data_out_field[12] ;
    output \data_out_field[10] ;
    output \data_out_field[9] ;
    output \data_out_field[8] ;
    output \data_out_field[5] ;
    output \data_out_field[4] ;
    output \data_out_field[2] ;
    output \data_out_field[1] ;
    output \data_out_field[0] ;
    output \tx_data[6]_keep ;
    output \tx_data[5]_keep ;
    output \tx_data[4]_keep ;
    output \tx_data[2]_keep ;
    output \tx_data[1]_keep ;
    output \tx_data[0]_keep ;
    output n1880_adj_3;
    output n1882_adj_4;
    output n1884_adj_5;
    output n1886_adj_6;
    output n1888_adj_7;
    output n1890_adj_8;
    output n1892_adj_9;
    output n1894_adj_10;
    output [7:0]i_Tx_Byte;
    output tx_active;
    output PIN_1_c;
    output tx_o;
    output tx_done;
    input PIN_2_c;
    output rx_data_ready_keep;
    output rx_data_ready;
    output [7:0]o_Rx_Byte;
    output tx2_active;
    output PIN_3_c;
    output tx2_o;
    output tx2_done;
    input n1878;
    input n1980;
    input n1877;
    input n1990;
    input n1969;
    input n1979;
    input n1976;
    input n1974;
    input n1973;
    input n1975;
    input n1972;
    input n1989;
    input n2000;
    input n1988;
    input n1978;
    input n1987;
    input n1999;
    input n1986;
    input n1998;
    input n2005;
    input n1997;
    input n1985;
    input n1977;
    input n1984;
    input n1996;
    input n1983;
    input n1995;
    input n2004;
    input n1994;
    input n1982;
    input n1993;
    input n2003;
    input n1992;
    input n2002;
    input n1971;
    input n1970;
    input n1968;
    output [7:0]\data_in[5] ;
    input n2030;
    input n2029;
    input n2028;
    output n10;
    output n10_adj_11;
    output n10_adj_12;
    output n4;
    output n4326;
    output n8;
    output n7;
    input n2027;
    input n2026;
    output n7_adj_13;
    output n1300;
    output n8_adj_14;
    output n8_adj_15;
    output n1347;
    output n7_adj_16;
    output n4_adj_17;
    input n1876;
    input n1875;
    input n1874;
    input n1873;
    input n1872;
    input n1871;
    input n1870;
    input n1869;
    input n1868;
    input n1867;
    input n1866;
    input n1865;
    input n1864;
    input n1863;
    input n1862;
    input n1861;
    input n1859;
    output n4322;
    input n1853;
    output n7_adj_18;
    output n9;
    input n1737;
    input n2024;
    input n2025;
    input n2023;
    output n12;
    input n2021;
    input n2022;
    input n2019;
    input n2020;
    input n2017;
    input n2018;
    input n2015;
    input n2016;
    input n2013;
    input n2014;
    input n2011;
    input n2012;
    input n2009;
    output n11;
    input n2010;
    input n2008;
    output n4300;
    input n2007;
    output n4331;
    output n1291;
    output n8_adj_19;
    output n9_adj_20;
    output n9_adj_21;
    output n7_adj_22;
    output n8_adj_23;
    output n1776;
    input n1834;
    output [2:0]r_SM_Main;
    input n1833;
    output \r_Tx_Data[0] ;
    input n1832;
    input n1831;
    output n1149;
    output n314;
    output \r_Clock_Count[6] ;
    output \r_Bit_Index[0] ;
    output n3;
    output \r_Bit_Index[1] ;
    output n21;
    output \r_Clock_Count[5] ;
    output \r_Clock_Count[4] ;
    output \r_Clock_Count[7] ;
    output \r_Clock_Count[8] ;
    output \r_SM_Main_2__N_733[1] ;
    output n41;
    output n4270;
    input n1809;
    output \r_Tx_Data[5] ;
    output \r_Tx_Data[1] ;
    input n1777;
    output n315;
    input n1765;
    output n859;
    input n1940;
    output \r_Tx_Data[6] ;
    input n1939;
    input n1938;
    output \r_Tx_Data[4] ;
    input n1936;
    output \r_Tx_Data[2] ;
    output n1556;
    input n1768;
    input n1771;
    input n4116;
    input n1774;
    input n1932;
    input n1935;
    input n4259;
    output n1671;
    output n316;
    output n312;
    output n313;
    output [7:0]r_Tx_Data;
    output \r_Clock_Count[0] ;
    output \r_Clock_Count[1] ;
    output \r_Clock_Count[2] ;
    output \r_Clock_Count[3] ;
    output [2:0]r_SM_Main_adj_45;
    output n1739;
    output n3_adj_33;
    input n1959;
    output n314_adj_34;
    output \r_Clock_Count[6]_adj_35 ;
    input n1965;
    input n1962;
    output n4256;
    input n1960;
    input n1749;
    output n317;
    input n1815;
    input n1964;
    input n1963;
    input n1961;
    input n1845;
    input n1752;
    input n1755;
    input n4108;
    output n318;
    input n1844;
    output n319;
    input n1843;
    output n320;
    input n1740;
    output n4_adj_36;
    output n1049;
    input n1801;
    input n1800;
    input n1799;
    input n1797;
    input n1796;
    input n1795;
    input n1789;
    output [2:0]r_Bit_Index;
    input n1793;
    input n1792;
    output \r_SM_Main_2__N_789[2] ;
    output [2:0]r_SM_Main_adj_46;
    output r_Rx_Data;
    input n4078;
    output n4423;
    output n607;
    output n2717;
    output n1267;
    output n4_adj_42;
    output n4_adj_43;
    input n1828;
    output n1272;
    output n4_adj_44;
    input n1855;
    output n1788;
    
    wire CLK_c /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(3[9:12])
    
    wire n4359, n1336, n4360, n25, n27, n26, n28, n3878, n25_adj_837;
    wire [7:0]byte_transmit_counter2;   // coms.v(157[13:35])
    wire [7:0]\data_in_frame[6] ;   // coms.v(144[13:26])
    wire [7:0]\data_in_frame[7] ;   // coms.v(144[13:26])
    
    wire n4759, n3820;
    wire [15:0]data;   // coms.v(12[14:18])
    
    wire n3821, \FRAME_MATCHER.wait_for_transmission_N_397 , n4723, n1907, 
        n2706, \FRAME_MATCHER.wait_for_transmission , n2703, tx2_transmit_N_403, 
        n4762, n1447, n1397, n13;
    wire [2:0]n1;
    
    wire byte_transmit_counter_7__N_259;
    wire [7:0]byte_transmit_counter;   // coms.v(11[12:33])
    wire [2:0]n2;
    
    wire n690, n1733, n1245;
    wire [63:0]data_in_frame_7__7__N_179;
    
    wire n4539, n4538, n30, n26_adj_839;
    wire [15:0]n69;
    
    wire n4345, n4310, n10_c, n4328, n17, n4445;
    wire [63:0]data_in_field;
    
    wire tx2_transmit, n4446, n4535, n4536, n4747, n20_adj_840, 
        n4292, n4288, n26_adj_841, n1456, n4365, n1459, n6, n4726, 
        n4493, n4494, n4533, n4532, n1389, n1441, n1340, n4343, 
        n4316, n4346, n6_adj_843, n4282, n6_adj_844, n1404, n10_adj_845, 
        n4291, n4339, n4285, n4451, n1407, n21_c, n28_adj_846, 
        n4283, n4369, n30_adj_847, n4452, n1462, n4340, n1474, 
        n1438, n4530, n4529, n1911, n4368, n1910, n6_adj_848, 
        n1483, n8_c, tx_transmit, n16;
    wire [47:0]data_out_field_47__N_656;   // coms.v(97[33:47])
    wire [7:0]tx_data;
    
    wire n10_adj_861, n10_adj_864, n8_adj_865, n4366, n10_adj_866, 
        n4347, n8_adj_868, n18_adj_869, n17_adj_870, n4317, n23, 
        n4896, n12_c, n14, n25_adj_871, n4867, n4870, n4861, n4864, 
        n1909, n4849, n4852, n1915, n4843, n4846, n4837, n4840, 
        n4443, n4442, n4481, n4482, n4831, n4509, n4508, n4454, 
        n4455, n4496, n4497, n4825, n1914, n4491, n4490, n4499, 
        n4500, n4819, n1913, n3834, n3833, n4488, n4487, n4527, 
        n4502, n4503, n4813, n4485, n4484, n1919, n3863, n4526, 
        n4801, n3862, n3832, n4795, n4798, n4789, n4792, n4783, 
        n4777, n4780, n4771, n4765, n4768, n3831, n1918, n1917, 
        n1922, n1921, n3830, n4729, n4434, n4433, n1908, n1912, 
        n1916, n1920;
    wire [63:0]data_out_7__7__N_51;
    
    wire n4541, n4542, n4717, n22, n28_adj_872, n3861, n3860, 
        n4741, n3829, n4744, n1419, n1356, n1350, n4325, n4362, 
        n3828, n1377, n4386, n4380, n4349, n4279, n4313, n4383, 
        n8_adj_882, n12_adj_883, n1369, n3827, n3826, n3825, n1413, 
        n4371, n4377, n3824, n1425, n4303, n3823, n3822, n4319;
    
    assign n1880_adj_3 = o_Rx_Byte[7];
    assign n1882_adj_4 = o_Rx_Byte[6];
    assign n1884_adj_5 = o_Rx_Byte[5];
    assign n1886_adj_6 = o_Rx_Byte[4];
    assign n1888_adj_7 = o_Rx_Byte[3];
    assign n1890_adj_8 = o_Rx_Byte[2];
    assign n1892_adj_9 = o_Rx_Byte[1];
    assign n1894_adj_10 = o_Rx_Byte[0];
    assign PIN_1_c = tx_o;
    assign rx_data_ready_keep = rx_data_ready;
    assign PIN_3_c = tx2_o;
    SB_LUT4 i2_3_lut (.I0(n4359), .I1(n1336), .I2(\data_in[7] [4]), .I3(GND_net), 
            .O(n4360));   // coms.v(78[17:84])
    defparam i2_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i15_4_lut (.I0(n25), .I1(n27), .I2(n26), .I3(n28), .O(n3878));
    defparam i15_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i9_4_lut (.I0(\data_in[3] [2]), .I1(\data_in[2] [4]), .I2(\data_in[3] [3]), 
            .I3(\data_in[0] [0]), .O(n25_adj_837));   // coms.v(169[12:70])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 byte_transmit_counter2_0__bdd_4_lut_4424 (.I0(byte_transmit_counter2[0]), 
            .I1(\data_in_frame[6] [5]), .I2(\data_in_frame[7] [5]), .I3(byte_transmit_counter2[1]), 
            .O(n4759));
    defparam byte_transmit_counter2_0__bdd_4_lut_4424.LUT_INIT = 16'he4aa;
    SB_CARRY data_315_add_4_3 (.CI(n3820), .I0(GND_net), .I1(data[1]), 
            .CO(n3821));
    SB_LUT4 i4380_3_lut (.I0(byte_transmit_counter2[2]), .I1(byte_transmit_counter2[0]), 
            .I2(byte_transmit_counter2[1]), .I3(GND_net), .O(\FRAME_MATCHER.wait_for_transmission_N_397 ));
    defparam i4380_3_lut.LUT_INIT = 16'h7f7f;
    SB_LUT4 byte_transmit_counter2_0__bdd_4_lut_4419 (.I0(byte_transmit_counter2[0]), 
            .I1(data_in_field[22]), .I2(data_in_field[30]), .I3(byte_transmit_counter2[1]), 
            .O(n4723));
    defparam byte_transmit_counter2_0__bdd_4_lut_4419.LUT_INIT = 16'he4aa;
    SB_DFF data_out_0__i26 (.Q(\data_out_field[25] ), .C(CLK_c), .D(n1882));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i25 (.Q(\data_out_field[24] ), .C(CLK_c), .D(n1883));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i24 (.Q(\data_out_field[23] ), .C(CLK_c), .D(n1884));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i23 (.Q(\data_out_field[22] ), .C(CLK_c), .D(n1885));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i22 (.Q(\data_out_field[21] ), .C(CLK_c), .D(n1886));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i21 (.Q(\data_out_field[20] ), .C(CLK_c), .D(n1887));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i20 (.Q(\data_out_field[19] ), .C(CLK_c), .D(n1888));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i19 (.Q(\data_out_field[18] ), .C(CLK_c), .D(n1889));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i18 (.Q(\data_out_field[17] ), .C(CLK_c), .D(n1890));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i17 (.Q(\data_out_field[16] ), .C(CLK_c), .D(n1891));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i16 (.Q(\data_out_field[15] ), .C(CLK_c), .D(n1892));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i15 (.Q(\data_out_field[14] ), .C(CLK_c), .D(n1893));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i14 (.Q(\data_out_field[13] ), .C(CLK_c), .D(n1894));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i13 (.Q(\data_out_field[12] ), .C(CLK_c), .D(n1895));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i12 (.Q(\data_out_field[11] ), .C(CLK_c), .D(n1896));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i11 (.Q(\data_out_field[10] ), .C(CLK_c), .D(n1897));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i10 (.Q(\data_out_field[9] ), .C(CLK_c), .D(n1898));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i9 (.Q(\data_out_field[8] ), .C(CLK_c), .D(n1899));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i8 (.Q(\data_out_field[7] ), .C(CLK_c), .D(n1900));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i7 (.Q(\data_out_field[6] ), .C(CLK_c), .D(n1901));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i6 (.Q(\data_out_field[5] ), .C(CLK_c), .D(n1902));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i5 (.Q(\data_out_field[4] ), .C(CLK_c), .D(n1903));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i4 (.Q(\data_out_field[3] ), .C(CLK_c), .D(n1904));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i3 (.Q(\data_out_field[2] ), .C(CLK_c), .D(n1905));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i2 (.Q(\data_out_field[1] ), .C(CLK_c), .D(n1906));   // coms.v(115[10] 136[6])
    SB_DFF data_in_frame_0__i48 (.Q(\data_in_frame[6] [0]), .C(CLK_c), .D(n1907));   // coms.v(164[10] 192[6])
    SB_LUT4 tx2_transmit_I_0_611_4_lut (.I0(n2706), .I1(\FRAME_MATCHER.wait_for_transmission_N_397 ), 
            .I2(\FRAME_MATCHER.wait_for_transmission ), .I3(n2703), .O(tx2_transmit_N_403));   // coms.v(181[14] 191[8])
    defparam tx2_transmit_I_0_611_4_lut.LUT_INIT = 16'h05c5;
    SB_LUT4 n4759_bdd_4_lut (.I0(n4759), .I1(data_in_field[45]), .I2(data_in_field[37]), 
            .I3(byte_transmit_counter2[1]), .O(n4762));
    defparam n4759_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i5_4_lut (.I0(n1447), .I1(\data_in[7] [1]), .I2(data_in_field[31]), 
            .I3(n1397), .O(n13));   // coms.v(78[17:84])
    defparam i5_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut (.I0(\data_out_field[22] ), .I1(\data_out_field[6] ), 
            .I2(GND_net), .I3(GND_net), .O(n4334));   // coms.v(82[17:76])
    defparam i1_2_lut.LUT_INIT = 16'h6666;
    SB_DFFESR byte_transmit_counter_310_311__i1 (.Q(byte_transmit_counter[0]), 
            .C(CLK_c), .E(byte_transmit_counter_7__N_259), .D(n1[0]), 
            .R(n1553));   // coms.v(120[34:57])
    SB_DFFESR byte_transmit_counter2_313_314__i1 (.Q(byte_transmit_counter2[0]), 
            .C(CLK_c), .E(n690), .D(n2[0]), .R(n1733));   // coms.v(184[39:65])
    SB_LUT4 mux_572_i33_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[4] [0]), .I3(data_in_field[32]), .O(data_in_frame_7__7__N_179[32]));
    defparam mux_572_i33_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 mux_572_i34_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[4] [1]), .I3(data_in_field[33]), .O(data_in_frame_7__7__N_179[33]));
    defparam mux_572_i34_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i4208_3_lut (.I0(\data_out[6] [4]), .I1(\data_out[7] [4]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n4539));
    defparam i4208_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4207_3_lut (.I0(data_out_field_47__N_656[36]), .I1(data_out_field_47__N_656[44]), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n4538));
    defparam i4207_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut (.I0(n25_adj_837), .I1(n3878), .I2(n30), .I3(n26_adj_839), 
            .O(n1245));   // coms.v(169[12:70])
    defparam i1_4_lut.LUT_INIT = 16'hfffb;
    SB_DFF data_in_0___i40 (.Q(\data_in[4] [7]), .C(CLK_c), .D(n2006));   // coms.v(146[10] 154[6])
    SB_LUT4 mux_572_i35_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[4] [2]), .I3(data_in_field[34]), .O(data_in_frame_7__7__N_179[34]));
    defparam mux_572_i35_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 data_315_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(data[0]), 
            .I3(VCC_net), .O(n69[0])) /* synthesis syn_instantiated=1 */ ;
    defparam data_315_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_290 (.I0(n4345), .I1(n4310), .I2(n10_c), .I3(n4328), 
            .O(n17));   // coms.v(174[14:57])
    defparam i1_4_lut_adj_290.LUT_INIT = 16'hbeeb;
    SB_CARRY data_315_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(data[0]), 
            .CO(n3820));
    SB_LUT4 i4114_3_lut (.I0(\data_out_field[6] ), .I1(\data_out_field[14] ), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n4445));
    defparam i4114_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF data_in_frame_0__i35 (.Q(data_in_field[35]), .C(CLK_c), .D(data_in_frame_7__7__N_179[35]));   // coms.v(164[10] 192[6])
    SB_DFF tx2_transmit_600 (.Q(tx2_transmit), .C(CLK_c), .D(tx2_transmit_N_403));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i0 (.Q(data_in_field[0]), .C(CLK_c), .D(data_in_frame_7__7__N_179[0]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_0___i35 (.Q(\data_in[4] [2]), .C(CLK_c), .D(n2001));   // coms.v(146[10] 154[6])
    SB_LUT4 i4115_3_lut (.I0(\data_out_field[22] ), .I1(\data_out_field[30] ), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n4446));
    defparam i4115_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_572_i1_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[0] [0]), .I3(data_in_field[0]), .O(data_in_frame_7__7__N_179[0]));
    defparam mux_572_i1_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 byte_transmit_counter_1__bdd_4_lut_4429 (.I0(byte_transmit_counter[1]), 
            .I1(n4535), .I2(n4536), .I3(byte_transmit_counter[2]), .O(n4747));
    defparam byte_transmit_counter_1__bdd_4_lut_4429.LUT_INIT = 16'he4aa;
    SB_LUT4 i10_4_lut (.I0(\data_in[6] [0]), .I1(n20_adj_840), .I2(n4292), 
            .I3(n4288), .O(n26_adj_841));   // coms.v(174[14:57])
    defparam i10_4_lut.LUT_INIT = 16'hfdfe;
    SB_LUT4 i2_3_lut_4_lut (.I0(data_in_field[19]), .I1(data_in_field[4]), 
            .I2(data_in_field[17]), .I3(n1456), .O(n4365));   // coms.v(174[14:57])
    defparam i2_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut (.I0(data_in_field[19]), .I1(data_in_field[4]), 
            .I2(n1459), .I3(GND_net), .O(n6));   // coms.v(174[14:57])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h9696;
    SB_DFFESR byte_transmit_counter_310_311__i3 (.Q(byte_transmit_counter[2]), 
            .C(CLK_c), .E(byte_transmit_counter_7__N_259), .D(n1[2]), 
            .R(n1553));   // coms.v(120[34:57])
    SB_LUT4 n4723_bdd_4_lut (.I0(n4723), .I1(data_in_field[14]), .I2(data_in_field[6]), 
            .I3(byte_transmit_counter2[1]), .O(n4726));
    defparam n4723_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i4162_3_lut (.I0(\data_out_field[3] ), .I1(\data_out_field[11] ), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n4493));
    defparam i4162_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4163_3_lut (.I0(\data_out_field[19] ), .I1(\data_out_field[27] ), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n4494));
    defparam i4163_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4202_3_lut (.I0(\data_out[6] [6]), .I1(\data_out[7] [6]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n4533));
    defparam i4202_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2489_2_lut (.I0(tx2_active), .I1(tx2_transmit), .I2(GND_net), 
            .I3(GND_net), .O(n2703));
    defparam i2489_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i4201_3_lut (.I0(data_out_field_47__N_656[38]), .I1(data_out_field_47__N_656[46]), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n4532));
    defparam i4201_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4_4_lut (.I0(n1389), .I1(n1441), .I2(n1340), .I3(n6), .O(n4343));   // coms.v(78[17:84])
    defparam i4_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut (.I0(data_in_field[37]), .I1(data_in_field[36]), .I2(data_in_field[38]), 
            .I3(data_in_field[8]), .O(n4316));   // coms.v(81[17:84])
    defparam i3_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i1_3_lut (.I0(data_in_field[31]), .I1(data_in_field[16]), .I2(data_in_field[30]), 
            .I3(GND_net), .O(n1336));   // coms.v(174[14:57])
    defparam i1_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_291 (.I0(n1389), .I1(data_in_field[25]), .I2(GND_net), 
            .I3(GND_net), .O(n4346));   // coms.v(174[14:57])
    defparam i1_2_lut_adj_291.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut_adj_292 (.I0(data_in_field[29]), .I1(data_in_field[0]), 
            .I2(data_in_field[1]), .I3(n6_adj_843), .O(n4282));   // coms.v(174[14:57])
    defparam i4_4_lut_adj_292.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_293 (.I0(data_in_field[41]), .I1(data_in_field[13]), 
            .I2(data_in_field[26]), .I3(GND_net), .O(n1441));   // coms.v(174[14:57])
    defparam i2_3_lut_adj_293.LUT_INIT = 16'h9696;
    SB_LUT4 i14_4_lut (.I0(n2706), .I1(\FRAME_MATCHER.wait_for_transmission_N_397 ), 
            .I2(\FRAME_MATCHER.wait_for_transmission ), .I3(n2703), .O(n6_adj_844));   // coms.v(164[10] 192[6])
    defparam i14_4_lut.LUT_INIT = 16'hf5c5;
    SB_LUT4 i1_2_lut_adj_294 (.I0(data_in_field[42]), .I1(data_in_field[28]), 
            .I2(GND_net), .I3(GND_net), .O(n1397));   // coms.v(174[14:57])
    defparam i1_2_lut_adj_294.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_295 (.I0(data_in_field[39]), .I1(data_in_field[40]), 
            .I2(GND_net), .I3(GND_net), .O(n1404));   // coms.v(174[14:57])
    defparam i1_2_lut_adj_295.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_4_lut_adj_296 (.I0(data_in_field[38]), .I1(data_in_field[10]), 
            .I2(n1404), .I3(data_in_field[23]), .O(n1389));   // coms.v(174[14:57])
    defparam i2_3_lut_4_lut_adj_296.LUT_INIT = 16'h6996;
    SB_LUT4 i2_4_lut (.I0(data_in_field[11]), .I1(data_in_field[25]), .I2(data_in_field[12]), 
            .I3(data_in_field[27]), .O(n1340));   // coms.v(74[17:38])
    defparam i2_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i5_3_lut_4_lut (.I0(data_in_field[38]), .I1(data_in_field[10]), 
            .I2(n10_adj_845), .I3(n4291), .O(n4339));   // coms.v(174[14:57])
    defparam i5_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_297 (.I0(data_in_field[3]), .I1(data_in_field[45]), 
            .I2(GND_net), .I3(GND_net), .O(n1456));   // coms.v(74[17:38])
    defparam i1_2_lut_adj_297.LUT_INIT = 16'h6666;
    SB_DFF data_in_0___i25 (.Q(\data_in[3] [0]), .C(CLK_c), .D(n1991));   // coms.v(146[10] 154[6])
    SB_LUT4 i1_2_lut_adj_298 (.I0(data_in_field[34]), .I1(data_in_field[33]), 
            .I2(GND_net), .I3(GND_net), .O(n4285));   // coms.v(174[14:57])
    defparam i1_2_lut_adj_298.LUT_INIT = 16'h6666;
    SB_LUT4 i4120_3_lut (.I0(\data_out_field[7] ), .I1(\data_out_field[15] ), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n4451));
    defparam i4120_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_299 (.I0(data_in_field[1]), .I1(data_in_field[17]), 
            .I2(GND_net), .I3(GND_net), .O(n1447));   // coms.v(77[17:92])
    defparam i1_2_lut_adj_299.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_300 (.I0(data_in_field[31]), .I1(data_in_field[32]), 
            .I2(GND_net), .I3(GND_net), .O(n1407));   // coms.v(174[14:57])
    defparam i1_2_lut_adj_300.LUT_INIT = 16'h6666;
    SB_LUT4 i14_4_lut_adj_301 (.I0(n21_c), .I1(n28_adj_846), .I2(n4283), 
            .I3(n4369), .O(n30_adj_847));   // coms.v(174[14:57])
    defparam i14_4_lut_adj_301.LUT_INIT = 16'hfeff;
    SB_LUT4 i4121_3_lut (.I0(\data_out_field[23] ), .I1(\data_out_field[31] ), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n4452));
    defparam i4121_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3_4_lut_adj_302 (.I0(data_in_field[43]), .I1(n1462), .I2(n1407), 
            .I3(n1447), .O(n4340));   // coms.v(77[17:92])
    defparam i3_4_lut_adj_302.LUT_INIT = 16'h6996;
    SB_LUT4 i1_3_lut_adj_303 (.I0(data_in_field[34]), .I1(data_in_field[35]), 
            .I2(data_in_field[20]), .I3(GND_net), .O(n4310));   // coms.v(80[17:84])
    defparam i1_3_lut_adj_303.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_304 (.I0(data_in_field[33]), .I1(data_in_field[18]), 
            .I2(GND_net), .I3(GND_net), .O(n1474));   // coms.v(74[17:38])
    defparam i1_2_lut_adj_304.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_305 (.I0(data_in_field[36]), .I1(data_in_field[6]), 
            .I2(GND_net), .I3(GND_net), .O(n1438));   // coms.v(81[17:84])
    defparam i1_2_lut_adj_305.LUT_INIT = 16'h6666;
    SB_DFF data_in_0___i15 (.Q(\data_in[1] [6]), .C(CLK_c), .D(n1981));   // coms.v(146[10] 154[6])
    SB_LUT4 i4199_3_lut (.I0(\data_out[6] [7]), .I1(\data_out[7] [7]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n4530));
    defparam i4199_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4198_3_lut (.I0(data_out_field_47__N_656[39]), .I1(data_out_field_47__N_656[47]), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n4529));
    defparam i4198_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1690_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[6] [4]), .I3(\data_in_frame[6] [4]), .O(n1911));
    defparam i1690_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_3_lut_adj_306 (.I0(data_in_field[21]), .I1(data_in_field[5]), 
            .I2(data_in_field[47]), .I3(GND_net), .O(n4368));   // coms.v(80[17:84])
    defparam i2_3_lut_adj_306.LUT_INIT = 16'h9696;
    SB_LUT4 i1689_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[6] [3]), .I3(\data_in_frame[6] [3]), .O(n1910));
    defparam i1689_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i4_4_lut_adj_307 (.I0(data_in_field[37]), .I1(n4310), .I2(data_in_field[22]), 
            .I3(n6_adj_848), .O(n4288));   // coms.v(74[17:38])
    defparam i4_4_lut_adj_307.LUT_INIT = 16'h6996;
    SB_LUT4 mux_572_i36_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[4] [3]), .I3(data_in_field[35]), .O(data_in_frame_7__7__N_179[35]));
    defparam mux_572_i36_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_308 (.I0(data_in_field[2]), .I1(data_in_field[15]), 
            .I2(GND_net), .I3(GND_net), .O(n1462));   // coms.v(77[17:92])
    defparam i1_2_lut_adj_308.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_309 (.I0(data_in_field[44]), .I1(n4328), .I2(GND_net), 
            .I3(GND_net), .O(n1483));   // coms.v(78[17:84])
    defparam i1_2_lut_adj_309.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_310 (.I0(data_in_field[24]), .I1(data_in_field[8]), 
            .I2(data_in_field[9]), .I3(data_in_field[46]), .O(n8_c));   // coms.v(174[14:57])
    defparam i3_4_lut_adj_310.LUT_INIT = 16'h6996;
    SB_LUT4 i4_3_lut (.I0(n4288), .I1(n8_c), .I2(n4368), .I3(GND_net), 
            .O(n1459));   // coms.v(174[14:57])
    defparam i4_3_lut.LUT_INIT = 16'h9696;
    SB_DFF data_in_frame_0__i34 (.Q(data_in_field[34]), .C(CLK_c), .D(data_in_frame_7__7__N_179[34]));   // coms.v(164[10] 192[6])
    SB_DFF data_out_0__i27 (.Q(\data_out_field[26] ), .C(CLK_c), .D(n1881));   // coms.v(115[10] 136[6])
    SB_DFF tx_transmit_595 (.Q(tx_transmit), .C(CLK_c), .D(byte_transmit_counter_7__N_259));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i28 (.Q(\data_out_field[27] ), .C(CLK_c), .D(n1880));   // coms.v(115[10] 136[6])
    SB_DFFESR byte_transmit_counter_310_311__i2 (.Q(byte_transmit_counter[1]), 
            .C(CLK_c), .E(byte_transmit_counter_7__N_259), .D(n1[1]), 
            .R(n1553));   // coms.v(120[34:57])
    SB_LUT4 i6_4_lut (.I0(n1459), .I1(n1483), .I2(\data_in[6] [7]), .I3(n1462), 
            .O(n16));   // coms.v(74[17:38])
    defparam i6_4_lut.LUT_INIT = 16'h6996;
    SB_DFF data_out_0__i29 (.Q(\data_out_field[28] ), .C(CLK_c), .D(n1879));   // coms.v(115[10] 136[6])
    SB_DFF data_in_frame_0__i33 (.Q(data_in_field[33]), .C(CLK_c), .D(data_in_frame_7__7__N_179[33]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i32 (.Q(data_in_field[32]), .C(CLK_c), .D(data_in_frame_7__7__N_179[32]));   // coms.v(164[10] 192[6])
    SB_LUT4 i4_4_lut_adj_311 (.I0(data_in_field[23]), .I1(\data_in[6] [1]), 
            .I2(data_in_field[21]), .I3(data_in_field[7]), .O(n10_adj_861));   // coms.v(81[17:84])
    defparam i4_4_lut_adj_311.LUT_INIT = 16'h6996;
    SB_DFFESR byte_transmit_counter2_313_314__i3 (.Q(byte_transmit_counter2[2]), 
            .C(CLK_c), .E(n690), .D(n2[2]), .R(n1733));   // coms.v(184[39:65])
    SB_LUT4 i4_4_lut_adj_312 (.I0(\data_in[7] [7]), .I1(data_in_field[19]), 
            .I2(n1438), .I3(data_in_field[35]), .O(n10_adj_864));   // coms.v(80[17:84])
    defparam i4_4_lut_adj_312.LUT_INIT = 16'h6996;
    SB_LUT4 i3_3_lut (.I0(n4340), .I1(\data_in[7] [3]), .I2(data_in_field[47]), 
            .I3(GND_net), .O(n8_adj_865));   // coms.v(77[17:92])
    defparam i3_3_lut.LUT_INIT = 16'h9696;
    SB_DFF data_out_0__i30 (.Q(\data_out_field[29] ), .C(CLK_c), .D(n1878));   // coms.v(115[10] 136[6])
    SB_LUT4 i3_4_lut_adj_313 (.I0(n1407), .I1(n4285), .I2(\data_in[7] [5]), 
            .I3(n4365), .O(n4366));   // coms.v(174[14:57])
    defparam i3_4_lut_adj_313.LUT_INIT = 16'h6996;
    SB_DFF data_in_0___i14 (.Q(\data_in[1] [5]), .C(CLK_c), .D(n1980));   // coms.v(146[10] 154[6])
    SB_DFF data_out_0__i31 (.Q(\data_out_field[30] ), .C(CLK_c), .D(n1877));   // coms.v(115[10] 136[6])
    SB_LUT4 i3_4_lut_adj_314 (.I0(n1340), .I1(\data_in[6] [5]), .I2(data_in_field[42]), 
            .I3(n4291), .O(n4292));   // coms.v(174[14:57])
    defparam i3_4_lut_adj_314.LUT_INIT = 16'h6996;
    SB_LUT4 i4_4_lut_adj_315 (.I0(data_in_field[29]), .I1(n4366), .I2(n8_adj_865), 
            .I3(data_in_field[30]), .O(n20_adj_840));   // coms.v(174[14:57])
    defparam i4_4_lut_adj_315.LUT_INIT = 16'hdeed;
    SB_LUT4 i4_4_lut_adj_316 (.I0(n1397), .I1(n1441), .I2(data_in_field[43]), 
            .I3(data_in_field[12]), .O(n10_adj_866));   // coms.v(174[14:57])
    defparam i4_4_lut_adj_316.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_317 (.I0(\data_in[6] [3]), .I1(data_in_field[9]), 
            .I2(data_in_field[37]), .I3(n4346), .O(n4347));   // coms.v(174[14:57])
    defparam i3_4_lut_adj_317.LUT_INIT = 16'h6996;
    SB_LUT4 i4_4_lut_adj_318 (.I0(data_in_field[24]), .I1(\data_in[6] [4]), 
            .I2(data_in_field[26]), .I3(data_in_field[11]), .O(n10_adj_845));   // coms.v(174[14:57])
    defparam i4_4_lut_adj_318.LUT_INIT = 16'h6996;
    SB_DFF data_in_frame_0__i31 (.Q(data_in_field[31]), .C(CLK_c), .D(data_in_frame_7__7__N_179[31]));   // coms.v(164[10] 192[6])
    SB_DFFESR byte_transmit_counter2_313_314__i2 (.Q(byte_transmit_counter2[1]), 
            .C(CLK_c), .E(n690), .D(n2[1]), .R(n1733));   // coms.v(184[39:65])
    SB_LUT4 i3_4_lut_adj_319 (.I0(data_in_field[24]), .I1(data_in_field[22]), 
            .I2(data_in_field[9]), .I3(data_in_field[39]), .O(n8_adj_868));   // coms.v(174[14:57])
    defparam i3_4_lut_adj_319.LUT_INIT = 16'h6996;
    SB_LUT4 i8_4_lut (.I0(data_in_field[11]), .I1(n16), .I2(n4365), .I3(data_in_field[12]), 
            .O(n18_adj_869));   // coms.v(74[17:38])
    defparam i8_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i7_4_lut (.I0(data_in_field[42]), .I1(n4282), .I2(data_in_field[26]), 
            .I3(n4346), .O(n17_adj_870));   // coms.v(74[17:38])
    defparam i7_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i5_3_lut (.I0(data_in_field[35]), .I1(n10_adj_861), .I2(n4316), 
            .I3(GND_net), .O(n4317));   // coms.v(81[17:84])
    defparam i5_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i7_4_lut_adj_320 (.I0(n4347), .I1(\data_in[6] [6]), .I2(n10_adj_866), 
            .I3(data_in_field[40]), .O(n23));   // coms.v(174[14:57])
    defparam i7_4_lut_adj_320.LUT_INIT = 16'hebbe;
    SB_LUT4 i3_4_lut_adj_321 (.I0(data_in_field[46]), .I1(\data_in[7] [2]), 
            .I2(n1397), .I3(n4282), .O(n4283));   // coms.v(174[14:57])
    defparam i3_4_lut_adj_321.LUT_INIT = 16'h6996;
    SB_LUT4 i12_4_lut (.I0(n23), .I1(n4317), .I2(n17_adj_870), .I3(n18_adj_869), 
            .O(n28_adj_846));   // coms.v(174[14:57])
    defparam i12_4_lut.LUT_INIT = 16'heffe;
    SB_LUT4 i5_4_lut_adj_322 (.I0(\data_in[6] [2]), .I1(n4339), .I2(n8_adj_868), 
            .I3(n4316), .O(n21_c));   // coms.v(174[14:57])
    defparam i5_4_lut_adj_322.LUT_INIT = 16'hedde;
    SB_LUT4 i1_rep_16_2_lut (.I0(data_in_field[16]), .I1(data_in_field[30]), 
            .I2(GND_net), .I3(GND_net), .O(n4896));   // coms.v(174[14:57])
    defparam i1_rep_16_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i5_4_lut_adj_323 (.I0(n1474), .I1(n4896), .I2(data_in_field[0]), 
            .I3(n4340), .O(n12_c));   // coms.v(74[17:38])
    defparam i5_4_lut_adj_323.LUT_INIT = 16'h6996;
    SB_LUT4 i4_4_lut_adj_324 (.I0(\data_in[7] [6]), .I1(data_in_field[46]), 
            .I2(data_in_field[5]), .I3(data_in_field[4]), .O(n10_c));   // coms.v(80[17:84])
    defparam i4_4_lut_adj_324.LUT_INIT = 16'h6996;
    SB_LUT4 i6_4_lut_adj_325 (.I0(n4343), .I1(n12_c), .I2(n1456), .I3(\data_in[7] [0]), 
            .O(n4345));   // coms.v(74[17:38])
    defparam i6_4_lut_adj_325.LUT_INIT = 16'h6996;
    SB_LUT4 i9_4_lut_adj_326 (.I0(n17), .I1(n13), .I2(n4360), .I3(n14), 
            .O(n25_adj_871));   // coms.v(174[14:57])
    defparam i9_4_lut_adj_326.LUT_INIT = 16'hbfef;
    SB_LUT4 byte_transmit_counter2_0__bdd_4_lut (.I0(byte_transmit_counter2[0]), 
            .I1(\data_in_frame[6] [6]), .I2(\data_in_frame[7] [6]), .I3(byte_transmit_counter2[1]), 
            .O(n4867));
    defparam byte_transmit_counter2_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n4867_bdd_4_lut (.I0(n4867), .I1(data_in_field[46]), .I2(data_in_field[38]), 
            .I3(byte_transmit_counter2[1]), .O(n4870));
    defparam n4867_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i2492_4_lut (.I0(n25_adj_871), .I1(n1245), .I2(n30_adj_847), 
            .I3(n26_adj_841), .O(n2706));
    defparam i2492_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut (.I0(byte_transmit_counter[0]), 
            .I1(\data_out[6] [1]), .I2(\data_out[7] [1]), .I3(byte_transmit_counter[1]), 
            .O(n4861));
    defparam byte_transmit_counter_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_DFF data_in_frame_0__i30 (.Q(data_in_field[30]), .C(CLK_c), .D(data_in_frame_7__7__N_179[30]));   // coms.v(164[10] 192[6])
    SB_LUT4 n4861_bdd_4_lut (.I0(n4861), .I1(data_out_field_47__N_656[41]), 
            .I2(data_out_field_47__N_656[33]), .I3(byte_transmit_counter[1]), 
            .O(n4864));
    defparam n4861_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF data_in_frame_0__i29 (.Q(data_in_field[29]), .C(CLK_c), .D(data_in_frame_7__7__N_179[29]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_0___i24 (.Q(\data_in[2] [7]), .C(CLK_c), .D(n1990));   // coms.v(146[10] 154[6])
    SB_LUT4 i1688_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[6] [2]), .I3(\data_in_frame[6] [2]), .O(n1909));
    defparam i1688_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF data_in_frame_0__i28 (.Q(data_in_field[28]), .C(CLK_c), .D(data_in_frame_7__7__N_179[28]));   // coms.v(164[10] 192[6])
    SB_LUT4 byte_transmit_counter2_0__bdd_4_lut_4508 (.I0(byte_transmit_counter2[0]), 
            .I1(\data_in_frame[6] [4]), .I2(\data_in_frame[7] [4]), .I3(byte_transmit_counter2[1]), 
            .O(n4849));
    defparam byte_transmit_counter2_0__bdd_4_lut_4508.LUT_INIT = 16'he4aa;
    SB_LUT4 n4849_bdd_4_lut (.I0(n4849), .I1(data_in_field[44]), .I2(data_in_field[36]), 
            .I3(byte_transmit_counter2[1]), .O(n4852));
    defparam n4849_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1694_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[7] [0]), .I3(\data_in_frame[7] [0]), .O(n1915));
    defparam i1694_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 byte_transmit_counter2_0__bdd_4_lut_4493 (.I0(byte_transmit_counter2[0]), 
            .I1(\data_in_frame[6] [3]), .I2(\data_in_frame[7] [3]), .I3(byte_transmit_counter2[1]), 
            .O(n4843));
    defparam byte_transmit_counter2_0__bdd_4_lut_4493.LUT_INIT = 16'he4aa;
    SB_LUT4 n4843_bdd_4_lut (.I0(n4843), .I1(data_in_field[43]), .I2(data_in_field[35]), 
            .I3(byte_transmit_counter2[1]), .O(n4846));
    defparam n4843_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF data_in_0___i3 (.Q(\data_in[0] [2]), .C(CLK_c), .D(n1969));   // coms.v(146[10] 154[6])
    SB_LUT4 i4376_2_lut (.I0(\FRAME_MATCHER.wait_for_transmission ), .I1(n2706), 
            .I2(GND_net), .I3(GND_net), .O(n1733));
    defparam i4376_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 byte_transmit_counter2_0__bdd_4_lut_4488 (.I0(byte_transmit_counter2[0]), 
            .I1(\data_in_frame[6] [2]), .I2(\data_in_frame[7] [2]), .I3(byte_transmit_counter2[1]), 
            .O(n4837));
    defparam byte_transmit_counter2_0__bdd_4_lut_4488.LUT_INIT = 16'he4aa;
    SB_DFF data_in_0___i13 (.Q(\data_in[1] [4]), .C(CLK_c), .D(n1979));   // coms.v(146[10] 154[6])
    SB_LUT4 n4837_bdd_4_lut (.I0(n4837), .I1(data_in_field[42]), .I2(data_in_field[34]), 
            .I3(byte_transmit_counter2[1]), .O(n4840));
    defparam n4837_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF data_in_frame_0__i27 (.Q(data_in_field[27]), .C(CLK_c), .D(data_in_frame_7__7__N_179[27]));   // coms.v(164[10] 192[6])
    SB_LUT4 n4747_bdd_4_lut (.I0(n4747), .I1(n4443), .I2(n4442), .I3(byte_transmit_counter[2]), 
            .O(\tx_data[5]_keep ));
    defparam n4747_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF data_in_0___i10 (.Q(\data_in[1] [1]), .C(CLK_c), .D(n1976));   // coms.v(146[10] 154[6])
    SB_LUT4 byte_transmit_counter_1__bdd_4_lut (.I0(byte_transmit_counter[1]), 
            .I1(n4481), .I2(n4482), .I3(byte_transmit_counter[2]), .O(n4831));
    defparam byte_transmit_counter_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n4831_bdd_4_lut (.I0(n4831), .I1(n4509), .I2(n4508), .I3(byte_transmit_counter[2]), 
            .O(\tx_data[2]_keep ));
    defparam n4831_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF data_in_0___i8 (.Q(\data_in[0] [7]), .C(CLK_c), .D(n1974));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i7 (.Q(\data_in[0] [6]), .C(CLK_c), .D(n1973));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i9 (.Q(\data_in[1] [0]), .C(CLK_c), .D(n1975));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i6 (.Q(\data_in[0] [5]), .C(CLK_c), .D(n1972));   // coms.v(146[10] 154[6])
    SB_DFF data_in_frame_0__i26 (.Q(data_in_field[26]), .C(CLK_c), .D(data_in_frame_7__7__N_179[26]));   // coms.v(164[10] 192[6])
    SB_LUT4 i4123_3_lut (.I0(data_in_field[1]), .I1(data_in_field[9]), .I2(byte_transmit_counter2[0]), 
            .I3(GND_net), .O(n4454));
    defparam i4123_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4124_3_lut (.I0(data_in_field[17]), .I1(data_in_field[25]), 
            .I2(byte_transmit_counter2[0]), .I3(GND_net), .O(n4455));
    defparam i4124_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 byte_transmit_counter_1__bdd_4_lut_4478 (.I0(byte_transmit_counter[1]), 
            .I1(n4496), .I2(n4497), .I3(byte_transmit_counter[2]), .O(n4825));
    defparam byte_transmit_counter_1__bdd_4_lut_4478.LUT_INIT = 16'he4aa;
    SB_LUT4 i1693_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[6] [7]), .I3(\data_in_frame[6] [7]), .O(n1914));
    defparam i1693_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 n4825_bdd_4_lut (.I0(n4825), .I1(n4491), .I2(n4490), .I3(byte_transmit_counter[2]), 
            .O(\tx_data[0]_keep ));
    defparam n4825_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF data_in_frame_0__i25 (.Q(data_in_field[25]), .C(CLK_c), .D(data_in_frame_7__7__N_179[25]));   // coms.v(164[10] 192[6])
    SB_LUT4 byte_transmit_counter2_1__bdd_4_lut (.I0(byte_transmit_counter2[1]), 
            .I1(n4499), .I2(n4500), .I3(byte_transmit_counter2[2]), .O(n4819));
    defparam byte_transmit_counter2_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_DFF data_in_frame_0__i24 (.Q(data_in_field[24]), .C(CLK_c), .D(data_in_frame_7__7__N_179[24]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_0___i23 (.Q(\data_in[2] [6]), .C(CLK_c), .D(n1989));   // coms.v(146[10] 154[6])
    SB_LUT4 i1692_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[6] [6]), .I3(\data_in_frame[6] [6]), .O(n1913));
    defparam i1692_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 data_315_add_4_17_lut (.I0(GND_net), .I1(GND_net), .I2(data[15]), 
            .I3(n3834), .O(n69[15])) /* synthesis syn_instantiated=1 */ ;
    defparam data_315_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 data_315_add_4_16_lut (.I0(GND_net), .I1(GND_net), .I2(data[14]), 
            .I3(n3833), .O(n69[14])) /* synthesis syn_instantiated=1 */ ;
    defparam data_315_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 n4819_bdd_4_lut (.I0(n4819), .I1(n4488), .I2(n4487), .I3(byte_transmit_counter2[2]), 
            .O(i_Tx_Byte[0]));
    defparam n4819_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF data_in_0___i34 (.Q(\data_in[4] [1]), .C(CLK_c), .D(n2000));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i22 (.Q(\data_in[2] [5]), .C(CLK_c), .D(n1988));   // coms.v(146[10] 154[6])
    SB_DFF data_in_frame_0__i23 (.Q(data_in_field[23]), .C(CLK_c), .D(data_in_frame_7__7__N_179[23]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_0___i12 (.Q(\data_in[1] [3]), .C(CLK_c), .D(n1978));   // coms.v(146[10] 154[6])
    SB_DFF data_in_frame_0__i22 (.Q(data_in_field[22]), .C(CLK_c), .D(data_in_frame_7__7__N_179[22]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i21 (.Q(data_in_field[21]), .C(CLK_c), .D(data_in_frame_7__7__N_179[21]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i20 (.Q(data_in_field[20]), .C(CLK_c), .D(data_in_frame_7__7__N_179[20]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i19 (.Q(data_in_field[19]), .C(CLK_c), .D(data_in_frame_7__7__N_179[19]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i18 (.Q(data_in_field[18]), .C(CLK_c), .D(data_in_frame_7__7__N_179[18]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i17 (.Q(data_in_field[17]), .C(CLK_c), .D(data_in_frame_7__7__N_179[17]));   // coms.v(164[10] 192[6])
    SB_CARRY data_315_add_4_16 (.CI(n3833), .I0(GND_net), .I1(data[14]), 
            .CO(n3834));
    SB_LUT4 i4196_3_lut (.I0(\data_in_frame[6] [1]), .I1(\data_in_frame[7] [1]), 
            .I2(byte_transmit_counter2[0]), .I3(GND_net), .O(n4527));
    defparam i4196_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 byte_transmit_counter2_1__bdd_4_lut_4468 (.I0(byte_transmit_counter2[1]), 
            .I1(n4502), .I2(n4503), .I3(byte_transmit_counter2[2]), .O(n4813));
    defparam byte_transmit_counter2_1__bdd_4_lut_4468.LUT_INIT = 16'he4aa;
    SB_LUT4 n4813_bdd_4_lut (.I0(n4813), .I1(n4485), .I2(n4484), .I3(byte_transmit_counter2[2]), 
            .O(i_Tx_Byte[7]));
    defparam n4813_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1698_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[7] [4]), .I3(\data_in_frame[7] [4]), .O(n1919));
    defparam i1698_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 byte_transmit_counter_310_311_add_4_4_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_transmit_counter[2]), .I3(n3863), .O(n1[2])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_transmit_counter_310_311_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4195_3_lut (.I0(data_in_field[33]), .I1(data_in_field[41]), 
            .I2(byte_transmit_counter2[0]), .I3(GND_net), .O(n4526));
    defparam i4195_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 byte_transmit_counter2_1__bdd_4_lut_4463 (.I0(byte_transmit_counter2[1]), 
            .I1(n4526), .I2(n4527), .I3(byte_transmit_counter2[2]), .O(n4801));
    defparam byte_transmit_counter2_1__bdd_4_lut_4463.LUT_INIT = 16'he4aa;
    SB_LUT4 i4153_3_lut (.I0(data_in_field[7]), .I1(data_in_field[15]), 
            .I2(byte_transmit_counter2[0]), .I3(GND_net), .O(n4484));
    defparam i4153_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4154_3_lut (.I0(data_in_field[23]), .I1(data_in_field[31]), 
            .I2(byte_transmit_counter2[0]), .I3(GND_net), .O(n4485));
    defparam i4154_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n4801_bdd_4_lut (.I0(n4801), .I1(n4455), .I2(n4454), .I3(byte_transmit_counter2[2]), 
            .O(i_Tx_Byte[1]));
    defparam n4801_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i4172_3_lut (.I0(\data_in_frame[6] [7]), .I1(\data_in_frame[7] [7]), 
            .I2(byte_transmit_counter2[0]), .I3(GND_net), .O(n4503));
    defparam i4172_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 byte_transmit_counter_310_311_add_4_3_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_transmit_counter[1]), .I3(n3862), .O(n1[1])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_transmit_counter_310_311_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_DFF data_in_0___i21 (.Q(\data_in[2] [4]), .C(CLK_c), .D(n1987));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i33 (.Q(\data_in[4] [0]), .C(CLK_c), .D(n1999));   // coms.v(146[10] 154[6])
    SB_DFF data_in_frame_0__i16 (.Q(data_in_field[16]), .C(CLK_c), .D(data_in_frame_7__7__N_179[16]));   // coms.v(164[10] 192[6])
    SB_LUT4 data_315_add_4_15_lut (.I0(GND_net), .I1(GND_net), .I2(data[13]), 
            .I3(n3832), .O(n69[13])) /* synthesis syn_instantiated=1 */ ;
    defparam data_315_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 byte_transmit_counter2_0__bdd_4_lut_4483 (.I0(byte_transmit_counter2[0]), 
            .I1(data_in_field[18]), .I2(data_in_field[26]), .I3(byte_transmit_counter2[1]), 
            .O(n4795));
    defparam byte_transmit_counter2_0__bdd_4_lut_4483.LUT_INIT = 16'he4aa;
    SB_DFF data_in_frame_0__i15 (.Q(data_in_field[15]), .C(CLK_c), .D(data_in_frame_7__7__N_179[15]));   // coms.v(164[10] 192[6])
    SB_LUT4 n4795_bdd_4_lut (.I0(n4795), .I1(data_in_field[10]), .I2(data_in_field[2]), 
            .I3(byte_transmit_counter2[1]), .O(n4798));
    defparam n4795_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF data_in_frame_0__i14 (.Q(data_in_field[14]), .C(CLK_c), .D(data_in_frame_7__7__N_179[14]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i13 (.Q(data_in_field[13]), .C(CLK_c), .D(data_in_frame_7__7__N_179[13]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i12 (.Q(data_in_field[12]), .C(CLK_c), .D(data_in_frame_7__7__N_179[12]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i11 (.Q(data_in_field[11]), .C(CLK_c), .D(data_in_frame_7__7__N_179[11]));   // coms.v(164[10] 192[6])
    SB_CARRY data_315_add_4_15 (.CI(n3832), .I0(GND_net), .I1(data[13]), 
            .CO(n3833));
    SB_LUT4 i4171_3_lut (.I0(data_in_field[39]), .I1(data_in_field[47]), 
            .I2(byte_transmit_counter2[0]), .I3(GND_net), .O(n4502));
    defparam i4171_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF data_in_0___i20 (.Q(\data_in[2] [3]), .C(CLK_c), .D(n1986));   // coms.v(146[10] 154[6])
    SB_LUT4 byte_transmit_counter2_0__bdd_4_lut_4449 (.I0(byte_transmit_counter2[0]), 
            .I1(data_in_field[19]), .I2(data_in_field[27]), .I3(byte_transmit_counter2[1]), 
            .O(n4789));
    defparam byte_transmit_counter2_0__bdd_4_lut_4449.LUT_INIT = 16'he4aa;
    SB_LUT4 n4789_bdd_4_lut (.I0(n4789), .I1(data_in_field[11]), .I2(data_in_field[3]), 
            .I3(byte_transmit_counter2[1]), .O(n4792));
    defparam n4789_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 byte_transmit_counter_1__bdd_4_lut_4473 (.I0(byte_transmit_counter[1]), 
            .I1(n4529), .I2(n4530), .I3(byte_transmit_counter[2]), .O(n4783));
    defparam byte_transmit_counter_1__bdd_4_lut_4473.LUT_INIT = 16'he4aa;
    SB_DFF data_in_0___i32 (.Q(\data_in[3] [7]), .C(CLK_c), .D(n1998));   // coms.v(146[10] 154[6])
    SB_DFF data_in_frame_0__i10 (.Q(data_in_field[10]), .C(CLK_c), .D(data_in_frame_7__7__N_179[10]));   // coms.v(164[10] 192[6])
    SB_LUT4 n4783_bdd_4_lut (.I0(n4783), .I1(n4452), .I2(n4451), .I3(byte_transmit_counter[2]), 
            .O(tx_data[7]));
    defparam n4783_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF data_in_frame_0__i9 (.Q(data_in_field[9]), .C(CLK_c), .D(data_in_frame_7__7__N_179[9]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i8 (.Q(data_in_field[8]), .C(CLK_c), .D(data_in_frame_7__7__N_179[8]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i7 (.Q(data_in_field[7]), .C(CLK_c), .D(data_in_frame_7__7__N_179[7]));   // coms.v(164[10] 192[6])
    SB_LUT4 byte_transmit_counter2_0__bdd_4_lut_4444 (.I0(byte_transmit_counter2[0]), 
            .I1(data_in_field[20]), .I2(data_in_field[28]), .I3(byte_transmit_counter2[1]), 
            .O(n4777));
    defparam byte_transmit_counter2_0__bdd_4_lut_4444.LUT_INIT = 16'he4aa;
    SB_DFF \FRAME_MATCHER.wait_for_transmission_602  (.Q(\FRAME_MATCHER.wait_for_transmission ), 
           .C(CLK_c), .D(n6_adj_844));   // coms.v(164[10] 192[6])
    SB_DFF data_in_0___i39 (.Q(\data_in[4] [6]), .C(CLK_c), .D(n2005));   // coms.v(146[10] 154[6])
    SB_LUT4 n4777_bdd_4_lut (.I0(n4777), .I1(data_in_field[12]), .I2(data_in_field[4]), 
            .I3(byte_transmit_counter2[1]), .O(n4780));
    defparam n4777_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF data_in_0___i31 (.Q(\data_in[3] [6]), .C(CLK_c), .D(n1997));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i19 (.Q(\data_in[2] [2]), .C(CLK_c), .D(n1985));   // coms.v(146[10] 154[6])
    SB_LUT4 byte_transmit_counter_1__bdd_4_lut_4439 (.I0(byte_transmit_counter[1]), 
            .I1(n4532), .I2(n4533), .I3(byte_transmit_counter[2]), .O(n4771));
    defparam byte_transmit_counter_1__bdd_4_lut_4439.LUT_INIT = 16'he4aa;
    SB_DFF data_in_0___i11 (.Q(\data_in[1] [2]), .C(CLK_c), .D(n1977));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i18 (.Q(\data_in[2] [1]), .C(CLK_c), .D(n1984));   // coms.v(146[10] 154[6])
    SB_DFF data_in_frame_0__i6 (.Q(data_in_field[6]), .C(CLK_c), .D(data_in_frame_7__7__N_179[6]));   // coms.v(164[10] 192[6])
    SB_LUT4 n4771_bdd_4_lut (.I0(n4771), .I1(n4446), .I2(n4445), .I3(byte_transmit_counter[2]), 
            .O(\tx_data[6]_keep ));
    defparam n4771_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 byte_transmit_counter2_0__bdd_4_lut_4434 (.I0(byte_transmit_counter2[0]), 
            .I1(data_in_field[21]), .I2(data_in_field[29]), .I3(byte_transmit_counter2[1]), 
            .O(n4765));
    defparam byte_transmit_counter2_0__bdd_4_lut_4434.LUT_INIT = 16'he4aa;
    SB_LUT4 n4765_bdd_4_lut (.I0(n4765), .I1(data_in_field[13]), .I2(data_in_field[5]), 
            .I3(byte_transmit_counter2[1]), .O(n4768));
    defparam n4765_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF data_in_0___i30 (.Q(\data_in[3] [5]), .C(CLK_c), .D(n1996));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i17 (.Q(\data_in[2] [0]), .C(CLK_c), .D(n1983));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i29 (.Q(\data_in[3] [4]), .C(CLK_c), .D(n1995));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i38 (.Q(\data_in[4] [5]), .C(CLK_c), .D(n2004));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i28 (.Q(\data_in[3] [3]), .C(CLK_c), .D(n1994));   // coms.v(146[10] 154[6])
    SB_CARRY byte_transmit_counter_310_311_add_4_3 (.CI(n3862), .I0(GND_net), 
            .I1(byte_transmit_counter[1]), .CO(n3863));
    SB_LUT4 i1686_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[6] [0]), .I3(\data_in_frame[6] [0]), .O(n1907));
    defparam i1686_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF data_in_0___i16 (.Q(\data_in[1] [7]), .C(CLK_c), .D(n1982));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i27 (.Q(\data_in[3] [2]), .C(CLK_c), .D(n1993));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i37 (.Q(\data_in[4] [4]), .C(CLK_c), .D(n2003));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i26 (.Q(\data_in[3] [1]), .C(CLK_c), .D(n1992));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i36 (.Q(\data_in[4] [3]), .C(CLK_c), .D(n2002));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i5 (.Q(\data_in[0] [4]), .C(CLK_c), .D(n1971));   // coms.v(146[10] 154[6])
    SB_LUT4 data_315_add_4_14_lut (.I0(GND_net), .I1(GND_net), .I2(data[12]), 
            .I3(n3831), .O(n69[12])) /* synthesis syn_instantiated=1 */ ;
    defparam data_315_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1697_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[7] [3]), .I3(\data_in_frame[7] [3]), .O(n1918));
    defparam i1697_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF data_in_0___i4 (.Q(\data_in[0] [3]), .C(CLK_c), .D(n1970));   // coms.v(146[10] 154[6])
    SB_LUT4 i1696_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[7] [2]), .I3(\data_in_frame[7] [2]), .O(n1917));
    defparam i1696_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF data_in_0___i2 (.Q(\data_in[0] [1]), .C(CLK_c), .D(n1968));   // coms.v(146[10] 154[6])
    SB_DFF data_in_frame_0__i5 (.Q(data_in_field[5]), .C(CLK_c), .D(data_in_frame_7__7__N_179[5]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i4 (.Q(data_in_field[4]), .C(CLK_c), .D(data_in_frame_7__7__N_179[4]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i3 (.Q(data_in_field[3]), .C(CLK_c), .D(data_in_frame_7__7__N_179[3]));   // coms.v(164[10] 192[6])
    SB_LUT4 i1701_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[7] [7]), .I3(\data_in_frame[7] [7]), .O(n1922));
    defparam i1701_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1700_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[7] [6]), .I3(\data_in_frame[7] [6]), .O(n1921));
    defparam i1700_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_CARRY data_315_add_4_14 (.CI(n3831), .I0(GND_net), .I1(data[12]), 
            .CO(n3832));
    SB_DFF data_315__i0 (.Q(data[0]), .C(CLK_c), .D(n69[0]));   // coms.v(117[13:19])
    SB_DFF data_in_frame_0__i2 (.Q(data_in_field[2]), .C(CLK_c), .D(data_in_frame_7__7__N_179[2]));   // coms.v(164[10] 192[6])
    SB_LUT4 data_315_add_4_13_lut (.I0(GND_net), .I1(GND_net), .I2(data[11]), 
            .I3(n3830), .O(n69[11])) /* synthesis syn_instantiated=1 */ ;
    defparam data_315_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_DFF data_in_frame_0__i1 (.Q(data_in_field[1]), .C(CLK_c), .D(data_in_frame_7__7__N_179[1]));   // coms.v(164[10] 192[6])
    SB_LUT4 byte_transmit_counter_310_311_add_4_2_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_transmit_counter[0]), .I3(VCC_net), .O(n1[0])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_transmit_counter_310_311_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 n4729_bdd_4_lut (.I0(n4729), .I1(n4434), .I2(n4433), .I3(byte_transmit_counter[2]), 
            .O(\tx_data[4]_keep ));
    defparam n4729_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_572_i37_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[4] [4]), .I3(data_in_field[36]), .O(data_in_frame_7__7__N_179[36]));
    defparam mux_572_i37_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1687_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[6] [1]), .I3(\data_in_frame[6] [1]), .O(n1908));
    defparam i1687_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1691_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[6] [5]), .I3(\data_in_frame[6] [5]), .O(n1912));
    defparam i1691_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_CARRY byte_transmit_counter_310_311_add_4_2 (.CI(VCC_net), .I0(GND_net), 
            .I1(byte_transmit_counter[0]), .CO(n3862));
    SB_LUT4 i1695_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[7] [1]), .I3(\data_in_frame[7] [1]), .O(n1916));
    defparam i1695_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1699_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[7] [5]), .I3(\data_in_frame[7] [5]), .O(n1920));
    defparam i1699_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF data_out_0__i48 (.Q(data_out_field_47__N_656[47]), .C(CLK_c), 
           .D(data_out_7__7__N_51[47]));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i47 (.Q(data_out_field_47__N_656[46]), .C(CLK_c), 
           .D(data_out_7__7__N_51[46]));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i46 (.Q(data_out_field_47__N_656[45]), .C(CLK_c), 
           .D(data_out_7__7__N_51[45]));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i45 (.Q(data_out_field_47__N_656[44]), .C(CLK_c), 
           .D(data_out_7__7__N_51[44]));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i44 (.Q(\data_out_field[43] ), .C(CLK_c), .D(data_out_7__7__N_51[43]));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i43 (.Q(data_out_field_47__N_656[42]), .C(CLK_c), 
           .D(data_out_7__7__N_51[42]));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i42 (.Q(data_out_field_47__N_656[41]), .C(CLK_c), 
           .D(data_out_7__7__N_51[41]));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i41 (.Q(data_out_field_47__N_656[40]), .C(CLK_c), 
           .D(data_out_7__7__N_51[40]));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i40 (.Q(data_out_field_47__N_656[39]), .C(CLK_c), 
           .D(data_out_7__7__N_51[39]));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i39 (.Q(data_out_field_47__N_656[38]), .C(CLK_c), 
           .D(data_out_7__7__N_51[38]));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i38 (.Q(data_out_field_47__N_656[37]), .C(CLK_c), 
           .D(data_out_7__7__N_51[37]));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i37 (.Q(data_out_field_47__N_656[36]), .C(CLK_c), 
           .D(data_out_7__7__N_51[36]));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i36 (.Q(data_out_field_47__N_656[35]), .C(CLK_c), 
           .D(data_out_7__7__N_51[35]));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i35 (.Q(\data_out_field[34] ), .C(CLK_c), .D(data_out_7__7__N_51[34]));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i34 (.Q(data_out_field_47__N_656[33]), .C(CLK_c), 
           .D(data_out_7__7__N_51[33]));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i33 (.Q(data_out_field_47__N_656[32]), .C(CLK_c), 
           .D(data_out_7__7__N_51[32]));   // coms.v(115[10] 136[6])
    SB_DFF data_in_frame_0__i37 (.Q(data_in_field[37]), .C(CLK_c), .D(data_in_frame_7__7__N_179[37]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i38 (.Q(data_in_field[38]), .C(CLK_c), .D(data_in_frame_7__7__N_179[38]));   // coms.v(164[10] 192[6])
    SB_LUT4 byte_transmit_counter_1__bdd_4_lut_4397 (.I0(byte_transmit_counter[1]), 
            .I1(n4541), .I2(n4542), .I3(byte_transmit_counter[2]), .O(n4717));
    defparam byte_transmit_counter_1__bdd_4_lut_4397.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_572_i48_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[5] [7]), .I3(data_in_field[47]), .O(data_in_frame_7__7__N_179[47]));
    defparam mux_572_i48_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 mux_572_i47_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[5] [6]), .I3(data_in_field[46]), .O(data_in_frame_7__7__N_179[46]));
    defparam mux_572_i47_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i4334_2_lut (.I0(tx_active), .I1(tx_transmit), .I2(GND_net), 
            .I3(GND_net), .O(byte_transmit_counter_7__N_259));
    defparam i4334_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 i3_4_lut_adj_327 (.I0(byte_transmit_counter_7__N_259), .I1(byte_transmit_counter[0]), 
            .I2(byte_transmit_counter[2]), .I3(byte_transmit_counter[1]), 
            .O(n1553));
    defparam i3_4_lut_adj_327.LUT_INIT = 16'h8000;
    SB_DFF data_in_frame_0__i39 (.Q(data_in_field[39]), .C(CLK_c), .D(data_in_frame_7__7__N_179[39]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i40 (.Q(data_in_field[40]), .C(CLK_c), .D(data_in_frame_7__7__N_179[40]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i41 (.Q(data_in_field[41]), .C(CLK_c), .D(data_in_frame_7__7__N_179[41]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i42 (.Q(data_in_field[42]), .C(CLK_c), .D(data_in_frame_7__7__N_179[42]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i43 (.Q(data_in_field[43]), .C(CLK_c), .D(data_in_frame_7__7__N_179[43]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i44 (.Q(data_in_field[44]), .C(CLK_c), .D(data_in_frame_7__7__N_179[44]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i45 (.Q(data_in_field[45]), .C(CLK_c), .D(data_in_frame_7__7__N_179[45]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i46 (.Q(data_in_field[46]), .C(CLK_c), .D(data_in_frame_7__7__N_179[46]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i47 (.Q(data_in_field[47]), .C(CLK_c), .D(data_in_frame_7__7__N_179[47]));   // coms.v(164[10] 192[6])
    SB_LUT4 mux_572_i46_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[5] [5]), .I3(data_in_field[45]), .O(data_in_frame_7__7__N_179[45]));
    defparam mux_572_i46_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 mux_572_i45_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[5] [4]), .I3(data_in_field[44]), .O(data_in_frame_7__7__N_179[44]));
    defparam mux_572_i45_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i4156_3_lut (.I0(data_in_field[0]), .I1(data_in_field[8]), .I2(byte_transmit_counter2[0]), 
            .I3(GND_net), .O(n4487));
    defparam i4156_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_572_i44_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[5] [3]), .I3(data_in_field[43]), .O(data_in_frame_7__7__N_179[43]));
    defparam mux_572_i44_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i4157_3_lut (.I0(data_in_field[16]), .I1(data_in_field[24]), 
            .I2(byte_transmit_counter2[0]), .I3(GND_net), .O(n4488));
    defparam i4157_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6_2_lut (.I0(\data_in[1] [2]), .I1(\data_in[0] [5]), .I2(GND_net), 
            .I3(GND_net), .O(n22));   // coms.v(169[12:70])
    defparam i6_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i12_4_lut_adj_328 (.I0(\data_in[2] [6]), .I1(\data_in[3] [0]), 
            .I2(\data_in[3] [5]), .I3(\data_in[3] [4]), .O(n28_adj_872));   // coms.v(169[12:70])
    defparam i12_4_lut_adj_328.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_329 (.I0(\data_in[1] [7]), .I1(\data_in[1] [5]), 
            .I2(\data_in[0] [6]), .I3(\data_in[0] [7]), .O(n28));
    defparam i12_4_lut_adj_329.LUT_INIT = 16'h8000;
    SB_LUT4 mux_572_i43_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[5] [2]), .I3(data_in_field[42]), .O(data_in_frame_7__7__N_179[42]));
    defparam mux_572_i43_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 byte_transmit_counter2_313_314_add_4_4_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_transmit_counter2[2]), .I3(n3861), .O(n2[2])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_transmit_counter2_313_314_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_DFF data_in_frame_0__i61 (.Q(\data_in_frame[7] [5]), .C(CLK_c), .D(n1920));   // coms.v(164[10] 192[6])
    SB_LUT4 byte_transmit_counter2_313_314_add_4_3_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_transmit_counter2[1]), .I3(n3860), .O(n2[1])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_transmit_counter2_313_314_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut_4503 (.I0(byte_transmit_counter[0]), 
            .I1(\data_out_field[17] ), .I2(\data_out_field[25] ), .I3(byte_transmit_counter[1]), 
            .O(n4741));
    defparam byte_transmit_counter_0__bdd_4_lut_4503.LUT_INIT = 16'he4aa;
    SB_CARRY byte_transmit_counter2_313_314_add_4_3 (.CI(n3860), .I0(GND_net), 
            .I1(byte_transmit_counter2[1]), .CO(n3861));
    SB_LUT4 i10_4_lut_adj_330 (.I0(\data_in[2] [0]), .I1(\data_in[2] [3]), 
            .I2(\data_in[0] [3]), .I3(\data_in[2] [5]), .O(n26));
    defparam i10_4_lut_adj_330.LUT_INIT = 16'h8000;
    SB_DFF data_in_frame_0__i57 (.Q(\data_in_frame[7] [1]), .C(CLK_c), .D(n1916));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i53 (.Q(\data_in_frame[6] [5]), .C(CLK_c), .D(n1912));   // coms.v(164[10] 192[6])
    SB_LUT4 mux_572_i42_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[5] [1]), .I3(data_in_field[41]), .O(data_in_frame_7__7__N_179[41]));
    defparam mux_572_i42_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF data_in_frame_0__i49 (.Q(\data_in_frame[6] [1]), .C(CLK_c), .D(n1908));   // coms.v(164[10] 192[6])
    SB_LUT4 mux_572_i41_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[5] [0]), .I3(data_in_field[40]), .O(data_in_frame_7__7__N_179[40]));
    defparam mux_572_i41_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 mux_572_i40_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[4] [7]), .I3(data_in_field[39]), .O(data_in_frame_7__7__N_179[39]));
    defparam mux_572_i40_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 mux_572_i39_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[4] [6]), .I3(data_in_field[38]), .O(data_in_frame_7__7__N_179[38]));
    defparam mux_572_i39_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF data_in_frame_0__i36 (.Q(data_in_field[36]), .C(CLK_c), .D(data_in_frame_7__7__N_179[36]));   // coms.v(164[10] 192[6])
    SB_DFF data_in_0___i64 (.Q(\data_in[7] [7]), .C(CLK_c), .D(n2030));   // coms.v(146[10] 154[6])
    SB_LUT4 mux_572_i38_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[4] [5]), .I3(data_in_field[37]), .O(data_in_frame_7__7__N_179[37]));
    defparam mux_572_i38_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 mux_572_i2_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[0] [1]), .I3(data_in_field[1]), .O(data_in_frame_7__7__N_179[1]));
    defparam mux_572_i2_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF data_in_0___i63 (.Q(\data_in[7] [6]), .C(CLK_c), .D(n2029));   // coms.v(146[10] 154[6])
    SB_LUT4 byte_transmit_counter2_313_314_add_4_2_lut (.I0(GND_net), .I1(\FRAME_MATCHER.wait_for_transmission_N_397 ), 
            .I2(byte_transmit_counter2[0]), .I3(GND_net), .O(n2[0])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_transmit_counter2_313_314_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_transmit_counter2_313_314_add_4_2 (.CI(GND_net), .I0(\FRAME_MATCHER.wait_for_transmission_N_397 ), 
            .I1(byte_transmit_counter2[0]), .CO(n3860));
    SB_LUT4 mux_572_i3_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[0] [2]), .I3(data_in_field[2]), .O(data_in_frame_7__7__N_179[2]));
    defparam mux_572_i3_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 mux_572_i4_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[0] [3]), .I3(data_in_field[3]), .O(data_in_frame_7__7__N_179[3]));
    defparam mux_572_i4_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i4211_3_lut (.I0(\data_out[6] [3]), .I1(\data_out[7] [3]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n4542));
    defparam i4211_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4210_3_lut (.I0(data_out_field_47__N_656[35]), .I1(\data_out_field[43] ), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n4541));
    defparam i4210_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_572_i5_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[0] [4]), .I3(data_in_field[4]), .O(data_in_frame_7__7__N_179[4]));
    defparam mux_572_i5_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 n4717_bdd_4_lut (.I0(n4717), .I1(n4494), .I2(n4493), .I3(byte_transmit_counter[2]), 
            .O(tx_data[3]));
    defparam n4717_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i4169_3_lut (.I0(\data_in_frame[6] [0]), .I1(\data_in_frame[7] [0]), 
            .I2(byte_transmit_counter2[0]), .I3(GND_net), .O(n4500));
    defparam i4169_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_283_i33_3_lut (.I0(data[8]), .I1(data_out_field_47__N_656[32]), 
            .I2(n1553), .I3(GND_net), .O(data_out_7__7__N_51[32]));   // coms.v(122[16] 134[10])
    defparam mux_283_i33_3_lut.LUT_INIT = 16'hacac;
    SB_DFF data_in_0___i62 (.Q(\data_in[7] [5]), .C(CLK_c), .D(n2028));   // coms.v(146[10] 154[6])
    SB_LUT4 mux_283_i34_3_lut (.I0(data[9]), .I1(data_out_field_47__N_656[33]), 
            .I2(n1553), .I3(GND_net), .O(data_out_7__7__N_51[33]));   // coms.v(122[16] 134[10])
    defparam mux_283_i34_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 mux_283_i35_3_lut (.I0(data[10]), .I1(\data_out_field[34] ), 
            .I2(n1553), .I3(GND_net), .O(data_out_7__7__N_51[34]));   // coms.v(122[16] 134[10])
    defparam mux_283_i35_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 mux_283_i36_3_lut (.I0(data[11]), .I1(data_out_field_47__N_656[35]), 
            .I2(n1553), .I3(GND_net), .O(data_out_7__7__N_51[35]));   // coms.v(122[16] 134[10])
    defparam mux_283_i36_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4168_3_lut (.I0(data_in_field[32]), .I1(data_in_field[40]), 
            .I2(byte_transmit_counter2[0]), .I3(GND_net), .O(n4499));
    defparam i4168_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_283_i37_3_lut (.I0(data[12]), .I1(data_out_field_47__N_656[36]), 
            .I2(n1553), .I3(GND_net), .O(data_out_7__7__N_51[36]));   // coms.v(122[16] 134[10])
    defparam mux_283_i37_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY data_315_add_4_13 (.CI(n3830), .I0(GND_net), .I1(data[11]), 
            .CO(n3831));
    SB_LUT4 data_315_add_4_12_lut (.I0(GND_net), .I1(GND_net), .I2(data[10]), 
            .I3(n3829), .O(n69[10])) /* synthesis syn_instantiated=1 */ ;
    defparam data_315_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_283_i38_3_lut (.I0(data[13]), .I1(data_out_field_47__N_656[37]), 
            .I2(n1553), .I3(GND_net), .O(data_out_7__7__N_51[37]));   // coms.v(122[16] 134[10])
    defparam mux_283_i38_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 mux_283_i39_3_lut (.I0(data[14]), .I1(data_out_field_47__N_656[38]), 
            .I2(n1553), .I3(GND_net), .O(data_out_7__7__N_51[38]));   // coms.v(122[16] 134[10])
    defparam mux_283_i39_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 mux_283_i40_3_lut (.I0(data[15]), .I1(data_out_field_47__N_656[39]), 
            .I2(n1553), .I3(GND_net), .O(data_out_7__7__N_51[39]));   // coms.v(122[16] 134[10])
    defparam mux_283_i40_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 mux_572_i6_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[0] [5]), .I3(data_in_field[5]), .O(data_in_frame_7__7__N_179[5]));
    defparam mux_572_i6_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 mux_283_i41_3_lut (.I0(data[0]), .I1(data_out_field_47__N_656[40]), 
            .I2(n1553), .I3(GND_net), .O(data_out_7__7__N_51[40]));   // coms.v(122[16] 134[10])
    defparam mux_283_i41_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4159_3_lut (.I0(\data_out_field[0] ), .I1(\data_out_field[8] ), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n4490));
    defparam i4159_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_283_i42_3_lut (.I0(data[1]), .I1(data_out_field_47__N_656[41]), 
            .I2(n1553), .I3(GND_net), .O(data_out_7__7__N_51[41]));   // coms.v(122[16] 134[10])
    defparam mux_283_i42_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 mux_283_i43_3_lut (.I0(data[2]), .I1(data_out_field_47__N_656[42]), 
            .I2(n1553), .I3(GND_net), .O(data_out_7__7__N_51[42]));   // coms.v(122[16] 134[10])
    defparam mux_283_i43_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4160_3_lut (.I0(\data_out_field[16] ), .I1(\data_out_field[24] ), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n4491));
    defparam i4160_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4166_3_lut (.I0(\data_out[6] [0]), .I1(\data_out[7] [0]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n4497));
    defparam i4166_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_283_i44_3_lut (.I0(data[3]), .I1(\data_out_field[43] ), 
            .I2(n1553), .I3(GND_net), .O(data_out_7__7__N_51[43]));   // coms.v(122[16] 134[10])
    defparam mux_283_i44_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 mux_283_i45_3_lut (.I0(data[4]), .I1(data_out_field_47__N_656[44]), 
            .I2(n1553), .I3(GND_net), .O(data_out_7__7__N_51[44]));   // coms.v(122[16] 134[10])
    defparam mux_283_i45_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4165_3_lut (.I0(data_out_field_47__N_656[32]), .I1(data_out_field_47__N_656[40]), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n4496));
    defparam i4165_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_283_i46_3_lut (.I0(data[5]), .I1(data_out_field_47__N_656[45]), 
            .I2(n1553), .I3(GND_net), .O(data_out_7__7__N_51[45]));   // coms.v(122[16] 134[10])
    defparam mux_283_i46_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 mux_283_i47_3_lut (.I0(data[6]), .I1(data_out_field_47__N_656[46]), 
            .I2(n1553), .I3(GND_net), .O(data_out_7__7__N_51[46]));   // coms.v(122[16] 134[10])
    defparam mux_283_i47_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 mux_283_i48_3_lut (.I0(data[7]), .I1(data_out_field_47__N_656[47]), 
            .I2(n1553), .I3(GND_net), .O(data_out_7__7__N_51[47]));   // coms.v(122[16] 134[10])
    defparam mux_283_i48_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 n4741_bdd_4_lut (.I0(n4741), .I1(\data_out_field[9] ), .I2(\data_out_field[1] ), 
            .I3(byte_transmit_counter[1]), .O(n4744));
    defparam n4741_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_572_i7_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[0] [6]), .I3(data_in_field[6]), .O(data_in_frame_7__7__N_179[6]));
    defparam mux_572_i7_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i4177_3_lut (.I0(\data_out_field[2] ), .I1(\data_out_field[10] ), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n4508));
    defparam i4177_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4178_3_lut (.I0(\data_out_field[18] ), .I1(\data_out_field[26] ), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n4509));
    defparam i4178_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4151_3_lut (.I0(\data_out[6] [2]), .I1(\data_out[7] [2]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n4482));
    defparam i4151_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4150_3_lut (.I0(\data_out_field[34] ), .I1(data_out_field_47__N_656[42]), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n4481));
    defparam i4150_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4111_3_lut (.I0(\data_out_field[5] ), .I1(\data_out_field[13] ), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n4442));
    defparam i4111_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4112_3_lut (.I0(\data_out_field[21] ), .I1(\data_out_field[29] ), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n4443));
    defparam i4112_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11_4_lut (.I0(\data_in[0] [1]), .I1(\data_in[1] [1]), .I2(\data_in[0] [4]), 
            .I3(\data_in[2] [7]), .O(n27));
    defparam i11_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 mux_572_i8_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[0] [7]), .I3(data_in_field[7]), .O(data_in_frame_7__7__N_179[7]));
    defparam mux_572_i8_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 mux_572_i9_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[1] [0]), .I3(data_in_field[8]), .O(data_in_frame_7__7__N_179[8]));
    defparam mux_572_i9_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_CARRY data_315_add_4_12 (.CI(n3829), .I0(GND_net), .I1(data[10]), 
            .CO(n3830));
    SB_LUT4 i4_4_lut_adj_331 (.I0(\data_out_field[6] ), .I1(\data_out_field[5] ), 
            .I2(data_out_field_47__N_656[47]), .I3(\data_out_field[21] ), 
            .O(n10));   // coms.v(81[17:84])
    defparam i4_4_lut_adj_331.LUT_INIT = 16'h6996;
    SB_LUT4 mux_572_i10_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[1] [1]), .I3(data_in_field[9]), .O(data_in_frame_7__7__N_179[9]));
    defparam mux_572_i10_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 mux_572_i11_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[1] [2]), .I3(data_in_field[10]), .O(data_in_frame_7__7__N_179[10]));
    defparam mux_572_i11_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i4_4_lut_adj_332 (.I0(n1419), .I1(\data_out_field[4] ), .I2(data_out_field_47__N_656[46]), 
            .I3(data_out_field_47__N_656[35]), .O(n10_adj_11));   // coms.v(78[17:84])
    defparam i4_4_lut_adj_332.LUT_INIT = 16'h6996;
    SB_LUT4 mux_572_i12_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[1] [3]), .I3(data_in_field[11]), .O(data_in_frame_7__7__N_179[11]));
    defparam mux_572_i12_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i4_4_lut_adj_333 (.I0(\data_out_field[18] ), .I1(\data_out_field[16] ), 
            .I2(data_out_field_47__N_656[33]), .I3(\data_out_field[30] ), 
            .O(n10_adj_12));   // coms.v(78[17:84])
    defparam i4_4_lut_adj_333.LUT_INIT = 16'h6996;
    SB_LUT4 i4102_3_lut (.I0(\data_out_field[4] ), .I1(\data_out_field[12] ), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n4433));
    defparam i4102_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4103_3_lut (.I0(\data_out_field[20] ), .I1(\data_out_field[28] ), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n4434));
    defparam i4103_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_334 (.I0(data_out_field_47__N_656[38]), .I1(\data_out_field[8] ), 
            .I2(\data_out_field[23] ), .I3(GND_net), .O(n4));   // coms.v(83[17:76])
    defparam i1_2_lut_3_lut_adj_334.LUT_INIT = 16'h9696;
    SB_LUT4 i3_4_lut_adj_335 (.I0(data_out_field_47__N_656[47]), .I1(n1356), 
            .I2(n1350), .I3(n4325), .O(n4326));   // coms.v(77[17:92])
    defparam i3_4_lut_adj_335.LUT_INIT = 16'h6996;
    SB_LUT4 i3_3_lut_adj_336 (.I0(n4362), .I1(\data_out_field[31] ), .I2(\data_out_field[28] ), 
            .I3(GND_net), .O(n8));   // coms.v(76[17:92])
    defparam i3_3_lut_adj_336.LUT_INIT = 16'h9696;
    SB_LUT4 mux_572_i13_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[1] [4]), .I3(data_in_field[12]), .O(data_in_frame_7__7__N_179[12]));
    defparam mux_572_i13_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_2_lut_3_lut (.I0(\data_out_field[22] ), .I1(data_out_field_47__N_656[38]), 
            .I2(\data_out_field[24] ), .I3(GND_net), .O(n7));   // coms.v(84[18:77])
    defparam i2_2_lut_3_lut.LUT_INIT = 16'h9696;
    SB_DFF data_in_0___i61 (.Q(\data_in[7] [4]), .C(CLK_c), .D(n2027));   // coms.v(146[10] 154[6])
    SB_LUT4 data_315_add_4_11_lut (.I0(GND_net), .I1(GND_net), .I2(data[9]), 
            .I3(n3828), .O(n69[9])) /* synthesis syn_instantiated=1 */ ;
    defparam data_315_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_DFF data_in_0___i60 (.Q(\data_in[7] [3]), .C(CLK_c), .D(n2026));   // coms.v(146[10] 154[6])
    SB_LUT4 i2_2_lut_4_lut (.I0(\data_out_field[10] ), .I1(data_out_field_47__N_656[39]), 
            .I2(\data_out_field[9] ), .I3(data_out_field_47__N_656[37]), 
            .O(n7_adj_13));   // coms.v(85[18:78])
    defparam i2_2_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 byte_transmit_counter_1__bdd_4_lut_4410 (.I0(byte_transmit_counter[1]), 
            .I1(n4538), .I2(n4539), .I3(byte_transmit_counter[2]), .O(n4729));
    defparam byte_transmit_counter_1__bdd_4_lut_4410.LUT_INIT = 16'he4aa;
    SB_LUT4 i3_4_lut_adj_337 (.I0(n1377), .I1(n1300), .I2(\data_out_field[1] ), 
            .I3(n4386), .O(n4380));   // coms.v(74[17:38])
    defparam i3_4_lut_adj_337.LUT_INIT = 16'h6996;
    SB_LUT4 i3_3_lut_adj_338 (.I0(n4380), .I1(\data_out_field[0] ), .I2(\data_out_field[13] ), 
            .I3(GND_net), .O(n8_adj_14));   // coms.v(74[17:38])
    defparam i3_3_lut_adj_338.LUT_INIT = 16'h9696;
    SB_LUT4 mux_572_i14_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[1] [5]), .I3(data_in_field[13]), .O(data_in_frame_7__7__N_179[13]));
    defparam mux_572_i14_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i3_3_lut_4_lut (.I0(\data_out_field[25] ), .I1(data_out_field_47__N_656[40]), 
            .I2(\data_out_field[23] ), .I3(data_out_field_47__N_656[38]), 
            .O(n8_adj_15));   // coms.v(85[18:78])
    defparam i3_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i2_2_lut (.I0(n1347), .I1(n4325), .I2(GND_net), .I3(GND_net), 
            .O(n7_adj_16));   // coms.v(74[17:38])
    defparam i2_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_4_lut (.I0(data_out_field_47__N_656[39]), .I1(\data_out_field[11] ), 
            .I2(\data_out_field[25] ), .I3(\data_out_field[27] ), .O(n4_adj_17));   // coms.v(87[18:79])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_339 (.I0(data_out_field_47__N_656[33]), .I1(\data_out_field[34] ), 
            .I2(GND_net), .I3(GND_net), .O(n1419));   // coms.v(75[17:341])
    defparam i1_2_lut_adj_339.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_340 (.I0(data_out_field_47__N_656[32]), .I1(\data_out_field[31] ), 
            .I2(GND_net), .I3(GND_net), .O(n4349));   // coms.v(77[17:92])
    defparam i1_2_lut_adj_340.LUT_INIT = 16'h6666;
    SB_LUT4 i9_4_lut_adj_341 (.I0(\data_in[1] [0]), .I1(\data_in[2] [2]), 
            .I2(\data_in[1] [3]), .I3(\data_in[1] [4]), .O(n25));
    defparam i9_4_lut_adj_341.LUT_INIT = 16'h8000;
    SB_LUT4 mux_572_i15_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[1] [6]), .I3(data_in_field[14]), .O(data_in_frame_7__7__N_179[14]));
    defparam mux_572_i15_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 mux_572_i16_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[1] [7]), .I3(data_in_field[15]), .O(data_in_frame_7__7__N_179[15]));
    defparam mux_572_i16_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF data_out_0__i32 (.Q(\data_out_field[31] ), .C(CLK_c), .D(n1876));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i49 (.Q(\data_out[6] [0]), .C(CLK_c), .D(n1875));   // coms.v(115[10] 136[6])
    SB_LUT4 i279353_i1_3_lut (.I0(n4798), .I1(n4840), .I2(byte_transmit_counter2[2]), 
            .I3(GND_net), .O(i_Tx_Byte[2]));
    defparam i279353_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF data_out_0__i50 (.Q(\data_out[6] [1]), .C(CLK_c), .D(n1874));   // coms.v(115[10] 136[6])
    SB_LUT4 i1_2_lut_adj_342 (.I0(data_out_field_47__N_656[46]), .I1(\data_out_field[16] ), 
            .I2(GND_net), .I3(GND_net), .O(n4279));   // coms.v(76[17:92])
    defparam i1_2_lut_adj_342.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_adj_343 (.I0(\data_out_field[20] ), .I1(\data_out_field[18] ), 
            .I2(\data_out_field[5] ), .I3(GND_net), .O(n4313));   // coms.v(78[17:84])
    defparam i2_3_lut_adj_343.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_adj_344 (.I0(\data_out_field[17] ), .I1(data_out_field_47__N_656[32]), 
            .I2(\data_out_field[31] ), .I3(GND_net), .O(n1356));   // coms.v(77[17:92])
    defparam i1_2_lut_3_lut_adj_344.LUT_INIT = 16'h9696;
    SB_LUT4 i279956_i1_3_lut (.I0(n4792), .I1(n4846), .I2(byte_transmit_counter2[2]), 
            .I3(GND_net), .O(i_Tx_Byte[3]));
    defparam i279956_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_adj_345 (.I0(\data_out_field[43] ), .I1(\data_out_field[15] ), 
            .I2(\data_out_field[30] ), .I3(\data_out_field[2] ), .O(n4325));   // coms.v(77[17:92])
    defparam i1_2_lut_4_lut_adj_345.LUT_INIT = 16'h6996;
    SB_LUT4 mux_572_i17_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[2] [0]), .I3(data_in_field[16]), .O(data_in_frame_7__7__N_179[16]));
    defparam mux_572_i17_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_3_lut_adj_346 (.I0(n4383), .I1(data_out_field_47__N_656[45]), 
            .I2(\data_out_field[3] ), .I3(GND_net), .O(n1347));   // coms.v(75[17:341])
    defparam i2_3_lut_adj_346.LUT_INIT = 16'h9696;
    SB_CARRY data_315_add_4_11 (.CI(n3828), .I0(GND_net), .I1(data[9]), 
            .CO(n3829));
    SB_DFF data_out_0__i51 (.Q(\data_out[6] [2]), .C(CLK_c), .D(n1873));   // coms.v(115[10] 136[6])
    SB_LUT4 i1_2_lut_adj_347 (.I0(\data_out_field[12] ), .I1(data_out_field_47__N_656[47]), 
            .I2(GND_net), .I3(GND_net), .O(n8_adj_882));   // coms.v(81[17:84])
    defparam i1_2_lut_adj_347.LUT_INIT = 16'h6666;
    SB_DFF data_out_0__i52 (.Q(\data_out[6] [3]), .C(CLK_c), .D(n1872));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i53 (.Q(\data_out[6] [4]), .C(CLK_c), .D(n1871));   // coms.v(115[10] 136[6])
    SB_LUT4 i280559_i1_3_lut (.I0(n4780), .I1(n4852), .I2(byte_transmit_counter2[2]), 
            .I3(GND_net), .O(i_Tx_Byte[4]));
    defparam i280559_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF data_out_0__i54 (.Q(\data_out[6] [5]), .C(CLK_c), .D(n1870));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i55 (.Q(\data_out[6] [6]), .C(CLK_c), .D(n1869));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i56 (.Q(\data_out[6] [7]), .C(CLK_c), .D(n1868));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i57 (.Q(\data_out[7] [0]), .C(CLK_c), .D(n1867));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i58 (.Q(\data_out[7] [1]), .C(CLK_c), .D(n1866));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i59 (.Q(\data_out[7] [2]), .C(CLK_c), .D(n1865));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i60 (.Q(\data_out[7] [3]), .C(CLK_c), .D(n1864));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i61 (.Q(\data_out[7] [4]), .C(CLK_c), .D(n1863));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i62 (.Q(\data_out[7] [5]), .C(CLK_c), .D(n1862));   // coms.v(115[10] 136[6])
    SB_LUT4 mux_572_i18_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[2] [1]), .I3(data_in_field[17]), .O(data_in_frame_7__7__N_179[17]));
    defparam mux_572_i18_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i281162_i1_3_lut (.I0(n4768), .I1(n4762), .I2(byte_transmit_counter2[2]), 
            .I3(GND_net), .O(i_Tx_Byte[5]));
    defparam i281162_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_572_i19_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[2] [2]), .I3(data_in_field[18]), .O(data_in_frame_7__7__N_179[18]));
    defparam mux_572_i19_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF data_out_0__i63 (.Q(\data_out[7] [6]), .C(CLK_c), .D(n1861));   // coms.v(115[10] 136[6])
    SB_DFF data_out_0__i64 (.Q(\data_out[7] [7]), .C(CLK_c), .D(n1859));   // coms.v(115[10] 136[6])
    SB_LUT4 i5_4_lut_adj_348 (.I0(\data_out_field[9] ), .I1(n4313), .I2(n4279), 
            .I3(n4322), .O(n12_adj_883));   // coms.v(81[17:84])
    defparam i5_4_lut_adj_348.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_349 (.I0(n1369), .I1(n4334), .I2(n12_adj_883), 
            .I3(n8_adj_882), .O(n4386));   // coms.v(76[17:92])
    defparam i1_4_lut_adj_349.LUT_INIT = 16'h6996;
    SB_LUT4 i281765_i1_3_lut (.I0(n4726), .I1(n4870), .I2(byte_transmit_counter2[2]), 
            .I3(GND_net), .O(i_Tx_Byte[6]));
    defparam i281765_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i274529_i1_3_lut (.I0(n4744), .I1(n4864), .I2(byte_transmit_counter[2]), 
            .I3(GND_net), .O(\tx_data[1]_keep ));
    defparam i274529_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF data_in_0___i1 (.Q(\data_in[0] [0]), .C(CLK_c), .D(n1853));   // coms.v(146[10] 154[6])
    SB_DFF data_315__i1 (.Q(data[1]), .C(CLK_c), .D(n69[1]));   // coms.v(117[13:19])
    SB_LUT4 i1_2_lut_adj_350 (.I0(\data_out_field[1] ), .I1(\data_out_field[29] ), 
            .I2(GND_net), .I3(GND_net), .O(n1350));   // coms.v(76[17:92])
    defparam i1_2_lut_adj_350.LUT_INIT = 16'h6666;
    SB_LUT4 i2_2_lut_3_lut_adj_351 (.I0(\data_out_field[30] ), .I1(data_out_field_47__N_656[46]), 
            .I2(\data_out_field[16] ), .I3(GND_net), .O(n7_adj_18));   // coms.v(76[17:92])
    defparam i2_2_lut_3_lut_adj_351.LUT_INIT = 16'h9696;
    SB_LUT4 i3_2_lut_4_lut (.I0(data_out_field_47__N_656[32]), .I1(\data_out_field[20] ), 
            .I2(\data_out_field[18] ), .I3(\data_out_field[5] ), .O(n9));   // coms.v(78[17:84])
    defparam i3_2_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 data_315_add_4_10_lut (.I0(GND_net), .I1(GND_net), .I2(data[8]), 
            .I3(n3827), .O(n69[8])) /* synthesis syn_instantiated=1 */ ;
    defparam data_315_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY data_315_add_4_10 (.CI(n3827), .I0(GND_net), .I1(data[8]), 
            .CO(n3828));
    SB_LUT4 data_315_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(data[7]), 
            .I3(n3826), .O(n69[7])) /* synthesis syn_instantiated=1 */ ;
    defparam data_315_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY data_315_add_4_9 (.CI(n3826), .I0(GND_net), .I1(data[7]), 
            .CO(n3827));
    SB_LUT4 data_315_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(data[6]), 
            .I3(n3825), .O(n69[6])) /* synthesis syn_instantiated=1 */ ;
    defparam data_315_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY data_315_add_4_8 (.CI(n3825), .I0(GND_net), .I1(data[6]), 
            .CO(n3826));
    SB_DFF data_315__i2 (.Q(data[2]), .C(CLK_c), .D(n69[2]));   // coms.v(117[13:19])
    SB_DFF data_315__i3 (.Q(data[3]), .C(CLK_c), .D(n69[3]));   // coms.v(117[13:19])
    SB_DFF data_315__i4 (.Q(data[4]), .C(CLK_c), .D(n69[4]));   // coms.v(117[13:19])
    SB_DFF data_315__i5 (.Q(data[5]), .C(CLK_c), .D(n69[5]));   // coms.v(117[13:19])
    SB_DFF data_315__i6 (.Q(data[6]), .C(CLK_c), .D(n69[6]));   // coms.v(117[13:19])
    SB_DFF data_315__i7 (.Q(data[7]), .C(CLK_c), .D(n69[7]));   // coms.v(117[13:19])
    SB_DFF data_315__i8 (.Q(data[8]), .C(CLK_c), .D(n69[8]));   // coms.v(117[13:19])
    SB_DFF data_315__i9 (.Q(data[9]), .C(CLK_c), .D(n69[9]));   // coms.v(117[13:19])
    SB_DFF data_315__i10 (.Q(data[10]), .C(CLK_c), .D(n69[10]));   // coms.v(117[13:19])
    SB_DFF data_315__i11 (.Q(data[11]), .C(CLK_c), .D(n69[11]));   // coms.v(117[13:19])
    SB_DFF data_315__i12 (.Q(data[12]), .C(CLK_c), .D(n69[12]));   // coms.v(117[13:19])
    SB_DFF data_315__i13 (.Q(data[13]), .C(CLK_c), .D(n69[13]));   // coms.v(117[13:19])
    SB_DFF data_315__i14 (.Q(data[14]), .C(CLK_c), .D(n69[14]));   // coms.v(117[13:19])
    SB_DFF data_315__i15 (.Q(data[15]), .C(CLK_c), .D(n69[15]));   // coms.v(117[13:19])
    SB_DFF data_out_0__i1 (.Q(\data_out_field[0] ), .C(CLK_c), .D(n1737));   // coms.v(115[10] 136[6])
    SB_LUT4 mux_572_i20_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[2] [3]), .I3(data_in_field[19]), .O(data_in_frame_7__7__N_179[19]));
    defparam mux_572_i20_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF data_in_0___i58 (.Q(\data_in[7] [1]), .C(CLK_c), .D(n2024));   // coms.v(146[10] 154[6])
    SB_LUT4 mux_572_i21_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[2] [4]), .I3(data_in_field[20]), .O(data_in_frame_7__7__N_179[20]));
    defparam mux_572_i21_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_3_lut_adj_352 (.I0(\data_out_field[15] ), .I1(\data_out_field[30] ), 
            .I2(\data_out_field[2] ), .I3(GND_net), .O(n1413));   // coms.v(77[17:92])
    defparam i2_3_lut_adj_352.LUT_INIT = 16'h9696;
    SB_DFF data_in_0___i59 (.Q(\data_in[7] [2]), .C(CLK_c), .D(n2025));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i57 (.Q(\data_in[7] [0]), .C(CLK_c), .D(n2023));   // coms.v(146[10] 154[6])
    SB_LUT4 i5_4_lut_adj_353 (.I0(n1413), .I1(n4371), .I2(n4362), .I3(n4377), 
            .O(n12));   // coms.v(76[17:92])
    defparam i5_4_lut_adj_353.LUT_INIT = 16'h6996;
    SB_DFF data_in_0___i55 (.Q(\data_in[6] [6]), .C(CLK_c), .D(n2021));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i56 (.Q(\data_in[6] [7]), .C(CLK_c), .D(n2022));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i53 (.Q(\data_in[6] [4]), .C(CLK_c), .D(n2019));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i54 (.Q(\data_in[6] [5]), .C(CLK_c), .D(n2020));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i51 (.Q(\data_in[6] [2]), .C(CLK_c), .D(n2017));   // coms.v(146[10] 154[6])
    SB_LUT4 data_315_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(data[5]), 
            .I3(n3824), .O(n69[5])) /* synthesis syn_instantiated=1 */ ;
    defparam data_315_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_DFF data_in_0___i52 (.Q(\data_in[6] [3]), .C(CLK_c), .D(n2018));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i49 (.Q(\data_in[6] [0]), .C(CLK_c), .D(n2015));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i50 (.Q(\data_in[6] [1]), .C(CLK_c), .D(n2016));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i47 (.Q(\data_in[5] [6]), .C(CLK_c), .D(n2013));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i48 (.Q(\data_in[5] [7]), .C(CLK_c), .D(n2014));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i45 (.Q(\data_in[5] [4]), .C(CLK_c), .D(n2011));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i46 (.Q(\data_in[5] [5]), .C(CLK_c), .D(n2012));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i43 (.Q(\data_in[5] [2]), .C(CLK_c), .D(n2009));   // coms.v(146[10] 154[6])
    SB_LUT4 i4_3_lut_adj_354 (.I0(n4386), .I1(data_out_field_47__N_656[44]), 
            .I2(n1347), .I3(GND_net), .O(n11));   // coms.v(76[17:92])
    defparam i4_3_lut_adj_354.LUT_INIT = 16'h9696;
    SB_DFF data_in_0___i44 (.Q(\data_in[5] [3]), .C(CLK_c), .D(n2010));   // coms.v(146[10] 154[6])
    SB_DFF data_in_0___i42 (.Q(\data_in[5] [1]), .C(CLK_c), .D(n2008));   // coms.v(146[10] 154[6])
    SB_LUT4 i1_2_lut_adj_355 (.I0(\data_out_field[28] ), .I1(\data_out_field[13] ), 
            .I2(GND_net), .I3(GND_net), .O(n4300));   // coms.v(88[18:79])
    defparam i1_2_lut_adj_355.LUT_INIT = 16'h6666;
    SB_CARRY data_315_add_4_7 (.CI(n3824), .I0(GND_net), .I1(data[5]), 
            .CO(n3825));
    SB_DFF data_in_frame_0__i62 (.Q(\data_in_frame[7] [6]), .C(CLK_c), .D(n1921));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i63 (.Q(\data_in_frame[7] [7]), .C(CLK_c), .D(n1922));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i58 (.Q(\data_in_frame[7] [2]), .C(CLK_c), .D(n1917));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i59 (.Q(\data_in_frame[7] [3]), .C(CLK_c), .D(n1918));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i60 (.Q(\data_in_frame[7] [4]), .C(CLK_c), .D(n1919));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i54 (.Q(\data_in_frame[6] [6]), .C(CLK_c), .D(n1913));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i55 (.Q(\data_in_frame[6] [7]), .C(CLK_c), .D(n1914));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i56 (.Q(\data_in_frame[7] [0]), .C(CLK_c), .D(n1915));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i50 (.Q(\data_in_frame[6] [2]), .C(CLK_c), .D(n1909));   // coms.v(164[10] 192[6])
    SB_DFF data_in_frame_0__i51 (.Q(\data_in_frame[6] [3]), .C(CLK_c), .D(n1910));   // coms.v(164[10] 192[6])
    SB_LUT4 mux_572_i22_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[2] [5]), .I3(data_in_field[21]), .O(data_in_frame_7__7__N_179[21]));
    defparam mux_572_i22_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF data_in_frame_0__i52 (.Q(\data_in_frame[6] [4]), .C(CLK_c), .D(n1911));   // coms.v(164[10] 192[6])
    SB_DFF data_in_0___i41 (.Q(\data_in[5] [0]), .C(CLK_c), .D(n2007));   // coms.v(146[10] 154[6])
    SB_LUT4 mux_572_i23_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[2] [6]), .I3(data_in_field[22]), .O(data_in_frame_7__7__N_179[22]));
    defparam mux_572_i23_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 mux_572_i24_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[2] [7]), .I3(data_in_field[23]), .O(data_in_frame_7__7__N_179[23]));
    defparam mux_572_i24_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_356 (.I0(\data_out_field[25] ), .I1(\data_out_field[27] ), 
            .I2(GND_net), .I3(GND_net), .O(n1377));   // coms.v(87[18:79])
    defparam i1_2_lut_adj_356.LUT_INIT = 16'h6666;
    SB_LUT4 i10_4_lut_adj_357 (.I0(\data_in[3] [1]), .I1(\data_in[1] [6]), 
            .I2(\data_in[3] [7]), .I3(\data_in[0] [2]), .O(n26_adj_839));   // coms.v(169[12:70])
    defparam i10_4_lut_adj_357.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_358 (.I0(data_out_field_47__N_656[39]), .I1(\data_out_field[11] ), 
            .I2(GND_net), .I3(GND_net), .O(n1425));   // coms.v(87[18:79])
    defparam i1_2_lut_adj_358.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_359 (.I0(\data_out_field[26] ), .I1(\data_out_field[10] ), 
            .I2(n1425), .I3(n4303), .O(n4371));   // coms.v(86[18:79])
    defparam i3_4_lut_adj_359.LUT_INIT = 16'h6996;
    SB_LUT4 i4205_3_lut (.I0(\data_out[6] [5]), .I1(\data_out[7] [5]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n4536));
    defparam i4205_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_572_i25_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[3] [0]), .I3(data_in_field[24]), .O(data_in_frame_7__7__N_179[24]));
    defparam mux_572_i25_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i274_3_lut_4_lut (.I0(n2706), .I1(tx2_active), .I2(tx2_transmit), 
            .I3(\FRAME_MATCHER.wait_for_transmission ), .O(n690));   // coms.v(181[14] 191[8])
    defparam i274_3_lut_4_lut.LUT_INIT = 16'h0355;
    SB_LUT4 i5_3_lut_4_lut_adj_360 (.I0(data_in_field[34]), .I1(data_in_field[33]), 
            .I2(n10_adj_864), .I3(n4368), .O(n4369));   // coms.v(80[17:84])
    defparam i5_3_lut_4_lut_adj_360.LUT_INIT = 16'h6996;
    SB_LUT4 i4204_3_lut (.I0(data_out_field_47__N_656[37]), .I1(data_out_field_47__N_656[45]), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n4535));
    defparam i4204_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_3_lut_4_lut_adj_361 (.I0(data_out_field_47__N_656[40]), .I1(data_out_field_47__N_656[41]), 
            .I2(\data_out_field[12] ), .I3(data_out_field_47__N_656[42]), 
            .O(n4331));   // coms.v(86[18:79])
    defparam i2_3_lut_4_lut_adj_361.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_362 (.I0(data_out_field_47__N_656[40]), .I1(data_out_field_47__N_656[41]), 
            .I2(n4371), .I3(GND_net), .O(n1300));   // coms.v(86[18:79])
    defparam i1_2_lut_3_lut_adj_362.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_adj_363 (.I0(data_in_field[36]), .I1(data_in_field[6]), 
            .I2(data_in_field[7]), .I3(GND_net), .O(n6_adj_848));   // coms.v(74[17:38])
    defparam i1_2_lut_3_lut_adj_363.LUT_INIT = 16'h9696;
    SB_LUT4 mux_572_i26_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[3] [1]), .I3(data_in_field[25]), .O(data_in_frame_7__7__N_179[25]));
    defparam mux_572_i26_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 mux_572_i27_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[3] [2]), .I3(data_in_field[26]), .O(data_in_frame_7__7__N_179[26]));
    defparam mux_572_i27_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_364 (.I0(\data_out_field[25] ), .I1(data_out_field_47__N_656[40]), 
            .I2(GND_net), .I3(GND_net), .O(n4377));   // coms.v(85[18:78])
    defparam i1_2_lut_adj_364.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_4_lut_adj_365 (.I0(data_out_field_47__N_656[36]), .I1(data_out_field_47__N_656[35]), 
            .I2(data_out_field_47__N_656[37]), .I3(\data_out_field[7] ), 
            .O(n1291));   // coms.v(82[17:76])
    defparam i2_3_lut_4_lut_adj_365.LUT_INIT = 16'h6996;
    SB_LUT4 data_315_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(data[4]), 
            .I3(n3823), .O(n69[4])) /* synthesis syn_instantiated=1 */ ;
    defparam data_315_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY data_315_add_4_6 (.CI(n3823), .I0(GND_net), .I1(data[4]), 
            .CO(n3824));
    SB_LUT4 data_315_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(data[3]), 
            .I3(n3822), .O(n69[3])) /* synthesis syn_instantiated=1 */ ;
    defparam data_315_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i3_3_lut_4_lut_adj_366 (.I0(data_out_field_47__N_656[42]), .I1(\data_out_field[14] ), 
            .I2(n4300), .I3(n4383), .O(n8_adj_19));   // coms.v(75[17:341])
    defparam i3_3_lut_4_lut_adj_366.LUT_INIT = 16'h6996;
    SB_CARRY data_315_add_4_5 (.CI(n3822), .I0(GND_net), .I1(data[3]), 
            .CO(n3823));
    SB_LUT4 mux_572_i28_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[3] [3]), .I3(data_in_field[27]), .O(data_in_frame_7__7__N_179[27]));
    defparam mux_572_i28_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_3_lut_4_lut_adj_367 (.I0(data_out_field_47__N_656[42]), .I1(\data_out_field[14] ), 
            .I2(n1350), .I3(\data_out_field[0] ), .O(n4362));   // coms.v(75[17:341])
    defparam i2_3_lut_4_lut_adj_367.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_4_lut_adj_368 (.I0(n1419), .I1(\data_out_field[19] ), 
            .I2(n1356), .I3(\data_out_field[4] ), .O(n4383));   // coms.v(75[17:341])
    defparam i2_3_lut_4_lut_adj_368.LUT_INIT = 16'h6996;
    SB_LUT4 data_315_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(data[2]), 
            .I3(n3821), .O(n69[2])) /* synthesis syn_instantiated=1 */ ;
    defparam data_315_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i3_2_lut_3_lut_4_lut (.I0(n1419), .I1(\data_out_field[19] ), 
            .I2(data_out_field_47__N_656[35]), .I3(data_out_field_47__N_656[36]), 
            .O(n9_adj_20));   // coms.v(75[17:341])
    defparam i3_2_lut_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_CARRY data_315_add_4_4 (.CI(n3821), .I0(GND_net), .I1(data[2]), 
            .CO(n3822));
    SB_LUT4 i3_2_lut_4_lut_adj_369 (.I0(\data_out_field[3] ), .I1(data_out_field_47__N_656[44]), 
            .I2(\data_out_field[2] ), .I3(n4349), .O(n9_adj_21));   // coms.v(78[17:84])
    defparam i3_2_lut_4_lut_adj_369.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_370 (.I0(data_in_field[32]), .I1(data_in_field[33]), 
            .I2(data_in_field[18]), .I3(GND_net), .O(n4328));   // coms.v(78[17:84])
    defparam i1_2_lut_3_lut_adj_370.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_adj_371 (.I0(data_in_field[41]), .I1(data_in_field[39]), 
            .I2(data_in_field[40]), .I3(GND_net), .O(n4291));   // coms.v(174[14:57])
    defparam i1_2_lut_3_lut_adj_371.LUT_INIT = 16'h9696;
    SB_LUT4 i2_2_lut_4_lut_adj_372 (.I0(\data_out_field[3] ), .I1(data_out_field_47__N_656[44]), 
            .I2(\data_out_field[2] ), .I3(n4380), .O(n7_adj_22));   // coms.v(78[17:84])
    defparam i2_2_lut_4_lut_adj_372.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_4_lut_adj_373 (.I0(data_in_field[14]), .I1(data_in_field[31]), 
            .I2(data_in_field[16]), .I3(data_in_field[30]), .O(n6_adj_843));   // coms.v(174[14:57])
    defparam i1_2_lut_4_lut_adj_373.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_374 (.I0(data_out_field_47__N_656[38]), .I1(\data_out_field[24] ), 
            .I2(GND_net), .I3(GND_net), .O(n4303));   // coms.v(76[17:92])
    defparam i1_2_lut_adj_374.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_adj_375 (.I0(data_out_field_47__N_656[39]), .I1(\data_out_field[9] ), 
            .I2(data_out_field_47__N_656[37]), .I3(GND_net), .O(n4319));   // coms.v(85[18:78])
    defparam i2_3_lut_adj_375.LUT_INIT = 16'h9696;
    SB_LUT4 i2_3_lut_4_lut_adj_376 (.I0(data_in_field[2]), .I1(data_in_field[44]), 
            .I2(n4328), .I3(data_in_field[3]), .O(n4359));   // coms.v(78[17:84])
    defparam i2_3_lut_4_lut_adj_376.LUT_INIT = 16'h6996;
    SB_LUT4 data_315_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(data[1]), 
            .I3(n3820), .O(n69[1])) /* synthesis syn_instantiated=1 */ ;
    defparam data_315_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_572_i29_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[3] [4]), .I3(data_in_field[28]), .O(data_in_frame_7__7__N_179[28]));
    defparam mux_572_i29_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i3_3_lut_adj_377 (.I0(n4319), .I1(data_out_field_47__N_656[36]), 
            .I2(\data_out_field[8] ), .I3(GND_net), .O(n8_adj_23));   // coms.v(84[18:77])
    defparam i3_3_lut_adj_377.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_378 (.I0(\data_out_field[8] ), .I1(\data_out_field[23] ), 
            .I2(GND_net), .I3(GND_net), .O(n1369));   // coms.v(83[17:76])
    defparam i1_2_lut_adj_378.LUT_INIT = 16'h6666;
    SB_LUT4 mux_572_i30_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[3] [5]), .I3(data_in_field[29]), .O(data_in_frame_7__7__N_179[29]));
    defparam mux_572_i30_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_379 (.I0(\data_out_field[21] ), .I1(n1291), .I2(GND_net), 
            .I3(GND_net), .O(n4322));   // coms.v(83[17:76])
    defparam i1_2_lut_adj_379.LUT_INIT = 16'h6666;
    SB_LUT4 mux_572_i31_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[3] [6]), .I3(data_in_field[30]), .O(data_in_frame_7__7__N_179[30]));
    defparam mux_572_i31_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i6_4_lut_adj_380 (.I0(data_in_field[14]), .I1(n4343), .I2(data_in_field[16]), 
            .I3(n4359), .O(n14));   // coms.v(78[17:84])
    defparam i6_4_lut_adj_380.LUT_INIT = 16'h6996;
    SB_LUT4 i14_4_lut_adj_381 (.I0(\data_in[3] [6]), .I1(n28_adj_872), .I2(n22), 
            .I3(\data_in[2] [1]), .O(n30));   // coms.v(169[12:70])
    defparam i14_4_lut_adj_381.LUT_INIT = 16'hfffe;
    SB_LUT4 mux_572_i32_3_lut_4_lut (.I0(n1245), .I1(\FRAME_MATCHER.wait_for_transmission ), 
            .I2(\data_in[3] [7]), .I3(data_in_field[31]), .O(data_in_frame_7__7__N_179[31]));
    defparam mux_572_i32_3_lut_4_lut.LUT_INIT = 16'hfe10;
    uart_tx tx (.GND_net(GND_net), .n1776(n1776), .n1875(CLK_c), .n1834(n1834), 
            .r_SM_Main({r_SM_Main}), .n1833(n1833), .r_Tx_Data({Open_0, 
            Open_1, Open_2, Open_3, Open_4, Open_5, Open_6, \r_Tx_Data[0] }), 
            .n1832(n1832), .tx_active(tx_active), .n1831(n1831), .tx_o(tx_o), 
            .\tx_data[3]_keep (tx_data[3]), .n1149(n1149), .VCC_net(VCC_net), 
            .n314(n314), .\r_Clock_Count[6] (\r_Clock_Count[6] ), .\tx_data[7]_keep (tx_data[7]), 
            .r_Bit_Index({Open_7, Open_8, \r_Bit_Index[0] }), .n3(n3), 
            .\r_Bit_Index[1] (\r_Bit_Index[1] ), .n21(n21), .\r_Clock_Count[5] (\r_Clock_Count[5] ), 
            .\r_Clock_Count[4] (\r_Clock_Count[4] ), .\r_Clock_Count[7] (\r_Clock_Count[7] ), 
            .\r_Clock_Count[8] (\r_Clock_Count[8] ), .\r_SM_Main_2__N_733[1] (\r_SM_Main_2__N_733[1] ), 
            .\r_SM_Main_2__N_736[0] (tx_transmit), .n41(n41), .n4270(n4270), 
            .n1809(n1809), .\r_Tx_Data[5] (\r_Tx_Data[5] ), .\r_Tx_Data[1] (\r_Tx_Data[1] ), 
            .n1777(n1777), .n315(n315), .n1765(n1765), .n859(n859), 
            .n1940(n1940), .\r_Tx_Data[6] (\r_Tx_Data[6] ), .n1939(n1939), 
            .n1938(n1938), .\r_Tx_Data[4] (\r_Tx_Data[4] ), .n1936(n1936), 
            .\r_Tx_Data[2] (\r_Tx_Data[2] ), .n1556(n1556), .n1768(n1768), 
            .n1771(n1771), .n4116(n4116), .tx_done(tx_done), .n1774(n1774), 
            .n1932(n1932), .n1935(n1935), .n4259(n4259), .n1671(n1671), 
            .n316(n316), .n312(n312), .n313(n313)) /* synthesis lattice_noprune=1, syn_preserve=0, syn_module_defined=1 */ ;   // coms.v(39[11:61])
    uart_tx_U0 tx2 (.r_Tx_Data({r_Tx_Data}), .GND_net(GND_net), .\r_Clock_Count[0] (\r_Clock_Count[0] ), 
            .\r_Clock_Count[1] (\r_Clock_Count[1] ), .\r_Clock_Count[2] (\r_Clock_Count[2] ), 
            .\r_Clock_Count[3] (\r_Clock_Count[3] ), .r_SM_Main({r_SM_Main_adj_45}), 
            .n1739(n1739), .VCC_net(VCC_net), .n1875(CLK_c), .n3(n3_adj_33), 
            .n1959(n1959), .n314(n314_adj_34), .\r_Clock_Count[6] (\r_Clock_Count[6]_adj_35 ), 
            .n1965(n1965), .n1962(n1962), .n4256(n4256), .n1960(n1960), 
            .n1749(n1749), .n317(n317), .n1815(n1815), .n1964(n1964), 
            .n1963(n1963), .n1961(n1961), .n1845(n1845), .n1752(n1752), 
            .n1755(n1755), .n4108(n4108), .tx2_done(tx2_done), .n318(n318), 
            .n1844(n1844), .tx2_active(tx2_active), .n319(n319), .n1843(n1843), 
            .tx2_o(tx2_o), .n320(n320), .\r_SM_Main_2__N_736[0] (tx2_transmit), 
            .n1740(n1740), .n4(n4_adj_36), .n1049(n1049)) /* synthesis lattice_noprune=1, syn_preserve=0, syn_module_defined=1 */ ;   // coms.v(162[11:67])
    uart_rx rx (.n1801(n1801), .o_Rx_Byte({o_Rx_Byte}), .n1875(CLK_c), 
            .n1800(n1800), .n1799(n1799), .n1797(n1797), .n1796(n1796), 
            .n1795(n1795), .n1789(n1789), .r_Bit_Index({r_Bit_Index}), 
            .n1793(n1793), .n1792(n1792), .VCC_net(VCC_net), .\r_SM_Main_2__N_789[2] (\r_SM_Main_2__N_789[2] ), 
            .r_SM_Main({r_SM_Main_adj_46}), .GND_net(GND_net), .r_Rx_Data(r_Rx_Data), 
            .rx_i_N_keep(PIN_2_c), .n4078(n4078), .rx_data_ready(rx_data_ready), 
            .n4423(n4423), .n607(n607), .n2717(n2717), .n1267(n1267), 
            .n4(n4_adj_42), .n4_adj_1(n4_adj_43), .n1828(n1828), .n1272(n1272), 
            .n4_adj_2(n4_adj_44), .n1855(n1855), .n1788(n1788)) /* synthesis lattice_noprune=1, syn_preserve=0, syn_module_defined=1 */ ;   // coms.v(141[11:45])
    
endmodule
//
// Verilog Description of module uart_tx
//

module uart_tx (GND_net, n1776, n1875, n1834, r_SM_Main, n1833, 
            r_Tx_Data, n1832, tx_active, n1831, tx_o, \tx_data[3]_keep , 
            n1149, VCC_net, n314, \r_Clock_Count[6] , \tx_data[7]_keep , 
            r_Bit_Index, n3, \r_Bit_Index[1] , n21, \r_Clock_Count[5] , 
            \r_Clock_Count[4] , \r_Clock_Count[7] , \r_Clock_Count[8] , 
            \r_SM_Main_2__N_733[1] , \r_SM_Main_2__N_736[0] , n41, n4270, 
            n1809, \r_Tx_Data[5] , \r_Tx_Data[1] , n1777, n315, n1765, 
            n859, n1940, \r_Tx_Data[6] , n1939, n1938, \r_Tx_Data[4] , 
            n1936, \r_Tx_Data[2] , n1556, n1768, n1771, n4116, tx_done, 
            n1774, n1932, n1935, n4259, n1671, n316, n312, n313) /* synthesis lattice_noprune=1, syn_preserve=0, syn_module_defined=1 */ ;
    input GND_net;
    output n1776;
    input n1875;
    input n1834;
    output [2:0]r_SM_Main;
    input n1833;
    output [7:0]r_Tx_Data;
    input n1832;
    output tx_active;
    input n1831;
    output tx_o;
    input \tx_data[3]_keep ;
    output n1149;
    input VCC_net;
    output n314;
    output \r_Clock_Count[6] ;
    input \tx_data[7]_keep ;
    output [2:0]r_Bit_Index;
    output n3;
    output \r_Bit_Index[1] ;
    output n21;
    output \r_Clock_Count[5] ;
    output \r_Clock_Count[4] ;
    output \r_Clock_Count[7] ;
    output \r_Clock_Count[8] ;
    output \r_SM_Main_2__N_733[1] ;
    input \r_SM_Main_2__N_736[0] ;
    output n41;
    output n4270;
    input n1809;
    output \r_Tx_Data[5] ;
    output \r_Tx_Data[1] ;
    input n1777;
    output n315;
    input n1765;
    output n859;
    input n1940;
    output \r_Tx_Data[6] ;
    input n1939;
    input n1938;
    output \r_Tx_Data[4] ;
    input n1936;
    output \r_Tx_Data[2] ;
    output n1556;
    input n1768;
    input n1771;
    input n4116;
    output tx_done;
    input n1774;
    input n1932;
    input n1935;
    input n4259;
    output n1671;
    output n316;
    output n312;
    output n313;
    
    
    wire n4587;
    wire [8:0]r_Clock_Count;   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(31[16:29])
    
    wire n3797, n2360, n1798;
    wire [7:0]r_Tx_Data_c;   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(33[16:25])
    
    wire n1937;
    wire [8:0]n311;
    
    wire n3802, n3798, n1941, n4738, n4810, n3_c, n1830;
    wire [2:0]r_Bit_Index_c;   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(32[16:27])
    
    wire n6, n110, n6_adj_836, n1942, n4584, n1819, n3803, n4807, 
        n3801, n3799, n3800, n1854, n4563, n16, n4411, n4413, 
        n3804, n4735, n2473;
    
    SB_LUT4 add_58_3_lut (.I0(n1776), .I1(r_Clock_Count[1]), .I2(GND_net), 
            .I3(n3797), .O(n4587)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_3_lut.LUT_INIT = 16'h8228;
    SB_DFF r_Clock_Count__i2 (.Q(r_Clock_Count[2]), .C(n1875), .D(n2360));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFF r_Clock_Count__i1 (.Q(r_Clock_Count[1]), .C(n1875), .D(n1798));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFF r_SM_Main_i0 (.Q(r_SM_Main[0]), .C(n1875), .D(n1834));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFF r_Tx_Data_i0 (.Q(r_Tx_Data[0]), .C(n1875), .D(n1833));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFF r_Tx_Active_46 (.Q(tx_active), .C(n1875), .D(n1832));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFF o_Tx_Serial_44 (.Q(tx_o), .C(n1875), .D(n1831));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_LUT4 i2257_3_lut (.I0(r_Tx_Data_c[3]), .I1(\tx_data[3]_keep ), .I2(n1149), 
            .I3(GND_net), .O(n1937));
    defparam i2257_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_58_2_lut (.I0(GND_net), .I1(r_Clock_Count[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n311[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_58_8_lut (.I0(GND_net), .I1(\r_Clock_Count[6] ), .I2(GND_net), 
            .I3(n3802), .O(n314)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_58_3 (.CI(n3797), .I0(r_Clock_Count[1]), .I1(GND_net), 
            .CO(n3798));
    SB_LUT4 i2263_3_lut (.I0(r_Tx_Data_c[7]), .I1(\tx_data[7]_keep ), .I2(n1149), 
            .I3(GND_net), .O(n1941));
    defparam i2263_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i273323_i1_3_lut (.I0(n4738), .I1(n4810), .I2(r_Bit_Index[0]), 
            .I3(GND_net), .O(n3_c));
    defparam i273323_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 r_SM_Main_2__I_0_55_i3_3_lut (.I0(r_SM_Main[0]), .I1(n3_c), 
            .I2(r_SM_Main[1]), .I3(GND_net), .O(n3));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(40[7] 139[14])
    defparam r_SM_Main_2__I_0_55_i3_3_lut.LUT_INIT = 16'he5e5;
    SB_DFF r_Bit_Index_i2 (.Q(r_Bit_Index_c[2]), .C(n1875), .D(n1830));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_LUT4 i2_3_lut (.I0(\r_Bit_Index[1] ), .I1(r_Bit_Index_c[2]), .I2(r_Bit_Index[0]), 
            .I3(GND_net), .O(n21));
    defparam i2_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i2_2_lut (.I0(r_Clock_Count[2]), .I1(r_Clock_Count[0]), .I2(GND_net), 
            .I3(GND_net), .O(n6));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i2_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut (.I0(r_Clock_Count[3]), .I1(\r_Clock_Count[5] ), .I2(n6), 
            .I3(r_Clock_Count[1]), .O(n110));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(31[16:29])
    defparam i1_4_lut.LUT_INIT = 16'heccc;
    SB_LUT4 i1_2_lut (.I0(\r_Clock_Count[4] ), .I1(n110), .I2(GND_net), 
            .I3(GND_net), .O(n6_adj_836));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(31[16:29])
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i4_4_lut (.I0(\r_Clock_Count[7] ), .I1(\r_Clock_Count[6] ), 
            .I2(\r_Clock_Count[8] ), .I3(n6_adj_836), .O(\r_SM_Main_2__N_733[1] ));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(31[16:29])
    defparam i4_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i39_4_lut (.I0(\r_SM_Main_2__N_736[0] ), .I1(n21), .I2(r_SM_Main[1]), 
            .I3(\r_SM_Main_2__N_733[1] ), .O(n41));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(30[16:25])
    defparam i39_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i4330_3_lut_4_lut_4_lut (.I0(\r_SM_Main_2__N_736[0] ), .I1(r_SM_Main[0]), 
            .I2(r_SM_Main[1]), .I3(\r_SM_Main_2__N_733[1] ), .O(n4270));
    defparam i4330_3_lut_4_lut_4_lut.LUT_INIT = 16'hc202;
    SB_LUT4 i3_3_lut_4_lut (.I0(\r_SM_Main_2__N_736[0] ), .I1(r_SM_Main[0]), 
            .I2(r_SM_Main[2]), .I3(r_SM_Main[1]), .O(n1149));
    defparam i3_3_lut_4_lut.LUT_INIT = 16'h0002;
    SB_LUT4 i1721_3_lut_4_lut (.I0(\r_SM_Main_2__N_733[1] ), .I1(r_SM_Main[0]), 
            .I2(r_SM_Main[1]), .I3(r_SM_Main[2]), .O(n1942));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(40[7] 139[14])
    defparam i1721_3_lut_4_lut.LUT_INIT = 16'h0078;
    SB_LUT4 i3063_3_lut (.I0(r_Clock_Count[3]), .I1(n4584), .I2(r_SM_Main[2]), 
            .I3(GND_net), .O(n1819));
    defparam i3063_3_lut.LUT_INIT = 16'hacac;
    SB_DFF r_Bit_Index_i1 (.Q(\r_Bit_Index[1] ), .C(n1875), .D(n1809));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_CARRY add_58_8 (.CI(n3802), .I0(\r_Clock_Count[6] ), .I1(GND_net), 
            .CO(n3803));
    SB_LUT4 r_Bit_Index_2__bdd_4_lut (.I0(r_Bit_Index_c[2]), .I1(r_Tx_Data_c[3]), 
            .I2(r_Tx_Data_c[7]), .I3(\r_Bit_Index[1] ), .O(n4807));
    defparam r_Bit_Index_2__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n4807_bdd_4_lut (.I0(n4807), .I1(\r_Tx_Data[5] ), .I2(\r_Tx_Data[1] ), 
            .I3(\r_Bit_Index[1] ), .O(n4810));
    defparam n4807_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF r_Clock_Count__i4 (.Q(\r_Clock_Count[4] ), .C(n1875), .D(n1777));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_LUT4 add_58_7_lut (.I0(GND_net), .I1(\r_Clock_Count[5] ), .I2(GND_net), 
            .I3(n3801), .O(n315)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_58_5 (.CI(n3799), .I0(r_Clock_Count[3]), .I1(GND_net), 
            .CO(n3800));
    SB_LUT4 i3060_3_lut (.I0(r_Clock_Count[1]), .I1(n4587), .I2(r_SM_Main[2]), 
            .I3(GND_net), .O(n1798));
    defparam i3060_3_lut.LUT_INIT = 16'hacac;
    SB_DFF r_Clock_Count__i8 (.Q(\r_Clock_Count[8] ), .C(n1875), .D(n1765));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFF r_Clock_Count__i3 (.Q(r_Clock_Count[3]), .C(n1875), .D(n1819));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFF r_SM_Main_i1 (.Q(r_SM_Main[1]), .C(n1875), .D(n1942));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFF r_Tx_Data_i7 (.Q(r_Tx_Data_c[7]), .C(n1875), .D(n1941));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_LUT4 i1_4_lut_adj_287 (.I0(n1776), .I1(r_Clock_Count[0]), .I2(n311[0]), 
            .I3(r_SM_Main[2]), .O(n1854));
    defparam i1_4_lut_adj_287.LUT_INIT = 16'h88a0;
    SB_LUT4 i643_2_lut (.I0(r_SM_Main[0]), .I1(r_SM_Main[1]), .I2(GND_net), 
            .I3(GND_net), .O(n859));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(40[7] 139[14])
    defparam i643_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 add_58_4_lut (.I0(n1776), .I1(r_Clock_Count[2]), .I2(GND_net), 
            .I3(n3798), .O(n4563)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_4_lut.LUT_INIT = 16'h8228;
    SB_DFF r_Tx_Data_i6 (.Q(\r_Tx_Data[6] ), .C(n1875), .D(n1940));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_LUT4 i3071_3_lut (.I0(r_Clock_Count[2]), .I1(n4563), .I2(r_SM_Main[2]), 
            .I3(GND_net), .O(n2360));
    defparam i3071_3_lut.LUT_INIT = 16'hacac;
    SB_DFF r_Tx_Data_i5 (.Q(\r_Tx_Data[5] ), .C(n1875), .D(n1939));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFF r_Tx_Data_i4 (.Q(\r_Tx_Data[4] ), .C(n1875), .D(n1938));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_CARRY add_58_7 (.CI(n3801), .I0(\r_Clock_Count[5] ), .I1(GND_net), 
            .CO(n3802));
    SB_DFF r_Tx_Data_i3 (.Q(r_Tx_Data_c[3]), .C(n1875), .D(n1937));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFF r_Tx_Data_i2 (.Q(\r_Tx_Data[2] ), .C(n1875), .D(n1936));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_LUT4 i1_2_lut_3_lut (.I0(n1556), .I1(r_SM_Main[1]), .I2(n21), .I3(GND_net), 
            .O(n16));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'ha2a2;
    SB_DFF r_Clock_Count__i7 (.Q(\r_Clock_Count[7] ), .C(n1875), .D(n1768));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFF r_Clock_Count__i6 (.Q(\r_Clock_Count[6] ), .C(n1875), .D(n1771));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFFE r_Tx_Done_43 (.Q(tx_done), .C(n1875), .E(VCC_net), .D(n4116));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFF r_Clock_Count__i5 (.Q(\r_Clock_Count[5] ), .C(n1875), .D(n1774));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFF r_Clock_Count__i0 (.Q(r_Clock_Count[0]), .C(n1875), .D(n1854));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_CARRY add_58_2 (.CI(VCC_net), .I0(r_Clock_Count[0]), .I1(GND_net), 
            .CO(n3797));
    SB_DFF r_Bit_Index_i0 (.Q(r_Bit_Index[0]), .C(n1875), .D(n1932));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFF r_Tx_Data_i1 (.Q(\r_Tx_Data[1] ), .C(n1875), .D(n1935));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_LUT4 i4080_3_lut (.I0(n110), .I1(\r_Clock_Count[8] ), .I2(\r_Clock_Count[6] ), 
            .I3(GND_net), .O(n4411));
    defparam i4080_3_lut.LUT_INIT = 16'hfefe;
    SB_DFF r_SM_Main_i2 (.Q(r_SM_Main[2]), .C(n1875), .D(n4259));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_LUT4 i1_2_lut_adj_288 (.I0(r_SM_Main[1]), .I1(n21), .I2(GND_net), 
            .I3(GND_net), .O(n1671));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1_2_lut_adj_288.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_289 (.I0(r_SM_Main[2]), .I1(r_SM_Main[0]), .I2(r_SM_Main[1]), 
            .I3(\r_SM_Main_2__N_733[1] ), .O(n1556));
    defparam i1_4_lut_adj_289.LUT_INIT = 16'h1101;
    SB_LUT4 i4082_2_lut (.I0(\r_Clock_Count[7] ), .I1(\r_Clock_Count[4] ), 
            .I2(GND_net), .I3(GND_net), .O(n4413));
    defparam i4082_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 add_58_6_lut (.I0(GND_net), .I1(\r_Clock_Count[4] ), .I2(GND_net), 
            .I3(n3800), .O(n316)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_58_6 (.CI(n3800), .I0(\r_Clock_Count[4] ), .I1(GND_net), 
            .CO(n3801));
    SB_CARRY add_58_4 (.CI(n3798), .I0(r_Clock_Count[2]), .I1(GND_net), 
            .CO(n3799));
    SB_LUT4 add_58_5_lut (.I0(n1776), .I1(r_Clock_Count[3]), .I2(GND_net), 
            .I3(n3799), .O(n4584)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_5_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_58_10_lut (.I0(GND_net), .I1(\r_Clock_Count[8] ), .I2(GND_net), 
            .I3(n3804), .O(n312)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_58_9_lut (.I0(GND_net), .I1(\r_Clock_Count[7] ), .I2(GND_net), 
            .I3(n3803), .O(n313)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2630_4_lut (.I0(r_SM_Main[2]), .I1(n859), .I2(n4413), .I3(n4411), 
            .O(n1776));
    defparam i2630_4_lut.LUT_INIT = 16'haaae;
    SB_CARRY add_58_9 (.CI(n3803), .I0(\r_Clock_Count[7] ), .I1(GND_net), 
            .CO(n3804));
    SB_LUT4 r_Bit_Index_2__bdd_4_lut_4458 (.I0(r_Bit_Index_c[2]), .I1(\r_Tx_Data[2] ), 
            .I2(\r_Tx_Data[6] ), .I3(\r_Bit_Index[1] ), .O(n4735));
    defparam r_Bit_Index_2__bdd_4_lut_4458.LUT_INIT = 16'he4aa;
    SB_LUT4 i2255_4_lut (.I0(r_Bit_Index_c[2]), .I1(\r_Bit_Index[1] ), .I2(n1556), 
            .I3(n1671), .O(n2473));
    defparam i2255_4_lut.LUT_INIT = 16'h6a0a;
    SB_LUT4 i2256_4_lut (.I0(n16), .I1(n2473), .I2(r_Bit_Index[0]), .I3(r_Bit_Index_c[2]), 
            .O(n1830));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(32[16:27])
    defparam i2256_4_lut.LUT_INIT = 16'hc5c0;
    SB_LUT4 n4735_bdd_4_lut (.I0(n4735), .I1(\r_Tx_Data[4] ), .I2(r_Tx_Data[0]), 
            .I3(\r_Bit_Index[1] ), .O(n4738));
    defparam n4735_bdd_4_lut.LUT_INIT = 16'haad8;
    
endmodule
//
// Verilog Description of module uart_tx_U0
//

module uart_tx_U0 (r_Tx_Data, GND_net, \r_Clock_Count[0] , \r_Clock_Count[1] , 
            \r_Clock_Count[2] , \r_Clock_Count[3] , r_SM_Main, n1739, 
            VCC_net, n1875, n3, n1959, n314, \r_Clock_Count[6] , 
            n1965, n1962, n4256, n1960, n1749, n317, n1815, n1964, 
            n1963, n1961, n1845, n1752, n1755, n4108, tx2_done, 
            n318, n1844, tx2_active, n319, n1843, tx2_o, n320, 
            \r_SM_Main_2__N_736[0] , n1740, n4, n1049) /* synthesis lattice_noprune=1, syn_preserve=0, syn_module_defined=1 */ ;
    output [7:0]r_Tx_Data;
    input GND_net;
    output \r_Clock_Count[0] ;
    output \r_Clock_Count[1] ;
    output \r_Clock_Count[2] ;
    output \r_Clock_Count[3] ;
    output [2:0]r_SM_Main;
    output n1739;
    input VCC_net;
    input n1875;
    output n3;
    input n1959;
    output n314;
    output \r_Clock_Count[6] ;
    input n1965;
    input n1962;
    output n4256;
    input n1960;
    input n1749;
    output n317;
    input n1815;
    input n1964;
    input n1963;
    input n1961;
    input n1845;
    input n1752;
    input n1755;
    input n4108;
    output tx2_done;
    output n318;
    input n1844;
    output tx2_active;
    output n319;
    input n1843;
    output tx2_o;
    output n320;
    input \r_SM_Main_2__N_736[0] ;
    input n1740;
    output n4;
    output n1049;
    
    wire [2:0]r_Bit_Index;   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(32[16:27])
    
    wire n4753;
    wire [8:0]r_Clock_Count;   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(31[16:29])
    
    wire n57, n3874, n4250, n15, n10, n4399, n4401, n12, n4756, 
        n4595, n3819, n9, n4589, n3818, n4044, n4858, o_Tx_Serial_N_764, 
        n4855, n3817, n4557, n3816, n4594, n3815, n4265, n9_adj_834, 
        n3814, n1966, n4170, n4112, n4052, n4138, n2036, n3813, 
        n3812, n44, n2035, n59, n7, n4592, n11, n4110, n629, 
        n1594, n1686, n4257;
    
    SB_LUT4 r_Bit_Index_0__bdd_4_lut_4498 (.I0(r_Bit_Index[0]), .I1(r_Tx_Data[2]), 
            .I2(r_Tx_Data[3]), .I3(r_Bit_Index[1]), .O(n4753));
    defparam r_Bit_Index_0__bdd_4_lut_4498.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut (.I0(r_Clock_Count[4]), .I1(r_Clock_Count[5]), .I2(GND_net), 
            .I3(GND_net), .O(n57));
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i3_4_lut (.I0(\r_Clock_Count[0] ), .I1(\r_Clock_Count[1] ), 
            .I2(\r_Clock_Count[2] ), .I3(\r_Clock_Count[3] ), .O(n3874));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(31[16:29])
    defparam i3_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i1_3_lut (.I0(n4250), .I1(n15), .I2(r_Clock_Count[8]), .I3(GND_net), 
            .O(n10));
    defparam i1_3_lut.LUT_INIT = 16'hcece;
    SB_LUT4 i1_4_lut (.I0(r_SM_Main[2]), .I1(n10), .I2(n57), .I3(n3874), 
            .O(n1739));
    defparam i1_4_lut.LUT_INIT = 16'haaae;
    SB_LUT4 i26_4_lut (.I0(n4399), .I1(n4401), .I2(r_SM_Main[0]), .I3(r_SM_Main[1]), 
            .O(n12));
    defparam i26_4_lut.LUT_INIT = 16'h3530;
    SB_LUT4 n4753_bdd_4_lut (.I0(n4753), .I1(r_Tx_Data[1]), .I2(r_Tx_Data[0]), 
            .I3(r_Bit_Index[1]), .O(n4756));
    defparam n4753_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 add_58_10_lut (.I0(n9), .I1(r_Clock_Count[8]), .I2(GND_net), 
            .I3(n3819), .O(n4595)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_10_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_58_9_lut (.I0(n9), .I1(r_Clock_Count[7]), .I2(GND_net), 
            .I3(n3818), .O(n4589)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_9_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_58_9 (.CI(n3818), .I0(r_Clock_Count[7]), .I1(GND_net), 
            .CO(n3819));
    SB_DFFE r_Clock_Count__i8 (.Q(r_Clock_Count[8]), .C(n1875), .E(VCC_net), 
            .D(n4044));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_LUT4 i273926_i1_3_lut (.I0(n4756), .I1(n4858), .I2(r_Bit_Index[2]), 
            .I3(GND_net), .O(o_Tx_Serial_N_764));
    defparam i273926_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 r_SM_Main_2__I_0_55_i3_3_lut (.I0(r_SM_Main[0]), .I1(o_Tx_Serial_N_764), 
            .I2(r_SM_Main[1]), .I3(GND_net), .O(n3));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(40[7] 139[14])
    defparam r_SM_Main_2__I_0_55_i3_3_lut.LUT_INIT = 16'he5e5;
    SB_DFF r_Tx_Data_i1 (.Q(r_Tx_Data[1]), .C(n1875), .D(n1959));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_LUT4 r_Bit_Index_0__bdd_4_lut (.I0(r_Bit_Index[0]), .I1(r_Tx_Data[6]), 
            .I2(r_Tx_Data[7]), .I3(r_Bit_Index[1]), .O(n4855));
    defparam r_Bit_Index_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n4855_bdd_4_lut (.I0(n4855), .I1(r_Tx_Data[5]), .I2(r_Tx_Data[4]), 
            .I3(r_Bit_Index[1]), .O(n4858));
    defparam n4855_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 add_58_8_lut (.I0(GND_net), .I1(\r_Clock_Count[6] ), .I2(GND_net), 
            .I3(n3817), .O(n314)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_58_8 (.CI(n3817), .I0(\r_Clock_Count[6] ), .I1(GND_net), 
            .CO(n3818));
    SB_LUT4 add_58_7_lut (.I0(n9), .I1(r_Clock_Count[5]), .I2(GND_net), 
            .I3(n3816), .O(n4557)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_7_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_58_7 (.CI(n3816), .I0(r_Clock_Count[5]), .I1(GND_net), 
            .CO(n3817));
    SB_LUT4 add_58_6_lut (.I0(n4265), .I1(r_Clock_Count[4]), .I2(GND_net), 
            .I3(n3815), .O(n4594)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_6_lut.LUT_INIT = 16'h8228;
    SB_DFF r_Tx_Data_i7 (.Q(r_Tx_Data[7]), .C(n1875), .D(n1965));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFF r_Tx_Data_i4 (.Q(r_Tx_Data[4]), .C(n1875), .D(n1962));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_LUT4 i2_3_lut (.I0(r_SM_Main[0]), .I1(n9_adj_834), .I2(r_SM_Main[1]), 
            .I3(GND_net), .O(n4256));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i2_3_lut.LUT_INIT = 16'h8080;
    SB_DFF r_Tx_Data_i2 (.Q(r_Tx_Data[2]), .C(n1875), .D(n1960));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_CARRY add_58_6 (.CI(n3815), .I0(r_Clock_Count[4]), .I1(GND_net), 
            .CO(n3816));
    SB_DFF r_Clock_Count__i3 (.Q(\r_Clock_Count[3] ), .C(n1875), .D(n1749));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_LUT4 add_58_5_lut (.I0(GND_net), .I1(\r_Clock_Count[3] ), .I2(GND_net), 
            .I3(n3814), .O(n317)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_5_lut.LUT_INIT = 16'hC33C;
    SB_DFF r_Clock_Count__i0 (.Q(\r_Clock_Count[0] ), .C(n1875), .D(n1815));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFF r_SM_Main_i1 (.Q(r_SM_Main[1]), .C(n1875), .D(n1966));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_CARRY add_58_5 (.CI(n3814), .I0(\r_Clock_Count[3] ), .I1(GND_net), 
            .CO(n3815));
    SB_DFF r_Tx_Data_i6 (.Q(r_Tx_Data[6]), .C(n1875), .D(n1964));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFF r_Tx_Data_i5 (.Q(r_Tx_Data[5]), .C(n1875), .D(n1963));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFF r_Clock_Count__i4 (.Q(r_Clock_Count[4]), .C(n1875), .D(n4170));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFF r_Clock_Count__i5 (.Q(r_Clock_Count[5]), .C(n1875), .D(n4112));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFFE r_Clock_Count__i7 (.Q(r_Clock_Count[7]), .C(n1875), .E(VCC_net), 
            .D(n4052));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFF r_Bit_Index_i0 (.Q(r_Bit_Index[0]), .C(n1875), .D(n4138));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFF r_Tx_Data_i3 (.Q(r_Tx_Data[3]), .C(n1875), .D(n1961));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFF r_Tx_Data_i0 (.Q(r_Tx_Data[0]), .C(n1875), .D(n1845));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFF r_Clock_Count__i2 (.Q(\r_Clock_Count[2] ), .C(n1875), .D(n1752));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFF r_Clock_Count__i1 (.Q(\r_Clock_Count[1] ), .C(n1875), .D(n1755));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFF r_Bit_Index_i2 (.Q(r_Bit_Index[2]), .C(n1875), .D(n2036));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_DFFE r_Tx_Done_43 (.Q(tx2_done), .C(n1875), .E(VCC_net), .D(n4108));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_LUT4 add_58_4_lut (.I0(GND_net), .I1(\r_Clock_Count[2] ), .I2(GND_net), 
            .I3(n3813), .O(n318)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_58_4 (.CI(n3813), .I0(\r_Clock_Count[2] ), .I1(GND_net), 
            .CO(n3814));
    SB_DFF r_Tx_Active_46 (.Q(tx2_active), .C(n1875), .D(n1844));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_LUT4 add_58_3_lut (.I0(GND_net), .I1(\r_Clock_Count[1] ), .I2(GND_net), 
            .I3(n3812), .O(n319)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4068_2_lut_3_lut (.I0(n3874), .I1(r_SM_Main[2]), .I2(n44), 
            .I3(GND_net), .O(n4399));
    defparam i4068_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_CARRY add_58_3 (.CI(n3812), .I0(\r_Clock_Count[1] ), .I1(GND_net), 
            .CO(n3813));
    SB_DFF r_Bit_Index_i1 (.Q(r_Bit_Index[1]), .C(n1875), .D(n2035));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_LUT4 i1_2_lut_adj_278 (.I0(n15), .I1(n59), .I2(GND_net), .I3(GND_net), 
            .O(n7));
    defparam i1_2_lut_adj_278.LUT_INIT = 16'h2222;
    SB_DFF o_Tx_Serial_44 (.Q(tx2_o), .C(n1875), .D(n1843));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_LUT4 i1_4_lut_adj_279 (.I0(r_SM_Main[2]), .I1(n4250), .I2(n7), 
            .I3(n4399), .O(n4265));
    defparam i1_4_lut_adj_279.LUT_INIT = 16'hfafe;
    SB_LUT4 add_58_2_lut (.I0(GND_net), .I1(\r_Clock_Count[0] ), .I2(GND_net), 
            .I3(VCC_net), .O(n320)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_3_lut_4_lut (.I0(r_Clock_Count[7]), .I1(\r_Clock_Count[6] ), 
            .I2(n3874), .I3(n44), .O(n9_adj_834));
    defparam i2_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i2_3_lut_4_lut_adj_280 (.I0(r_Clock_Count[7]), .I1(\r_Clock_Count[6] ), 
            .I2(r_SM_Main[1]), .I3(r_SM_Main[0]), .O(n4250));
    defparam i2_3_lut_4_lut_adj_280.LUT_INIT = 16'h0010;
    SB_LUT4 i25_4_lut (.I0(\r_SM_Main_2__N_736[0] ), .I1(n4592), .I2(r_SM_Main[1]), 
            .I3(r_Bit_Index[0]), .O(n11));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i25_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_281 (.I0(r_SM_Main[2]), .I1(n11), .I2(n9_adj_834), 
            .I3(r_SM_Main[0]), .O(n4110));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1_4_lut_adj_281.LUT_INIT = 16'h0544;
    SB_LUT4 i424_2_lut (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[0]), .I2(GND_net), 
            .I3(GND_net), .O(n629));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(95[36:51])
    defparam i424_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_282 (.I0(r_SM_Main[2]), .I1(r_SM_Main[0]), .I2(r_SM_Main[1]), 
            .I3(n9_adj_834), .O(n1594));
    defparam i1_4_lut_adj_282.LUT_INIT = 16'h1101;
    SB_LUT4 i2_3_lut_4_lut_adj_283 (.I0(r_Clock_Count[7]), .I1(\r_Clock_Count[6] ), 
            .I2(r_Clock_Count[8]), .I3(r_SM_Main[0]), .O(n15));
    defparam i2_3_lut_4_lut_adj_283.LUT_INIT = 16'h0100;
    SB_CARRY add_58_2 (.CI(VCC_net), .I0(\r_Clock_Count[0] ), .I1(GND_net), 
            .CO(n3812));
    SB_LUT4 i13_3_lut (.I0(r_Bit_Index[0]), .I1(n1686), .I2(n1594), .I3(GND_net), 
            .O(n4138));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(32[16:27])
    defparam i13_3_lut.LUT_INIT = 16'h1a1a;
    SB_LUT4 i1_3_lut_4_lut (.I0(r_Clock_Count[7]), .I1(\r_Clock_Count[6] ), 
            .I2(n12), .I3(r_SM_Main[2]), .O(n9));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hff10;
    SB_LUT4 i25_3_lut (.I0(r_Clock_Count[7]), .I1(n4589), .I2(r_SM_Main[2]), 
            .I3(GND_net), .O(n4052));
    defparam i25_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_4_lut (.I0(n1594), .I1(n1686), .I2(r_Bit_Index[2]), 
            .I3(n629), .O(n2036));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'h5270;
    SB_DFF r_SM_Main_i0 (.Q(r_SM_Main[0]), .C(n1875), .D(n4110));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_LUT4 i1_2_lut_4_lut (.I0(r_SM_Main[0]), .I1(n9_adj_834), .I2(r_SM_Main[1]), 
            .I3(r_SM_Main[2]), .O(n4257));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(31[16:29])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'h0080;
    SB_DFF r_SM_Main_i2 (.Q(r_SM_Main[2]), .C(n1875), .D(n4257));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(n3874), .I1(r_SM_Main[2]), .I2(r_Clock_Count[4]), 
            .I3(r_Clock_Count[5]), .O(n59));
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_DFF r_Clock_Count__i6 (.Q(\r_Clock_Count[6] ), .C(n1875), .D(n1740));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    SB_LUT4 i25_3_lut_adj_284 (.I0(r_Clock_Count[5]), .I1(n4557), .I2(r_SM_Main[2]), 
            .I3(GND_net), .O(n4112));
    defparam i25_3_lut_adj_284.LUT_INIT = 16'hacac;
    SB_LUT4 i22_3_lut (.I0(r_Clock_Count[4]), .I1(n4594), .I2(r_SM_Main[2]), 
            .I3(GND_net), .O(n4170));
    defparam i22_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1745_3_lut_4_lut (.I0(r_SM_Main[0]), .I1(n9_adj_834), .I2(r_SM_Main[1]), 
            .I3(r_SM_Main[2]), .O(n1966));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i1745_3_lut_4_lut.LUT_INIT = 16'h0078;
    SB_LUT4 i4327_3_lut_4_lut_4_lut (.I0(r_SM_Main[0]), .I1(n9_adj_834), 
            .I2(r_SM_Main[1]), .I3(\r_SM_Main_2__N_736[0] ), .O(n4));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i4327_3_lut_4_lut_4_lut.LUT_INIT = 16'h8580;
    SB_LUT4 i2426_4_lut_4_lut (.I0(n1594), .I1(n1686), .I2(r_Bit_Index[1]), 
            .I3(r_Bit_Index[0]), .O(n2035));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(32[16:27])
    defparam i2426_4_lut_4_lut.LUT_INIT = 16'h5270;
    SB_LUT4 i3_3_lut_4_lut (.I0(r_SM_Main[0]), .I1(\r_SM_Main_2__N_736[0] ), 
            .I2(r_SM_Main[1]), .I3(r_SM_Main[2]), .O(n1049));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(37[10] 140[8])
    defparam i3_3_lut_4_lut.LUT_INIT = 16'h0004;
    SB_LUT4 i1_3_lut_4_lut_adj_285 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(r_Bit_Index[0]), .I3(r_SM_Main[1]), .O(n1686));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(93[21:36])
    defparam i1_3_lut_4_lut_adj_285.LUT_INIT = 16'h80ff;
    SB_LUT4 i4314_2_lut_3_lut (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(n9_adj_834), .I3(GND_net), .O(n4592));   // roboy_fpga_code/roboy_fpga_code/uart/uart_tx.v(93[21:36])
    defparam i4314_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i4070_2_lut_4_lut (.I0(r_Clock_Count[8]), .I1(n3874), .I2(r_SM_Main[2]), 
            .I3(n57), .O(n4401));
    defparam i4070_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_3_lut (.I0(r_Clock_Count[8]), .I1(r_Clock_Count[4]), 
            .I2(r_Clock_Count[5]), .I3(GND_net), .O(n44));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i25_3_lut_adj_286 (.I0(r_Clock_Count[8]), .I1(n4595), .I2(r_SM_Main[2]), 
            .I3(GND_net), .O(n4044));
    defparam i25_3_lut_adj_286.LUT_INIT = 16'hacac;
    
endmodule
//
// Verilog Description of module uart_rx
//

module uart_rx (n1801, o_Rx_Byte, n1875, n1800, n1799, n1797, n1796, 
            n1795, n1789, r_Bit_Index, n1793, n1792, VCC_net, \r_SM_Main_2__N_789[2] , 
            r_SM_Main, GND_net, r_Rx_Data, rx_i_N_keep, n4078, rx_data_ready, 
            n4423, n607, n2717, n1267, n4, n4_adj_1, n1828, n1272, 
            n4_adj_2, n1855, n1788) /* synthesis lattice_noprune=1, syn_preserve=0, syn_module_defined=1 */ ;
    input n1801;
    output [7:0]o_Rx_Byte;
    input n1875;
    input n1800;
    input n1799;
    input n1797;
    input n1796;
    input n1795;
    input n1789;
    output [2:0]r_Bit_Index;
    input n1793;
    input n1792;
    input VCC_net;
    output \r_SM_Main_2__N_789[2] ;
    output [2:0]r_SM_Main;
    input GND_net;
    output r_Rx_Data;
    input rx_i_N_keep;
    input n4078;
    output rx_data_ready;
    output n4423;
    output n607;
    output n2717;
    output n1267;
    output n4;
    output n4_adj_1;
    input n1828;
    output n1272;
    output n4_adj_2;
    input n1855;
    output n1788;
    
    
    wire n1068, n1838;
    wire [7:0]r_Clock_Count;   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(32[17:30])
    
    wire n502, n3516;
    wire [31:0]n194;
    
    wire n1852, n1835, n4604, n1812, n1928, n3808, n1925, n3809, 
        n7, n1261, n157, n12, n4427, n4046, n4876, r_Rx_Data_R, 
        n1946;
    wire [2:0]r_SM_Main_2__N_795;
    
    wire n2733, n3606, n3807, n4556, n3699, n9, n4_c, n1949, 
        n1213, n1849, n3806, n4607, n3805, n3811, n4586, n3810, 
        n4873, n168;
    
    SB_DFF r_Rx_Byte_i1 (.Q(o_Rx_Byte[1]), .C(n1875), .D(n1801));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    SB_DFF r_Rx_Byte_i2 (.Q(o_Rx_Byte[2]), .C(n1875), .D(n1800));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    SB_DFF r_Rx_Byte_i3 (.Q(o_Rx_Byte[3]), .C(n1875), .D(n1799));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    SB_DFF r_Rx_Byte_i4 (.Q(o_Rx_Byte[4]), .C(n1875), .D(n1797));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    SB_DFF r_Rx_Byte_i5 (.Q(o_Rx_Byte[5]), .C(n1875), .D(n1796));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    SB_DFF r_Rx_Byte_i6 (.Q(o_Rx_Byte[6]), .C(n1875), .D(n1795));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    SB_DFF r_Bit_Index_i2 (.Q(r_Bit_Index[2]), .C(n1875), .D(n1789));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    SB_DFF r_Rx_Byte_i7 (.Q(o_Rx_Byte[7]), .C(n1875), .D(n1793));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    SB_DFFE r_Bit_Index_i1 (.Q(r_Bit_Index[1]), .C(n1875), .E(VCC_net), 
            .D(n1792));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    SB_DFFSR r_SM_Main_i2 (.Q(r_SM_Main[2]), .C(n1875), .D(\r_SM_Main_2__N_789[2] ), 
            .R(n1068));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    SB_DFFE r_Clock_Count__i7 (.Q(r_Clock_Count[7]), .C(n1875), .E(VCC_net), 
            .D(n1838));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    SB_LUT4 i1_4_lut_4_lut (.I0(n502), .I1(n3516), .I2(n194[5]), .I3(r_Clock_Count[5]), 
            .O(n1852));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hc480;
    SB_DFF r_SM_Main_i0 (.Q(r_SM_Main[0]), .C(n1875), .D(n1835));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    SB_LUT4 i3259_3_lut_4_lut (.I0(n502), .I1(n3516), .I2(n4604), .I3(r_Clock_Count[0]), 
            .O(n1812));
    defparam i3259_3_lut_4_lut.LUT_INIT = 16'hf4b0;
    SB_LUT4 i1_4_lut_4_lut_adj_267 (.I0(n502), .I1(n3516), .I2(n194[3]), 
            .I3(r_Clock_Count[3]), .O(n1928));
    defparam i1_4_lut_4_lut_adj_267.LUT_INIT = 16'hc480;
    SB_LUT4 i1_4_lut_4_lut_adj_268 (.I0(n502), .I1(n3516), .I2(n194[7]), 
            .I3(r_Clock_Count[7]), .O(n1838));
    defparam i1_4_lut_4_lut_adj_268.LUT_INIT = 16'hc480;
    SB_LUT4 add_62_6_lut (.I0(GND_net), .I1(r_Clock_Count[4]), .I2(GND_net), 
            .I3(n3808), .O(n194[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_62_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_4_lut_adj_269 (.I0(n502), .I1(n3516), .I2(n194[4]), 
            .I3(r_Clock_Count[4]), .O(n1925));
    defparam i1_4_lut_4_lut_adj_269.LUT_INIT = 16'hc480;
    SB_CARRY add_62_6 (.CI(n3808), .I0(r_Clock_Count[4]), .I1(GND_net), 
            .CO(n3809));
    SB_LUT4 i4_4_lut (.I0(n7), .I1(n1261), .I2(r_SM_Main[0]), .I3(n157), 
            .O(n12));
    defparam i4_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 i1_4_lut (.I0(r_SM_Main[2]), .I1(n12), .I2(r_SM_Main[1]), 
            .I3(n4427), .O(n4046));
    defparam i1_4_lut.LUT_INIT = 16'h4454;
    SB_LUT4 i1_2_lut (.I0(r_SM_Main[2]), .I1(n4876), .I2(GND_net), .I3(GND_net), 
            .O(n1835));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    defparam i1_2_lut.LUT_INIT = 16'h4444;
    SB_DFF r_Rx_Data_50 (.Q(r_Rx_Data), .C(n1875), .D(r_Rx_Data_R));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(41[10] 45[8])
    SB_DFF r_Rx_Data_R_49 (.Q(r_Rx_Data_R), .C(n1875), .D(rx_i_N_keep));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(41[10] 45[8])
    SB_LUT4 i4326_4_lut (.I0(r_Clock_Count[2]), .I1(n3516), .I2(n194[2]), 
            .I3(n502), .O(n1946));
    defparam i4326_4_lut.LUT_INIT = 16'hc088;
    SB_DFF r_Rx_DV_52 (.Q(rx_data_ready), .C(n1875), .D(n4078));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    SB_LUT4 i1_2_lut_adj_270 (.I0(r_SM_Main[1]), .I1(r_SM_Main_2__N_795[0]), 
            .I2(GND_net), .I3(GND_net), .O(n2733));
    defparam i1_2_lut_adj_270.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_271 (.I0(r_SM_Main[0]), .I1(r_SM_Main[2]), .I2(n2733), 
            .I3(r_Rx_Data), .O(n502));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(30[17:26])
    defparam i1_4_lut_adj_271.LUT_INIT = 16'h3133;
    SB_LUT4 i1_2_lut_adj_272 (.I0(n3606), .I1(r_Clock_Count[3]), .I2(GND_net), 
            .I3(GND_net), .O(n157));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(30[17:26])
    defparam i1_2_lut_adj_272.LUT_INIT = 16'heeee;
    SB_LUT4 add_62_5_lut (.I0(GND_net), .I1(r_Clock_Count[3]), .I2(GND_net), 
            .I3(n3807), .O(n194[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_62_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i15_4_lut (.I0(n4556), .I1(\r_SM_Main_2__N_789[2] ), .I2(r_SM_Main[1]), 
            .I3(n3699), .O(n9));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(30[17:26])
    defparam i15_4_lut.LUT_INIT = 16'h3a30;
    SB_LUT4 i1_4_lut_adj_273 (.I0(r_SM_Main[2]), .I1(r_SM_Main[0]), .I2(n9), 
            .I3(n4_c), .O(n3516));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(30[17:26])
    defparam i1_4_lut_adj_273.LUT_INIT = 16'hfefa;
    SB_LUT4 i1_2_lut_adj_274 (.I0(r_SM_Main[0]), .I1(r_SM_Main[2]), .I2(GND_net), 
            .I3(GND_net), .O(n3699));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    defparam i1_2_lut_adj_274.LUT_INIT = 16'h2222;
    SB_DFFE r_Clock_Count__i1 (.Q(r_Clock_Count[1]), .C(n1875), .E(VCC_net), 
            .D(n1949));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    SB_DFF r_Clock_Count__i3 (.Q(r_Clock_Count[3]), .C(n1875), .D(n1928));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    SB_DFF r_Clock_Count__i4 (.Q(r_Clock_Count[4]), .C(n1875), .D(n1925));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    SB_CARRY add_62_5 (.CI(n3807), .I0(r_Clock_Count[3]), .I1(GND_net), 
            .CO(n3808));
    SB_LUT4 i4092_4_lut (.I0(\r_SM_Main_2__N_789[2] ), .I1(r_SM_Main[0]), 
            .I2(r_SM_Main[1]), .I3(r_SM_Main[2]), .O(n4423));
    defparam i4092_4_lut.LUT_INIT = 16'hffdc;
    SB_LUT4 i402_2_lut (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[0]), .I2(GND_net), 
            .I3(GND_net), .O(n607));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(102[36:51])
    defparam i402_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i2503_2_lut (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), .I2(GND_net), 
            .I3(GND_net), .O(n2717));
    defparam i2503_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_adj_275 (.I0(r_Bit_Index[0]), .I1(n1213), .I2(GND_net), 
            .I3(GND_net), .O(n1267));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(52[7] 143[14])
    defparam i1_2_lut_adj_275.LUT_INIT = 16'heeee;
    SB_LUT4 equal_24_i4_2_lut (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(GND_net), .I3(GND_net), .O(n4));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(97[17:39])
    defparam equal_24_i4_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 equal_22_i4_2_lut (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(GND_net), .I3(GND_net), .O(n4_adj_1));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(97[17:39])
    defparam equal_22_i4_2_lut.LUT_INIT = 16'hbbbb;
    SB_DFF r_Clock_Count__i6 (.Q(r_Clock_Count[6]), .C(n1875), .D(n1849));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    SB_DFFE r_Clock_Count__i2 (.Q(r_Clock_Count[2]), .C(n1875), .E(VCC_net), 
            .D(n1946));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    SB_LUT4 i1_2_lut_adj_276 (.I0(r_Clock_Count[1]), .I1(r_Clock_Count[2]), 
            .I2(GND_net), .I3(GND_net), .O(n1261));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    defparam i1_2_lut_adj_276.LUT_INIT = 16'h8888;
    SB_LUT4 i3_4_lut (.I0(r_Clock_Count[7]), .I1(r_Clock_Count[6]), .I2(r_Clock_Count[4]), 
            .I3(r_Clock_Count[5]), .O(n3606));
    defparam i3_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 add_62_4_lut (.I0(GND_net), .I1(r_Clock_Count[2]), .I2(GND_net), 
            .I3(n3806), .O(n194[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_62_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_4_lut (.I0(r_SM_Main[1]), .I1(r_SM_Main[2]), .I2(r_SM_Main[0]), 
            .I3(\r_SM_Main_2__N_789[2] ), .O(n1213));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(52[7] 143[14])
    defparam i2_4_lut.LUT_INIT = 16'hfdff;
    SB_DFF r_Clock_Count__i5 (.Q(r_Clock_Count[5]), .C(n1875), .D(n1852));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    SB_DFF r_Clock_Count__i0 (.Q(r_Clock_Count[0]), .C(n1875), .D(n1812));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    SB_DFF r_Bit_Index_i0 (.Q(r_Bit_Index[0]), .C(n1875), .D(n1828));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    SB_DFF r_SM_Main_i1 (.Q(r_SM_Main[1]), .C(n1875), .D(n4046));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    SB_CARRY add_62_4 (.CI(n3806), .I0(r_Clock_Count[2]), .I1(GND_net), 
            .CO(n3807));
    SB_LUT4 i1_2_lut_adj_277 (.I0(n1213), .I1(r_Bit_Index[0]), .I2(GND_net), 
            .I3(GND_net), .O(n1272));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(52[7] 143[14])
    defparam i1_2_lut_adj_277.LUT_INIT = 16'hbbbb;
    SB_LUT4 equal_26_i4_2_lut (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(GND_net), .I3(GND_net), .O(n4_adj_2));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(97[17:39])
    defparam equal_26_i4_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i4305_2_lut_3_lut_4_lut (.I0(r_Bit_Index[2]), .I1(r_Bit_Index[1]), 
            .I2(r_Bit_Index[0]), .I3(\r_SM_Main_2__N_789[2] ), .O(n4607));
    defparam i4305_2_lut_3_lut_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i4277_2_lut_3_lut_4_lut (.I0(r_Clock_Count[0]), .I1(r_Clock_Count[1]), 
            .I2(r_Clock_Count[2]), .I3(n157), .O(n4556));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    defparam i4277_2_lut_3_lut_4_lut.LUT_INIT = 16'hff7f;
    SB_LUT4 add_62_3_lut (.I0(GND_net), .I1(r_Clock_Count[1]), .I2(GND_net), 
            .I3(n3805), .O(n194[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_62_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_62_9_lut (.I0(GND_net), .I1(r_Clock_Count[7]), .I2(GND_net), 
            .I3(n3811), .O(n194[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_62_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_62_8_lut (.I0(n3516), .I1(r_Clock_Count[6]), .I2(GND_net), 
            .I3(n3810), .O(n4586)) /* synthesis syn_instantiated=1 */ ;
    defparam add_62_8_lut.LUT_INIT = 16'h8228;
    SB_DFF r_Rx_Byte_i0 (.Q(o_Rx_Byte[0]), .C(n1875), .D(n1855));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    SB_CARRY add_62_3 (.CI(n3805), .I0(r_Clock_Count[1]), .I1(GND_net), 
            .CO(n3806));
    SB_LUT4 i4373_2_lut_3_lut (.I0(r_SM_Main[1]), .I1(r_SM_Main[0]), .I2(r_SM_Main[2]), 
            .I3(GND_net), .O(n1068));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(52[7] 143[14])
    defparam i4373_2_lut_3_lut.LUT_INIT = 16'hf7f7;
    SB_LUT4 i4325_4_lut (.I0(r_Clock_Count[1]), .I1(n3516), .I2(n194[1]), 
            .I3(n502), .O(n1949));
    defparam i4325_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_2_lut_3_lut (.I0(r_SM_Main[1]), .I1(r_SM_Main_2__N_795[0]), 
            .I2(r_Rx_Data), .I3(GND_net), .O(n4_c));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(30[17:26])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_LUT4 add_62_2_lut (.I0(n3516), .I1(r_Clock_Count[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n4604)) /* synthesis syn_instantiated=1 */ ;
    defparam add_62_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_62_2 (.CI(VCC_net), .I0(r_Clock_Count[0]), .I1(GND_net), 
            .CO(n3805));
    SB_LUT4 r_SM_Main_0__bdd_4_lut_4_lut (.I0(\r_SM_Main_2__N_789[2] ), .I1(r_SM_Main[1]), 
            .I2(n4607), .I3(r_SM_Main[0]), .O(n4873));
    defparam r_SM_Main_0__bdd_4_lut_4_lut.LUT_INIT = 16'h77c0;
    SB_LUT4 i2_2_lut_2_lut (.I0(r_Rx_Data), .I1(r_Clock_Count[0]), .I2(GND_net), 
            .I3(GND_net), .O(n7));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(70[21:38])
    defparam i2_2_lut_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 n4873_bdd_4_lut_4_lut (.I0(r_Rx_Data), .I1(r_SM_Main[1]), .I2(r_SM_Main_2__N_795[0]), 
            .I3(n4873), .O(n4876));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(70[21:38])
    defparam n4873_bdd_4_lut_4_lut.LUT_INIT = 16'hfc11;
    SB_CARRY add_62_8 (.CI(n3810), .I0(r_Clock_Count[6]), .I1(GND_net), 
            .CO(n3811));
    SB_LUT4 add_62_7_lut (.I0(GND_net), .I1(r_Clock_Count[5]), .I2(GND_net), 
            .I3(n3809), .O(n194[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_62_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut_3_lut_4_lut (.I0(r_Clock_Count[0]), .I1(n1261), .I2(r_Rx_Data), 
            .I3(r_Clock_Count[3]), .O(n168));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    defparam i1_3_lut_3_lut_4_lut.LUT_INIT = 16'h8880;
    SB_LUT4 i4096_4_lut_4_lut (.I0(n3606), .I1(r_Clock_Count[3]), .I2(n168), 
            .I3(r_SM_Main[0]), .O(n4427));
    defparam i4096_4_lut_4_lut.LUT_INIT = 16'hea00;
    SB_CARRY add_62_7 (.CI(n3809), .I0(r_Clock_Count[5]), .I1(GND_net), 
            .CO(n3810));
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(r_Clock_Count[0]), .I1(n1261), .I2(n3606), 
            .I3(r_Clock_Count[3]), .O(r_SM_Main_2__N_795[0]));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'hfff7;
    SB_LUT4 i1_3_lut_4_lut (.I0(r_Clock_Count[0]), .I1(n1261), .I2(r_Clock_Count[3]), 
            .I3(n3606), .O(\r_SM_Main_2__N_789[2] ));   // roboy_fpga_code/roboy_fpga_code/uart/uart_rx.v(49[10] 144[8])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hff80;
    SB_LUT4 i4100_3_lut_4_lut (.I0(r_Bit_Index[2]), .I1(n607), .I2(r_SM_Main[1]), 
            .I3(n4423), .O(n1788));
    defparam i4100_3_lut_4_lut.LUT_INIT = 16'hff70;
    SB_LUT4 i3275_3_lut_4_lut (.I0(n502), .I1(n3516), .I2(n4586), .I3(r_Clock_Count[6]), 
            .O(n1849));
    defparam i3275_3_lut_4_lut.LUT_INIT = 16'hf4b0;
    
endmodule
