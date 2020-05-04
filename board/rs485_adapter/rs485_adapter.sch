EESchema Schematic File Version 4
EELAYER 30 0
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
Text HLabel 4450 3825 0    50   Input ~ 0
term_te
Text HLabel 4875 3725 0    50   Input ~ 0
TX_iso
Text HLabel 4875 3425 0    50   Input ~ 0
RX_iso
$Comp
L rs485_adapter-rescue:LTC2855CDEPBF-LTC2855CDEPBF-myo_shield_pcb-rescue-board-rescue U1
U 1 1 5D6E2053
P 4875 3425
AR Path="/5D6E2053" Ref="U1"  Part="1" 
AR Path="/5D6DBCD3/5D6E2053" Ref="U?"  Part="1" 
AR Path="/5DB32DB1/5D6E2053" Ref="U?"  Part="1" 
F 0 "U1" H 5975 3790 50  0000 C CNN
F 1 "LTC2855CDEPBF" H 5975 3699 50  0000 C CNN
F 2 "custom_lib:ltc2855" H 4875 3425 50  0001 L BNN
F 3 "Unavailable" H 4875 3425 50  0001 L BNN
F 4 "Interface IC - transceivers Linear Technology LTC2855CDE#PBF RS422, RS485 1/1 DFN 12" H 4875 3425 50  0001 L BNN "Field4"
F 5 "Linear Technology" H 4875 3425 50  0001 L BNN "Field5"
F 6 "DFN-12 Linear Technology" H 4875 3425 50  0001 L BNN "Field6"
F 7 "None" H 4875 3425 50  0001 L BNN "Field7"
F 8 "LTC2855CDE#PBF" H 4875 3425 50  0001 L BNN "Field8"
	1    4875 3425
	1    0    0    -1  
$EndComp
Text HLabel 7075 3625 2    50   Input ~ 0
h_Rx
Text HLabel 7075 3725 2    50   Input ~ 0
l_Rx
Text HLabel 7075 3825 2    50   Input ~ 0
h_Tx
Text HLabel 7075 3925 2    50   Input ~ 0
l_Tx
$Comp
L Device:C C1
U 1 1 5D8A1EC5
P 3250 3525
F 0 "C1" H 3365 3571 50  0000 L CNN
F 1 "0.1uF" H 3365 3480 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3288 3375 50  0001 C CNN
F 3 "~" H 3250 3525 50  0001 C CNN
	1    3250 3525
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5D709E67
P 3900 3600
F 0 "C2" H 4015 3646 50  0000 L CNN
F 1 "0.1uF" H 4015 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3938 3450 50  0001 C CNN
F 3 "~" H 3900 3600 50  0001 C CNN
	1    3900 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5D8BB51C
P 3250 3675
F 0 "#PWR0101" H 3250 3425 50  0001 C CNN
F 1 "GND" H 3255 3502 50  0000 C CNN
F 2 "" H 3250 3675 50  0001 C CNN
F 3 "" H 3250 3675 50  0001 C CNN
	1    3250 3675
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5D8BB746
P 3900 3750
F 0 "#PWR0102" H 3900 3500 50  0001 C CNN
F 1 "GND" H 3905 3577 50  0000 C CNN
F 2 "" H 3900 3750 50  0001 C CNN
F 3 "" H 3900 3750 50  0001 C CNN
	1    3900 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5D8BB7E8
P 4875 3925
F 0 "#PWR0103" H 4875 3675 50  0001 C CNN
F 1 "GND" H 4880 3752 50  0000 C CNN
F 2 "" H 4875 3925 50  0001 C CNN
F 3 "" H 4875 3925 50  0001 C CNN
	1    4875 3925
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5D8BC703
P 4875 3525
F 0 "#PWR0104" H 4875 3275 50  0001 C CNN
F 1 "GND" V 4880 3397 50  0000 R CNN
F 2 "" H 4875 3525 50  0001 C CNN
F 3 "" H 4875 3525 50  0001 C CNN
	1    4875 3525
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5D8BCF9A
P 7075 3425
F 0 "#PWR0105" H 7075 3175 50  0001 C CNN
F 1 "GND" V 7080 3297 50  0000 R CNN
F 2 "" H 7075 3425 50  0001 C CNN
F 3 "" H 7075 3425 50  0001 C CNN
	1    7075 3425
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0106
U 1 1 5D8BD738
P 3250 3375
F 0 "#PWR0106" H 3250 3225 50  0001 C CNN
F 1 "+3.3V" H 3265 3548 50  0000 C CNN
F 2 "" H 3250 3375 50  0001 C CNN
F 3 "" H 3250 3375 50  0001 C CNN
	1    3250 3375
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0107
U 1 1 5D8BDB3A
P 3900 3450
F 0 "#PWR0107" H 3900 3300 50  0001 C CNN
F 1 "+3.3V" H 3915 3623 50  0000 C CNN
F 2 "" H 3900 3450 50  0001 C CNN
F 3 "" H 3900 3450 50  0001 C CNN
	1    3900 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0108
