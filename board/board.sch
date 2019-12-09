EESchema Schematic File Version 4
LIBS:board-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 7
Title "BLDC_MotorBoard"
Date "2019-08-02"
Rev "0.2"
Comp "Devanthro UG"
Comment1 "Simon Trendel"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 3200 4350 2    50   ~ 0
HALL1
Text Label 3200 4250 2    50   ~ 0
HALL2
Text Label 3200 4150 2    50   ~ 0
HALL3
$Comp
L Connector:Conn_01x05_Female J?
U 1 1 5D481FEB
P 5300 5675
AR Path="/5D056FB0/5D481FEB" Ref="J?"  Part="1" 
AR Path="/5D481FEB" Ref="J5"  Part="1" 
F 0 "J5" H 5328 5701 50  0000 L CNN
F 1 "UART" H 5328 5610 50  0000 L CNN
F 2 "custom_lib:TE-Connectivity_Micro-Match_connector_02x03_Pitch_1.27mm" H 5300 5675 50  0001 C CNN
F 3 "~" H 5300 5675 50  0001 C CNN
	1    5300 5675
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J2
U 1 1 5D6DCD64
P 3550 4550
F 0 "J2" H 3658 5031 50  0000 C CNN
F 1 "PHASES" H 3658 4940 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 3550 4550 50  0001 C CNN
F 3 "~" H 3550 4550 50  0001 C CNN
	1    3550 4550
	-1   0    0    1   
$EndComp
$Sheet
S 4725 1175 1050 1025
U 5D65053E
F0 "power_conv( 36V->5V->3.3V->1.2V )" 50
F1 "power_conv.sch" 50
$EndSheet
$Comp
L power:+3.3V #PWR0105
U 1 1 5D6E00E0
P 3350 4550
AR Path="/5D6E00E0" Ref="#PWR0105"  Part="1" 
AR Path="/5D056FB0/5D6E00E0" Ref="#PWR?"  Part="1" 
F 0 "#PWR0105" H 3350 4400 50  0001 C CNN
F 1 "+3.3V" V 3365 4678 50  0000 L CNN
F 2 "" H 3350 4550 50  0001 C CNN
F 3 "" H 3350 4550 50  0001 C CNN
	1    3350 4550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5D6E15D7
P 3300 4450
AR Path="/5D6E15D7" Ref="#PWR0106"  Part="1" 
AR Path="/5D056FB0/5D6E15D7" Ref="#PWR?"  Part="1" 
F 0 "#PWR0106" H 3300 4200 50  0001 C CNN
F 1 "GND" V 3305 4322 50  0000 R CNN
F 2 "" H 3300 4450 50  0001 C CNN
F 3 "" H 3300 4450 50  0001 C CNN
	1    3300 4450
	0    1    1    0   
$EndComp
Text Label 3150 4650 2    50   ~ 0
PH1
Text Label 3150 4750 2    50   ~ 0
PH2
Text Label 3150 4850 2    50   ~ 0
PH3
Wire Wire Line
	3150 4650 3350 4650
Wire Wire Line
	3150 4750 3350 4750
Wire Wire Line
	3350 4850 3150 4850
Wire Wire Line
	3300 4450 3350 4450
Wire Wire Line
	3350 4350 3200 4350
Wire Wire Line
	3200 4250 3350 4250
Wire Wire Line
	3350 4150 3200 4150
Text Label 3075 1325 2    50   ~ 0
PH1
Text Label 3075 1425 2    50   ~ 0
PH2
Text Label 3075 1525 2    50   ~ 0
PH3
$Sheet
S 3075 1175 1150 1000
U 5D0530DE
F0 "mosfet_bridges" 50
F1 "mosfet_bridges.sch" 50
F2 "PH1" O L 3075 1325 50 
F3 "PH2" O L 3075 1425 50 
F4 "PH3" O L 3075 1525 50 
F5 "INHA" I L 3075 1625 50 
F6 "INLA" I L 3075 1725 50 
F7 "INHB" I L 3075 1825 50 
F8 "INLB" I L 3075 1925 50 
F9 "INHC" I L 3075 2025 50 
F10 "INLC" I L 3075 2125 50 
$EndSheet
$Comp
L power:GND #PWR0113
U 1 1 5D684F44
P 2025 4375
AR Path="/5D684F44" Ref="#PWR0113"  Part="1" 
AR Path="/5D056FB0/5D684F44" Ref="#PWR?"  Part="1" 
F 0 "#PWR0113" H 2025 4125 50  0001 C CNN
F 1 "GND" V 2030 4247 50  0000 R CNN
F 2 "" H 2025 4375 50  0001 C CNN
F 3 "" H 2025 4375 50  0001 C CNN
	1    2025 4375
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x10_Female J1
U 1 1 5D6A8C66
P 2225 4575
F 0 "J1" H 2117 3850 50  0000 C CNN
F 1 "ENCODER0" H 2117 3941 50  0000 C CNN
F 2 "custom_lib:micro_match_female_10pos_SMT" H 2225 4575 50  0001 C CNN
F 3 "~" H 2225 4575 50  0001 C CNN
	1    2225 4575
	1    0    0    -1  
