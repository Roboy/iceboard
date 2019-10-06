EESchema Schematic File Version 4
LIBS:board-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title "BLDC_MotorBoard"
Date "2019-08-02"
Rev "0.2"
Comp "Devanthro UG"
Comment1 "Simon Trendel"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 2825 4975 2    50   ~ 0
HALL1
Text Label 2825 4875 2    50   ~ 0
HALL2
Text Label 2825 4775 2    50   ~ 0
HALL3
$Comp
L Connector:Conn_01x05_Female J?
U 1 1 5D481FEB
P 5225 5225
AR Path="/5D056FB0/5D481FEB" Ref="J?"  Part="1" 
AR Path="/5D481FEB" Ref="J5"  Part="1" 
F 0 "J5" H 5253 5251 50  0000 L CNN
F 1 "UART" H 5253 5160 50  0000 L CNN
F 2 "custom_lib:TE-Connectivity_Micro-Match_connector_02x03_Pitch_1.27mm" H 5225 5225 50  0001 C CNN
F 3 "~" H 5225 5225 50  0001 C CNN
	1    5225 5225
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x14_Female J6
U 1 1 5D49943C
P 5200 3850
F 0 "J6" H 5000 4850 50  0000 L CNN
F 1 "TinyFPGA-BX-left" H 4725 4675 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x14_P2.54mm_Vertical" H 5200 3850 50  0001 C CNN
F 3 "~" H 5200 3850 50  0001 C CNN
	1    5200 3850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x14_Female J7
U 1 1 5D49AD14
P 6100 3875
F 0 "J7" H 6128 3851 50  0000 L CNN
F 1 "TinyFPGA-BX-right" H 6128 3760 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x14_P2.54mm_Vertical" H 6100 3875 50  0001 C CNN
F 3 "~" H 6100 3875 50  0001 C CNN
	1    6100 3875
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5D4A202B
P 5000 3250
AR Path="/5D4A202B" Ref="#PWR0115"  Part="1" 
AR Path="/5D056FB0/5D4A202B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0115" H 5000 3000 50  0001 C CNN
F 1 "GND" V 5005 3122 50  0000 R CNN
F 2 "" H 5000 3250 50  0001 C CNN
F 3 "" H 5000 3250 50  0001 C CNN
	1    5000 3250
	0    1    1    0   
$EndComp
Text Label 5000 3750 2    50   ~ 0
HALL1
Text Label 5000 3650 2    50   ~ 0
HALL2
Text Label 5000 3550 2    50   ~ 0
HALL3
Text Label 5000 3450 2    50   ~ 0
Encoder0_A
Text Label 5000 3350 2    50   ~ 0
Encoder0_B
Text GLabel 5900 4375 0    50   Input ~ 0
CS_MISO
Text GLabel 5900 4475 0    50   Input ~ 0
CS_CLK
Text GLabel 5900 4575 0    50   Input ~ 0
CS
$Comp
L power:+3.3V #PWR0116
U 1 1 5D4C3BEF
P 5900 3475
AR Path="/5D4C3BEF" Ref="#PWR0116"  Part="1" 
AR Path="/5D056FB0/5D4C3BEF" Ref="#PWR?"  Part="1" 
F 0 "#PWR0116" H 5900 3325 50  0001 C CNN
F 1 "+3.3V" V 5915 3603 50  0000 L CNN
F 2 "" H 5900 3475 50  0001 C CNN
F 3 "" H 5900 3475 50  0001 C CNN
	1    5900 3475
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5D4C4B7E
P 5900 3375
AR Path="/5D4C4B7E" Ref="#PWR0118"  Part="1" 
AR Path="/5D056FB0/5D4C4B7E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0118" H 5900 3125 50  0001 C CNN
F 1 "GND" V 5905 3247 50  0000 R CNN
F 2 "" H 5900 3375 50  0001 C CNN
F 3 "" H 5900 3375 50  0001 C CNN
	1    5900 3375
	0    1    1    0   
$EndComp
Text GLabel 5900 3575 0    50   Input ~ 0
INLC
Text GLabel 5900 3675 0    50   Input ~ 0
INHC
Text GLabel 5900 3875 0    50   Input ~ 0
INHB
Text GLabel 5900 3975 0    50   Input ~ 0
INLA
Text GLabel 5900 4075 0    50   Input ~ 0
INHA
$Comp
L power:+5V #PWR0119
U 1 1 5D600918
P 5900 3275
F 0 "#PWR0119" H 5900 3125 50  0001 C CNN
F 1 "+5V" V 5915 3403 50  0000 L CNN
F 2 "" H 5900 3275 50  0001 C CNN
F 3 "" H 5900 3275 50  0001 C CNN
	1    5900 3275
	0    -1   -1   0   