U 1 1 5D8BE722
P 7075 3525
F 0 "#PWR0108" H 7075 3375 50  0001 C CNN
F 1 "+3.3V" V 7090 3653 50  0000 L CNN
F 2 "" H 7075 3525 50  0001 C CNN
F 3 "" H 7075 3525 50  0001 C CNN
	1    7075 3525
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5DB7CCD3
P 4500 4125
F 0 "R1" H 4570 4171 50  0000 L CNN
F 1 "10k" H 4570 4080 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4430 4125 50  0001 C CNN
F 3 "~" H 4500 4125 50  0001 C CNN
	1    4500 4125
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0109
U 1 1 5DB7D197
P 4500 4275
F 0 "#PWR0109" H 4500 4125 50  0001 C CNN
F 1 "+3.3V" H 4515 4448 50  0000 C CNN
F 2 "" H 4500 4275 50  0001 C CNN
F 3 "" H 4500 4275 50  0001 C CNN
	1    4500 4275
	-1   0    0    1   
$EndComp
Wire Wire Line
	4450 3825 4500 3825
Wire Wire Line
	4500 3975 4500 3825
Connection ~ 4500 3825
Wire Wire Line
	4500 3825 4875 3825
Wire Notes Line
	4075 3775 4750 3775
Wire Notes Line
	4750 3775 4750 4550
Wire Notes Line
	4750 4550 4075 4550
Wire Notes Line
	4075 4550 4075 3775
Text Notes 4075 4725 0    50   ~ 0
PULL-UP enables \ntermination resistor
$Comp
L Device:RF_Shield_Two_Pieces J1
U 1 1 5DC170DD
P 6000 5050
F 0 "J1" H 6730 5116 50  0000 L CNN
F 1 "RF_Shield_Two_Pieces" H 6730 5025 50  0000 L CNN
F 2 "RF_Shielding:Laird_Technologies_BMI-S-201-F_13.66x12.70mm" H 6000 4950 50  0001 C CNN
F 3 "~" H 6000 4950 50  0001 C CNN
	1    6000 5050
	1    0    0    -1  
$EndComp
Text GLabel 6000 5450 3    50   Input ~ 0
SHIELD
Text HLabel 4875 3625 0    50   Input ~ 0
DE
$Comp
L Connector:Conn_01x06_Female J3
U 1 1 5E564B5C
P 8525 3700
F 0 "J3" H 8552 3676 50  0000 L CNN
F 1 "diff_uart" H 8552 3585 50  0000 L CNN
F 2 "custom_lib:TE-Connectivity_Micro-Match_connector_02x03_Pitch_1.27mm" H 8525 3700 50  0001 C CNN
F 3 "~" H 8525 3700 50  0001 C CNN
	1    8525 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8325 4000 8325 3900
$Comp
L power:GND #PWR0111
U 1 1 5E564EDC
P 8300 4300
F 0 "#PWR0111" H 8300 4050 50  0001 C CNN
F 1 "GND" V 8305 4172 50  0000 R CNN
F 2 "" H 8300 4300 50  0001 C CNN
F 3 "" H 8300 4300 50  0001 C CNN
	1    8300 4300
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0112
U 1 1 5E564EF5
P 8300 4400
F 0 "#PWR0112" H 8300 4250 50  0001 C CNN
F 1 "+3.3V" V 8315 4528 50  0000 L CNN
F 2 "" H 8300 4400 50  0001 C CNN
F 3 "" H 8300 4400 50  0001 C CNN
	1    8300 4400
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x06_Female J2
U 1 1 5E564F23
P 8500 4500
F 0 "J2" H 8527 4476 50  0000 L CNN
F 1 "uart" H 8527 4385 50  0000 L CNN
F 2 "custom_lib:TE-Connectivity_Micro-Match_connector_02x03_Pitch_1.27mm" H 8500 4500 50  0001 C CNN
F 3 "~" H 8500 4500 50  0001 C CNN
	1    8500 4500
	1    0    0    -1  
$EndComp
Text HLabel 8300 4700 0    50   Input ~ 0
TX_iso
Text HLabel 8300 4500 0    50   Input ~ 0
RX_iso
Text HLabel 8300 4600 0    50   Input ~ 0
DE
NoConn ~ 8300 4800
$Comp
L Device:LED D1
U 1 1 5E565295
P 8200 5350
F 0 "D1" H 8192 5095 50  0000 C CNN
F 1 "LED" H 8225 5225 50  0000 C CNN
F 2 "LED_SMD:LED_0402_1005Metric" H 8200 5350 50  0001 C CNN
F 3 "~" H 8200 5350 50  0001 C CNN
	1    8200 5350
	-1   0    0    1   
$EndComp
Text HLabel 8050 5350 0    50   Input ~ 0
TX_iso
$Comp
L Device:R R2
U 1 1 5E565531
P 8500 5350
F 0 "R2" V 8293 5350 50  0000 C CNN
F 1 "1k" V 8384 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8430 5350 50  0001 C CNN
F 3 "~" H 8500 5350 50  0001 C CNN
	1    8500 5350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5E5655AA