$EndComp
NoConn ~ 2025 4475
NoConn ~ 2025 4175
Text Label 9775 5075 0    50   ~ 0
h_RX
Text Label 9775 5175 0    50   ~ 0
l_RX
Text Label 9775 5250 0    50   ~ 0
h_TX
Text Label 9775 5325 0    50   ~ 0
l_TX
Text Label 5100 5675 2    50   ~ 0
l_RX
Text Label 5100 5575 2    50   ~ 0
h_TX
Text Label 5100 5475 2    50   ~ 0
l_TX
Text Label 5100 5775 2    50   ~ 0
h_RX
Text GLabel 5100 5875 0    50   Input ~ 0
SHIELD
$Comp
L power:GND #PWR0114
U 1 1 5D92E781
P 10700 2250
AR Path="/5D92E781" Ref="#PWR0114"  Part="1" 
AR Path="/5D056FB0/5D92E781" Ref="#PWR?"  Part="1" 
F 0 "#PWR0114" H 10700 2000 50  0001 C CNN
F 1 "GND" V 10705 2122 50  0000 R CNN
F 2 "" H 10700 2250 50  0001 C CNN
F 3 "" H 10700 2250 50  0001 C CNN
	1    10700 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0125
U 1 1 5D92E787
P 10700 1650
F 0 "#PWR0125" H 10700 1500 50  0001 C CNN
F 1 "+5V" V 10715 1778 50  0000 L CNN
F 2 "" H 10700 1650 50  0001 C CNN
F 3 "" H 10700 1650 50  0001 C CNN
	1    10700 1650
	1    0    0    -1  
$EndComp
Text Label 2025 4575 2    50   ~ 0
-ENCODER0_A
Text Label 2025 4675 2    50   ~ 0
+ENCODER0_A
Text Label 2025 4775 2    50   ~ 0
-ENCODER0_B
Text Label 2025 4875 2    50   ~ 0
+ENCODER0_B
Wire Wire Line
	1550 1725 1625 1725
Wire Wire Line
	1550 1825 1625 1825
Wire Wire Line
	1625 1925 1550 1925
Wire Wire Line
	1550 2025 1625 2025
Text Label 2300 1750 0    50   ~ 0
Encoder0_A
Text Label 2300 1825 0    50   ~ 0
Encoder0_B
$Sheet
S 1625 1625 675  475 
U 5D88AAB3
F0 "encoder0" 50
F1 "inc_Sensor_interface.sch" 50
F2 "+IN_A" I L 1625 1825 50 
F3 "-IN_A" I L 1625 1725 50 
F4 "+IN_B" I L 1625 2025 50 
F5 "-IN_B" I L 1625 1925 50 
F6 "OUT_A" O R 2300 1750 50 
F7 "OUT_B" O R 2300 1825 50 
$EndSheet
$Comp
L power:GND #PWR0154
U 1 1 5D6A9F1E
P 7900 5750
AR Path="/5D6A9F1E" Ref="#PWR0154"  Part="1" 
AR Path="/5D056FB0/5D6A9F1E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0154" H 7900 5500 50  0001 C CNN
F 1 "GND" V 7905 5622 50  0000 R CNN
F 2 "" H 7900 5750 50  0001 C CNN
F 3 "" H 7900 5750 50  0001 C CNN
	1    7900 5750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0159
U 1 1 5D6B5C45
P 2025 4275
AR Path="/5D6B5C45" Ref="#PWR0159"  Part="1" 
AR Path="/5D056FB0/5D6B5C45" Ref="#PWR?"  Part="1" 
F 0 "#PWR0159" H 2025 4125 50  0001 C CNN
F 1 "+3.3V" V 2040 4403 50  0000 L CNN
F 2 "" H 2025 4275 50  0001 C CNN
F 3 "" H 2025 4275 50  0001 C CNN
	1    2025 4275
	0    -1   -1   0   
