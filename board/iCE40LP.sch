EESchema Schematic File Version 4
LIBS:board-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 7 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L board-rescue:iCE40-LP8K-CM81-TinyFPGA-BX-rescue U8
U 1 1 591007FD
P 10800 4300
F 0 "U8" H 11000 4550 60  0000 L CNN
F 1 "iCE40-LP8K-CM81" H 11000 4450 60  0000 L CNN
F 2 "custom_lib:iCE40-PL9K-CM81" H 10800 4300 60  0001 C CNN
F 3 "" H 10800 4300 60  0001 C CNN
	1    10800 4300
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:iCE40-LP8K-CM81-TinyFPGA-BX-rescue U8
U 2 1 591008E6
P 13250 8250
F 0 "U8" H 13450 8500 60  0000 L CNN
F 1 "iCE40-LP8K-CM81" H 13450 8400 60  0000 L CNN
F 2 "custom_lib:iCE40-PL9K-CM81" H 13250 8250 60  0001 C CNN
F 3 "" H 13250 8250 60  0001 C CNN
	2    13250 8250
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:iCE40-LP8K-CM81-TinyFPGA-BX-rescue U8
U 3 1 59100915
P 13450 4300
F 0 "U8" H 13650 4550 60  0000 L CNN
F 1 "iCE40-LP8K-CM81" H 13650 4450 60  0000 L CNN
F 2 "custom_lib:iCE40-PL9K-CM81" H 13450 4300 60  0001 C CNN
F 3 "" H 13450 4300 60  0001 C CNN
	3    13450 4300
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:iCE40-LP8K-CM81-TinyFPGA-BX-rescue U8
U 4 1 59100956
P 13300 5750
F 0 "U8" H 13500 6000 60  0000 L CNN
F 1 "iCE40-LP8K-CM81" H 13500 5900 60  0000 L CNN
F 2 "custom_lib:iCE40-PL9K-CM81" H 13300 5750 60  0001 C CNN
F 3 "" H 13300 5750 60  0001 C CNN
	4    13300 5750
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:iCE40-LP8K-CM81-TinyFPGA-BX-rescue U8
U 5 1 591009BB
P 10800 5800
F 0 "U8" H 11000 6050 60  0000 L CNN
F 1 "iCE40-LP8K-CM81" H 11000 5950 60  0000 L CNN
F 2 "custom_lib:iCE40-PL9K-CM81" H 10800 5800 60  0001 C CNN
F 3 "" H 10800 5800 60  0001 C CNN
	5    10800 5800
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:iCE40-LP8K-CM81-TinyFPGA-BX-rescue U8
U 6 1 59100A06
P 10800 7700
F 0 "U8" H 11000 7950 60  0000 L CNN
F 1 "iCE40-LP8K-CM81" H 11000 7850 60  0000 L CNN
F 2 "custom_lib:iCE40-PL9K-CM81" H 10800 7700 60  0001 C CNN
F 3 "" H 10800 7700 60  0001 C CNN
	6    10800 7700
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:iCE40-LP8K-CM81-TinyFPGA-BX-rescue U8
U 7 1 59100A3F
P 3800 9250
F 0 "U8" H 4000 9500 60  0000 L CNN
F 1 "iCE40-LP8K-CM81" H 4000 9400 60  0000 L CNN
F 2 "custom_lib:iCE40-PL9K-CM81" H 3800 9250 60  0001 C CNN
F 3 "" H 3800 9250 60  0001 C CNN
	7    3800 9250
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:iCE40-LP8K-CM81-TinyFPGA-BX-rescue U8
U 8 1 59100A88
P 4350 6400
F 0 "U8" H 4550 6650 60  0000 L CNN
F 1 "iCE40-LP8K-CM81" H 4550 6550 60  0000 L CNN
F 2 "custom_lib:iCE40-PL9K-CM81" H 4350 6400 60  0001 C CNN
F 3 "" H 4350 6400 60  0001 C CNN
	8    4350 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 591012CF
P 13250 8850
F 0 "#PWR0115" H 13250 8600 50  0001 C CNN
F 1 "GND" H 13250 8700 50  0000 C CNN
F 2 "" H 13250 8850 50  0001 C CNN
F 3 "" H 13250 8850 50  0001 C CNN
	1    13250 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	13250 8250 13250 8350
Connection ~ 13250 8350
Connection ~ 13250 8450
Connection ~ 13250 8550
Wire Wire Line
	1850 6400 2100 6400
Wire Wire Line
	1850 6150 1850 6400
Wire Wire Line
	1850 6500 2400 6500
Connection ~ 1850 6400
Wire Wire Line
	1850 6900 3500 6900
Connection ~ 1850 6500
Wire Wire Line
	1850 7000 3750 7000