P 8650 5350
F 0 "#PWR0113" H 8650 5100 50  0001 C CNN
F 1 "GND" H 8655 5177 50  0000 C CNN
F 2 "" H 8650 5350 50  0001 C CNN
F 3 "" H 8650 5350 50  0001 C CNN
	1    8650 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5E56566B
P 8200 5725
F 0 "D2" H 8192 5470 50  0000 C CNN
F 1 "LED" H 8225 5600 50  0000 C CNN
F 2 "LED_SMD:LED_0402_1005Metric" H 8200 5725 50  0001 C CNN
F 3 "~" H 8200 5725 50  0001 C CNN
	1    8200 5725
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5E565672
P 8500 5725
F 0 "R3" V 8293 5725 50  0000 C CNN
F 1 "1k" V 8384 5725 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8430 5725 50  0001 C CNN
F 3 "~" H 8500 5725 50  0001 C CNN
	1    8500 5725
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5E565678
P 8650 5725
F 0 "#PWR0114" H 8650 5475 50  0001 C CNN
F 1 "GND" H 8655 5552 50  0000 C CNN
F 2 "" H 8650 5725 50  0001 C CNN
F 3 "" H 8650 5725 50  0001 C CNN
	1    8650 5725
	0    -1   -1   0   
$EndComp
Text HLabel 8050 5725 0    50   Input ~ 0
RX_iso
Text HLabel 9825 5075 0    50   Input ~ 0
term_te
$Comp
L power:GND #PWR0115
U 1 1 5E565D4B
P 10125 5075
F 0 "#PWR0115" H 10125 4825 50  0001 C CNN
F 1 "GND" H 10130 4902 50  0000 C CNN
F 2 "" H 10125 5075 50  0001 C CNN
F 3 "" H 10125 5075 50  0001 C CNN
	1    10125 5075
	0    -1   -1   0   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5E565F9A
P 9975 5075
F 0 "JP1" H 9975 5280 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 9975 5189 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 9975 5075 50  0001 C CNN
F 3 "~" H 9975 5075 50  0001 C CNN
	1    9975 5075
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5E56643B
P 9425 4175
F 0 "H2" H 9525 4226 50  0000 L CNN
F 1 "MountingHole_Pad" H 9525 4135 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad" H 9425 4175 50  0001 C CNN
F 3 "~" H 9425 4175 50  0001 C CNN
	1    9425 4175
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5E5664AB
P 9425 3675
F 0 "H1" H 9525 3726 50  0000 L CNN
F 1 "MountingHole_Pad" H 9525 3635 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad" H 9425 3675 50  0001 C CNN
F 3 "~" H 9425 3675 50  0001 C CNN
	1    9425 3675
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5E566567
P 9425 3775
F 0 "#PWR0116" H 9425 3525 50  0001 C CNN
F 1 "GND" H 9430 3602 50  0000 C CNN
F 2 "" H 9425 3775 50  0001 C CNN
F 3 "" H 9425 3775 50  0001 C CNN
	1    9425 3775
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5E56659C
P 9425 4275
F 0 "#PWR0117" H 9425 4025 50  0001 C CNN
F 1 "GND" H 9430 4102 50  0000 C CNN
F 2 "" H 9425 4275 50  0001 C CNN
F 3 "" H 9425 4275 50  0001 C CNN
	1    9425 4275
	1    0    0    -1  
$EndComp
Text GLabel 8325 3900 0    50   Input ~ 0
SHIELD
$Comp
L Mechanical:MountingHole H3
U 1 1 5E567797
P 9400 2375
F 0 "H3" H 9500 2421 50  0000 L CNN
F 1 "ears" H 9500 2330 50  0000 L CNN
F 2 "custom_lib:R1_ear_silk_5.5mm" H 9400 2375 50  0001 C CNN
F 3 "~" H 9400 2375 50  0001 C CNN
	1    9400 2375
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5E5677FE
P 9400 2550
F 0 "H4" H 9500 2596 50  0000 L CNN
F 1 "eyes" H 9500 2505 50  0000 L CNN
F 2 "custom_lib:R1_eyes_mask_5.5mm" H 9400 2550 50  0001 C CNN
F 3 "~" H 9400 2550 50  0001 C CNN
	1    9400 2550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H5
U 1 1 5E56784C
P 9400 2725
F 0 "H5" H 9500 2771 50  0000 L CNN
F 1 "face" H 9500 2680 50  0000 L CNN
F 2 "custom_lib:R1_face_mask_5.5mm" H 9400 2725 50  0001 C CNN
F 3 "~" H 9400 2725 50  0001 C CNN
	1    9400 2725
	1    0    0    -1  
$EndComp
Text HLabel 8325 3800 0    50   Input ~ 0
l_Rx
Text HLabel 8325 3700 0    50   Input ~ 0
h_Rx
Text HLabel 8325 3600 0    50   Input ~ 0
l_Tx
Text HLabel 8325 3500 0    50   Input ~ 0
h_Tx
$EndSCHEMATC