$EndComp
$Comp
L LED:SK6812MINI D3
U 1 1 5D89538D
P 10700 1950
F 0 "D3" H 10775 2200 50  0000 L CNN
F 1 "SK6812MINI" H 10750 1675 50  0000 L CNN
F 2 "LED_SMD:LED_SK6812MINI_PLCC4_3.5x3.5mm_P1.75mm" H 10750 1650 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/product-files/2686/SK6812MINI_REV.01-1-2.pdf" H 10800 1575 50  0001 L TNN
	1    10700 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J9
U 1 1 5DAB717B
P 5900 5675
F 0 "J9" H 5792 5250 50  0000 C CNN
F 1 "i2c" H 5792 5341 50  0000 C CNN
F 2 "custom_lib:TE-Connectivity_Micro-Match_connector_02x02_Pitch_1.27mm" H 5900 5675 50  0001 C CNN
F 3 "~" H 5900 5675 50  0001 C CNN
	1    5900 5675
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0139
U 1 1 5DABC83A
P 6100 5575
AR Path="/5DABC83A" Ref="#PWR0139"  Part="1" 
AR Path="/5D056FB0/5DABC83A" Ref="#PWR?"  Part="1" 
F 0 "#PWR0139" H 6100 5425 50  0001 C CNN
F 1 "+3.3V" V 6115 5703 50  0000 L CNN
F 2 "" H 6100 5575 50  0001 C CNN
F 3 "" H 6100 5575 50  0001 C CNN
	1    6100 5575
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0142
U 1 1 5DABDFDD
P 6100 5475
AR Path="/5DABDFDD" Ref="#PWR0142"  Part="1" 
AR Path="/5D056FB0/5DABDFDD" Ref="#PWR?"  Part="1" 
F 0 "#PWR0142" H 6100 5225 50  0001 C CNN
F 1 "GND" V 6105 5347 50  0000 R CNN
F 2 "" H 6100 5475 50  0001 C CNN
F 3 "" H 6100 5475 50  0001 C CNN
	1    6100 5475
	0    -1   -1   0   
$EndComp
$Sheet
S 8600 4600 1175 850 
U 5DB32DB1
F0 "transceiver" 50
F1 "transceiver.sch" 50
F2 "RX_iso" I L 8600 4825 50 
F3 "TX_iso" I L 8600 4925 50 
F4 "term_te" I R 9775 4975 50 
F5 "h_Rx" I R 9775 5075 50 
F6 "l_Rx" I R 9775 5175 50 
F7 "h_Tx" I R 9775 5250 50 
F8 "l_Tx" I R 9775 5325 50 
F9 "DE" I R 9775 4875 50 
$EndSheet
Text Label 9775 4975 0    50   ~ 0
term_te
Text Label 7300 5750 2    50   ~ 0
term_te
Text Label 6100 5675 0    50   ~ 0
SDA
Text Label 6100 5775 0    50   ~ 0
SCL
$Comp
L Device:C C24
U 1 1 5DA86FE8
P 10725 1075
F 0 "C24" H 10840 1121 50  0000 L CNN
F 1 "0.1u" H 10840 1030 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10763 925 50  0001 C CNN
F 3 "~" H 10725 1075 50  0001 C CNN
	1    10725 1075
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0122
U 1 1 5DA871AE
P 10575 925
F 0 "#PWR0122" H 10575 775 50  0001 C CNN
F 1 "+5V" V 10590 1053 50  0000 L CNN
F 2 "" H 10575 925 50  0001 C CNN
F 3 "" H 10575 925 50  0001 C CNN
	1    10575 925 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10575 925  10725 925 
$Comp
L power:GND #PWR0123
U 1 1 5DA87711
P 10550 1225
AR Path="/5DA87711" Ref="#PWR0123"  Part="1" 
AR Path="/5D056FB0/5DA87711" Ref="#PWR?"  Part="1" 
F 0 "#PWR0123" H 10550 975 50  0001 C CNN
F 1 "GND" V 10555 1097 50  0000 R CNN
F 2 "" H 10550 1225 50  0001 C CNN
F 3 "" H 10550 1225 50  0001 C CNN
	1    10550 1225
	0    1    1    0   
$EndComp
Wire Wire Line
	10550 1225 10725 1225