$EndComp
Text GLabel 5000 4450 0    50   Input ~ 0
TX
Text GLabel 5000 4550 0    50   Input ~ 0
RX
$Comp
L Connector:Conn_01x08_Male J2
U 1 1 5D6DCD64
P 3175 5175
F 0 "J2" H 3283 5656 50  0000 C CNN
F 1 "PHASES" H 3283 5565 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 3175 5175 50  0001 C CNN
F 3 "~" H 3175 5175 50  0001 C CNN
	1    3175 5175
	-1   0    0    1   
$EndComp
$Sheet
S 4675 1025 1050 1025
U 5D65053E
F0 "power_conv(36Vto5V)" 50
F1 "power_conv.sch" 50
$EndSheet
$Comp
L Device:LED D1
U 1 1 5D69CAF8
P 7600 2100
F 0 "D1" V 7639 1983 50  0000 R CNN
F 1 "LED" V 7548 1983 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7600 2100 50  0001 C CNN
F 3 "~" H 7600 2100 50  0001 C CNN
	1    7600 2100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R Rled1
U 1 1 5D6A6EBD
P 7600 2400
AR Path="/5D6A6EBD" Ref="Rled1"  Part="1" 
AR Path="/5D0530DE/5D6A6EBD" Ref="R?"  Part="1" 
F 0 "Rled1" H 7670 2446 50  0000 L CNN
F 1 "10k" H 7670 2355 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7530 2400 50  0001 C CNN
F 3 "~" H 7600 2400 50  0001 C CNN
	1    7600 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5D6A9216
P 7600 2550
AR Path="/5D6A9216" Ref="#PWR0122"  Part="1" 
AR Path="/5D056FB0/5D6A9216" Ref="#PWR?"  Part="1" 
F 0 "#PWR0122" H 7600 2300 50  0001 C CNN
F 1 "GND" V 7605 2422 50  0000 R CNN
F 2 "" H 7600 2550 50  0001 C CNN
F 3 "" H 7600 2550 50  0001 C CNN
	1    7600 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+36V #PWR0123
U 1 1 5D6B2C55
P 7600 1950
AR Path="/5D6B2C55" Ref="#PWR0123"  Part="1" 
AR Path="/5D0530DE/5D6B2C55" Ref="#PWR?"  Part="1" 
F 0 "#PWR0123" H 7600 1800 50  0001 C CNN
F 1 "+36V" V 7615 2078 50  0000 L CNN
F 2 "" H 7600 1950 50  0001 C CNN
F 3 "" H 7600 1950 50  0001 C CNN
	1    7600 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0105
U 1 1 5D6E00E0
P 2975 5175
AR Path="/5D6E00E0" Ref="#PWR0105"  Part="1" 
AR Path="/5D056FB0/5D6E00E0" Ref="#PWR?"  Part="1" 
F 0 "#PWR0105" H 2975 5025 50  0001 C CNN
F 1 "+3.3V" V 2990 5303 50  0000 L CNN
F 2 "" H 2975 5175 50  0001 C CNN
F 3 "" H 2975 5175 50  0001 C CNN
	1    2975 5175
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5D6E15D7
P 2925 5075
AR Path="/5D6E15D7" Ref="#PWR0106"  Part="1" 
AR Path="/5D056FB0/5D6E15D7" Ref="#PWR?"  Part="1" 
F 0 "#PWR0106" H 2925 4825 50  0001 C CNN
F 1 "GND" V 2930 4947 50  0000 R CNN
F 2 "" H 2925 5075 50  0001 C CNN
F 3 "" H 2925 5075 50  0001 C CNN
	1    2925 5075
	0    1    1    0   
$EndComp
Text Label 2775 5275 2    50   ~ 0
PH1
Text Label 2775 5375 2    50   ~ 0
PH2
Text Label 2775 5475 2    50   ~ 0
PH3
Wire Wire Line
	2775 5275 2975 5275
Wire Wire Line
	2775 5375 2975 5375
Wire Wire Line
	2975 5475 2775 5475
Wire Wire Line
	2925 5075 2975 5075
Wire Wire Line
	2975 4975 2825 4975
