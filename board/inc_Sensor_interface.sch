EESchema Schematic File Version 4
LIBS:board-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
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
L Comparator:LM2903 U?
U 1 1 5D8D4FBE
P 5925 3300
AR Path="/5D8D4FBE" Ref="U?"  Part="1" 
AR Path="/5D88AAB3/5D8D4FBE" Ref="U2"  Part="1" 
F 0 "U2" H 5925 3667 50  0000 C CNN
F 1 "LM2903" H 5925 3576 50  0000 C CNN
F 2 "Package_SO:TSSOP-8_4.4x3mm_P0.65mm" H 5925 3300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 5925 3300 50  0001 C CNN
	1    5925 3300
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM2903 U?
U 2 1 5D8D4FC4
P 5925 4200
AR Path="/5D8D4FC4" Ref="U?"  Part="2" 
AR Path="/5D88AAB3/5D8D4FC4" Ref="U2"  Part="2" 
F 0 "U2" H 5925 4567 50  0000 C CNN
F 1 "LM2903" H 5925 4476 50  0000 C CNN
F 2 "Package_SO:TSSOP-8_4.4x3mm_P0.65mm" H 5925 4200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 5925 4200 50  0001 C CNN
	2    5925 4200
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM2903 U?
U 3 1 5D8D4FCA
P 5925 3300
AR Path="/5D8D4FCA" Ref="U?"  Part="3" 
AR Path="/5D88AAB3/5D8D4FCA" Ref="U2"  Part="3" 
F 0 "U2" H 5883 3346 50  0000 L CNN
F 1 "LM2903" H 5883 3255 50  0000 L CNN
F 2 "Package_SO:TSSOP-8_4.4x3mm_P0.65mm" H 5925 3300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 5925 3300 50  0001 C CNN
	3    5925 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D8D4FD0
P 5275 3300
AR Path="/5D8D4FD0" Ref="R?"  Part="1" 
AR Path="/5D0530DE/5D8D4FD0" Ref="R?"  Part="1" 
AR Path="/5D88AAB3/5D8D4FD0" Ref="R12"  Part="1" 
F 0 "R12" H 5345 3346 50  0000 L CNN
F 1 "10k" H 5345 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5205 3300 50  0001 C CNN
F 3 "~" H 5275 3300 50  0001 C CNN
	1    5275 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D8D4FD6
P 5275 4200
AR Path="/5D8D4FD6" Ref="R?"  Part="1" 
AR Path="/5D0530DE/5D8D4FD6" Ref="R?"  Part="1" 
AR Path="/5D88AAB3/5D8D4FD6" Ref="R13"  Part="1" 
F 0 "R13" H 5345 4246 50  0000 L CNN
F 1 "10k" H 5345 4155 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5205 4200 50  0001 C CNN
F 3 "~" H 5275 4200 50  0001 C CNN
	1    5275 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D8D4FDC
P 5475 3900
AR Path="/5D8D4FDC" Ref="R?"  Part="1" 
AR Path="/5D0530DE/5D8D4FDC" Ref="R?"  Part="1" 
AR Path="/5D88AAB3/5D8D4FDC" Ref="R15"  Part="1" 
F 0 "R15" H 5545 3946 50  0000 L CNN
F 1 "10k" H 5545 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5405 3900 50  0001 C CNN
F 3 "~" H 5475 3900 50  0001 C CNN
	1    5475 3900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D8D4FE2
P 5475 2800
AR Path="/5D8D4FE2" Ref="R?"  Part="1" 
AR Path="/5D0530DE/5D8D4FE2" Ref="R?"  Part="1" 
AR Path="/5D88AAB3/5D8D4FE2" Ref="R14"  Part="1" 
F 0 "R14" H 5545 2846 50  0000 L CNN
F 1 "10k" H 5545 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5405 2800 50  0001 C CNN
F 3 "~" H 5475 2800 50  0001 C CNN
	1    5475 2800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D8D4FE8
P 5825 3600
AR Path="/5D8D4FE8" Ref="#PWR?"  Part="1" 
AR Path="/5D056FB0/5D8D4FE8" Ref="#PWR?"  Part="1" 
AR Path="/5D88AAB3/5D8D4FE8" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 5825 3350 50  0001 C CNN
F 1 "GND" V 5830 3472 50  0000 R CNN
F 2 "" H 5825 3600 50  0001 C CNN
F 3 "" H 5825 3600 50  0001 C CNN
	1    5825 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D8D4FF5
P 6475 4000
AR Path="/5D8D4FF5" Ref="R?"  Part="1" 
AR Path="/5D0530DE/5D8D4FF5" Ref="R?"  Part="1" 
AR Path="/5D88AAB3/5D8D4FF5" Ref="R17"  Part="1" 
F 0 "R17" H 6545 4046 50  0000 L CNN
F 1 "10k" H 6545 3955 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6405 4000 50  0001 C CNN
F 3 "~" H 6475 4000 50  0001 C CNN
	1    6475 4000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5D8D4FFC
