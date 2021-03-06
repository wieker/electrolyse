EESchema Schematic File Version 4
EELAYER 30 0
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
L FPGA_Lattice:ICE40UP5K-SG48ITR U?
U 2 1 60A744FE
P 3950 3200
AR Path="/60A6AAC2/60A744FE" Ref="U?"  Part="2" 
AR Path="/60A6AB5A/60A744FE" Ref="U1"  Part="2" 
AR Path="/60B20054/60A744FE" Ref="U1"  Part="2" 
F 0 "U1" H 3950 2125 50  0000 C CNN
F 1 "ICE40UP5K-SG48ITR" H 3950 2034 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-48-1EP_7x7mm_P0.5mm_EP5.6x5.6mm" H 3950 1850 50  0001 C CNN
F 3 "http://www.latticesemi.com/Products/FPGAandCPLD/iCE40Ultra" H 3550 4200 50  0001 C CNN
	2    3950 3200
	1    0    0    -1  
$EndComp
$Comp
L Memory_Flash:AT25SF081-SSHD-X U4
U 1 1 60A76A2C
P 7200 3150
F 0 "U4" H 7844 3196 50  0000 L CNN
F 1 "AT25SF081-SSHD-X" H 7844 3105 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7200 2550 50  0001 C CNN
F 3 "https://www.adestotech.com/wp-content/uploads/DS-AT25SF081_045.pdf" H 7200 3150 50  0001 C CNN
	1    7200 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR030
U 1 1 60AA3929
P 10100 1250
F 0 "#PWR030" H 10100 1100 50  0001 C CNN
F 1 "+3V3" H 10115 1423 50  0000 C CNN
F 2 "" H 10100 1250 50  0001 C CNN
F 3 "" H 10100 1250 50  0001 C CNN
	1    10100 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR025
U 1 1 60AA3C40
P 1300 1450
F 0 "#PWR025" H 1300 1300 50  0001 C CNN
F 1 "+3V3" H 1315 1623 50  0000 C CNN
F 2 "" H 1300 1450 50  0001 C CNN
F 3 "" H 1300 1450 50  0001 C CNN
	1    1300 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR032
U 1 1 60AA3F29
P 10150 4200
F 0 "#PWR032" H 10150 4050 50  0001 C CNN
F 1 "+3V3" H 10165 4373 50  0000 C CNN
F 2 "" H 10150 4200 50  0001 C CNN
F 3 "" H 10150 4200 50  0001 C CNN
	1    10150 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 60AA4975
P 10100 1500
F 0 "C11" H 10215 1546 50  0000 L CNN
F 1 "0.1uF" H 10215 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10138 1350 50  0001 C CNN
F 3 "~" H 10100 1500 50  0001 C CNN
	1    10100 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 60AA4D1D
P 10100 1850
F 0 "#PWR031" H 10100 1600 50  0001 C CNN
F 1 "GND" H 10105 1677 50  0000 C CNN
F 2 "" H 10100 1850 50  0001 C CNN
F 3 "" H 10100 1850 50  0001 C CNN
	1    10100 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 60AA5675
P 1300 1750
F 0 "C10" H 1415 1796 50  0000 L CNN
F 1 "0.1uF" H 1415 1705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1338 1600 50  0001 C CNN
F 3 "~" H 1300 1750 50  0001 C CNN
	1    1300 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 60AA595C
P 1300 2150
F 0 "#PWR026" H 1300 1900 50  0001 C CNN
F 1 "GND" H 1305 1977 50  0000 C CNN
F 2 "" H 1300 2150 50  0001 C CNN
F 3 "" H 1300 2150 50  0001 C CNN
	1    1300 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1450 1300 1600
Wire Wire Line
	1300 1900 1300 2150
Wire Wire Line
	10100 1250 10100 1350
Wire Wire Line
	10100 1650 10100 1850
$Comp
L power:+3V3 #PWR028
U 1 1 60AA701E
P 7200 2350
F 0 "#PWR028" H 7200 2200 50  0001 C CNN
F 1 "+3V3" H 7215 2523 50  0000 C CNN
F 2 "" H 7200 2350 50  0001 C CNN
F 3 "" H 7200 2350 50  0001 C CNN
	1    7200 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 2350 7200 2650
$Comp
L power:GND #PWR029
U 1 1 60AA79DE
P 7200 4000
F 0 "#PWR029" H 7200 3750 50  0001 C CNN
F 1 "GND" H 7205 3827 50  0000 C CNN
F 2 "" H 7200 4000 50  0001 C CNN
F 3 "" H 7200 4000 50  0001 C CNN
	1    7200 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3650 7200 4000