$Comp
L Mechanical:MountingHole H1
U 1 1 5DC45429
P 9025 3250
F 0 "H1" H 9125 3296 50  0000 L CNN
F 1 "MountingHole" H 9125 3205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9025 3250 50  0001 C CNN
F 3 "~" H 9025 3250 50  0001 C CNN
	1    9025 3250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5DC45537
P 9025 3500
F 0 "H2" H 9125 3546 50  0000 L CNN
F 1 "MountingHole" H 9125 3455 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9025 3500 50  0001 C CNN
F 3 "~" H 9025 3500 50  0001 C CNN
	1    9025 3500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5DC4677A
P 10200 3625
F 0 "H3" H 10300 3671 50  0000 L CNN
F 1 "LABEL" H 10300 3580 50  0000 L CNN
F 2 "custom_lib:R1_ear_silk_5.5mm" H 10200 3625 50  0001 C CNN
F 3 "~" H 10200 3625 50  0001 C CNN
	1    10200 3625
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5DC46F1F
P 10200 3800
F 0 "H4" H 10300 3846 50  0000 L CNN
F 1 "LABEL" H 10300 3755 50  0000 L CNN
F 2 "custom_lib:R1_eyes_mask_5.5mm" H 10200 3800 50  0001 C CNN
F 3 "~" H 10200 3800 50  0001 C CNN
	1    10200 3800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H5
U 1 1 5DC4730D
P 10200 3975
F 0 "H5" H 10300 4021 50  0000 L CNN
F 1 "LABEL" H 10300 3930 50  0000 L CNN
F 2 "custom_lib:R1_face_mask_5.5mm" H 10200 3975 50  0001 C CNN
F 3 "~" H 10200 3975 50  0001 C CNN
	1    10200 3975
	1    0    0    -1  
$EndComp
Text Label 1550 1725 2    50   ~ 0
-ENCODER0_A
Text Label 1550 1825 2    50   ~ 0
+ENCODER0_A
Text Label 1550 1925 2    50   ~ 0
-ENCODER0_B
Text Label 1550 2025 2    50   ~ 0
+ENCODER0_B
Wire Wire Line
	1575 2500 1650 2500
Wire Wire Line
	1575 2600 1650 2600
Wire Wire Line
	1650 2700 1575 2700
Wire Wire Line
	1575 2800 1650 2800
Text Label 2325 2525 0    50   ~ 0
Encoder1_A
Text Label 2325 2600 0    50   ~ 0
Encoder1_B
$Sheet
S 1650 2400 675  475 
U 5DD60A08
F0 "encoder1" 50
F1 "inc_Sensor_interface.sch" 50
F2 "+IN_A" I L 1650 2600 50 
F3 "-IN_A" I L 1650 2500 50 
F4 "+IN_B" I L 1650 2800 50 
F5 "-IN_B" I L 1650 2700 50 
F6 "OUT_A" O R 2325 2525 50 
F7 "OUT_B" O R 2325 2600 50 
$EndSheet
Text Label 1575 2500 2    50   ~ 0
-ENCODER1_A
Text Label 1575 2600 2    50   ~ 0
+ENCODER1_A
Text Label 1575 2700 2    50   ~ 0
-ENCODER1_B
Text Label 1575 2800 2    50   ~ 0
+ENCODER1_B
Text Label 9775 4875 0    50   ~ 0
DE
$Comp
L power:GND #PWR0127
U 1 1 5DD657B2
P 2000 6025
AR Path="/5DD657B2" Ref="#PWR0127"  Part="1" 
AR Path="/5D056FB0/5DD657B2" Ref="#PWR?"  Part="1" 
F 0 "#PWR0127" H 2000 5775 50  0001 C CNN
F 1 "GND" V 2005 5897 50  0000 R CNN
F 2 "" H 2000 6025 50  0001 C CNN
F 3 "" H 2000 6025 50  0001 C CNN
	1    2000 6025
	-1   0    0    1   