Wire Wire Line
	2825 4875 2975 4875
Wire Wire Line
	2975 4775 2825 4775
Text Label 3200 1200 2    50   ~ 0
PH1
Text Label 3200 1300 2    50   ~ 0
PH2
Text Label 3200 1400 2    50   ~ 0
PH3
$Sheet
S 3200 1050 1150 1000
U 5D0530DE
F0 "mosfet_bridges" 50
F1 "mosfet_bridges.sch" 50
F2 "PH1" O L 3200 1200 50 
F3 "PH2" O L 3200 1300 50 
F4 "PH3" O L 3200 1400 50 
$EndSheet
$Comp
L power:GND #PWR0113
U 1 1 5D684F44
P 2875 3525
AR Path="/5D684F44" Ref="#PWR0113"  Part="1" 
AR Path="/5D056FB0/5D684F44" Ref="#PWR?"  Part="1" 
F 0 "#PWR0113" H 2875 3275 50  0001 C CNN
F 1 "GND" V 2880 3397 50  0000 R CNN
F 2 "" H 2875 3525 50  0001 C CNN
F 3 "" H 2875 3525 50  0001 C CNN
	1    2875 3525
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x10_Female J1
U 1 1 5D6A8C66
P 3075 3725
F 0 "J1" H 2967 3000 50  0000 C CNN
F 1 "OpticalEncoder" H 2967 3091 50  0000 C CNN
F 2 "motor drive 9y_protection:MIRCO_MATCH" H 3075 3725 50  0001 C CNN
F 3 "~" H 3075 3725 50  0001 C CNN
	1    3075 3725
	1    0    0    -1  
$EndComp
NoConn ~ 2875 4225
NoConn ~ 2875 3625
NoConn ~ 2875 4125
NoConn ~ 2875 3325
Text Label 9775 5075 0    50   ~ 0
h_RX
Text Label 9775 5175 0    50   ~ 0
l_RX
Text Label 9775 5250 0    50   ~ 0
h_TX
Text Label 9775 5325 0    50   ~ 0
l_TX
Text GLabel 8600 4925 0    50   Input ~ 0
TX
Text GLabel 8600 4825 0    50   Input ~ 0
RX
Text Label 5025 5225 2    50   ~ 0
l_RX
Text Label 5025 5125 2    50   ~ 0
h_TX
Text Label 5025 5025 2    50   ~ 0
l_TX
Text Label 5025 5325 2    50   ~ 0
h_RX
Text GLabel 5025 5425 0    50   Input ~ 0
SHIELD
$Comp
L power:GND #PWR0114
U 1 1 5D92E781
P 9050 2300
AR Path="/5D92E781" Ref="#PWR0114"  Part="1" 
AR Path="/5D056FB0/5D92E781" Ref="#PWR?"  Part="1" 
F 0 "#PWR0114" H 9050 2050 50  0001 C CNN
F 1 "GND" V 9055 2172 50  0000 R CNN
F 2 "" H 9050 2300 50  0001 C CNN
F 3 "" H 9050 2300 50  0001 C CNN
	1    9050 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0125
U 1 1 5D92E787
P 9050 1700
F 0 "#PWR0125" H 9050 1550 50  0001 C CNN
F 1 "+5V" V 9065 1828 50  0000 L CNN
F 2 "" H 9050 1700 50  0001 C CNN
F 3 "" H 9050 1700 50  0001 C CNN
	1    9050 1700
	1    0    0    -1  
$EndComp
Text Label 5000 4050 2    50   ~ 0
NEOPXL
Text GLabel 5900 3775 0    50   Input ~ 0
INLB
Text Label 2875 3725 2    50   ~ 0
-A
Text Label 2875 3825 2    50   ~ 0
+A
Text Label 2875 3925 2    50   ~ 0
-B
Text Label 2875 4025 2    50   ~ 0
+B
Text Label 1225 1125 2    50   ~ 0
-A
Text Label 1225 1225 2    50   ~ 0
+A
Text Label 1225 1325 2    50   ~ 0
-B
Text Label 1225 1425 2    50   ~ 0
+B
Wire Wire Line
	1225 1125 1300 1125
Wire Wire Line
	1225 1225 1300 1225
Wire Wire Line
	1300 1325 1225 1325
Wire Wire Line
	1225 1425 1300 1425
