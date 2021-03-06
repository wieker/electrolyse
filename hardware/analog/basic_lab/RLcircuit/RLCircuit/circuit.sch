EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 2700 3300 0    50   Input ~ 0
RLctl
$Comp
L Transistor_FET:2N7002K Q1
U 1 1 5F13B223
P 3350 3300
F 0 "Q1" H 3554 3346 50  0000 L CNN
F 1 "2N7002K" H 3554 3255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3550 3225 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/ds30896.pdf" H 3350 3300 50  0001 L CNN
	1    3350 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 3300 3150 3300
$Comp
L Device:L L1
U 1 1 5F13F643
P 4600 4450
F 0 "L1" H 4653 4496 50  0000 L CNN
F 1 "L" H 4653 4405 50  0000 L CNN
F 2 "Inductor_THT:L_Axial_L12.0mm_D5.0mm_P5.08mm_Vertical_Fastron_MISC" H 4600 4450 50  0001 C CNN
F 3 "~" H 4600 4450 50  0001 C CNN
	1    4600 4450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR01
U 1 1 5F140B9B
P 3450 2750
F 0 "#PWR01" H 3450 2600 50  0001 C CNN
F 1 "+3V3" H 3465 2923 50  0000 C CNN
F 2 "" H 3450 2750 50  0001 C CNN
F 3 "" H 3450 2750 50  0001 C CNN
	1    3450 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2750 3450 3100
Wire Wire Line
	3450 3500 3450 4050
Wire Wire Line
	4600 4050 4600 4300
Wire Wire Line
	4600 4050 4950 4050
Wire Wire Line
	5550 4050 6350 4050
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 5F150BE5
P 1950 5550
F 0 "J1" H 2058 5831 50  0000 C CNN
F 1 "Conn_01x04_Male" H 2058 5740 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1950 5550 50  0001 C CNN
F 3 "~" H 1950 5550 50  0001 C CNN
	1    1950 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5F152164
P 2650 6350
F 0 "#PWR05" H 2650 6100 50  0001 C CNN
F 1 "GND" H 2655 6177 50  0000 C CNN
F 2 "" H 2650 6350 50  0001 C CNN
F 3 "" H 2650 6350 50  0001 C CNN
	1    2650 6350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR04
U 1 1 5F153210
P 2650 4700
F 0 "#PWR04" H 2650 4550 50  0001 C CNN
F 1 "+3V3" H 2665 4873 50  0000 C CNN
F 2 "" H 2650 4700 50  0001 C CNN
F 3 "" H 2650 4700 50  0001 C CNN
	1    2650 4700
	1    0    0    -1  
$EndComp
Text GLabel 2150 5650 2    50   Input ~ 0
RLsense
Text GLabel 2150 5550 2    50   Input ~ 0
RLctl
Wire Wire Line
	2150 5450 2650 5450
Wire Wire Line
	2650 4700 2650 5150
Wire Wire Line
	2150 5750 2650 5750
Wire Wire Line
	2650 5750 2650 6350
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5F155822
P 3000 6250
F 0 "#FLG02" H 3000 6325 50  0001 C CNN
F 1 "PWR_FLAG" H 3000 6423 50  0000 C CNN
F 2 "" H 3000 6250 50  0001 C CNN
F 3 "~" H 3000 6250 50  0001 C CNN
	1    3000 6250
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5F155BBF
P 2950 4950
F 0 "#FLG01" H 2950 5025 50  0001 C CNN
F 1 "PWR_FLAG" H 2950 5123 50  0000 C CNN
F 2 "" H 2950 4950 50  0001 C CNN
F 3 "~" H 2950 4950 50  0001 C CNN
	1    2950 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 5150 2950 5150
Wire Wire Line
	2950 5150 2950 4950
Connection ~ 2650 5150
Wire Wire Line
	2650 5150 2650 5450
Wire Wire Line
	2650 6350 3000 6350
Wire Wire Line
	3000 6350 3000 6250
Connection ~ 2650 6350
$Comp
L Device:D D1
U 1 1 5F8383AE
P 6350 4950
F 0 "D1" V 6304 5030 50  0000 L CNN
F 1 "CDBU0520" V 6395 5030 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 6350 4950 50  0001 C CNN
F 3 "~" H 6350 4950 50  0001 C CNN
	1    6350 4950
	0    1    1    0   
$EndComp
Connection ~ 4600 4050
Wire Wire Line
	3450 4050 4600 4050
Wire Wire Line
	6350 4050 6350 4800
Text GLabel 8550 4750 2    50   Input ~ 0
bias
$Comp
L power:GND #PWR07
U 1 1 5F841CE5
P 7400 5400
F 0 "#PWR07" H 7400 5150 50  0001 C CNN
F 1 "GND" H 7405 5227 50  0000 C CNN
F 2 "" H 7400 5400 50  0001 C CNN
F 3 "" H 7400 5400 50  0001 C CNN
	1    7400 5400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR06
U 1 1 5F843572
P 7400 4250
F 0 "#PWR06" H 7400 4100 50  0001 C CNN
F 1 "+3V3" H 7415 4423 50  0000 C CNN
F 2 "" H 7400 4250 50  0001 C CNN
F 3 "" H 7400 4250 50  0001 C CNN
	1    7400 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5F8443D2
P 7400 4450
F 0 "R1" H 7470 4496 50  0000 L CNN
F 1 "1000 Ohm" H 7470 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7330 4450 50  0001 C CNN
F 3 "~" H 7400 4450 50  0001 C CNN
	1    7400 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F844541
P 7400 5000
F 0 "R2" H 7470 5046 50  0000 L CNN
F 1 "1000 Ohm" H 7470 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7330 5000 50  0001 C CNN
F 3 "~" H 7400 5000 50  0001 C CNN
	1    7400 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 4250 7400 4300
Wire Wire Line
	7400 4600 7400 4750
Wire Wire Line
	7400 4750 7400 4850
Connection ~ 7400 4750
Wire Wire Line
	7400 5150 7400 5400
Text GLabel 4950 4050 2    50   Input ~ 0
bias
Text GLabel 5550 4050 0    50   Input ~ 0
bias
$Comp
L power:GND #PWR02
U 1 1 5F84A30C
P 4600 5350
F 0 "#PWR02" H 4600 5100 50  0001 C CNN
F 1 "GND" H 4605 5177 50  0000 C CNN
F 2 "" H 4600 5350 50  0001 C CNN
F 3 "" H 4600 5350 50  0001 C CNN
	1    4600 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5F84AF0C
P 6350 5350
F 0 "#PWR03" H 6350 5100 50  0001 C CNN
F 1 "GND" H 6355 5177 50  0000 C CNN
F 2 "" H 6350 5350 50  0001 C CNN
F 3 "" H 6350 5350 50  0001 C CNN
	1    6350 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 5100 6350 5350
$Comp
L Device:R R3
U 1 1 5F84FA5A
P 8100 4750
F 0 "R3" V 7893 4750 50  0000 C CNN
F 1 "1000 Ohm" V 7984 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8030 4750 50  0001 C CNN
F 3 "~" H 8100 4750 50  0001 C CNN
	1    8100 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 4750 8250 4750
Wire Wire Line
	7400 4750 7950 4750
Wire Wire Line
	4600 4600 4600 5350
Text GLabel 7400 4750 0    50   Input ~ 0
RLsense
$EndSCHEMATC