Connection ~ 1850 6900
Wire Wire Line
	1550 6600 2700 6600
Wire Wire Line
	1550 6150 1550 6600
Wire Wire Line
	1550 6700 3000 6700
Connection ~ 1550 6600
Wire Wire Line
	1550 6800 3250 6800
Connection ~ 1550 6700
$Comp
L power:+1V2 #PWR0116
U 1 1 59101C2D
P 1550 6150
F 0 "#PWR0116" H 1550 6000 50  0001 C CNN
F 1 "+1V2" H 1550 6290 50  0000 C CNN
F 2 "" H 1550 6150 50  0001 C CNN
F 3 "" H 1550 6150 50  0001 C CNN
	1    1550 6150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0118
U 1 1 59101C51
P 1850 6150
F 0 "#PWR0118" H 1850 6000 50  0001 C CNN
F 1 "+3V3" H 1850 6300 50  0000 C CNN
F 2 "" H 1850 6150 50  0001 C CNN
F 3 "" H 1850 6150 50  0001 C CNN
	1    1850 6150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0119
U 1 1 59101D8B
P 10500 4050
F 0 "#PWR0119" H 10500 3900 50  0001 C CNN
F 1 "+3V3" H 10500 4190 50  0000 C CNN
F 2 "" H 10500 4050 50  0001 C CNN
F 3 "" H 10500 4050 50  0001 C CNN
	1    10500 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 4050 10500 4400
Wire Wire Line
	10500 4400 10800 4400
Text GLabel 10150 4300 0    60   Input ~ 0
VPP_FAST
Wire Wire Line
	10800 4300 10150 4300
Text GLabel 9550 5000 0    60   Input ~ 0
CRESET_B
Wire Wire Line
	10800 5000 9550 5000
Wire Wire Line
	10500 5200 10800 5200
Connection ~ 10500 4400
Text GLabel 10700 8500 0    60   Input ~ 0
USB_P
Text GLabel 10450 8000 0    60   Input ~ 0
USB_N
Wire Wire Line
	10800 7900 10700 7900
Wire Wire Line
	10450 8000 10800 8000
Wire Wire Line
	13150 4300 13350 4300
$Comp
L board-rescue:USB_OTG-TinyFPGA-BX-rescue J6
U 1 1 5918C75D
P 2200 2000
F 0 "J6" H 2000 2450 50  0000 L CNN
F 1 "USB_OTG" H 2000 2350 50  0000 L CNN
F 2 "Connector_USB:USB_Micro-B_Molex_47346-0001" H 2350 1950 50  0001 C CNN
F 3 "" H 2350 1950 50  0001 C CNN
	1    2200 2000
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:SW_Push-TinyFPGA-BX-rescue SW2
U 1 1 5918CB81
P 7200 10150
F 0 "SW2" H 7250 10250 50  0000 L CNN
F 1 "SW_Push" H 7200 10090 50  0000 C CNN
F 2 "custom_lib:PTS_810_SMT_Switch" H 7200 10350 50  0001 C CNN
F 3 "" H 7200 10350 50  0001 C CNN
	1    7200 10150
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:DSC6001CI2A-016.0000T-TinyFPGA-BX-rescue U10
U 1 1 591A9FD7
P 6850 1900
F 0 "U10" H 7050 2150 60  0000 L CNN
F 1 "DSC6001CI2A-016.0000T" H 7050 2050 60  0000 L CNN
F 2 "custom_lib:CDFN3225-4LD-PL-1" H 6850 1900 60  0001 C CNN
F 3 "" H 6850 1900 60  0001 C CNN
	1    6850 1900
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:AT25SF041-SSHD-B-TinyFPGA-BX-rescue U9
U 1 1 591BDF5F
P 6775 7350
AR Path="/591BDF5F" Ref="U9"  Part="1" 
AR Path="/5DEFED32/591BDF5F" Ref="U9"  Part="1" 
F 0 "U9" H 6975 7600 60  0000 L CNN
F 1 "AT25SF081-SSHD-B" H 6975 7500 60  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6775 7350 60  0001 C CNN
F 3 "" H 6775 7350 60  0001 C CNN
	1    6775 7350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0177
U 1 1 591C14AA
P 7450 2600
F 0 "#PWR0177" H 7450 2350 50  0001 C CNN
F 1 "GND" H 7450 2450 50  0000 C CNN
F 2 "" H 7450 2600 50  0001 C CNN
F 3 "" H 7450 2600 50  0001 C CNN
	1    7450 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0178
U 1 1 591C157D
P 6700 1200
F 0 "#PWR0178" H 6700 1050 50  0001 C CNN
F 1 "+3V3" H 6700 1340 50  0000 C CNN
F 2 "" H 6700 1200 50  0001 C CNN
F 3 "" H 6700 1200 50  0001 C CNN
	1    6700 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2500 7450 2550