Text Label 2450 1150 0    50   ~ 0
Encoder0_A
Text Label 2450 1225 0    50   ~ 0
Encoder0_B
$Sheet
S 1300 1025 1150 1000
U 5D88AAB3
F0 "inc_Sensor_interface" 50
F1 "inc_Sensor_interface.sch" 50
F2 "+A" I L 1300 1225 50 
F3 "-A" I L 1300 1125 50 
F4 "+B" I L 1300 1425 50 
F5 "-B" I L 1300 1325 50 
F6 "ENC_A" O R 2450 1150 50 
F7 "ENC_B" O R 2450 1225 50 
$EndSheet
NoConn ~ 10550 2000
Text Label 8750 2000 2    50   ~ 0
NEOPXL
$Comp
L power:GND #PWR0154
U 1 1 5D6A9F1E
P 8150 3875
AR Path="/5D6A9F1E" Ref="#PWR0154"  Part="1" 
AR Path="/5D056FB0/5D6A9F1E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0154" H 8150 3625 50  0001 C CNN
F 1 "GND" V 8155 3747 50  0000 R CNN
F 2 "" H 8150 3875 50  0001 C CNN
F 3 "" H 8150 3875 50  0001 C CNN
	1    8150 3875
	1    0    0    -1  
$EndComp
Text Label 5000 4150 2    50   ~ 0
ID_0
Text Label 5000 4250 2    50   ~ 0
ID_1
Text Label 5000 4350 2    50   ~ 0
ID_2
Text Label 5000 3950 2    50   ~ 0
Encoder1_A
Text Label 5000 3850 2    50   ~ 0
Encoder1_B
$Comp
L power:+3.3V #PWR0157
U 1 1 5D6B1DA4
P 6575 2300
AR Path="/5D6B1DA4" Ref="#PWR0157"  Part="1" 
AR Path="/5D056FB0/5D6B1DA4" Ref="#PWR?"  Part="1" 
F 0 "#PWR0157" H 6575 2150 50  0001 C CNN
F 1 "+3.3V" V 6590 2428 50  0000 L CNN
F 2 "" H 6575 2300 50  0001 C CNN
F 3 "" H 6575 2300 50  0001 C CNN
	1    6575 2300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0158
U 1 1 5D6B1DC7
P 6575 2400
AR Path="/5D6B1DC7" Ref="#PWR0158"  Part="1" 
AR Path="/5D056FB0/5D6B1DC7" Ref="#PWR?"  Part="1" 
F 0 "#PWR0158" H 6575 2150 50  0001 C CNN
F 1 "GND" V 6580 2272 50  0000 R CNN
F 2 "" H 6575 2400 50  0001 C CNN
F 3 "" H 6575 2400 50  0001 C CNN
	1    6575 2400
	0    1    1    0   
$EndComp
Text Label 6575 2600 2    50   ~ 0
Encoder1_A
Text Label 6575 2700 2    50   ~ 0
Encoder1_B
Text Label 7550 3625 2    50   ~ 0
ID_2
Text Label 7550 3525 2    50   ~ 0
ID_1
Text Label 7550 3425 2    50   ~ 0
ID_0
$Comp
L power:+3.3V #PWR0159
U 1 1 5D6B5C45
P 2875 3425
AR Path="/5D6B5C45" Ref="#PWR0159"  Part="1" 
AR Path="/5D056FB0/5D6B5C45" Ref="#PWR?"  Part="1" 
F 0 "#PWR0159" H 2875 3275 50  0001 C CNN
F 1 "+3.3V" V 2890 3553 50  0000 L CNN
F 2 "" H 2875 3425 50  0001 C CNN
F 3 "" H 2875 3425 50  0001 C CNN
	1    2875 3425
	0    -1   -1   0   
$EndComp
$Comp
L LED:SK6812MINI D3
U 1 1 5D89538D
P 9050 2000
F 0 "D3" H 9125 2250 50  0000 L CNN
F 1 "SK6812MINI" H 9100 1725 50  0000 L CNN
F 2 "LED_SMD:LED_SK6812MINI_PLCC4_3.5x3.5mm_P1.75mm" H 9100 1700 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/product-files/2686/SK6812MINI_REV.01-1-2.pdf" H 9150 1625 50  0001 L TNN
	1    9050 2000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J9