$EndComp
Text Label 2000 6125 2    50   ~ 0
-ENCODER1_A
Text Label 2000 6225 2    50   ~ 0
+ENCODER1_A
Text Label 2000 6325 2    50   ~ 0
-ENCODER1_B
Text Label 2000 6425 2    50   ~ 0
+ENCODER1_B
$Comp
L Connector:Conn_01x08_Female J4
U 1 1 5DD678B5
P 2200 6325
F 0 "J4" H 2228 6301 50  0000 L CNN
F 1 "ENCODER1" H 1925 5800 50  0000 L CNN
F 2 "custom_lib:micro_match_female_8pos_SMT" H 2200 6325 50  0001 C CNN
F 3 "~" H 2200 6325 50  0001 C CNN
	1    2200 6325
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0134
U 1 1 5DD67F5A
P 2000 6725
F 0 "#PWR0134" H 2000 6575 50  0001 C CNN
F 1 "+5V" V 2015 6853 50  0000 L CNN
F 2 "" H 2000 6725 50  0001 C CNN
F 3 "" H 2000 6725 50  0001 C CNN
	1    2000 6725
	0    -1   -1   0   
$EndComp
$Comp
L Memory_EEPROM:AT24CS01-STUM U4
U 1 1 5DD6D3E6
P 4900 6575
F 0 "U4" H 4570 6621 50  0000 R CNN
F 1 "EEPROM" H 4570 6530 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 4900 6575 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8815-SEEPROM-AT24CS01-02-Datasheet.pdf" H 4900 6575 50  0001 C CNN
	1    4900 6575
	1    0    0    -1  
$EndComp
Text Label 5300 6575 0    50   ~ 0
SCL
Text Label 5300 6475 0    50   ~ 0
SDA
$Comp
L power:GND #PWR0135
U 1 1 5DD6E313
P 4900 6875
AR Path="/5DD6E313" Ref="#PWR0135"  Part="1" 
AR Path="/5D056FB0/5DD6E313" Ref="#PWR?"  Part="1" 
F 0 "#PWR0135" H 4900 6625 50  0001 C CNN
F 1 "GND" V 4905 6747 50  0000 R CNN
F 2 "" H 4900 6875 50  0001 C CNN
F 3 "" H 4900 6875 50  0001 C CNN
	1    4900 6875
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0145
U 1 1 5DD6E46E
P 4900 6275
AR Path="/5DD6E46E" Ref="#PWR0145"  Part="1" 
AR Path="/5D056FB0/5DD6E46E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0145" H 4900 6125 50  0001 C CNN
F 1 "+3.3V" V 4915 6403 50  0000 L CNN
F 2 "" H 4900 6275 50  0001 C CNN
F 3 "" H 4900 6275 50  0001 C CNN
	1    4900 6275
	0    1    1    0   
$EndComp
Text Label 5300 6675 0    50   ~ 0
WP
Text Label 7150 5650 2    50   ~ 0
WP
$Comp
L Device:R R4
U 1 1 5DD726E3
P 7200 5500
F 0 "R4" H 7270 5546 50  0000 L CNN
F 1 "10k" H 7270 5455 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7130 5500 50  0001 C CNN
F 3 "~" H 7200 5500 50  0001 C CNN
	1    7200 5500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0157
U 1 1 5DD7281F
P 7200 5350
AR Path="/5DD7281F" Ref="#PWR0157"  Part="1" 
AR Path="/5D056FB0/5DD7281F" Ref="#PWR?"  Part="1" 
F 0 "#PWR0157" H 7200 5200 50  0001 C CNN
F 1 "+3.3V" V 7215 5478 50  0000 L CNN
F 2 "" H 7200 5350 50  0001 C CNN
F 3 "" H 7200 5350 50  0001 C CNN
	1    7200 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7300 5650 7200 5650
Connection ~ 7200 5650
Wire Wire Line
	7200 5650 7150 5650
$Comp
L Mechanical:MountingHole H6
U 1 1 5DD6F259
P 10200 2950
F 0 "H6" H 10300 2996 50  0000 L CNN
F 1 "FID1" H 10300 2905 50  0000 L CNN
F 2 "Fiducial:Fiducial_0.5mm_Dia_1mm_Outer" H 10200 2950 50  0001 C CNN
F 3 "~" H 10200 2950 50  0001 C CNN
	1    10200 2950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H7
U 1 1 5DD6F2FB
P 10200 3175
F 0 "H7" H 10300 3221 50  0000 L CNN
F 1 "FID2" H 10300 3130 50  0000 L CNN
F 2 "Fiducial:Fiducial_0.5mm_Dia_1mm_Outer" H 10200 3175 50  0001 C CNN
F 3 "~" H 10200 3175 50  0001 C CNN
	1    10200 3175
	1    0    0    -1  