Wire Wire Line
	7450 1250 7450 1300
Wire Wire Line
	8050 1900 8200 1900
$Comp
L power:GND #PWR0179
U 1 1 591C2887
P 2200 2700
F 0 "#PWR0179" H 2200 2450 50  0001 C CNN
F 1 "GND" H 2200 2550 50  0000 C CNN
F 2 "" H 2200 2700 50  0001 C CNN
F 3 "" H 2200 2700 50  0001 C CNN
	1    2200 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2400 2200 2600
Wire Wire Line
	2100 2400 2100 2600
Wire Wire Line
	1550 2600 2100 2600
Connection ~ 2200 2600
$Comp
L board-rescue:Ferrite_Bead_Small-TinyFPGA-BX-rescue L2
U 1 1 591C2A75
P 2700 1550
F 0 "L2" H 2775 1600 50  0000 L CNN
F 1 "Bead" H 2775 1500 50  0000 L CNN
F 2 "Inductor_SMD:L_0603_1608Metric" V 2630 1550 50  0001 C CNN
F 3 "" H 2700 1550 50  0001 C CNN
	1    2700 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1800 2700 1800
Wire Wire Line
	2700 1800 2700 1650
$Comp
L power:+5V #PWR0180
U 1 1 591C2D23
P 2700 1250
F 0 "#PWR0180" H 2700 1100 50  0001 C CNN
F 1 "+5V" H 2700 1390 50  0000 C CNN
F 2 "" H 2700 1250 50  0001 C CNN
F 3 "" H 2700 1250 50  0001 C CNN
	1    2700 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1450 2700 1300
$Comp
L power:+3V3 #PWR0181
U 1 1 591C3507
P 7475 6600
F 0 "#PWR0181" H 7475 6450 50  0001 C CNN
F 1 "+3V3" H 7475 6740 50  0000 C CNN
F 2 "" H 7475 6600 50  0001 C CNN
F 3 "" H 7475 6600 50  0001 C CNN
	1    7475 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7475 6750 7475 6700
$Comp
L power:GND #PWR0182
U 1 1 591C3716
P 7475 8400
F 0 "#PWR0182" H 7475 8150 50  0001 C CNN
F 1 "GND" H 7475 8250 50  0000 C CNN
F 2 "" H 7475 8400 50  0001 C CNN
F 3 "" H 7475 8400 50  0001 C CNN
	1    7475 8400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7475 8400 7475 8300
$Comp
L board-rescue:R-TinyFPGA-BX-rescue R41
U 1 1 591D2293
P 3350 2000
F 0 "R41" V 3250 2000 50  0000 C CNN
F 1 "68" V 3350 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3280 2000 50  0001 C CNN
F 3 "" H 3350 2000 50  0001 C CNN
	1    3350 2000
	0    1    1    0   
$EndComp
$Comp
L board-rescue:R-TinyFPGA-BX-rescue R42
U 1 1 591D2392
P 3350 2100
F 0 "R42" V 3430 2100 50  0000 C CNN
F 1 "68" V 3350 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3280 2100 50  0001 C CNN
F 3 "" H 3350 2100 50  0001 C CNN
	1    3350 2100
	0    1    1    0   
$EndComp
$Comp
L board-rescue:R-TinyFPGA-BX-rescue R40
U 1 1 591D2427
P 3150 1600
F 0 "R40" V 3230 1600 50  0000 C CNN
F 1 "1.5k" V 3150 1600 47  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3080 1600 50  0001 C CNN
F 3 "" H 3150 1600 50  0001 C CNN
	1    3150 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	2500 2000 3150 2000
Wire Wire Line
	3150 1750 3150 2000
Connection ~ 3150 2000
Wire Wire Line
	3200 2100 2500 2100
Text GLabel 3750 2000 2    60   Input ~ 0
USB_P
Text GLabel 3750 2100 2    60   Input ~ 0
USB_N
Wire Wire Line
	3750 2000 3500 2000
Wire Wire Line
	3500 2100 3750 2100
Wire Wire Line
	3150 1450 3150 1250
Wire Wire Line
	12850 4600 13450 4600
Text GLabel 12850 4600 0    60   Input ~ 0
82
$Comp
L board-rescue:C-TinyFPGA-BX-rescue C47
U 1 1 591E10BF
P 6700 2250
F 0 "C47" H 6725 2350 50  0000 L CNN
F 1 "100nF" H 6725 2150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6738 2100 50  0001 C CNN
F 3 "" H 6700 2250 50  0001 C CNN
	1    6700 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1200 6700 1250
