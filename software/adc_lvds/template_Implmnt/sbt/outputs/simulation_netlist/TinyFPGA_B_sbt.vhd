-- ******************************************************************************

-- iCEcube Netlister

-- Version:            2017.08.27940

-- Build Date:         Sep 12 2017 08:26:01

-- File Generated:     Mar 21 2020 16:00:20

-- Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

-- Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

-- ******************************************************************************

-- VHDL file for cell "TinyFPGA_B" view "INTERFACE"

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library ice;
use ice.vcomponent_vital.all;

-- Entity of TinyFPGA_B
entity TinyFPGA_B is
port (
    USBPU : in std_logic;
    SPI_IO2 : in std_logic;
    PIN_9 : in std_logic;
    PIN_8 : in std_logic;
    PIN_7 : in std_logic;
    PIN_6 : in std_logic;
    PIN_5 : in std_logic;
    PIN_4 : in std_logic;
    PIN_3 : in std_logic;
    PIN_24 : in std_logic;
    PIN_23 : in std_logic;
    PIN_22 : in std_logic;
    PIN_21 : in std_logic;
    PIN_20 : in std_logic;
    PIN_2 : in std_logic;
    PIN_19 : in std_logic;
    PIN_18 : out std_logic;
    PIN_17 : in std_logic;
    PIN_16 : in std_logic;
    PIN_15 : in std_logic;
    PIN_14 : in std_logic;
    PIN_13 : inout std_logic;
    PIN_12 : in std_logic;
    PIN_11 : in std_logic;
    PIN_10 : in std_logic;
    PIN_1 : in std_logic;
    LED : out std_logic;
    CLK : in std_logic);
end TinyFPGA_B;

-- Architecture of TinyFPGA_B
-- View name is \INTERFACE\
architecture \INTERFACE\ of TinyFPGA_B is