$Comp
L Device:R R5
U 1 1 60AA881F
P 9750 4450
F 0 "R5" V 9543 4450 50  0000 C CNN
F 1 "100kOhm" V 9634 4450 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9680 4450 50  0001 C CNN
F 3 "~" H 9750 4450 50  0001 C CNN
	1    9750 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 60AA8F76
P 9750 4600
F 0 "R6" V 9543 4600 50  0000 C CNN
F 1 "100kOhm" V 9634 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9680 4600 50  0001 C CNN
F 3 "~" H 9750 4600 50  0001 C CNN
	1    9750 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	9900 5200 10150 5200
Wire Wire Line
	10150 5200 10150 5050
Wire Wire Line
	9900 5050 10150 5050
Connection ~ 10150 5050
Wire Wire Line
	10150 5050 10150 4900
Wire Wire Line
	9900 4900 10150 4900
Connection ~ 10150 4900
Wire Wire Line
	10150 4900 10150 4750
Wire Wire Line
	9900 4750 10150 4750
Connection ~ 10150 4750
Wire Wire Line
	10150 4750 10150 4600
Wire Wire Line
	9900 4600 10150 4600
Connection ~ 10150 4600
Wire Wire Line
	10150 4600 10150 4450
Wire Wire Line
	9900 4450 10150 4450
Connection ~ 10150 4450
Wire Wire Line
	10150 4450 10150 4200
Text GLabel 4450 2500 2    50   Input ~ 0
cdone
Text GLabel 3450 2500 0    50   Input ~ 0
creset
Text GLabel 3450 3900 0    50   Input ~ 0
mosi
Text GLabel 3450 3800 0    50   Input ~ 0
miso
Text GLabel 3450 4000 0    50   Input ~ 0
sck
Text GLabel 3450 4100 0    50   Input ~ 0
ss
Text GLabel 6600 2950 0    50   Input ~ 0
mosi
Text GLabel 7800 2950 2    50   Input ~ 0
miso
Text GLabel 6600 3050 0    50   Input ~ 0
sck
Text GLabel 6600 3150 0    50   Input ~ 0
ss
Text GLabel 9600 4450 0    50   Input ~ 0
cdone
Text GLabel 9600 4600 0    50   Input ~ 0
creset
Text GLabel 9600 4750 0    50   Input ~ 0
mosi
Text GLabel 9600 4900 0    50   Input ~ 0
miso
Text GLabel 9600 5050 0    50   Input ~ 0
sck
Text GLabel 9600 5200 0    50   Input ~ 0
ss
NoConn ~ 6600 3250
NoConn ~ 6600 3350
$Comp
L power:+3V3 #PWR027
U 1 1 60ACA152
P 3950 1800
F 0 "#PWR027" H 3950 1650 50  0001 C CNN
F 1 "+3V3" H 3965 1973 50  0000 C CNN
F 2 "" H 3950 1800 50  0001 C CNN
F 3 "" H 3950 1800 50  0001 C CNN
	1    3950 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1800 3950 2100
NoConn ~ 3450 3600
NoConn ~ 3450 3700
NoConn ~ 3450 3400
NoConn ~ 3450 3300
NoConn ~ 3450 3200
NoConn ~ 3450 3100
$Comp
L Device:R R7
U 1 1 60B593E2
P 9750 4750
F 0 "R7" V 9543 4750 50  0000 C CNN
F 1 "100kOhm" V 9634 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9680 4750 50  0001 C CNN
F 3 "~" H 9750 4750 50  0001 C CNN
	1    9750 4750
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 60B593E8
P 9750 4900
F 0 "R8" V 9543 4900 50  0000 C CNN
F 1 "100kOhm" V 9634 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9680 4900 50  0001 C CNN
F 3 "~" H 9750 4900 50  0001 C CNN
	1    9750 4900
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 60B59B97
P 9750 5050
F 0 "R9" V 9543 5050 50  0000 C CNN
F 1 "100kOhm" V 9634 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9680 5050 50  0001 C CNN
F 3 "~" H 9750 5050 50  0001 C CNN
	1    9750 5050
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 60B59B9D
P 9750 5200
F 0 "R10" V 9543 5200 50  0000 C CNN
F 1 "100kOhm" V 9634 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9680 5200 50  0001 C CNN
F 3 "~" H 9750 5200 50  0001 C CNN
	1    9750 5200
	0    1    1    0   
$EndComp
NoConn ~ 3450 2800
NoConn ~ 3450 2900
NoConn ~ 3450 3000
NoConn ~ 3450 3500
$EndSCHEMATC