Wire Wire Line
	6850 1900 6700 1900
Connection ~ 6700 1900
Wire Wire Line
	7450 1250 6700 1250
Connection ~ 6700 1250
Wire Wire Line
	7450 2550 6700 2550
Wire Wire Line
	6700 2550 6700 2400
Connection ~ 7450 2550
$Comp
L board-rescue:C-TinyFPGA-BX-rescue C46
U 1 1 591E1ADB
P 6025 7950
F 0 "C46" H 6050 8050 50  0000 L CNN
F 1 "100nF" H 6050 7850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6063 7800 50  0001 C CNN
F 3 "" H 6025 7950 50  0001 C CNN
	1    6025 7950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7475 6700 6725 6700
Wire Wire Line
	6025 6700 6025 7800
Connection ~ 7475 6700
Wire Wire Line
	6025 8100 6025 8300
Wire Wire Line
	6025 8300 7475 8300
Connection ~ 7475 8300
$Comp
L board-rescue:C-TinyFPGA-BX-rescue C41
U 1 1 591E2ADF
P 3450 9400
F 0 "C41" H 3475 9500 50  0000 L CNN
F 1 "100nF" H 3475 9300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3488 9250 50  0001 C CNN
F 3 "" H 3450 9400 50  0001 C CNN
	1    3450 9400
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:C-TinyFPGA-BX-rescue C38
U 1 1 591E2B9D
P 3050 9400
F 0 "C38" H 3075 9500 50  0000 L CNN
F 1 "10uF" H 3075 9300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3088 9250 50  0001 C CNN
F 3 "" H 3050 9400 50  0001 C CNN
	1    3050 9400
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:R-TinyFPGA-BX-rescue R39
U 1 1 591E2BF1
P 2600 9550
F 0 "R39" V 2680 9550 50  0000 C CNN
F 1 "100" V 2600 9550 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2530 9550 50  0001 C CNN
F 3 "" H 2600 9550 50  0001 C CNN
	1    2600 9550
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 9250 3450 9250
Connection ~ 3450 9250
Wire Wire Line
	3800 9550 3800 9350
Wire Wire Line
	2750 9550 3050 9550
Connection ~ 3450 9550
Connection ~ 3050 9550
$Comp
L power:+1V2 #PWR0183
U 1 1 591E329A
P 2250 9550
F 0 "#PWR0183" H 2250 9400 50  0001 C CNN
F 1 "+1V2" H 2250 9690 50  0000 C CNN
F 2 "" H 2250 9550 50  0001 C CNN
F 3 "" H 2250 9550 50  0001 C CNN
	1    2250 9550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2450 9550 2250 9550
$Comp
L board-rescue:C_Small-TinyFPGA-BX-rescue C14
U 1 1 591E9D9B
P 2100 7250
F 0 "C14" H 2110 7320 50  0000 L CNN
F 1 "100nF" H 2110 7170 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2100 7250 50  0001 C CNN
F 3 "" H 2100 7250 50  0001 C CNN
	1    2100 7250
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:C_Small-TinyFPGA-BX-rescue C16
U 1 1 591E9E78
P 2400 7250
F 0 "C16" H 2410 7320 50  0000 L CNN
F 1 "100nF" H 2410 7170 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2400 7250 50  0001 C CNN
F 3 "" H 2400 7250 50  0001 C CNN
	1    2400 7250
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:C_Small-TinyFPGA-BX-rescue C29
U 1 1 591E9EF1
P 2700 7250
F 0 "C29" H 2710 7320 50  0000 L CNN
F 1 "100nF" H 2710 7170 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2700 7250 50  0001 C CNN
F 3 "" H 2700 7250 50  0001 C CNN
	1    2700 7250
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:C_Small-TinyFPGA-BX-rescue C37
U 1 1 591E9FF1
P 3000 7250
F 0 "C37" H 3010 7320 50  0000 L CNN
F 1 "10nF" H 3010 7170 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3000 7250 50  0001 C CNN
F 3 "" H 3000 7250 50  0001 C CNN
	1    3000 7250
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:C_Small-TinyFPGA-BX-rescue C39
U 1 1 591EA15E
P 3250 7250
F 0 "C39" H 3260 7320 50  0000 L CNN
F 1 "10nF" H 3260 7170 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3250 7250 50  0001 C CNN
F 3 "" H 3250 7250 50  0001 C CNN
	1    3250 7250
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:C_Small-TinyFPGA-BX-rescue C42
U 1 1 591EA1D8
P 3500 7250
F 0 "C42" H 3510 7320 50  0000 L CNN
F 1 "10nF" H 3510 7170 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3500 7250 50  0001 C CNN
F 3 "" H 3500 7250 50  0001 C CNN
	1    3500 7250
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:C_Small-TinyFPGA-BX-rescue C43
U 1 1 591EA257
P 3750 7250
F 0 "C43" H 3760 7320 50  0000 L CNN
F 1 "10nF" H 3760 7170 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3750 7250 50  0001 C CNN
F 3 "" H 3750 7250 50  0001 C CNN
	1    3750 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 7150 2100 6400