$EndComp
NoConn ~ 11000 1950
NoConn ~ 2025 4975
NoConn ~ 2025 5075
NoConn ~ 2000 6525
NoConn ~ 2000 6625
Text Label 4825 3425 2    50   ~ 0
HALL3
Text Label 4825 3500 2    50   ~ 0
HALL2
Text Label 4825 3575 2    50   ~ 0
HALL1
Text Label 4825 3725 2    50   ~ 0
Encoder1_B
Text Label 4825 3800 2    50   ~ 0
Encoder1_A
Text Label 4825 3275 2    50   ~ 0
Encoder0_B
Text Label 4825 3350 2    50   ~ 0
Encoder0_A
Text Label 7075 3700 0    50   ~ 0
SDA
Text Label 7075 3775 0    50   ~ 0
SCL
Text Label 8600 4825 2    50   ~ 0
RX
Text Label 8600 4925 2    50   ~ 0
TX
Text Label 4825 4025 2    50   ~ 0
RX
Text Label 4825 3950 2    50   ~ 0
TX
Text Label 4825 3875 2    50   ~ 0
DE
$Comp
L Connector:Conn_01x02_Female J?
U 1 1 5E193CF0
P 8925 1875
AR Path="/5D0530DE/5E193CF0" Ref="J?"  Part="1" 
AR Path="/5E193CF0" Ref="J3"  Part="1" 
F 0 "J3" H 8953 1851 50  0000 L CNN
F 1 "POWER_IN" H 8953 1760 50  0000 L CNN
F 2 "custom_lib:Wago_2060_2_SMD" H 8925 1875 50  0001 C CNN
F 3 "~" H 8925 1875 50  0001 C CNN
	1    8925 1875
	1    0    0    -1  
$EndComp
$Comp
L power:+36V #PWR0117
U 1 1 5E193CF7
P 7525 2250
AR Path="/5E193CF7" Ref="#PWR0117"  Part="1" 
AR Path="/5D0530DE/5E193CF7" Ref="#PWR?"  Part="1" 
F 0 "#PWR0117" H 7525 2100 50  0001 C CNN
F 1 "+36V" V 7525 2400 50  0000 L CNN
F 2 "" H 7525 2250 50  0001 C CNN
F 3 "" H 7525 2250 50  0001 C CNN
	1    7525 2250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5E193CFD
P 8725 1875
AR Path="/5E193CFD" Ref="#PWR0120"  Part="1" 
AR Path="/5D0530DE/5E193CFD" Ref="#PWR?"  Part="1" 
F 0 "#PWR0120" H 8725 1625 50  0001 C CNN
F 1 "GND" V 8725 1675 50  0000 C CNN
F 2 "" H 8725 1875 50  0001 C CNN
F 3 "" H 8725 1875 50  0001 C CNN
	1    8725 1875
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Female J?
U 1 1 5E193D03
P 8925 2175
AR Path="/5D0530DE/5E193D03" Ref="J?"  Part="1" 
AR Path="/5E193D03" Ref="J8"  Part="1" 
F 0 "J8" H 8953 2151 50  0000 L CNN
F 1 "POWER_OUT" H 8953 2060 50  0000 L CNN
F 2 "custom_lib:Wago_2060_2_SMD" H 8925 2175 50  0001 C CNN
F 3 "~" H 8925 2175 50  0001 C CNN
	1    8925 2175
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5E193D0A
P 8725 2275
AR Path="/5E193D0A" Ref="#PWR0121"  Part="1" 
AR Path="/5D0530DE/5E193D0A" Ref="#PWR?"  Part="1" 
F 0 "#PWR0121" H 8725 2025 50  0001 C CNN
F 1 "GND" V 8725 2075 50  0000 C CNN
F 2 "" H 8725 2275 50  0001 C CNN
F 3 "" H 8725 2275 50  0001 C CNN
	1    8725 2275
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 5E193D10
P 8225 3025
AR Path="/5E193D10" Ref="#PWR0133"  Part="1" 
AR Path="/5D0530DE/5E193D10" Ref="#PWR?"  Part="1" 
F 0 "#PWR0133" H 8225 2775 50  0001 C CNN
F 1 "GND" V 8225 2825 50  0000 C CNN
F 2 "" H 8225 3025 50  0001 C CNN
F 3 "" H 8225 3025 50  0001 C CNN
	1    8225 3025
	1    0    0    -1  
