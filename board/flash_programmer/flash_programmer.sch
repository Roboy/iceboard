EESchema Schematic File Version 4
LIBS:flash_programmer-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Connector:Conn_01x06_Female J1
U 1 1 5E297B02
P 4975 2825
F 0 "J1" H 5002 2801 50  0000 L CNN
F 1 "Conn_01x06_Female" H 5002 2710 50  0000 L CNN
F 2 "custom_lib:TE-Connectivity_Micro-Match_connector_02x03_Pitch_1.27mm" H 4975 2825 50  0001 C CNN
F 3 "~" H 4975 2825 50  0001 C CNN
	1    4975 2825
	1    0    0    -1  
$EndComp
Text Label 4775 2625 2    50   ~ 0
SCK
Text Label 4775 2725 2    50   ~ 0
SDO
Text Label 4775 2825 2    50   ~ 0
SS
Text Label 4775 2925 2    50   ~ 0
SDI
$Comp
L power:GND #PWR0101
U 1 1 5E297B89
P 4675 3025
F 0 "#PWR0101" H 4675 2775 50  0001 C CNN
F 1 "GND" V 4680 2897 50  0000 R CNN
F 2 "" H 4675 3025 50  0001 C CNN
F 3 "" H 4675 3025 50  0001 C CNN
	1    4675 3025
	0    1    1    0   
$EndComp
Wire Wire Line
	4675 3025 4750 3025
Wire Wire Line
	4750 3025 4750 3125
Wire Wire Line
	4750 3125 4775 3125
Connection ~ 4750 3025
Wire Wire Line
	4750 3025 4775 3025
$Comp
L Connector:Conn_01x06_Female J2
U 1 1 5E297BF8
P 6600 2775
F 0 "J2" H 6627 2751 50  0000 L CNN
F 1 "Conn_01x06_Female" H 6627 2660 50  0000 L CNN
F 2 "custom_lib:TE-Connectivity_Micro-Match_connector_02x03_Pitch_1.27mm" H 6600 2775 50  0001 C CNN
F 3 "~" H 6600 2775 50  0001 C CNN
	1    6600 2775
	1    0    0    -1  
$EndComp
Text Label 6400 2575 2    50   ~ 0
SCK
Text Label 6400 2675 2    50   ~ 0
SDO
Text Label 6400 2775 2    50   ~ 0
SS
Text Label 6400 2875 2    50   ~ 0
SDI
$Comp
L power:GND #PWR0102
U 1 1 5E297C02
P 6300 2975
F 0 "#PWR0102" H 6300 2725 50  0001 C CNN
F 1 "GND" V 6305 2847 50  0000 R CNN
F 2 "" H 6300 2975 50  0001 C CNN
F 3 "" H 6300 2975 50  0001 C CNN
	1    6300 2975
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 2975 6375 2975
Wire Wire Line
	6375 2975 6375 3075
Wire Wire Line
	6375 3075 6400 3075
Connection ~ 6375 2975
Wire Wire Line
	6375 2975 6400 2975
$EndSCHEMATC