Connection ~ 2100 6400
Wire Wire Line
	2400 7150 2400 6500
Connection ~ 2400 6500
Wire Wire Line
	2700 7150 2700 6600
Connection ~ 2700 6600
Wire Wire Line
	3000 7150 3000 6700
Connection ~ 3000 6700
Wire Wire Line
	3250 7150 3250 6800
Connection ~ 3250 6800
Wire Wire Line
	3500 7150 3500 6900
Connection ~ 3500 6900
Wire Wire Line
	3750 7150 3750 7000
Connection ~ 3750 7000
$Comp
L power:GND #PWR0184
U 1 1 591EAF90
P 1750 7550
F 0 "#PWR0184" H 1750 7300 50  0001 C CNN
F 1 "GND" H 1750 7400 50  0000 C CNN
F 2 "" H 1750 7550 50  0001 C CNN
F 3 "" H 1750 7550 50  0001 C CNN
	1    1750 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 7550 1750 7450
Wire Wire Line
	1750 7450 2100 7450
Wire Wire Line
	2100 7450 2100 7350
Wire Wire Line
	2400 7450 2400 7350
Connection ~ 2100 7450
Wire Wire Line
	2700 7450 2700 7350
Connection ~ 2400 7450
Wire Wire Line
	3000 7450 3000 7350
Connection ~ 2700 7450
Wire Wire Line
	3250 7450 3250 7350
Connection ~ 3000 7450
Wire Wire Line
	3500 7450 3500 7350
Connection ~ 3250 7450
Wire Wire Line
	3750 7450 3750 7350
Connection ~ 3500 7450
$Comp
L board-rescue:R-TinyFPGA-BX-rescue R48
U 1 1 591EBB96
P 13350 4000
F 0 "R48" V 13430 4000 50  0000 C CNN
F 1 "10k" V 13350 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 13280 4000 50  0001 C CNN
F 3 "" H 13350 4000 50  0001 C CNN
	1    13350 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	13350 4150 13350 4300
Connection ~ 13350 4300
$Comp
L power:+3V3 #PWR0185
U 1 1 591EBD61
P 13350 3650
F 0 "#PWR0185" H 13350 3500 50  0001 C CNN
F 1 "+3V3" H 13350 3790 50  0000 C CNN
F 2 "" H 13350 3650 50  0001 C CNN
F 3 "" H 13350 3650 50  0001 C CNN
	1    13350 3650
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:C_Small-TinyFPGA-BX-rescue C44
U 1 1 591EA04F
P 4100 7250
F 0 "C44" H 4110 7320 50  0000 L CNN
F 1 "100nF" H 4110 7170 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4100 7250 50  0001 C CNN
F 3 "" H 4100 7250 50  0001 C CNN
	1    4100 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 7150 4100 7000
Connection ~ 4100 7000
Wire Wire Line
	4100 7450 4100 7350
Connection ~ 3750 7450
$Comp
L power:+3.3V #PWR0186
U 1 1 59201178
P 7500 9650
F 0 "#PWR0186" H 7500 9500 50  0001 C CNN
F 1 "+3.3V" H 7500 9790 50  0000 C CNN
F 2 "" H 7500 9650 50  0001 C CNN
F 3 "" H 7500 9650 50  0001 C CNN
	1    7500 9650
	1    0    0    -1  
$EndComp
Text GLabel 8150 10150 2    60   Input ~ 0
CRESET_B
Wire Wire Line
	7400 10150 7500 10150
Wire Wire Line
	6800 10150 7000 10150
$Comp
L power:GND #PWR0187
U 1 1 59201476
P 6800 10550
F 0 "#PWR0187" H 6800 10300 50  0001 C CNN
F 1 "GND" H 6800 10400 50  0000 C CNN
F 2 "" H 6800 10550 50  0001 C CNN
F 3 "" H 6800 10550 50  0001 C CNN
	1    6800 10550
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:R-TinyFPGA-BX-rescue R47
U 1 1 592015DC
P 7500 9900
F 0 "R47" V 7580 9900 50  0000 C CNN
F 1 "R" V 7500 9900 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7430 9900 50  0001 C CNN
F 3 "" H 7500 9900 50  0001 C CNN
	1    7500 9900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 9650 7500 9750
Wire Wire Line
	7500 10050 7500 10150