signal \N__944\ : std_logic;
signal \N__943\ : std_logic;
signal \N__942\ : std_logic;
signal \N__935\ : std_logic;
signal \N__934\ : std_logic;
signal \N__933\ : std_logic;
signal \N__926\ : std_logic;
signal \N__925\ : std_logic;
signal \N__924\ : std_logic;
signal \N__917\ : std_logic;
signal \N__916\ : std_logic;
signal \N__915\ : std_logic;
signal \N__898\ : std_logic;
signal \N__895\ : std_logic;
signal \N__892\ : std_logic;
signal \N__889\ : std_logic;
signal \N__888\ : std_logic;
signal \N__887\ : std_logic;
signal \N__886\ : std_logic;
signal \N__885\ : std_logic;
signal \N__874\ : std_logic;
signal \N__871\ : std_logic;
signal \N__868\ : std_logic;
signal \N__867\ : std_logic;
signal \N__866\ : std_logic;
signal \N__861\ : std_logic;
signal \N__858\ : std_logic;
signal \N__853\ : std_logic;
signal \N__852\ : std_logic;
signal \N__849\ : std_logic;
signal \N__848\ : std_logic;
signal \N__843\ : std_logic;
signal \N__840\ : std_logic;
signal \N__835\ : std_logic;
signal \N__832\ : std_logic;
signal \N__831\ : std_logic;
signal \N__830\ : std_logic;
signal \N__825\ : std_logic;
signal \N__822\ : std_logic;
signal \N__817\ : std_logic;
signal \N__816\ : std_logic;
signal \N__815\ : std_logic;
signal \N__812\ : std_logic;
signal \N__807\ : std_logic;
signal \N__804\ : std_logic;
signal \N__799\ : std_logic;
signal \N__796\ : std_logic;
signal \N__793\ : std_logic;
signal \N__790\ : std_logic;
signal \N__789\ : std_logic;
signal \N__786\ : std_logic;
signal \N__783\ : std_logic;
signal \N__778\ : std_logic;
signal \N__775\ : std_logic;
signal \N__772\ : std_logic;
signal \N__769\ : std_logic;
signal \N__766\ : std_logic;
signal \N__763\ : std_logic;
signal \N__760\ : std_logic;
signal \N__757\ : std_logic;
signal \N__754\ : std_logic;
signal \N__751\ : std_logic;
signal \N__748\ : std_logic;
signal \N__745\ : std_logic;
signal \N__742\ : std_logic;
signal \N__739\ : std_logic;
signal \N__736\ : std_logic;
signal \N__733\ : std_logic;
signal \N__730\ : std_logic;
signal \N__727\ : std_logic;
signal \N__724\ : std_logic;
signal \N__721\ : std_logic;
signal \N__718\ : std_logic;
signal \N__715\ : std_logic;
signal \N__712\ : std_logic;
signal \N__709\ : std_logic;
signal \N__706\ : std_logic;
signal \N__703\ : std_logic;
signal \N__700\ : std_logic;
signal \N__697\ : std_logic;
signal \N__694\ : std_logic;
signal \N__691\ : std_logic;
signal \N__688\ : std_logic;
signal \N__685\ : std_logic;
signal \N__682\ : std_logic;
signal \N__679\ : std_logic;
signal \N__676\ : std_logic;
signal \N__673\ : std_logic;
signal \N__670\ : std_logic;
signal \N__667\ : std_logic;
signal \N__664\ : std_logic;
signal \N__661\ : std_logic;
signal \N__658\ : std_logic;
signal \N__655\ : std_logic;
signal \N__652\ : std_logic;
signal \N__649\ : std_logic;
signal \N__646\ : std_logic;
signal \N__643\ : std_logic;
signal \N__640\ : std_logic;
signal \N__637\ : std_logic;
signal \N__634\ : std_logic;
signal \N__631\ : std_logic;
signal \N__628\ : std_logic;
signal \N__625\ : std_logic;
signal \N__622\ : std_logic;
signal \N__619\ : std_logic;
signal \N__616\ : std_logic;
signal \N__613\ : std_logic;
signal \N__610\ : std_logic;
signal \N__607\ : std_logic;
signal \N__604\ : std_logic;
signal \N__601\ : std_logic;
signal \N__598\ : std_logic;
signal \N__595\ : std_logic;
signal \N__592\ : std_logic;
signal \N__589\ : std_logic;
signal \N__586\ : std_logic;
signal \N__583\ : std_logic;
signal \N__580\ : std_logic;
signal \N__577\ : std_logic;
signal \N__574\ : std_logic;
signal \N__571\ : std_logic;
signal \N__568\ : std_logic;
signal \N__565\ : std_logic;
signal \N__562\ : std_logic;
signal \N__559\ : std_logic;
signal \N__556\ : std_logic;
signal \N__553\ : std_logic;
signal \N__550\ : std_logic;
signal \N__547\ : std_logic;
signal \N__544\ : std_logic;
signal \N__541\ : std_logic;
signal \N__538\ : std_logic;
signal \N__535\ : std_logic;
signal \N__532\ : std_logic;
signal \N__529\ : std_logic;
signal \N__526\ : std_logic;
signal \N__523\ : std_logic;
signal \N__520\ : std_logic;
signal \N__517\ : std_logic;
signal \N__514\ : std_logic;
signal \N__511\ : std_logic;
signal \N__508\ : std_logic;
signal \N__505\ : std_logic;
signal \N__502\ : std_logic;
signal \N__499\ : std_logic;
signal \N__496\ : std_logic;
signal \N__493\ : std_logic;
signal \N__490\ : std_logic;
signal \N__487\ : std_logic;
signal \N__484\ : std_logic;
signal \N__481\ : std_logic;
signal \N__478\ : std_logic;
signal \N__475\ : std_logic;
signal \N__472\ : std_logic;
signal \N__469\ : std_logic;
signal \N__466\ : std_logic;
signal \CLK_pad_gb_input\ : std_logic;
signal \GNDG0\ : std_logic;
signal \VCCG0\ : std_logic;
signal diff_input : std_logic;
signal n26 : std_logic;
signal \bfn_3_23_0_\ : std_logic;
signal n25 : std_logic;
signal n182 : std_logic;
signal n24 : std_logic;
signal n183 : std_logic;
signal n23 : std_logic;
signal n184 : std_logic;
signal n22 : std_logic;
signal n185 : std_logic;
signal n21 : std_logic;
signal n186 : std_logic;
signal n20 : std_logic;
signal n187 : std_logic;
signal n19 : std_logic;
signal n188 : std_logic;
signal n189 : std_logic;
signal n18 : std_logic;
signal \bfn_3_24_0_\ : std_logic;
signal n17 : std_logic;
signal n190 : std_logic;
signal n16 : std_logic;
signal n191 : std_logic;
signal n15 : std_logic;
signal n192 : std_logic;
signal n14 : std_logic;
signal n193 : std_logic;
signal n13 : std_logic;
signal n194 : std_logic;
signal n12 : std_logic;
signal n195 : std_logic;
signal n11 : std_logic;
signal n196 : std_logic;
signal n197 : std_logic;
signal n10 : std_logic;
signal \bfn_3_25_0_\ : std_logic;
signal n9 : std_logic;
signal n198 : std_logic;
signal n8 : std_logic;
signal n199 : std_logic;
signal n7 : std_logic;
signal n200 : std_logic;
signal n6 : std_logic;
signal n201 : std_logic;
signal n202 : std_logic;
signal n203 : std_logic;
signal n204 : std_logic;
signal n205 : std_logic;
signal \bfn_3_26_0_\ : std_logic;
signal n206 : std_logic;
signal \CLK_c\ : std_logic;
signal blink_counter_24 : std_logic;
signal blink_counter_23 : std_logic;
signal blink_counter_22 : std_logic;
signal blink_counter_21 : std_logic;
signal n207 : std_logic;
signal \n208_cascade_\ : std_logic;
signal blink_counter_25 : std_logic;
signal \LED_c\ : std_logic;
signal \_gnd_net_\ : std_logic;

