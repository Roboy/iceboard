// ******************************************************************************

// iCEcube Netlister

// Version:            2017.08.27940

// Build Date:         Sep 12 2017 08:25:46

// File Generated:     Mar 21 2020 16:00:20

// Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

// Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

// ******************************************************************************

// Verilog file for cell "TinyFPGA_B" view "INTERFACE"

module TinyFPGA_B (
    USBPU,
    SPI_IO2,
    PIN_9,
    PIN_8,
    PIN_7,
    PIN_6,
    PIN_5,
    PIN_4,
    PIN_3,
    PIN_24,
    PIN_23,
    PIN_22,
    PIN_21,
    PIN_20,
    PIN_2,
    PIN_19,
    PIN_18,
    PIN_17,
    PIN_16,
    PIN_15,
    PIN_14,
    PIN_13,
    PIN_12,
    PIN_11,
    PIN_10,
    PIN_1,
    LED,
    CLK);

    input USBPU;
    input SPI_IO2;
    input PIN_9;
    input PIN_8;
    input PIN_7;
    input PIN_6;
    input PIN_5;
    input PIN_4;
    input PIN_3;
    input PIN_24;
    input PIN_23;
    input PIN_22;
    input PIN_21;
    input PIN_20;
    input PIN_2;
    input PIN_19;
    output PIN_18;
    input PIN_17;
    input PIN_16;
    input PIN_15;
    input PIN_14;
    inout PIN_13;
    input PIN_12;
    input PIN_11;
    input PIN_10;
    input PIN_1;
    output LED;
    input CLK;

    wire N__944;
    wire N__943;
    wire N__942;
    wire N__935;
    wire N__934;
    wire N__933;
    wire N__926;
    wire N__925;
    wire N__924;
    wire N__917;
    wire N__916;
    wire N__915;
    wire N__898;
    wire N__895;
    wire N__892;
    wire N__889;
    wire N__888;
    wire N__887;
    wire N__886;
    wire N__885;
    wire N__874;
    wire N__871;
    wire N__868;
    wire N__867;
    wire N__866;
    wire N__861;
    wire N__858;
    wire N__853;
    wire N__852;
    wire N__849;
    wire N__848;
    wire N__843;
    wire N__840;
    wire N__835;
    wire N__832;
    wire N__831;
    wire N__830;
    wire N__825;
    wire N__822;
    wire N__817;
    wire N__816;
    wire N__815;
    wire N__812;
    wire N__807;
    wire N__804;
    wire N__799;
    wire N__796;
    wire N__793;
    wire N__790;
    wire N__789;
    wire N__786;
    wire N__783;
    wire N__778;
    wire N__775;
    wire N__772;
    wire N__769;
    wire N__766;
    wire N__763;
    wire N__760;
    wire N__757;
    wire N__754;
    wire N__751;
    wire N__748;
    wire N__745;
    wire N__742;
    wire N__739;
    wire N__736;
    wire N__733;
    wire N__730;
    wire N__727;
    wire N__724;
    wire N__721;
    wire N__718;
    wire N__715;
    wire N__712;
    wire N__709;
    wire N__706;
    wire N__703;
    wire N__700;
    wire N__697;
    wire N__694;
    wire N__691;
    wire N__688;
    wire N__685;
    wire N__682;
    wire N__679;
    wire N__676;
    wire N__673;
    wire N__670;
    wire N__667;
    wire N__664;
    wire N__661;
    wire N__658;
    wire N__655;
    wire N__652;
    wire N__649;
    wire N__646;
    wire N__643;
    wire N__640;
    wire N__637;
    wire N__634;
    wire N__631;
    wire N__628;
    wire N__625;
    wire N__622;
    wire N__619;
    wire N__616;
    wire N__613;
    wire N__610;
    wire N__607;
    wire N__604;
    wire N__601;
    wire N__598;
    wire N__595;
    wire N__592;
    wire N__589;
    wire N__586;
    wire N__583;
    wire N__580;
    wire N__577;
    wire N__574;
    wire N__571;
    wire N__568;
    wire N__565;
    wire N__562;
    wire N__559;
    wire N__556;
    wire N__553;
    wire N__550;
    wire N__547;
    wire N__544;
    wire N__541;
    wire N__538;
    wire N__535;
    wire N__532;
    wire N__529;
    wire N__526;
    wire N__523;
    wire N__520;
    wire N__517;
    wire N__514;
    wire N__511;
    wire N__508;
    wire N__505;
    wire N__502;
    wire N__499;
    wire N__496;
    wire N__493;
    wire N__490;
    wire N__487;
    wire N__484;
    wire N__481;
    wire N__478;
    wire N__475;
    wire N__472;
    wire N__469;
    wire N__466;
    wire CLK_pad_gb_input;
    wire GNDG0;
    wire VCCG0;
    wire diff_input;
    wire n26;
    wire bfn_3_23_0_;
    wire n25;
    wire n182;
    wire n24;
    wire n183;
    wire n23;
    wire n184;
    wire n22;
    wire n185;
    wire n21;
    wire n186;
    wire n20;
    wire n187;
    wire n19;
    wire n188;
    wire n189;
    wire n18;
    wire bfn_3_24_0_;
    wire n17;
    wire n190;
    wire n16;
    wire n191;
    wire n15;
    wire n192;
    wire n14;
    wire n193;
    wire n13;
    wire n194;
    wire n12;
    wire n195;
    wire n11;
    wire n196;
    wire n197;
    wire n10;
    wire bfn_3_25_0_;
    wire n9;
    wire n198;
    wire n8;
    wire n199;
    wire n7;
    wire n200;
    wire n6;
    wire n201;
    wire n202;
    wire n203;
    wire n204;
    wire n205;
    wire bfn_3_26_0_;
    wire n206;
    wire CLK_c;
    wire blink_counter_24;
    wire blink_counter_23;
    wire blink_counter_22;
    wire blink_counter_21;
    wire n207;
    wire n208_cascade_;
    wire blink_counter_25;
    wire LED_c;
    wire _gnd_net_;

    defparam LED_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam LED_pad_iopad.PULLUP=1'b0;
    IO_PAD LED_pad_iopad (
            .OE(N__944),
            .DIN(N__943),
            .DOUT(N__942),
            .PACKAGEPIN(LED));
    defparam LED_pad_preio.PIN_TYPE=6'b011001;
    defparam LED_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO LED_pad_preio (
            .PADOEN(N__944),
            .PADOUT(N__943),
            .PADIN(N__942),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(N__778),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam PIN_18_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam PIN_18_pad_iopad.PULLUP=1'b0;
    IO_PAD PIN_18_pad_iopad (
            .OE(N__935),
            .DIN(N__934),
            .DOUT(N__933),
            .PACKAGEPIN(PIN_18));
    defparam PIN_18_pad_preio.PIN_TYPE=6'b010101;
    defparam PIN_18_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO PIN_18_pad_preio (
            .PADOEN(N__935),
            .PADOUT(N__934),
            .PADIN(N__933),
            .CLOCKENABLE(VCCG0),
            .DIN0(),
            .DIN1(),
            .DOUT0(N__577),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(N__889),
            .OUTPUTENABLE());
    defparam differential_input_iopad.IO_STANDARD="SB_LVDS_INPUT";
    defparam differential_input_iopad.PULLUP=1'b0;
    IO_PAD differential_input_iopad (
            .OE(N__926),
            .DIN(N__925),
            .DOUT(N__924),
            .PACKAGEPIN(PIN_13));
    defparam differential_input_preio.PIN_TYPE=6'b000001;
    defparam differential_input_preio.NEG_TRIGGER=1'b0;
    PRE_IO differential_input_preio (
            .PADOEN(N__926),
            .PADOUT(N__925),
            .PADIN(N__924),
            .CLOCKENABLE(),
            .DIN0(diff_input),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(GNDG0),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam CLK_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam CLK_pad_iopad.PULLUP=1'b0;
    IO_PAD CLK_pad_iopad (
            .OE(N__917),
            .DIN(N__916),
            .DOUT(N__915),
            .PACKAGEPIN(CLK));
    defparam CLK_pad_preio.PIN_TYPE=6'b000001;
    defparam CLK_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO CLK_pad_preio (
            .PADOEN(N__917),
            .PADOUT(N__916),
            .PADIN(N__915),
            .CLOCKENABLE(),
            .DIN0(CLK_pad_gb_input),
            .DIN1(),
            .DOUT0(),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    InMux I__185 (
            .O(N__898),
            .I(n204));
    InMux I__184 (
            .O(N__895),
            .I(bfn_3_26_0_));
    InMux I__183 (
            .O(N__892),
            .I(n206));
    ClkMux I__182 (
            .O(N__889),
            .I(N__874));
    ClkMux I__181 (
            .O(N__888),
            .I(N__874));
    ClkMux I__180 (
            .O(N__887),
            .I(N__874));
    ClkMux I__179 (
            .O(N__886),
            .I(N__874));
    ClkMux I__178 (
            .O(N__885),
            .I(N__874));
    GlobalMux I__177 (
            .O(N__874),
            .I(N__871));
    gio2CtrlBuf I__176 (
            .O(N__871),
            .I(CLK_c));
    InMux I__175 (
            .O(N__868),
            .I(N__861));
    InMux I__174 (
            .O(N__867),
            .I(N__861));
    InMux I__173 (
            .O(N__866),
            .I(N__858));
    LocalMux I__172 (
            .O(N__861),
            .I(blink_counter_24));
    LocalMux I__171 (
            .O(N__858),
            .I(blink_counter_24));
    CascadeMux I__170 (
            .O(N__853),
            .I(N__849));
    InMux I__169 (
            .O(N__852),
            .I(N__843));
    InMux I__168 (
            .O(N__849),
            .I(N__843));
    InMux I__167 (
            .O(N__848),
            .I(N__840));
    LocalMux I__166 (
            .O(N__843),
            .I(blink_counter_23));
    LocalMux I__165 (
            .O(N__840),
            .I(blink_counter_23));
    CascadeMux I__164 (
            .O(N__835),
            .I(N__832));
    InMux I__163 (
            .O(N__832),
            .I(N__825));
    InMux I__162 (
            .O(N__831),
            .I(N__825));
    InMux I__161 (
            .O(N__830),
            .I(N__822));
    LocalMux I__160 (
            .O(N__825),
            .I(blink_counter_22));
    LocalMux I__159 (
            .O(N__822),
            .I(blink_counter_22));
    CascadeMux I__158 (
            .O(N__817),
            .I(N__812));
    InMux I__157 (
            .O(N__816),
            .I(N__807));
    InMux I__156 (
            .O(N__815),
            .I(N__807));
    InMux I__155 (
            .O(N__812),
            .I(N__804));
    LocalMux I__154 (
            .O(N__807),
            .I(blink_counter_21));
    LocalMux I__153 (
            .O(N__804),
            .I(blink_counter_21));
    InMux I__152 (
            .O(N__799),
            .I(N__796));
    LocalMux I__151 (
            .O(N__796),
            .I(n207));
    CascadeMux I__150 (
            .O(N__793),
            .I(n208_cascade_));
    InMux I__149 (
            .O(N__790),
            .I(N__786));
    InMux I__148 (
            .O(N__789),
            .I(N__783));
    LocalMux I__147 (
            .O(N__786),
            .I(blink_counter_25));
    LocalMux I__146 (
            .O(N__783),
            .I(blink_counter_25));
    IoInMux I__145 (
            .O(N__778),
            .I(N__775));
    LocalMux I__144 (
            .O(N__775),
            .I(N__772));
    Span4Mux_s0_v I__143 (
            .O(N__772),
            .I(N__769));
    Span4Mux_v I__142 (
            .O(N__769),
            .I(N__766));
    Odrv4 I__141 (
            .O(N__766),
            .I(LED_c));
    CascadeMux I__140 (
            .O(N__763),
            .I(N__760));
    InMux I__139 (
            .O(N__760),
            .I(N__757));
    LocalMux I__138 (
            .O(N__757),
            .I(n11));
    InMux I__137 (
            .O(N__754),
            .I(n196));
    CascadeMux I__136 (
            .O(N__751),
            .I(N__748));
    InMux I__135 (
            .O(N__748),
            .I(N__745));
    LocalMux I__134 (
            .O(N__745),
            .I(n10));
    InMux I__133 (
            .O(N__742),
            .I(bfn_3_25_0_));
    CascadeMux I__132 (
            .O(N__739),
            .I(N__736));
    InMux I__131 (
            .O(N__736),
            .I(N__733));
    LocalMux I__130 (
            .O(N__733),
            .I(n9));
    InMux I__129 (
            .O(N__730),
            .I(n198));
    CascadeMux I__128 (
            .O(N__727),
            .I(N__724));
    InMux I__127 (
            .O(N__724),
            .I(N__721));
    LocalMux I__126 (
            .O(N__721),
            .I(n8));
    InMux I__125 (
            .O(N__718),
            .I(n199));
    CascadeMux I__124 (
            .O(N__715),
            .I(N__712));
    InMux I__123 (
            .O(N__712),
            .I(N__709));
    LocalMux I__122 (
            .O(N__709),
            .I(n7));
    InMux I__121 (
            .O(N__706),
            .I(n200));
    CascadeMux I__120 (
            .O(N__703),
            .I(N__700));
    InMux I__119 (
            .O(N__700),
            .I(N__697));
    LocalMux I__118 (
            .O(N__697),
            .I(n6));
    InMux I__117 (
            .O(N__694),
            .I(n201));
    InMux I__116 (
            .O(N__691),
            .I(n202));
    InMux I__115 (
            .O(N__688),
            .I(n203));
    CascadeMux I__114 (
            .O(N__685),
            .I(N__682));
    InMux I__113 (
            .O(N__682),
            .I(N__679));
    LocalMux I__112 (
            .O(N__679),
            .I(n20));
    InMux I__111 (
            .O(N__676),
            .I(n187));
    CascadeMux I__110 (
            .O(N__673),
            .I(N__670));
    InMux I__109 (
            .O(N__670),
            .I(N__667));
    LocalMux I__108 (
            .O(N__667),
            .I(n19));
    InMux I__107 (
            .O(N__664),
            .I(n188));
    CascadeMux I__106 (
            .O(N__661),
            .I(N__658));
    InMux I__105 (
            .O(N__658),
            .I(N__655));
    LocalMux I__104 (
            .O(N__655),
            .I(n18));
    InMux I__103 (
            .O(N__652),
            .I(bfn_3_24_0_));
    CascadeMux I__102 (
            .O(N__649),
            .I(N__646));
    InMux I__101 (
            .O(N__646),
            .I(N__643));
    LocalMux I__100 (
            .O(N__643),
            .I(n17));
    InMux I__99 (
            .O(N__640),
            .I(n190));
    CascadeMux I__98 (
            .O(N__637),
            .I(N__634));
    InMux I__97 (
            .O(N__634),
            .I(N__631));
    LocalMux I__96 (
            .O(N__631),
            .I(n16));
    InMux I__95 (
            .O(N__628),
            .I(n191));
    CascadeMux I__94 (
            .O(N__625),
            .I(N__622));
    InMux I__93 (
            .O(N__622),
            .I(N__619));
    LocalMux I__92 (
            .O(N__619),
            .I(n15));
    InMux I__91 (
            .O(N__616),
            .I(n192));
    CascadeMux I__90 (
            .O(N__613),
            .I(N__610));
    InMux I__89 (
            .O(N__610),
            .I(N__607));
    LocalMux I__88 (
            .O(N__607),
            .I(n14));
    InMux I__87 (
            .O(N__604),
            .I(n193));
    CascadeMux I__86 (
            .O(N__601),
            .I(N__598));
    InMux I__85 (
            .O(N__598),
            .I(N__595));
    LocalMux I__84 (
            .O(N__595),
            .I(n13));
    InMux I__83 (
            .O(N__592),
            .I(n194));
    CascadeMux I__82 (
            .O(N__589),
            .I(N__586));
    InMux I__81 (
            .O(N__586),
            .I(N__583));
    LocalMux I__80 (
            .O(N__583),
            .I(n12));
    InMux I__79 (
            .O(N__580),
            .I(n195));
    IoInMux I__78 (
            .O(N__577),
            .I(N__574));
    LocalMux I__77 (
            .O(N__574),
            .I(N__571));
    IoSpan4Mux I__76 (
            .O(N__571),
            .I(N__568));
    Span4Mux_s2_v I__75 (
            .O(N__568),
            .I(N__565));
    Sp12to4 I__74 (
            .O(N__565),
            .I(N__562));
    Span12Mux_h I__73 (
            .O(N__562),
            .I(N__559));
    Span12Mux_h I__72 (
            .O(N__559),
            .I(N__556));
    Odrv12 I__71 (
            .O(N__556),
            .I(diff_input));
    CascadeMux I__70 (
            .O(N__553),
            .I(N__550));
    InMux I__69 (
            .O(N__550),
            .I(N__547));
    LocalMux I__68 (
            .O(N__547),
            .I(n26));
    InMux I__67 (
            .O(N__544),
            .I(bfn_3_23_0_));
    CascadeMux I__66 (
            .O(N__541),
            .I(N__538));
    InMux I__65 (
            .O(N__538),
            .I(N__535));
    LocalMux I__64 (
            .O(N__535),
            .I(n25));
    InMux I__63 (
            .O(N__532),
            .I(n182));
    CascadeMux I__62 (
            .O(N__529),
            .I(N__526));
    InMux I__61 (
            .O(N__526),
            .I(N__523));
    LocalMux I__60 (
            .O(N__523),
            .I(n24));
    InMux I__59 (
            .O(N__520),
            .I(n183));
    CascadeMux I__58 (
            .O(N__517),
            .I(N__514));
    InMux I__57 (
            .O(N__514),
            .I(N__511));
    LocalMux I__56 (
            .O(N__511),
            .I(n23));
    InMux I__55 (
            .O(N__508),
            .I(n184));
    CascadeMux I__54 (
            .O(N__505),
            .I(N__502));
    InMux I__53 (
            .O(N__502),
            .I(N__499));
    LocalMux I__52 (
            .O(N__499),
            .I(n22));
    InMux I__51 (
            .O(N__496),
            .I(n185));
    CascadeMux I__50 (
            .O(N__493),
            .I(N__490));
    InMux I__49 (
            .O(N__490),
            .I(N__487));
    LocalMux I__48 (
            .O(N__487),
            .I(n21));
    InMux I__47 (
            .O(N__484),
            .I(n186));
    IoInMux I__46 (
            .O(N__481),
            .I(N__478));
    LocalMux I__45 (
            .O(N__478),
            .I(N__475));
    IoSpan4Mux I__44 (
            .O(N__475),
            .I(N__472));
    IoSpan4Mux I__43 (
            .O(N__472),
            .I(N__469));
    IoSpan4Mux I__42 (
            .O(N__469),
            .I(N__466));
    Odrv4 I__41 (
            .O(N__466),
            .I(CLK_pad_gb_input));
    defparam IN_MUX_bfv_3_23_0_.C_INIT=2'b01;
    ICE_CARRY_IN_MUX IN_MUX_bfv_3_23_0_ (
            .carryinitin(),
            .carryinitout(bfn_3_23_0_));
    defparam IN_MUX_bfv_3_24_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_3_24_0_ (
            .carryinitin(n189),
            .carryinitout(bfn_3_24_0_));
    defparam IN_MUX_bfv_3_25_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_3_25_0_ (
            .carryinitin(n197),
            .carryinitout(bfn_3_25_0_));
    defparam IN_MUX_bfv_3_26_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_3_26_0_ (
            .carryinitin(n205),
            .carryinitout(bfn_3_26_0_));
    ICE_GB CLK_pad_gb (
            .USERSIGNALTOGLOBALBUFFER(N__481),
            .GLOBALBUFFEROUTPUT(CLK_c));
    VCC VCC (
            .Y(VCCG0));
    GND GND (
            .Y(GNDG0));
    GND GND_Inst (
            .Y(_gnd_net_));
    defparam blink_counter_14__i0_LC_3_23_0.C_ON=1'b1;
    defparam blink_counter_14__i0_LC_3_23_0.SEQ_MODE=4'b1000;
    defparam blink_counter_14__i0_LC_3_23_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_14__i0_LC_3_23_0 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__553),
            .in3(N__544),
            .lcout(n26),
            .ltout(),
            .carryin(bfn_3_23_0_),
            .carryout(n182),
            .clk(N__885),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_14__i1_LC_3_23_1.C_ON=1'b1;
    defparam blink_counter_14__i1_LC_3_23_1.SEQ_MODE=4'b1000;
    defparam blink_counter_14__i1_LC_3_23_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_14__i1_LC_3_23_1 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__541),
            .in3(N__532),
            .lcout(n25),
            .ltout(),
            .carryin(n182),
            .carryout(n183),
            .clk(N__885),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_14__i2_LC_3_23_2.C_ON=1'b1;
    defparam blink_counter_14__i2_LC_3_23_2.SEQ_MODE=4'b1000;
    defparam blink_counter_14__i2_LC_3_23_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_14__i2_LC_3_23_2 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__529),
            .in3(N__520),
            .lcout(n24),
            .ltout(),
            .carryin(n183),
            .carryout(n184),
            .clk(N__885),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_14__i3_LC_3_23_3.C_ON=1'b1;
    defparam blink_counter_14__i3_LC_3_23_3.SEQ_MODE=4'b1000;
    defparam blink_counter_14__i3_LC_3_23_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_14__i3_LC_3_23_3 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__517),
            .in3(N__508),
            .lcout(n23),
            .ltout(),
            .carryin(n184),
            .carryout(n185),
            .clk(N__885),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_14__i4_LC_3_23_4.C_ON=1'b1;
    defparam blink_counter_14__i4_LC_3_23_4.SEQ_MODE=4'b1000;
    defparam blink_counter_14__i4_LC_3_23_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_14__i4_LC_3_23_4 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__505),
            .in3(N__496),
            .lcout(n22),
            .ltout(),
            .carryin(n185),
            .carryout(n186),
            .clk(N__885),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_14__i5_LC_3_23_5.C_ON=1'b1;
    defparam blink_counter_14__i5_LC_3_23_5.SEQ_MODE=4'b1000;
    defparam blink_counter_14__i5_LC_3_23_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_14__i5_LC_3_23_5 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__493),
            .in3(N__484),
            .lcout(n21),
            .ltout(),
            .carryin(n186),
            .carryout(n187),
            .clk(N__885),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_14__i6_LC_3_23_6.C_ON=1'b1;
    defparam blink_counter_14__i6_LC_3_23_6.SEQ_MODE=4'b1000;
    defparam blink_counter_14__i6_LC_3_23_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_14__i6_LC_3_23_6 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__685),
            .in3(N__676),
            .lcout(n20),
            .ltout(),
            .carryin(n187),
            .carryout(n188),
            .clk(N__885),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_14__i7_LC_3_23_7.C_ON=1'b1;
    defparam blink_counter_14__i7_LC_3_23_7.SEQ_MODE=4'b1000;
    defparam blink_counter_14__i7_LC_3_23_7.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_14__i7_LC_3_23_7 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__673),
            .in3(N__664),
            .lcout(n19),
            .ltout(),
            .carryin(n188),
            .carryout(n189),
            .clk(N__885),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_14__i8_LC_3_24_0.C_ON=1'b1;
    defparam blink_counter_14__i8_LC_3_24_0.SEQ_MODE=4'b1000;
    defparam blink_counter_14__i8_LC_3_24_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_14__i8_LC_3_24_0 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__661),
            .in3(N__652),
            .lcout(n18),
            .ltout(),
            .carryin(bfn_3_24_0_),
            .carryout(n190),
            .clk(N__886),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_14__i9_LC_3_24_1.C_ON=1'b1;
    defparam blink_counter_14__i9_LC_3_24_1.SEQ_MODE=4'b1000;
    defparam blink_counter_14__i9_LC_3_24_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_14__i9_LC_3_24_1 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__649),
            .in3(N__640),
            .lcout(n17),
            .ltout(),
            .carryin(n190),
            .carryout(n191),
            .clk(N__886),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_14__i10_LC_3_24_2.C_ON=1'b1;
    defparam blink_counter_14__i10_LC_3_24_2.SEQ_MODE=4'b1000;
    defparam blink_counter_14__i10_LC_3_24_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_14__i10_LC_3_24_2 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__637),
            .in3(N__628),
            .lcout(n16),
            .ltout(),
            .carryin(n191),
            .carryout(n192),
            .clk(N__886),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_14__i11_LC_3_24_3.C_ON=1'b1;
    defparam blink_counter_14__i11_LC_3_24_3.SEQ_MODE=4'b1000;
    defparam blink_counter_14__i11_LC_3_24_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_14__i11_LC_3_24_3 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__625),
            .in3(N__616),
            .lcout(n15),
            .ltout(),
            .carryin(n192),
            .carryout(n193),
            .clk(N__886),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_14__i12_LC_3_24_4.C_ON=1'b1;
    defparam blink_counter_14__i12_LC_3_24_4.SEQ_MODE=4'b1000;
    defparam blink_counter_14__i12_LC_3_24_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_14__i12_LC_3_24_4 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__613),
            .in3(N__604),
            .lcout(n14),
            .ltout(),
            .carryin(n193),
            .carryout(n194),
            .clk(N__886),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_14__i13_LC_3_24_5.C_ON=1'b1;
    defparam blink_counter_14__i13_LC_3_24_5.SEQ_MODE=4'b1000;
    defparam blink_counter_14__i13_LC_3_24_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_14__i13_LC_3_24_5 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__601),
            .in3(N__592),
            .lcout(n13),
            .ltout(),
            .carryin(n194),
            .carryout(n195),
            .clk(N__886),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_14__i14_LC_3_24_6.C_ON=1'b1;
    defparam blink_counter_14__i14_LC_3_24_6.SEQ_MODE=4'b1000;
    defparam blink_counter_14__i14_LC_3_24_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_14__i14_LC_3_24_6 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__589),
            .in3(N__580),
            .lcout(n12),
            .ltout(),
            .carryin(n195),
            .carryout(n196),
            .clk(N__886),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_14__i15_LC_3_24_7.C_ON=1'b1;
    defparam blink_counter_14__i15_LC_3_24_7.SEQ_MODE=4'b1000;
    defparam blink_counter_14__i15_LC_3_24_7.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_14__i15_LC_3_24_7 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__763),
            .in3(N__754),
            .lcout(n11),
            .ltout(),
            .carryin(n196),
            .carryout(n197),
            .clk(N__886),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_14__i16_LC_3_25_0.C_ON=1'b1;
    defparam blink_counter_14__i16_LC_3_25_0.SEQ_MODE=4'b1000;
    defparam blink_counter_14__i16_LC_3_25_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_14__i16_LC_3_25_0 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__751),
            .in3(N__742),
            .lcout(n10),
            .ltout(),
            .carryin(bfn_3_25_0_),
            .carryout(n198),
            .clk(N__887),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_14__i17_LC_3_25_1.C_ON=1'b1;
    defparam blink_counter_14__i17_LC_3_25_1.SEQ_MODE=4'b1000;
    defparam blink_counter_14__i17_LC_3_25_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_14__i17_LC_3_25_1 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__739),
            .in3(N__730),
            .lcout(n9),
            .ltout(),
            .carryin(n198),
            .carryout(n199),
            .clk(N__887),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_14__i18_LC_3_25_2.C_ON=1'b1;
    defparam blink_counter_14__i18_LC_3_25_2.SEQ_MODE=4'b1000;
    defparam blink_counter_14__i18_LC_3_25_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_14__i18_LC_3_25_2 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__727),
            .in3(N__718),
            .lcout(n8),
            .ltout(),
            .carryin(n199),
            .carryout(n200),
            .clk(N__887),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_14__i19_LC_3_25_3.C_ON=1'b1;
    defparam blink_counter_14__i19_LC_3_25_3.SEQ_MODE=4'b1000;
    defparam blink_counter_14__i19_LC_3_25_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_14__i19_LC_3_25_3 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__715),
            .in3(N__706),
            .lcout(n7),
            .ltout(),
            .carryin(n200),
            .carryout(n201),
            .clk(N__887),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_14__i20_LC_3_25_4.C_ON=1'b1;
    defparam blink_counter_14__i20_LC_3_25_4.SEQ_MODE=4'b1000;
    defparam blink_counter_14__i20_LC_3_25_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_14__i20_LC_3_25_4 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__703),
            .in3(N__694),
            .lcout(n6),
            .ltout(),
            .carryin(n201),
            .carryout(n202),
            .clk(N__887),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_14__i21_LC_3_25_5.C_ON=1'b1;
    defparam blink_counter_14__i21_LC_3_25_5.SEQ_MODE=4'b1000;
    defparam blink_counter_14__i21_LC_3_25_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_14__i21_LC_3_25_5 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__817),
            .in3(N__691),
            .lcout(blink_counter_21),
            .ltout(),
            .carryin(n202),
            .carryout(n203),
            .clk(N__887),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_14__i22_LC_3_25_6.C_ON=1'b1;
    defparam blink_counter_14__i22_LC_3_25_6.SEQ_MODE=4'b1000;
    defparam blink_counter_14__i22_LC_3_25_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_14__i22_LC_3_25_6 (
            .in0(_gnd_net_),
            .in1(N__830),
            .in2(_gnd_net_),
            .in3(N__688),
            .lcout(blink_counter_22),
            .ltout(),
            .carryin(n203),
            .carryout(n204),
            .clk(N__887),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_14__i23_LC_3_25_7.C_ON=1'b1;
    defparam blink_counter_14__i23_LC_3_25_7.SEQ_MODE=4'b1000;
    defparam blink_counter_14__i23_LC_3_25_7.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_14__i23_LC_3_25_7 (
            .in0(_gnd_net_),
            .in1(N__848),
            .in2(_gnd_net_),
            .in3(N__898),
            .lcout(blink_counter_23),
            .ltout(),
            .carryin(n204),
            .carryout(n205),
            .clk(N__887),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_14__i24_LC_3_26_0.C_ON=1'b1;
    defparam blink_counter_14__i24_LC_3_26_0.SEQ_MODE=4'b1000;
    defparam blink_counter_14__i24_LC_3_26_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_14__i24_LC_3_26_0 (
            .in0(_gnd_net_),
            .in1(N__866),
            .in2(_gnd_net_),
            .in3(N__895),
            .lcout(blink_counter_24),
            .ltout(),
            .carryin(bfn_3_26_0_),
            .carryout(n206),
            .clk(N__888),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_14__i25_LC_3_26_1.C_ON=1'b0;
    defparam blink_counter_14__i25_LC_3_26_1.SEQ_MODE=4'b1000;
    defparam blink_counter_14__i25_LC_3_26_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_14__i25_LC_3_26_1 (
            .in0(_gnd_net_),
            .in1(N__789),
            .in2(_gnd_net_),
            .in3(N__892),
            .lcout(blink_counter_25),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__888),
            .ce(),
            .sr(_gnd_net_));
    defparam i54_4_lut_LC_4_25_0.C_ON=1'b0;
    defparam i54_4_lut_LC_4_25_0.SEQ_MODE=4'b0000;
    defparam i54_4_lut_LC_4_25_0.LUT_INIT=16'b1011101000100010;
    LogicCell40 i54_4_lut_LC_4_25_0 (
            .in0(N__815),
            .in1(N__867),
            .in2(N__853),
            .in3(N__831),
            .lcout(n207),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i55_4_lut_LC_4_25_1.C_ON=1'b0;
    defparam i55_4_lut_LC_4_25_1.SEQ_MODE=4'b0000;
    defparam i55_4_lut_LC_4_25_1.LUT_INIT=16'b1111111010001100;
    LogicCell40 i55_4_lut_LC_4_25_1 (
            .in0(N__868),
            .in1(N__852),
            .in2(N__835),
            .in3(N__816),
            .lcout(),
            .ltout(n208_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i56_3_lut_LC_4_25_2.C_ON=1'b0;
    defparam i56_3_lut_LC_4_25_2.SEQ_MODE=4'b0000;
    defparam i56_3_lut_LC_4_25_2.LUT_INIT=16'b0000111100110011;
    LogicCell40 i56_3_lut_LC_4_25_2 (
            .in0(_gnd_net_),
            .in1(N__799),
            .in2(N__793),
            .in3(N__790),
            .lcout(LED_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
endmodule // TinyFPGA_B