Connection ~ 7500 10150
Wire Wire Line
	6800 10550 6800 10150
$Comp
L board-rescue:C-TinyFPGA-BX-rescue C15
U 1 1 592061E2
P 2200 1300
F 0 "C15" H 2225 1400 50  0000 L CNN
F 1 "10uF" H 2225 1200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2238 1150 50  0001 C CNN
F 3 "" H 2200 1300 50  0001 C CNN
	1    2200 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 1300 2700 1300
Connection ~ 2700 1300
Wire Wire Line
	2050 1300 1550 1300
Wire Wire Line
	1550 1300 1550 2600
Connection ~ 2100 2600
$Comp
L board-rescue:R-TinyFPGA-BX-rescue R45
U 1 1 5922D14B
P 6525 7150
F 0 "R45" V 6605 7150 50  0000 C CNN
F 1 "10k" V 6525 7150 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6455 7150 50  0001 C CNN
F 3 "" H 6525 7150 50  0001 C CNN
	1    6525 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6325 7450 6525 7450
Wire Wire Line
	6525 7300 6525 7450
Connection ~ 6525 7450
Text Notes 2150 6000 0    60   ~ 0
FPGA core and IO power connections and decoupling capacitors
Text Notes 2350 9050 0    60   ~ 0
FPGA PLL decoupling capacitors
Text Notes 2050 850  0    60   ~ 0
USB connection and power filtering
Text Notes 7150 1000 0    60   ~ 0
16MHz Clock
Text Notes 6325 6300 0    60   ~ 0
SPI flash memory for FPGA configuration
Text Notes 6950 9250 0    60   ~ 0
FPGA reset button and testpoint
Text Notes 11900 3700 0    60   ~ 0
FPGA connections
Wire Wire Line
	12400 6750 13300 6750
Wire Wire Line
	12400 6950 13300 6950
$Comp
L power:+1V2 #PWR0189
U 1 1 5A3966E1
P 12400 5500
F 0 "#PWR0189" H 12400 5350 50  0001 C CNN
F 1 "+1V2" H 12400 5640 50  0000 C CNN
F 2 "" H 12400 5500 50  0001 C CNN
F 3 "" H 12400 5500 50  0001 C CNN
	1    12400 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	12400 6950 12400 6750
Connection ~ 12400 6750
$Comp
L power:+3V3 #PWR0190
U 1 1 5A396E87
P 9650 7450
F 0 "#PWR0190" H 9650 7300 50  0001 C CNN
F 1 "+3V3" H 9650 7590 50  0000 C CNN
F 2 "" H 9650 7450 50  0001 C CNN
F 3 "" H 9650 7450 50  0001 C CNN
	1    9650 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 8600 9650 8600
Wire Wire Line
	9650 8600 9650 7450
$Comp
L power:+3V3 #PWR0191
U 1 1 5A397386
P 9950 5500
F 0 "#PWR0191" H 9950 5350 50  0001 C CNN
F 1 "+3V3" H 9950 5640 50  0000 C CNN
F 2 "" H 9950 5500 50  0001 C CNN
F 3 "" H 9950 5500 50  0001 C CNN
	1    9950 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 5900 9950 5900
Wire Wire Line
	9950 5900 9950 5500
Text GLabel 3750 1250 2    60   Input ~ 0
USB_PU
Wire Wire Line
	3150 1250 3750 1250
Text GLabel 10700 7900 0    60   Input ~ 0
USB_PU
Wire Wire Line
	10700 8500 10800 8500
$Comp
L power:GND #PWR0192
U 1 1 5A3A5594
P 7325 5675
F 0 "#PWR0192" H 7325 5425 50  0001 C CNN
F 1 "GND" H 7325 5525 50  0000 C CNN
F 2 "" H 7325 5675 50  0001 C CNN
F 3 "" H 7325 5675 50  0001 C CNN
	1    7325 5675
	0    1    1    0   
$EndComp
Text GLabel 10350 7100 0    60   Input ~ 0
109
Wire Wire Line
	10350 7100 10800 7100
$Comp
L board-rescue:LED_Small-TinyFPGA-BX-rescue D4
U 1 1 5A3A94CB
P 4850 2600
F 0 "D4" H 4800 2725 50  0000 L CNN
F 1 "LED_Small" H 4675 2500 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 4850 2600 50  0001 C CNN
F 3 "" V 4850 2600 50  0001 C CNN
	1    4850 2600
	0    -1   -1   0   
$EndComp
$Comp
L board-rescue:R_Small-TinyFPGA-BX-rescue R43
U 1 1 5A3A95FA
P 4850 2950
F 0 "R43" H 4880 2970 50  0000 L CNN
F 1 "270" H 4880 2910 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4850 2950 50  0001 C CNN
F 3 "" H 4850 2950 50  0001 C CNN
	1    4850 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0193