P 4575 4350
AR Path="/5D8D4FFC" Ref="R?"  Part="1" 
AR Path="/5D0530DE/5D8D4FFC" Ref="R?"  Part="1" 
AR Path="/5D88AAB3/5D8D4FFC" Ref="R7"  Part="1" 
F 0 "R7" H 4645 4396 50  0000 L CNN
F 1 "1k" H 4645 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4505 4350 50  0001 C CNN
F 3 "~" H 4575 4350 50  0001 C CNN
	1    4575 4350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D8D5002
P 4575 3450
AR Path="/5D8D5002" Ref="R?"  Part="1" 
AR Path="/5D0530DE/5D8D5002" Ref="R?"  Part="1" 
AR Path="/5D88AAB3/5D8D5002" Ref="R5"  Part="1" 
F 0 "R5" H 4645 3496 50  0000 L CNN
F 1 "1k" H 4645 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4505 3450 50  0001 C CNN
F 3 "~" H 4575 3450 50  0001 C CNN
	1    4575 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D8D5008
P 4575 3150
AR Path="/5D8D5008" Ref="R?"  Part="1" 
AR Path="/5D0530DE/5D8D5008" Ref="R?"  Part="1" 
AR Path="/5D88AAB3/5D8D5008" Ref="R4"  Part="1" 
F 0 "R4" H 4645 3196 50  0000 L CNN
F 1 "1k" H 4645 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4505 3150 50  0001 C CNN
F 3 "~" H 4575 3150 50  0001 C CNN
	1    4575 3150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D8D500E
P 4575 4050
AR Path="/5D8D500E" Ref="R?"  Part="1" 
AR Path="/5D0530DE/5D8D500E" Ref="R?"  Part="1" 
AR Path="/5D88AAB3/5D8D500E" Ref="R6"  Part="1" 
F 0 "R6" H 4645 4096 50  0000 L CNN
F 1 "1k" H 4645 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4505 4050 50  0001 C CNN
F 3 "~" H 4575 4050 50  0001 C CNN
	1    4575 4050
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5D8D5014
P 4775 3600
AR Path="/5D8D5014" Ref="C?"  Part="1" 
AR Path="/5D0530DE/5D8D5014" Ref="C?"  Part="1" 
AR Path="/5D88AAB3/5D8D5014" Ref="C14"  Part="1" 
F 0 "C14" H 4890 3646 50  0000 L CNN
F 1 "0.1uF" H 4890 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4813 3450 50  0001 C CNN
F 3 "~" H 4775 3600 50  0001 C CNN
	1    4775 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D8D501A
P 4775 3900
AR Path="/5D8D501A" Ref="C?"  Part="1" 
AR Path="/5D0530DE/5D8D501A" Ref="C?"  Part="1" 
AR Path="/5D88AAB3/5D8D501A" Ref="C15"  Part="1" 
F 0 "C15" H 4900 4050 50  0000 L CNN
F 1 "0.1uF" H 4900 3975 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4813 3750 50  0001 C CNN
F 3 "~" H 4775 3900 50  0001 C CNN
	1    4775 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D8D5020
P 4775 4500
AR Path="/5D8D5020" Ref="C?"  Part="1" 
AR Path="/5D0530DE/5D8D5020" Ref="C?"  Part="1" 
AR Path="/5D88AAB3/5D8D5020" Ref="C16"  Part="1" 
F 0 "C16" H 4890 4546 50  0000 L CNN
F 1 "0.1uF" H 4890 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4813 4350 50  0001 C CNN
F 3 "~" H 4775 4500 50  0001 C CNN
	1    4775 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D8D5026
P 4775 3000
AR Path="/5D8D5026" Ref="C?"  Part="1" 
AR Path="/5D0530DE/5D8D5026" Ref="C?"  Part="1" 
AR Path="/5D88AAB3/5D8D5026" Ref="C13"  Part="1" 
F 0 "C13" H 4900 3275 50  0000 L CNN
F 1 "0.1uF" H 4900 3175 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4813 2850 50  0001 C CNN
F 3 "~" H 4775 3000 50  0001 C CNN
	1    4775 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5475 3150 5475 3200
Wire Wire Line
	5475 3200 5625 3200
Connection ~ 5275 3150
Wire Wire Line
	5275 3150 5475 3150
Wire Wire Line
	5625 3400 5475 3400
Wire Wire Line
	5475 3400 5475 3450
Wire Wire Line
	4775 3450 4725 3450
Wire Wire Line
	4725 4050 4775 4050