$EndComp
$Comp
L Device:D_TVS D?
U 1 1 5E193D16
P 8225 2875
AR Path="/5D0530DE/5E193D16" Ref="D?"  Part="1" 
AR Path="/5E193D16" Ref="D2"  Part="1" 
F 0 "D2" V 8179 2954 50  0000 L CNN
F 1 "D_TVS" V 8270 2954 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 8225 2875 50  0001 C CNN
F 3 "~" H 8225 2875 50  0001 C CNN
	1    8225 2875
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0137
U 1 1 5E193D1D
P 6725 2150
AR Path="/5E193D1D" Ref="#PWR0137"  Part="1" 
AR Path="/5D0530DE/5E193D1D" Ref="#PWR?"  Part="1" 
F 0 "#PWR0137" H 6725 1900 50  0001 C CNN
F 1 "GND" V 6725 1950 50  0000 C CNN
F 2 "" H 6725 2150 50  0001 C CNN
F 3 "" H 6725 2150 50  0001 C CNN
	1    6725 2150
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E193D23
P 6725 2250
AR Path="/5D0530DE/5E193D23" Ref="#PWR?"  Part="1" 
AR Path="/5E193D23" Ref="#PWR0138"  Part="1" 
F 0 "#PWR0138" H 6725 2100 50  0001 C CNN
F 1 "+3.3V" V 6740 2378 50  0000 L CNN
F 2 "" H 6725 2250 50  0001 C CNN
F 3 "" H 6725 2250 50  0001 C CNN
	1    6725 2250
	0    -1   -1   0   
$EndComp
$Comp
L board-rescue:TLI4970-custom U3
U 1 1 5E193D2D
P 7125 2350
AR Path="/5E193D2D" Ref="U3"  Part="1" 
AR Path="/5D0530DE/5E193D2D" Ref="U?"  Part="1" 
F 0 "U3" H 7125 2775 50  0000 C CNN
F 1 "TLI4970" H 7125 2684 50  0000 C CNN
F 2 "custom_lib:TLI4970" H 7075 2350 50  0001 C CNN
F 3 "" H 7075 2350 50  0001 C CNN
	1    7125 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 5E193D34
P 7075 1625
AR Path="/5E193D34" Ref="C13"  Part="1" 
AR Path="/5D0530DE/5E193D34" Ref="C?"  Part="1" 
F 0 "C13" H 7190 1671 50  0000 L CNN
F 1 "0.1uF" H 7190 1580 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7113 1475 50  0001 C CNN
F 3 "~" H 7075 1625 50  0001 C CNN
	1    7075 1625
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0140
U 1 1 5E193D3B
P 6925 1625
AR Path="/5E193D3B" Ref="#PWR0140"  Part="1" 
AR Path="/5D0530DE/5E193D3B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0140" H 6925 1375 50  0001 C CNN
F 1 "GND" V 6925 1425 50  0000 C CNN
F 2 "" H 6925 1625 50  0001 C CNN
F 3 "" H 6925 1625 50  0001 C CNN
	1    6925 1625
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E193D41
P 7225 1625
AR Path="/5D0530DE/5E193D41" Ref="#PWR?"  Part="1" 
AR Path="/5E193D41" Ref="#PWR0141"  Part="1" 
F 0 "#PWR0141" H 7225 1475 50  0001 C CNN
F 1 "+3.3V" V 7240 1753 50  0000 L CNN
F 2 "" H 7225 1625 50  0001 C CNN
F 3 "" H 7225 1625 50  0001 C CNN
	1    7225 1625
	0    1    1    0   
$EndComp
Wire Wire Line
	8725 1975 8725 2075
Wire Wire Line
	8725 2075 8225 2075
Wire Wire Line
	7525 2075 7525 2150
Connection ~ 8725 2075
Wire Wire Line
	8725 2075 8725 2175
$Comp
L Device:LED D?
U 1 1 5E193D4C
P 8225 1925
AR Path="/5D0530DE/5E193D4C" Ref="D?"  Part="1" 
AR Path="/5E193D4C" Ref="D1"  Part="1" 
F 0 "D1" V 8264 1808 50  0000 R CNN
F 1 "LED" V 8173 1808 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 8225 1925 50  0001 C CNN
F 3 "~" H 8225 1925 50  0001 C CNN
	1    8225 1925
	0    1    1    0   