U 1 1 5A3A973F
P 4850 3250
F 0 "#PWR0193" H 4850 3000 50  0001 C CNN
F 1 "GND" H 4850 3100 50  0000 C CNN
F 2 "" H 4850 3250 50  0001 C CNN
F 3 "" H 4850 3250 50  0001 C CNN
	1    4850 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2850 4850 2700
$Comp
L power:+3V3 #PWR0194
U 1 1 5A3A9F8A
P 4850 2250
F 0 "#PWR0194" H 4850 2100 50  0001 C CNN
F 1 "+3V3" H 4850 2390 50  0000 C CNN
F 2 "" H 4850 2250 50  0001 C CNN
F 3 "" H 4850 2250 50  0001 C CNN
	1    4850 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2500 4850 2250
$Comp
L power:GND #PWR0195
U 1 1 5A3AED79
P 12550 7600
F 0 "#PWR0195" H 12550 7350 50  0001 C CNN
F 1 "GND" H 12550 7450 50  0000 C CNN
F 2 "" H 12550 7600 50  0001 C CNN
F 3 "" H 12550 7600 50  0001 C CNN
	1    12550 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	13300 6850 12550 6850
Wire Wire Line
	12550 6850 12550 7600
$Comp
L power:GND #PWR0196
U 1 1 5A3AF142
P 9950 9400
F 0 "#PWR0196" H 9950 9150 50  0001 C CNN
F 1 "GND" H 9950 9250 50  0000 C CNN
F 2 "" H 9950 9400 50  0001 C CNN
F 3 "" H 9950 9400 50  0001 C CNN
	1    9950 9400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 9300 9950 9300
Wire Wire Line
	9950 9300 9950 9400
Text GLabel 6325 7550 0    60   Input ~ 0
109
Text GLabel 6325 7450 0    60   Input ~ 0
82
Wire Wire Line
	6775 7550 6725 7550
Wire Wire Line
	6525 7000 6525 6700
Connection ~ 6525 6700
$Comp
L board-rescue:R-TinyFPGA-BX-rescue R46
U 1 1 5ABB1098
P 6725 7150
F 0 "R46" V 6805 7150 50  0000 C CNN
F 1 "10k" V 6725 7150 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6655 7150 50  0001 C CNN
F 3 "" H 6725 7150 50  0001 C CNN
	1    6725 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6725 7550 6725 7300
Connection ~ 6725 7550
Wire Wire Line
	6725 7000 6725 6700
Connection ~ 6725 6700
Wire Wire Line
	13250 8350 13250 8450
Wire Wire Line
	13250 8450 13250 8550
Wire Wire Line
	13250 8550 13250 8850
Wire Wire Line
	1850 6400 1850 6500
Wire Wire Line
	1850 6500 1850 6900
Wire Wire Line
	1850 6900 1850 7000
Wire Wire Line
	1550 6600 1550 6700
Wire Wire Line
	1550 6700 1550 6800
Wire Wire Line
	10500 4400 10500 5200
Wire Wire Line
	2200 2600 2200 2700
Wire Wire Line
	3150 2000 3200 2000
Wire Wire Line
	6700 1900 6700 2100
Wire Wire Line
	6700 1250 6700 1900
Wire Wire Line
	7450 2550 7450 2600
Wire Wire Line
	7475 6700 7475 6600
Wire Wire Line
	7475 8300 7475 8250
Wire Wire Line
	3450 9250 3800 9250
Wire Wire Line
	3450 9550 3800 9550
Wire Wire Line
	3050 9550 3450 9550
Wire Wire Line
	2100 6400 4350 6400
Wire Wire Line
	2400 6500 4350 6500
Wire Wire Line
	2700 6600 4350 6600
Wire Wire Line
	3000 6700 4350 6700
Wire Wire Line
	3250 6800 4350 6800
Wire Wire Line
	3500 6900 4350 6900
Wire Wire Line
	3750 7000 4100 7000
Wire Wire Line
	2100 7450 2400 7450
Wire Wire Line
	2400 7450 2700 7450
Wire Wire Line
	2700 7450 3000 7450
Wire Wire Line
	3000 7450 3250 7450
Wire Wire Line
	3250 7450 3500 7450
Wire Wire Line
	3500 7450 3750 7450
Wire Wire Line
	13350 4300 13450 4300
Wire Wire Line
	4100 7000 4350 7000
Wire Wire Line
	3750 7450 4100 7450
Wire Wire Line
	2700 1300 2700 1250
Wire Wire Line
	2100 2600 2200 2600
Wire Wire Line
	6525 7450 6775 7450