U 1 1 5DAB717B
P 6050 5300
F 0 "J9" H 5942 4875 50  0000 C CNN
F 1 "i2c" H 5942 4966 50  0000 C CNN
F 2 "custom_lib:TE-Connectivity_Micro-Match_connector_02x02_Pitch_1.27mm" H 6050 5300 50  0001 C CNN
F 3 "~" H 6050 5300 50  0001 C CNN
	1    6050 5300
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0139
U 1 1 5DABC83A
P 6250 5200
AR Path="/5DABC83A" Ref="#PWR0139"  Part="1" 
AR Path="/5D056FB0/5DABC83A" Ref="#PWR?"  Part="1" 
F 0 "#PWR0139" H 6250 5050 50  0001 C CNN
F 1 "+3.3V" V 6265 5328 50  0000 L CNN
F 2 "" H 6250 5200 50  0001 C CNN
F 3 "" H 6250 5200 50  0001 C CNN
	1    6250 5200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0142
U 1 1 5DABDFDD
P 6250 5100
AR Path="/5DABDFDD" Ref="#PWR0142"  Part="1" 
AR Path="/5D056FB0/5DABDFDD" Ref="#PWR?"  Part="1" 
F 0 "#PWR0142" H 6250 4850 50  0001 C CNN
F 1 "GND" V 6255 4972 50  0000 R CNN
F 2 "" H 6250 5100 50  0001 C CNN
F 3 "" H 6250 5100 50  0001 C CNN
	1    6250 5100
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
$EndSheet
$Comp
L Switch:SW_DIP_x04 SW1
U 1 1 5DB6CAF3
P 7850 3625
F 0 "SW1" H 7850 4092 50  0000 C CNN
F 1 "SW_DIP_x04" H 7850 4001 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_DIP_SPSTx04_Slide_Omron_A6H-4101_W6.15mm_P1.27mm" H 7850 3625 50  0001 C CNN
F 3 "~" H 7850 3625 50  0001 C CNN
	1    7850 3625
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 3425 8150 3525
Wire Wire Line
	8150 3725 8150 3875
Wire Wire Line
	8150 3525 8150 3625
Connection ~ 8150 3525
Connection ~ 8150 3725
Connection ~ 8150 3625
Wire Wire Line
	8150 3625 8150 3725
Text Label 9775 4975 0    50   ~ 0
term_te
Text Label 7550 3725 2    50   ~ 0
term_te
$Comp
L LED:SK6812MINI D4
U 1 1 5DBF4A96
P 9650 2000
F 0 "D4" H 9725 2250 50  0000 L CNN
F 1 "SK6812MINI" H 9700 1725 50  0000 L CNN
F 2 "LED_SMD:LED_SK6812MINI_PLCC4_3.5x3.5mm_P1.75mm" H 9700 1700 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/product-files/2686/SK6812MINI_REV.01-1-2.pdf" H 9750 1625 50  0001 L TNN
	1    9650 2000
	1    0    0    -1  
$EndComp
$Comp
L LED:SK6812MINI D5
U 1 1 5DBF5018
P 10250 2000
F 0 "D5" H 10325 2250 50  0000 L CNN
F 1 "SK6812MINI" H 10300 1725 50  0000 L CNN
F 2 "LED_SMD:LED_SK6812MINI_PLCC4_3.5x3.5mm_P1.75mm" H 10300 1700 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/product-files/2686/SK6812MINI_REV.01-1-2.pdf" H 10350 1625 50  0001 L TNN
	1    10250 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 1700 9650 1700
Connection ~ 9050 1700
Wire Wire Line
	9650 1700 10250 1700
Connection ~ 9650 1700
Wire Wire Line
	10250 2300 9650 2300
Wire Wire Line
	9650 2300 9050 2300
Connection ~ 9650 2300
Connection ~ 9050 2300
$Comp
L Connector:Conn_01x05_Female J4
U 1 1 5DC08A2F
P 6775 2500
F 0 "J4" H 6803 2526 50  0000 L CNN
F 1 "ENCODER1" H 6803 2435 50  0000 L CNN
F 2 "Connector_JST:JST_SH_SM05B-SRSS-TB_1x05-1MP_P1.00mm_Horizontal" H 6775 2500 50  0001 C CNN
F 3 "~" H 6775 2500 50  0001 C CNN
	1    6775 2500
	1    0    0    -1  
$EndComp
Text Label 6575 2500 2    50   ~ 0
Encoder1_I
Text Label 6250 5300 0    50   ~ 0
SDA
Text Label 6250 5400 0    50   ~ 0
SCL
Text Label 5900 4275 2    50   ~ 0
SCL
Text Label 5900 4175 2    50   ~ 0
SDA
$EndSCHEMATC