signal \LED_wire\ : std_logic;
signal \PIN_18_wire\ : std_logic;
signal \CLK_wire\ : std_logic;

begin
    LED <= \LED_wire\;
    PIN_18 <= \PIN_18_wire\;
    \CLK_wire\ <= CLK;

    \LED_pad_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__944\,
            DIN => \N__943\,
            DOUT => \N__942\,
            PACKAGEPIN => \LED_wire\
        );

    \LED_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__944\,
            PADOUT => \N__943\,
            PADIN => \N__942\,
            CLOCKENABLE => 'H',
            DIN0 => OPEN,
            DIN1 => OPEN,
            DOUT0 => \N__778\,
            DOUT1 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0'
        );

    \PIN_18_pad_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__935\,
            DIN => \N__934\,
            DOUT => \N__933\,
            PACKAGEPIN => \PIN_18_wire\
        );

    \PIN_18_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "010101",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__935\,
            PADOUT => \N__934\,
            PADIN => \N__933\,
            CLOCKENABLE => \VCCG0\,
            DIN0 => OPEN,
            DIN1 => OPEN,
            DOUT0 => \N__577\,
            DOUT1 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            OUTPUTCLK => \N__889\,
            OUTPUTENABLE => '0'
        );

    \differential_input_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVDS_INPUT",
            PULLUP => '0'
        )
    port map (
            OE => \N__926\,
            DIN => \N__925\,
            DOUT => \N__924\,
            PACKAGEPIN => PIN_13
        );

    \differential_input_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__926\,
            PADOUT => \N__925\,
            PADIN => \N__924\,
            CLOCKENABLE => 'H',
            DIN0 => diff_input,
            DIN1 => OPEN,
            DOUT0 => \GNDG0\,
            DOUT1 => \GNDG0\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0'
        );

    \CLK_pad_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__917\,
            DIN => \N__916\,
            DOUT => \N__915\,
            PACKAGEPIN => \CLK_wire\
        );

    \CLK_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__917\,
            PADOUT => \N__916\,
            PADIN => \N__915\,
            CLOCKENABLE => 'H',
            DIN0 => \CLK_pad_gb_input\,
            DIN1 => OPEN,
            DOUT0 => '0',
            DOUT1 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0'
        );

    \I__185\ : InMux
    port map (
            O => \N__898\,
            I => n204
        );

    \I__184\ : InMux
    port map (
            O => \N__895\,
            I => \bfn_3_26_0_\
        );

    \I__183\ : InMux
    port map (
            O => \N__892\,
            I => n206
        );

    \I__182\ : ClkMux
    port map (
            O => \N__889\,
            I => \N__874\
        );

    \I__181\ : ClkMux
    port map (
            O => \N__888\,
            I => \N__874\
        );

    \I__180\ : ClkMux
    port map (
            O => \N__887\,
            I => \N__874\
        );

    \I__179\ : ClkMux
    port map (
            O => \N__886\,
            I => \N__874\
        );

    \I__178\ : ClkMux
    port map (
            O => \N__885\,
            I => \N__874\
        );

    \I__177\ : GlobalMux
    port map (
            O => \N__874\,
            I => \N__871\
        );

    \I__176\ : gio2CtrlBuf
    port map (
            O => \N__871\,
            I => \CLK_c\
        );

    \I__175\ : InMux
    port map (
            O => \N__868\,
            I => \N__861\
        );

    \I__174\ : InMux
    port map (
            O => \N__867\,
            I => \N__861\
        );

    \I__173\ : InMux
    port map (
            O => \N__866\,
            I => \N__858\
        );

    \I__172\ : LocalMux
    port map (
            O => \N__861\,
            I => blink_counter_24
        );

    \I__171\ : LocalMux
    port map (
            O => \N__858\,
            I => blink_counter_24
        );

    \I__170\ : CascadeMux
    port map (
            O => \N__853\,
            I => \N__849\
        );

    \I__169\ : InMux
    port map (
            O => \N__852\,
            I => \N__843\
        );

    \I__168\ : InMux
    port map (
            O => \N__849\,
            I => \N__843\
        );

    \I__167\ : InMux
    port map (
            O => \N__848\,
            I => \N__840\
        );

    \I__166\ : LocalMux
    port map (
            O => \N__843\,
            I => blink_counter_23
        );

    \I__165\ : LocalMux
    port map (
            O => \N__840\,
            I => blink_counter_23
        );

    \I__164\ : CascadeMux
    port map (
            O => \N__835\,
            I => \N__832\
        );

    \I__163\ : InMux
    port map (
            O => \N__832\,
            I => \N__825\
        );

    \I__162\ : InMux
    port map (
            O => \N__831\,
            I => \N__825\
        );

    \I__161\ : InMux
    port map (
            O => \N__830\,
            I => \N__822\
        );

    \I__160\ : LocalMux
    port map (
            O => \N__825\,
            I => blink_counter_22
        );

    \I__159\ : LocalMux
    port map (
            O => \N__822\,
            I => blink_counter_22
        );

    \I__158\ : CascadeMux
    port map (
            O => \N__817\,
            I => \N__812\
        );

    \I__157\ : InMux
    port map (
            O => \N__816\,
            I => \N__807\
        );

    \I__156\ : InMux
    port map (
            O => \N__815\,
            I => \N__807\
        );

    \I__155\ : InMux
    port map (
            O => \N__812\,
            I => \N__804\
        );

    \I__154\ : LocalMux
    port map (
            O => \N__807\,
            I => blink_counter_21
        );

    \I__153\ : LocalMux
    port map (
            O => \N__804\,
            I => blink_counter_21
        );

    \I__152\ : InMux
    port map (
            O => \N__799\,
            I => \N__796\
        );

    \I__151\ : LocalMux
    port map (
            O => \N__796\,
            I => n207
        );

    \I__150\ : CascadeMux
    port map (
            O => \N__793\,
            I => \n208_cascade_\
        );

    \I__149\ : InMux
    port map (
            O => \N__790\,
            I => \N__786\
        );

    \I__148\ : InMux
    port map (
            O => \N__789\,
            I => \N__783\
        );

    \I__147\ : LocalMux
    port map (
            O => \N__786\,
            I => blink_counter_25
        );

    \I__146\ : LocalMux
    port map (
            O => \N__783\,
            I => blink_counter_25
        );

    \I__145\ : IoInMux
    port map (
            O => \N__778\,
            I => \N__775\
        );

    \I__144\ : LocalMux
    port map (
            O => \N__775\,
            I => \N__772\
        );

    \I__143\ : Span4Mux_s0_v
    port map (
            O => \N__772\,
            I => \N__769\
        );

    \I__142\ : Span4Mux_v
    port map (
            O => \N__769\,
            I => \N__766\
        );

    \I__141\ : Odrv4
    port map (
            O => \N__766\,
            I => \LED_c\
        );

    \I__140\ : CascadeMux
    port map (
            O => \N__763\,
            I => \N__760\
        );

    \I__139\ : InMux
    port map (
            O => \N__760\,
            I => \N__757\
        );

    \I__138\ : LocalMux
    port map (
            O => \N__757\,
            I => n11
        );

    \I__137\ : InMux
    port map (
            O => \N__754\,
            I => n196
        );

    \I__136\ : CascadeMux
    port map (
            O => \N__751\,
            I => \N__748\
        );

    \I__135\ : InMux
    port map (
            O => \N__748\,
            I => \N__745\
        );

    \I__134\ : LocalMux
    port map (
            O => \N__745\,
            I => n10
        );

    \I__133\ : InMux
    port map (
            O => \N__742\,
            I => \bfn_3_25_0_\
        );

    \I__132\ : CascadeMux
    port map (
            O => \N__739\,
            I => \N__736\
        );

    \I__131\ : InMux
    port map (
            O => \N__736\,
            I => \N__733\
        );

    \I__130\ : LocalMux
    port map (
            O => \N__733\,
            I => n9
        );

    \I__129\ : InMux
    port map (
            O => \N__730\,
            I => n198
        );

    \I__128\ : CascadeMux
    port map (
            O => \N__727\,
            I => \N__724\
        );

    \I__127\ : InMux
    port map (
            O => \N__724\,
            I => \N__721\
        );

    \I__126\ : LocalMux
    port map (
            O => \N__721\,
            I => n8
        );

    \I__125\ : InMux
    port map (
            O => \N__718\,
            I => n199
        );

    \I__124\ : CascadeMux
    port map (
            O => \N__715\,
            I => \N__712\
        );

    \I__123\ : InMux
    port map (
            O => \N__712\,
            I => \N__709\
        );

    \I__122\ : LocalMux
    port map (
            O => \N__709\,
            I => n7
        );

    \I__121\ : InMux
    port map (
            O => \N__706\,
            I => n200
        );

    \I__120\ : CascadeMux
    port map (
            O => \N__703\,
            I => \N__700\
        );

    \I__119\ : InMux
    port map (
            O => \N__700\,
            I => \N__697\
        );

    \I__118\ : LocalMux
    port map (
            O => \N__697\,
            I => n6
        );

    \I__117\ : InMux
    port map (
            O => \N__694\,
            I => n201
        );

    \I__116\ : InMux
    port map (
            O => \N__691\,
            I => n202
        );

    \I__115\ : InMux
    port map (
            O => \N__688\,
            I => n203
        );

    \I__114\ : CascadeMux
    port map (
            O => \N__685\,
            I => \N__682\
        );

    \I__113\ : InMux
    port map (
            O => \N__682\,
            I => \N__679\
        );

    \I__112\ : LocalMux
    port map (
            O => \N__679\,
            I => n20
        );

    \I__111\ : InMux
    port map (
            O => \N__676\,
            I => n187
        );

    \I__110\ : CascadeMux
    port map (
            O => \N__673\,
            I => \N__670\
        );

    \I__109\ : InMux
    port map (
            O => \N__670\,
            I => \N__667\
        );

    \I__108\ : LocalMux
    port map (
            O => \N__667\,
            I => n19
        );

    \I__107\ : InMux
    port map (
            O => \N__664\,
            I => n188
        );

    \I__106\ : CascadeMux
    port map (
            O => \N__661\,
            I => \N__658\
        );

    \I__105\ : InMux
    port map (
            O => \N__658\,
            I => \N__655\
        );

    \I__104\ : LocalMux
    port map (
            O => \N__655\,
            I => n18
        );

    \I__103\ : InMux
    port map (
            O => \N__652\,
            I => \bfn_3_24_0_\
        );

    \I__102\ : CascadeMux
    port map (
            O => \N__649\,
            I => \N__646\
        );

    \I__101\ : InMux
    port map (
            O => \N__646\,
            I => \N__643\
        );

    \I__100\ : LocalMux
    port map (
            O => \N__643\,
            I => n17
        );

    \I__99\ : InMux
    port map (
            O => \N__640\,
            I => n190
        );

    \I__98\ : CascadeMux
    port map (
            O => \N__637\,
            I => \N__634\
        );

    \I__97\ : InMux
    port map (
            O => \N__634\,
            I => \N__631\
        );

    \I__96\ : LocalMux
    port map (
            O => \N__631\,
            I => n16
        );

    \I__95\ : InMux
    port map (
            O => \N__628\,
            I => n191
        );

    \I__94\ : CascadeMux
    port map (
            O => \N__625\,
            I => \N__622\
        );

    \I__93\ : InMux
    port map (
            O => \N__622\,
            I => \N__619\
        );

    \I__92\ : LocalMux
    port map (
            O => \N__619\,
            I => n15
        );

    \I__91\ : InMux
    port map (
            O => \N__616\,
            I => n192
        );

    \I__90\ : CascadeMux
    port map (
            O => \N__613\,
            I => \N__610\
        );

    \I__89\ : InMux
    port map (
            O => \N__610\,
            I => \N__607\
        );

    \I__88\ : LocalMux
    port map (
            O => \N__607\,
            I => n14
        );

    \I__87\ : InMux
    port map (
            O => \N__604\,
            I => n193
        );

    \I__86\ : CascadeMux
    port map (
            O => \N__601\,
            I => \N__598\
        );

    \I__85\ : InMux
    port map (
            O => \N__598\,
            I => \N__595\
        );

    \I__84\ : LocalMux
    port map (
            O => \N__595\,
            I => n13
        );

    \I__83\ : InMux
    port map (
            O => \N__592\,
            I => n194
        );

    \I__82\ : CascadeMux
    port map (
            O => \N__589\,
            I => \N__586\
        );

    \I__81\ : InMux
    port map (
            O => \N__586\,
            I => \N__583\
        );

    \I__80\ : LocalMux
    port map (
            O => \N__583\,
            I => n12
        );

    \I__79\ : InMux
    port map (
            O => \N__580\,
            I => n195
        );

    \I__78\ : IoInMux
    port map (
            O => \N__577\,
            I => \N__574\
        );

    \I__77\ : LocalMux
    port map (
            O => \N__574\,
            I => \N__571\
        );

    \I__76\ : IoSpan4Mux
    port map (
            O => \N__571\,
            I => \N__568\
        );

    \I__75\ : Span4Mux_s2_v
    port map (
            O => \N__568\,
            I => \N__565\
        );

    \I__74\ : Sp12to4
    port map (
            O => \N__565\,
            I => \N__562\
        );

    \I__73\ : Span12Mux_h
    port map (
            O => \N__562\,
            I => \N__559\
        );

    \I__72\ : Span12Mux_h
    port map (
            O => \N__559\,
            I => \N__556\
        );

    \I__71\ : Odrv12
    port map (
            O => \N__556\,
            I => diff_input
        );

    \I__70\ : CascadeMux
    port map (
            O => \N__553\,
            I => \N__550\
        );

    \I__69\ : InMux
    port map (
            O => \N__550\,
            I => \N__547\
        );

    \I__68\ : LocalMux
    port map (
            O => \N__547\,
            I => n26
        );

    \I__67\ : InMux
    port map (
            O => \N__544\,
            I => \bfn_3_23_0_\
        );

    \I__66\ : CascadeMux
    port map (
            O => \N__541\,
            I => \N__538\
        );

    \I__65\ : InMux
    port map (
            O => \N__538\,
            I => \N__535\
        );

    \I__64\ : LocalMux
    port map (
            O => \N__535\,
            I => n25
        );

    \I__63\ : InMux
    port map (
            O => \N__532\,
            I => n182
        );

    \I__62\ : CascadeMux
    port map (
            O => \N__529\,
            I => \N__526\
        );

    \I__61\ : InMux
    port map (
            O => \N__526\,
            I => \N__523\
        );

    \I__60\ : LocalMux
    port map (
            O => \N__523\,
            I => n24
        );

    \I__59\ : InMux
    port map (
            O => \N__520\,
            I => n183
        );

    \I__58\ : CascadeMux
    port map (
            O => \N__517\,
            I => \N__514\
        );

    \I__57\ : InMux
    port map (
            O => \N__514\,
            I => \N__511\
        );

    \I__56\ : LocalMux
    port map (
            O => \N__511\,
            I => n23
        );

    \I__55\ : InMux
    port map (
            O => \N__508\,
            I => n184
        );

    \I__54\ : CascadeMux
    port map (
            O => \N__505\,
            I => \N__502\
        );

    \I__53\ : InMux
    port map (
            O => \N__502\,
            I => \N__499\
        );

    \I__52\ : LocalMux
    port map (
            O => \N__499\,
            I => n22
        );

    \I__51\ : InMux
    port map (
            O => \N__496\,
            I => n185
        );

    \I__50\ : CascadeMux
    port map (
            O => \N__493\,
            I => \N__490\
        );

    \I__49\ : InMux
    port map (
            O => \N__490\,
            I => \N__487\
        );

    \I__48\ : LocalMux
    port map (
            O => \N__487\,
            I => n21
        );

    \I__47\ : InMux
    port map (
            O => \N__484\,
            I => n186
        );

    \I__46\ : IoInMux
    port map (
            O => \N__481\,
            I => \N__478\
        );

    \I__45\ : LocalMux
    port map (
            O => \N__478\,
            I => \N__475\
        );

    \I__44\ : IoSpan4Mux
    port map (
            O => \N__475\,
            I => \N__472\
        );

    \I__43\ : IoSpan4Mux
    port map (
            O => \N__472\,
            I => \N__469\
        );

    \I__42\ : IoSpan4Mux
    port map (
            O => \N__469\,
            I => \N__466\
        );

    \I__41\ : Odrv4
    port map (
            O => \N__466\,
            I => \CLK_pad_gb_input\
        );

    \IN_MUX_bfv_3_23_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "01"
        )
    port map (
            carryinitin => '0',
            carryinitout => \bfn_3_23_0_\
        );

    \IN_MUX_bfv_3_24_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => n189,
            carryinitout => \bfn_3_24_0_\
        );

    \IN_MUX_bfv_3_25_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => n197,
            carryinitout => \bfn_3_25_0_\
        );

    \IN_MUX_bfv_3_26_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => n205,
            carryinitout => \bfn_3_26_0_\
        );

    \CLK_pad_gb\ : ICE_GB
    port map (
            USERSIGNALTOGLOBALBUFFER => \N__481\,
            GLOBALBUFFEROUTPUT => \CLK_c\
        );

    \VCC\ : VCC
    port map (
            Y => \VCCG0\
        );

    \GND\ : GND
    port map (
            Y => \GNDG0\
        );

    \GND_Inst\ : GND
    port map (
            Y => \_gnd_net_\
        );

    \blink_counter_14__i0_LC_3_23_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__553\,
            in3 => \N__544\,
            lcout => n26,
            ltout => OPEN,
            carryin => \bfn_3_23_0_\,
            carryout => n182,
            clk => \N__885\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_14__i1_LC_3_23_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__541\,
            in3 => \N__532\,
            lcout => n25,
            ltout => OPEN,
            carryin => n182,
            carryout => n183,
            clk => \N__885\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_14__i2_LC_3_23_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__529\,
            in3 => \N__520\,
            lcout => n24,
            ltout => OPEN,
            carryin => n183,
            carryout => n184,
            clk => \N__885\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_14__i3_LC_3_23_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__517\,
            in3 => \N__508\,
            lcout => n23,
            ltout => OPEN,
            carryin => n184,
            carryout => n185,
            clk => \N__885\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_14__i4_LC_3_23_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__505\,
            in3 => \N__496\,
            lcout => n22,
            ltout => OPEN,
            carryin => n185,
            carryout => n186,
            clk => \N__885\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_14__i5_LC_3_23_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__493\,
            in3 => \N__484\,
            lcout => n21,
            ltout => OPEN,
            carryin => n186,
            carryout => n187,
            clk => \N__885\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_14__i6_LC_3_23_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__685\,
            in3 => \N__676\,
            lcout => n20,
            ltout => OPEN,
            carryin => n187,
            carryout => n188,
            clk => \N__885\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_14__i7_LC_3_23_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__673\,
            in3 => \N__664\,
            lcout => n19,
            ltout => OPEN,
            carryin => n188,
            carryout => n189,
            clk => \N__885\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_14__i8_LC_3_24_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__661\,
            in3 => \N__652\,
            lcout => n18,
            ltout => OPEN,
            carryin => \bfn_3_24_0_\,
            carryout => n190,
            clk => \N__886\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_14__i9_LC_3_24_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__649\,
            in3 => \N__640\,
            lcout => n17,
            ltout => OPEN,
            carryin => n190,
            carryout => n191,
            clk => \N__886\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_14__i10_LC_3_24_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__637\,
            in3 => \N__628\,
            lcout => n16,
            ltout => OPEN,
            carryin => n191,
            carryout => n192,
            clk => \N__886\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_14__i11_LC_3_24_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__625\,
            in3 => \N__616\,
            lcout => n15,
            ltout => OPEN,
            carryin => n192,
            carryout => n193,
            clk => \N__886\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_14__i12_LC_3_24_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__613\,
            in3 => \N__604\,
            lcout => n14,
            ltout => OPEN,
            carryin => n193,
            carryout => n194,
            clk => \N__886\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_14__i13_LC_3_24_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__601\,
            in3 => \N__592\,
            lcout => n13,
            ltout => OPEN,
            carryin => n194,
            carryout => n195,
            clk => \N__886\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_14__i14_LC_3_24_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__589\,
            in3 => \N__580\,
            lcout => n12,
            ltout => OPEN,
            carryin => n195,
            carryout => n196,
            clk => \N__886\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_14__i15_LC_3_24_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__763\,
            in3 => \N__754\,
            lcout => n11,
            ltout => OPEN,
            carryin => n196,
            carryout => n197,
            clk => \N__886\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_14__i16_LC_3_25_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__751\,
            in3 => \N__742\,
            lcout => n10,
            ltout => OPEN,
            carryin => \bfn_3_25_0_\,
            carryout => n198,
            clk => \N__887\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_14__i17_LC_3_25_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__739\,
            in3 => \N__730\,
            lcout => n9,
            ltout => OPEN,
            carryin => n198,
            carryout => n199,
            clk => \N__887\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_14__i18_LC_3_25_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__727\,
            in3 => \N__718\,
            lcout => n8,
            ltout => OPEN,
            carryin => n199,
            carryout => n200,
            clk => \N__887\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_14__i19_LC_3_25_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__715\,
            in3 => \N__706\,
            lcout => n7,
            ltout => OPEN,
            carryin => n200,
            carryout => n201,
            clk => \N__887\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_14__i20_LC_3_25_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__703\,
            in3 => \N__694\,
            lcout => n6,
            ltout => OPEN,
            carryin => n201,
            carryout => n202,
            clk => \N__887\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_14__i21_LC_3_25_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__817\,
            in3 => \N__691\,
            lcout => blink_counter_21,
            ltout => OPEN,
            carryin => n202,
            carryout => n203,
            clk => \N__887\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_14__i22_LC_3_25_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__830\,
            in2 => \_gnd_net_\,
            in3 => \N__688\,
            lcout => blink_counter_22,
            ltout => OPEN,
            carryin => n203,
            carryout => n204,
            clk => \N__887\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_14__i23_LC_3_25_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__848\,
            in2 => \_gnd_net_\,
            in3 => \N__898\,
            lcout => blink_counter_23,
            ltout => OPEN,
            carryin => n204,
            carryout => n205,
            clk => \N__887\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_14__i24_LC_3_26_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__866\,
            in2 => \_gnd_net_\,
            in3 => \N__895\,
            lcout => blink_counter_24,
            ltout => OPEN,
            carryin => \bfn_3_26_0_\,
            carryout => n206,
            clk => \N__888\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_14__i25_LC_3_26_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__789\,
            in2 => \_gnd_net_\,
            in3 => \N__892\,
            lcout => blink_counter_25,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__888\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i54_4_lut_LC_4_25_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1011101000100010"
        )
    port map (
            in0 => \N__815\,
            in1 => \N__867\,
            in2 => \N__853\,
            in3 => \N__831\,
            lcout => n207,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i55_4_lut_LC_4_25_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111010001100"
        )
    port map (
            in0 => \N__868\,
            in1 => \N__852\,
            in2 => \N__835\,
            in3 => \N__816\,
            lcout => OPEN,
            ltout => \n208_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i56_3_lut_LC_4_25_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000111100110011"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__799\,
            in2 => \N__793\,
            in3 => \N__790\,
            lcout => \LED_c\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );
end \INTERFACE\;