Wire Wire Line
	12400 6750 12400 5500
Wire Wire Line
	6525 6700 6025 6700
Wire Wire Line
	6725 7550 6325 7550
Wire Wire Line
	6725 6700 6525 6700
Wire Wire Line
	13350 3650 13350 3850
Wire Wire Line
	7500 10150 8150 10150
$Comp
L Connector:Conn_01x06_Female J7
U 1 1 5D04D12A
P 7725 5375
F 0 "J7" H 7753 5351 50  0000 L CNN
F 1 "FLASH_PORT" H 7753 5260 50  0000 L CNN
F 2 "custom_lib:TC2030-MCP-NL" H 7725 5375 50  0001 C CNN
F 3 "~" H 7725 5375 50  0001 C CNN
	1    7725 5375
	1    0    0    -1  
$EndComp
Wire Wire Line
	7525 5575 7425 5575
Wire Wire Line
	7425 5575 7425 5675
Wire Wire Line
	7425 5675 7325 5675
Wire Wire Line
	7525 5675 7425 5675
Connection ~ 7425 5675
Text HLabel 10800 7700 0    50   Input ~ 0
Encoder0_B
Text HLabel 10800 7800 0    50   Input ~ 0
Encoder0_A
Text HLabel 13300 6050 0    50   Input ~ 0
HALL3
Text HLabel 13300 5950 0    50   Input ~ 0
HALL2
Text HLabel 13300 5750 0    50   Input ~ 0
HALL1
Text HLabel 13300 6650 0    50   Output ~ 0
NEOPXL
Text HLabel 13300 6550 0    50   Input ~ 0
Encoder1_B
Text HLabel 13300 7250 0    50   Input ~ 0
Encoder1_A
Text HLabel 13450 4500 0    50   Output ~ 0
DE
Text HLabel 13450 4700 0    50   Output ~ 0
TX
Text HLabel 13300 7450 0    50   Input ~ 0
RX
Text HLabel 10800 8100 0    50   Output ~ 0
INLC
Text HLabel 10800 8700 0    50   Output ~ 0
INHC
Text HLabel 10800 8200 0    50   Output ~ 0
INLB
Text HLabel 10800 8800 0    50   Output ~ 0
INHB
Text HLabel 10800 8300 0    50   Output ~ 0
INLA
Text HLabel 10800 8900 0    50   Output ~ 0
INHA
Text HLabel 10800 5800 0    50   BiDi ~ 0
SDA
Text HLabel 10800 7000 0    50   Output ~ 0
SCL
Text HLabel 10800 6300 0    50   Input ~ 0
CS_MISO
Text HLabel 10800 6000 0    50   Output ~ 0
CS_CLK
Text HLabel 10800 6400 0    50   Output ~ 0
CS
NoConn ~ 2500 2200
Text Label 8200 1900 0    50   ~ 0
CLK
Text Label 13300 5850 2    50   ~ 0
CLK
Text Label 7525 5175 2    50   ~ 0
SCK
Text Label 8175 7350 0    50   ~ 0
SCK
Text Label 10800 4800 2    50   ~ 0
SCK
Text Label 7525 5275 2    50   ~ 0
SDO
Text Label 10800 4900 2    50   ~ 0
SDO
Text Label 7525 5375 2    50   ~ 0
SDI
Text Label 10800 5100 2    50   ~ 0
SDI
Text Label 8175 7450 0    50   ~ 0
SDO
Text Label 8175 7550 0    50   ~ 0
SDI
Text Label 7525 5475 2    50   ~ 0
SS
Text Label 8175 7650 0    50   ~ 0
SS
Text Label 10800 6700 2    50   ~ 0
SS
Text Label 10800 6800 2    50   ~ 0
SCK
Text Label 13150 4300 2    50   ~ 0
SS
NoConn ~ 13300 7050
NoConn ~ 13300 7150
NoConn ~ 13300 7350
NoConn ~ 10800 9100
NoConn ~ 10800 9000
NoConn ~ 10800 9200
NoConn ~ 10800 7200
NoConn ~ 10800 6900
NoConn ~ 10800 6600
NoConn ~ 10800 6500
NoConn ~ 10800 6100
NoConn ~ 13450 5000
NoConn ~ 13450 4900
NoConn ~ 13450 4800
NoConn ~ 10800 4500
NoConn ~ 10800 4600
Text Label 10800 4700 2    50   ~ 0
SDO
NoConn ~ 10800 6200
NoConn ~ 13450 4400
NoConn ~ 13300 6150
NoConn ~ 13300 6250
NoConn ~ 13300 6350
NoConn ~ 13300 6450
Wire Wire Line
	4850 3050 4850 3250
NoConn ~ 10800 8400
$EndSCHEMATC