$EndComp
$Comp
L Device:R Rled1
U 1 1 5E193D53
P 8225 1625
AR Path="/5E193D53" Ref="Rled1"  Part="1" 
AR Path="/5D0530DE/5E193D53" Ref="Rled?"  Part="1" 
F 0 "Rled1" H 8295 1671 50  0000 L CNN
F 1 "10k" H 8295 1580 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8155 1625 50  0001 C CNN
F 3 "~" H 8225 1625 50  0001 C CNN
	1    8225 1625
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0151
U 1 1 5E193D5A
P 8225 1475
AR Path="/5E193D5A" Ref="#PWR0151"  Part="1" 
AR Path="/5D056FB0/5E193D5A" Ref="#PWR?"  Part="1" 
AR Path="/5D0530DE/5E193D5A" Ref="#PWR?"  Part="1" 
F 0 "#PWR0151" H 8225 1225 50  0001 C CNN
F 1 "GND" V 8230 1347 50  0000 R CNN
F 2 "" H 8225 1475 50  0001 C CNN
F 3 "" H 8225 1475 50  0001 C CNN
	1    8225 1475
	-1   0    0    1   
$EndComp
Connection ~ 8225 2075
Wire Wire Line
	8225 2075 7525 2075
Wire Wire Line
	8225 2725 8225 2075
Text Label 7075 3850 0    50   ~ 0
CS_MISO
Text Label 7075 3925 0    50   ~ 0
CS_CLK
Text Label 7075 4000 0    50   ~ 0
CS
NoConn ~ 6725 2650
Text Label 6725 2350 2    50   ~ 0
CS_MISO
Text Label 6725 2450 2    50   ~ 0
CS_CLK
Text Label 6725 2550 2    50   ~ 0
CS
Text Label 3075 1625 2    50   ~ 0
INHA
Text Label 3075 1725 2    50   ~ 0
INLA
Text Label 3075 1825 2    50   ~ 0
INHB
Text Label 3075 1925 2    50   ~ 0
INLB
Text Label 3075 2025 2    50   ~ 0
INHC
Text Label 3075 2125 2    50   ~ 0
INLC
Text Label 7075 3625 0    50   ~ 0
INHA
Text Label 7075 3550 0    50   ~ 0
INLA
Text Label 7075 3475 0    50   ~ 0
INHB
Text Label 7075 3400 0    50   ~ 0
INLB
Text Label 7075 3325 0    50   ~ 0
INHC
Text Label 7075 3250 0    50   ~ 0
INLC
Text Label 10400 1950 2    50   ~ 0
NEOPXL
Text Label 4825 3650 2    50   ~ 0
NEOPXL
$Sheet
S 4825 3175 2250 1150
U 5DEFED32
F0 "iCE40LP" 50
F1 "iCE40LP.sch" 50
F2 "Encoder0_B" I L 4825 3275 50 
F3 "Encoder0_A" I L 4825 3350 50 
F4 "HALL3" I L 4825 3425 50 
F5 "HALL2" I L 4825 3500 50 
F6 "HALL1" I L 4825 3575 50 
F7 "NEOPXL" O L 4825 3650 50 
F8 "Encoder1_B" I L 4825 3725 50 
F9 "Encoder1_A" I L 4825 3800 50 
F10 "DE" O L 4825 3875 50 
F11 "TX" O L 4825 3950 50 
F12 "RX" I L 4825 4025 50 
F13 "INLC" O R 7075 3250 50 
F14 "INHC" O R 7075 3325 50 
F15 "INLB" O R 7075 3400 50 
F16 "INHB" O R 7075 3475 50 
F17 "INLA" O R 7075 3550 50 
F18 "INHA" O R 7075 3625 50 
F19 "SDA" B R 7075 3700 50 
F20 "SCL" O R 7075 3775 50 
F21 "CS_MISO" I R 7075 3850 50 
F22 "CS_CLK" O R 7075 3925 50 
F23 "CS" O R 7075 4000 50 
$EndSheet
Wire Wire Line
	7900 5650 7900 5750
$Comp
L Switch:SW_DIP_x02 SW1
U 1 1 5DEF9434
P 7600 5750
F 0 "SW1" H 7600 6117 50  0000 C CNN
F 1 "SW_DIP_x02" H 7600 6026 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_DIP_SPSTx02_Slide_Copal_CHS-02A_W5.08mm_P1.27mm_JPin" H 7600 5750 50  0001 C CNN
F 3 "" H 7600 5750 50  0001 C CNN
	1    7600 5750
	1    0    0    -1  
$EndComp
Connection ~ 7900 5750
$EndSCHEMATC