Wire Wire Line
	5425 4050 5425 4100
Wire Wire Line
	5425 4100 5625 4100
Connection ~ 5275 4050
Wire Wire Line
	5275 4050 5425 4050
Wire Wire Line
	6475 3600 6475 3650
Wire Wire Line
	6725 3650 6475 3650
Connection ~ 6475 3650
Wire Wire Line
	6475 3650 6475 3850
Wire Wire Line
	6225 3300 6325 3300
Wire Wire Line
	6475 4150 6475 4200
Wire Wire Line
	5625 4300 5425 4300
Wire Wire Line
	5425 4300 5425 4350
Wire Wire Line
	5425 4350 5275 4350
Wire Wire Line
	4775 4350 4725 4350
$Comp
L power:GND #PWR?
U 1 1 5D8D5043
P 4775 4650
AR Path="/5D8D5043" Ref="#PWR?"  Part="1" 
AR Path="/5D056FB0/5D8D5043" Ref="#PWR?"  Part="1" 
AR Path="/5D88AAB3/5D8D5043" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 4775 4400 50  0001 C CNN
F 1 "GND" V 4780 4522 50  0000 R CNN
F 2 "" H 4775 4650 50  0001 C CNN
F 3 "" H 4775 4650 50  0001 C CNN
	1    4775 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D8D5049
P 4775 2850
AR Path="/5D8D5049" Ref="#PWR?"  Part="1" 
AR Path="/5D056FB0/5D8D5049" Ref="#PWR?"  Part="1" 
AR Path="/5D88AAB3/5D8D5049" Ref="#PWR0134"  Part="1" 
F 0 "#PWR0134" H 4775 2600 50  0001 C CNN
F 1 "GND" V 4780 2722 50  0000 R CNN
F 2 "" H 4775 2850 50  0001 C CNN
F 3 "" H 4775 2850 50  0001 C CNN
	1    4775 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	5275 2800 5325 2800
Wire Wire Line
	5275 2800 5275 3150
Wire Wire Line
	5625 2800 6325 2800
Wire Wire Line
	6325 2800 6325 3300
Connection ~ 6325 3300
Wire Wire Line
	6325 3300 6475 3300
Wire Wire Line
	5275 4050 5275 3900
Wire Wire Line
	5275 3900 5325 3900
Wire Wire Line
	5625 3900 6275 3900
Wire Wire Line
	6275 3900 6275 4200
Connection ~ 6275 4200
Wire Wire Line
	6275 4200 6225 4200
$Comp
L power:GND #PWR?
U 1 1 5D8D505B
P 4775 3750
AR Path="/5D8D505B" Ref="#PWR?"  Part="1" 
AR Path="/5D056FB0/5D8D505B" Ref="#PWR?"  Part="1" 
AR Path="/5D88AAB3/5D8D505B" Ref="#PWR0135"  Part="1" 
F 0 "#PWR0135" H 4775 3500 50  0001 C CNN
F 1 "GND" V 4780 3622 50  0000 R CNN
F 2 "" H 4775 3750 50  0001 C CNN
F 3 "" H 4775 3750 50  0001 C CNN
	1    4775 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D8D5067
P 5025 3150
AR Path="/5D8D5067" Ref="R?"  Part="1" 
AR Path="/5D0530DE/5D8D5067" Ref="R?"  Part="1" 
AR Path="/5D88AAB3/5D8D5067" Ref="R10"  Part="1" 
F 0 "R10" H 5095 3196 50  0000 L CNN
F 1 "1k" H 5095 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4955 3150 50  0001 C CNN
F 3 "~" H 5025 3150 50  0001 C CNN
	1    5025 3150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D8D506D
P 5025 3450
AR Path="/5D8D506D" Ref="R?"  Part="1" 
AR Path="/5D0530DE/5D8D506D" Ref="R?"  Part="1" 
AR Path="/5D88AAB3/5D8D506D" Ref="R11"  Part="1" 
F 0 "R11" H 5095 3496 50  0000 L CNN
F 1 "1k" H 5095 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4955 3450 50  0001 C CNN
F 3 "~" H 5025 3450 50  0001 C CNN
	1    5025 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D8D5073
P 5000 4050
AR Path="/5D8D5073" Ref="R?"  Part="1" 
AR Path="/5D0530DE/5D8D5073" Ref="R?"  Part="1" 
AR Path="/5D88AAB3/5D8D5073" Ref="R8"  Part="1" 
F 0 "R8" H 5070 4096 50  0000 L CNN
F 1 "1k" H 5070 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4930 4050 50  0001 C CNN
F 3 "~" H 5000 4050 50  0001 C CNN
	1    5000 4050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D8D5079
