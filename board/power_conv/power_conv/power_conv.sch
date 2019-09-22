EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
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
L custom:Wago_SMD_2 J?
U 1 1 5D5C2B04
P 1400 1350
F 0 "J?" H 1483 1737 60  0000 C CNN
F 1 "Wago_SMD_2" H 1483 1631 60  0000 C CNN
F 2 "" H 1300 1400 60  0001 C CNN
F 3 "" H 1300 1400 60  0001 C CNN
	1    1400 1350
	1    0    0    -1  
$EndComp
$Sheet
S 2400 2150 1150 550 
U 5D5C367D
F0 "LowPowerConv" 50
F1 "LowPowerConv.sch" 50
F2 "+HV_IN" I L 2400 2200 50 
F3 "-HV_IN" I L 2400 2300 50 
$EndSheet
$Sheet
S 2400 1400 1150 500 
U 5D5C33F2
F0 "HighPowerConv" 50
F1 "HighPowerConv.sch" 50
F2 "-HV_IN" I L 2400 1550 50 
F3 "+HV_IN" I L 2400 1450 50 
F4 "+HV_out" I L 2400 1650 50 
F5 "-HV_out" I L 2400 1750 50 
$EndSheet
$Comp
L custom:Wago_SMD_2 J?
U 1 1 5D5C561C
P 1400 1750
F 0 "J?" H 1483 2137 60  0000 C CNN
F 1 "Wago_SMD_2" H 1483 2031 60  0000 C CNN
F 2 "" H 1300 1800 60  0001 C CNN
F 3 "" H 1300 1800 60  0001 C CNN
	1    1400 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1250 2100 1250
Wire Wire Line
	2100 1250 2100 1450
Wire Wire Line
	2100 1450 2400 1450
Wire Wire Line
	1950 1450 1950 1550
Wire Wire Line
	1950 1550 2400 1550
Wire Wire Line
	2400 1750 2250 1750
Wire Wire Line
	2250 1750 2250 1650
Wire Wire Line
	2250 1650 1850 1650
Wire Wire Line
	2400 1650 2350 1650
Wire Wire Line
	2350 1650 2350 1850
Wire Wire Line
	2350 1850 1850 1850
Wire Wire Line
	1850 1450 1950 1450
Text Notes 3300 2500 0    50   ~ 0
3.3V\n1.2V\n
Text Notes 3300 1700 0    50   ~ 0
36V\n
Wire Wire Line
	2100 1450 2100 2200
Wire Wire Line
	2100 2200 2400 2200
Connection ~ 2100 1450
Wire Wire Line
	1950 1550 1950 2300
Wire Wire Line
	1950 2300 2400 2300
Connection ~ 1950 1550
$Sheet
S 6100 1500 1350 1000
U 5D5C720E
F0 "FPGA" 50
F1 "FPGA.sch" 50
$EndSheet
$Sheet
S 8500 1500 1300 1000
U 5D5C75D1
F0 "Bridge" 50
F1 "Bridge.sch" 50
$EndSheet
$EndSCHEMATC
