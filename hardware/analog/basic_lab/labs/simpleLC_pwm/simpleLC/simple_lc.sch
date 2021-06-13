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
Text GLabel 2250 3000 0    50   Input ~ 0
din
$Comp
L power:+3.3V #PWR0101
U 1 1 60C11C18
P 1450 1750
F 0 "#PWR0101" H 1450 1600 50  0001 C CNN
F 1 "+3.3V" H 1465 1923 50  0000 C CNN
F 2 "" H 1450 1750 50  0001 C CNN
F 3 "" H 1450 1750 50  0001 C CNN
	1    1450 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 60C11E84
P 3250 3750
F 0 "#PWR0102" H 3250 3500 50  0001 C CNN
F 1 "GND" H 3255 3577 50  0000 C CNN
F 2 "" H 3250 3750 50  0001 C CNN
F 3 "" H 3250 3750 50  0001 C CNN
	1    3250 3750
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:FQP27P06 Q1
U 1 1 60C127AE
P 3150 3000
F 0 "Q1" H 3354 3046 50  0000 L CNN
F 1 "FQP27P06" H 3354 2955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 3350 2925 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/FQP27P06-D.PDF" H 3150 3000 50  0001 L CNN
	1    3150 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3200 3250 3300
Wire Wire Line
	2250 3000 2950 3000
Wire Wire Line
	3250 3600 3250 3750
$Comp
L Device:C C1
U 1 1 60C143B1
P 1450 2500
F 0 "C1" H 1565 2546 50  0000 L CNN
F 1 "C" H 1565 2455 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 1488 2350 50  0001 C CNN
F 3 "~" H 1450 2500 50  0001 C CNN
	1    1450 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 60C14856
P 1450 2850
F 0 "#PWR0104" H 1450 2600 50  0001 C CNN
F 1 "GND" H 1455 2677 50  0000 C CNN
F 2 "" H 1450 2850 50  0001 C CNN
F 3 "" H 1450 2850 50  0001 C CNN
	1    1450 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2650 1450 2850
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 60C2805B
P 9150 1750
F 0 "J1" H 9258 2031 50  0000 C CNN
F 1 "Conn_01x04_Male" H 9258 1940 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9150 1750 50  0001 C CNN
F 3 "~" H 9150 1750 50  0001 C CNN
	1    9150 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 60C299AE
P 10000 1250
F 0 "#PWR01" H 10000 1100 50  0001 C CNN
F 1 "+3.3V" H 10015 1423 50  0000 C CNN
F 2 "" H 10000 1250 50  0001 C CNN
F 3 "" H 10000 1250 50  0001 C CNN
	1    10000 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 60C29F5D
P 10000 2150
F 0 "#PWR02" H 10000 1900 50  0001 C CNN
F 1 "GND" H 10005 1977 50  0000 C CNN
F 2 "" H 10000 2150 50  0001 C CNN
F 3 "" H 10000 2150 50  0001 C CNN
	1    10000 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1950 10000 1950
Wire Wire Line
	10000 1950 10000 2100
Wire Wire Line
	9350 1650 10000 1650
Wire Wire Line
	10000 1650 10000 1450
Text GLabel 9350 1750 2    50   Input ~ 0
din
$Comp
L power:PWR_FLAG #FLG02
U 1 1 60C2D8D0
P 10400 1450
F 0 "#FLG02" H 10400 1525 50  0001 C CNN
F 1 "PWR_FLAG" H 10400 1623 50  0000 C CNN
F 2 "" H 10400 1450 50  0001 C CNN
F 3 "~" H 10400 1450 50  0001 C CNN
	1    10400 1450
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 60C2DCB0
P 10350 2100
F 0 "#FLG01" H 10350 2175 50  0001 C CNN
F 1 "PWR_FLAG" H 10350 2273 50  0000 C CNN
F 2 "" H 10350 2100 50  0001 C CNN
F 3 "~" H 10350 2100 50  0001 C CNN
	1    10350 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 2100 10350 2100
Connection ~ 10000 2100
Wire Wire Line
	10000 2100 10000 2150
Wire Wire Line
	10000 1450 10400 1450
Connection ~ 10000 1450
Wire Wire Line
	10000 1450 10000 1250
$Comp
L Device:R R2
U 1 1 60C12C69
P 3250 3450
F 0 "R2" H 3320 3496 50  0000 L CNN
F 1 "R" H 3320 3405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3180 3450 50  0001 C CNN
F 3 "~" H 3250 3450 50  0001 C CNN
	1    3250 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2650 3250 2750
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 60CA5023
P 6350 2650
F 0 "J2" H 6322 2532 50  0000 R CNN
F 1 "Conn_01x02_Male" H 6322 2623 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6350 2650 50  0001 C CNN
F 3 "~" H 6350 2650 50  0001 C CNN
	1    6350 2650
	-1   0    0    1   
$EndComp
NoConn ~ 9350 1850
Wire Wire Line
	3250 2550 6150 2550
Wire Wire Line
	3250 2650 6150 2650
Wire Wire Line
	1450 2050 2700 2050
Wire Wire Line
	3250 2050 3250 2550
Wire Wire Line
	1450 1750 1450 2050
Wire Wire Line
	1450 2050 1450 2350
Connection ~ 1450 2050
$Comp
L Device:D D1
U 1 1 60CD387A
P 2700 2600
F 0 "D1" V 2654 2680 50  0000 L CNN
F 1 "D" V 2745 2680 50  0000 L CNN
F 2 "Diode_THT:D_DO-15_P10.16mm_Horizontal" H 2700 2600 50  0001 C CNN
F 3 "~" H 2700 2600 50  0001 C CNN
	1    2700 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 2450 2700 2050
Connection ~ 2700 2050
Wire Wire Line
	2700 2050 3250 2050
Wire Wire Line
	2700 2750 3250 2750
Connection ~ 3250 2750
Wire Wire Line
	3250 2750 3250 2800
$EndSCHEMATC