P 5000 4350
AR Path="/5D8D5079" Ref="R?"  Part="1" 
AR Path="/5D0530DE/5D8D5079" Ref="R?"  Part="1" 
AR Path="/5D88AAB3/5D8D5079" Ref="R9"  Part="1" 
F 0 "R9" H 5070 4396 50  0000 L CNN
F 1 "1k" H 5070 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4930 4350 50  0001 C CNN
F 3 "~" H 5000 4350 50  0001 C CNN
	1    5000 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4725 3150 4775 3150
Wire Wire Line
	4875 3150 4775 3150
Connection ~ 4775 3150
Wire Wire Line
	5175 3150 5275 3150
Wire Wire Line
	5175 3450 5275 3450
Connection ~ 5275 3450
Wire Wire Line
	5275 3450 5475 3450
Wire Wire Line
	4875 3450 4775 3450
Connection ~ 4775 3450
Wire Wire Line
	4775 4050 4850 4050
Wire Wire Line
	5150 4050 5275 4050
Connection ~ 4775 4050
Wire Wire Line
	4775 4350 4850 4350
Wire Wire Line
	5150 4350 5275 4350
Connection ~ 4775 4350
Connection ~ 5275 4350
$Comp
L Device:C Cf?
U 1 1 5D8D508F
P 6700 2850
AR Path="/5D8D508F" Ref="Cf?"  Part="1" 
AR Path="/5D0530DE/5D8D508F" Ref="Cf?"  Part="1" 
AR Path="/5D88AAB3/5D8D508F" Ref="Cf1"  Part="1" 
F 0 "Cf1" H 6815 2896 50  0000 L CNN
F 1 "0.1uF" H 6815 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6738 2700 50  0001 C CNN
F 3 "~" H 6700 2850 50  0001 C CNN
	1    6700 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D8D5096
P 6700 3000
AR Path="/5D8D5096" Ref="#PWR?"  Part="1" 
AR Path="/5D056FB0/5D8D5096" Ref="#PWR?"  Part="1" 
AR Path="/5D88AAB3/5D8D5096" Ref="#PWR0136"  Part="1" 
F 0 "#PWR0136" H 6700 2750 50  0001 C CNN
F 1 "GND" V 6705 2872 50  0000 R CNN
F 2 "" H 6700 3000 50  0001 C CNN
F 3 "" H 6700 3000 50  0001 C CNN
	1    6700 3000
	1    0    0    -1  
$EndComp
Connection ~ 4775 3750
Text HLabel 4425 3150 0    50   Input ~ 0
+A
Text HLabel 4425 3450 0    50   Input ~ 0
-A
Text HLabel 4425 4050 0    50   Input ~ 0
+B
Text HLabel 4425 4350 0    50   Input ~ 0
-B
Text HLabel 7025 3300 2    50   Output ~ 0
ENC_A
$Comp
L Device:R R?
U 1 1 5D8D4FEF
P 6475 3450
AR Path="/5D8D4FEF" Ref="R?"  Part="1" 
AR Path="/5D0530DE/5D8D4FEF" Ref="R?"  Part="1" 
AR Path="/5D88AAB3/5D8D4FEF" Ref="R16"  Part="1" 
F 0 "R16" H 6545 3496 50  0000 L CNN
F 1 "10k" H 6545 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6405 3450 50  0001 C CNN
F 3 "~" H 6475 3450 50  0001 C CNN
	1    6475 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6475 3300 7025 3300
Connection ~ 6475 3300
Text HLabel 7025 4200 2    50   Output ~ 0
ENC_B
Wire Wire Line
	6275 4200 6475 4200
Connection ~ 6475 4200
Wire Wire Line
	6475 4200 7025 4200
Wire Wire Line
	5825 2700 5825 3000
$Comp
L power:+3.3V #PWR0166
U 1 1 5D6B547A
P 6725 3650
F 0 "#PWR0166" H 6725 3500 50  0001 C CNN
F 1 "+3.3V" V 6740 3778 50  0000 L CNN
F 2 "" H 6725 3650 50  0001 C CNN
F 3 "" H 6725 3650 50  0001 C CNN
	1    6725 3650
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0165
U 1 1 5D6B4E63
P 6700 2700
F 0 "#PWR0165" H 6700 2550 50  0001 C CNN
F 1 "+3.3V" H 6715 2873 50  0000 C CNN
F 2 "" H 6700 2700 50  0001 C CNN
F 3 "" H 6700 2700 50  0001 C CNN
	1    6700 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0164
U 1 1 5D6B4377
P 5825 2700
F 0 "#PWR0164" H 5825 2550 50  0001 C CNN
F 1 "+3.3V" H 5840 2873 50  0000 C CNN
F 2 "" H 5825 2700 50  0001 C CNN
F 3 "" H 5825 2700 50  0001 C CNN
	1    5825 2700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
