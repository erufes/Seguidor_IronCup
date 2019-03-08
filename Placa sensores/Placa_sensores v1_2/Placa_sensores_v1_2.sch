EESchema Schematic File Version 4
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
L Device:R R2
U 1 1 5C4E0CAD
P 1550 3500
F 0 "R2" H 1620 3546 50  0000 L CNN
F 1 "330" H 1620 3455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1480 3500 50  0001 C CNN
F 3 "~" H 1550 3500 50  0001 C CNN
	1    1550 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 5C4E0DD8
P 2950 4050
F 0 "R5" H 3020 4096 50  0000 L CNN
F 1 "10k" H 3020 4005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2880 4050 50  0001 C CNN
F 3 "~" H 2950 4050 50  0001 C CNN
	1    2950 4050
	0    -1   -1   0   
$EndComp
Text GLabel 1450 800  0    50   Input ~ 0
VCC
Text GLabel 3200 3050 2    50   Input ~ 0
GND
Text GLabel 1450 950  0    50   Input ~ 0
S1
Text GLabel 1450 1100 0    50   Input ~ 0
S2
Text GLabel 1450 1250 0    50   Input ~ 0
S3
Text GLabel 1450 1400 0    50   Input ~ 0
S4
Text GLabel 1450 1550 0    50   Input ~ 0
S5
Text GLabel 1450 1700 0    50   Input ~ 0
S6
Text GLabel 1450 1850 0    50   Input ~ 0
S7
$Comp
L Device:R R4
U 1 1 5C4E5C42
P 2950 3300
F 0 "R4" H 3020 3346 50  0000 L CNN
F 1 "10k" H 3020 3255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2880 3300 50  0001 C CNN
F 3 "~" H 2950 3300 50  0001 C CNN
	1    2950 3300
	0    -1   -1   0   
$EndComp
Text GLabel 1100 3500 0    50   Input ~ 0
VCC
Wire Wire Line
	1800 3500 1800 3050
Wire Wire Line
	1800 3050 1650 3050
Wire Wire Line
	1650 3050 1650 2950
Wire Wire Line
	1650 2950 1750 2950
Wire Wire Line
	1250 3200 1750 3200
Wire Wire Line
	1250 3500 1400 3500
Wire Wire Line
	1250 3200 1250 3500
Wire Wire Line
	1700 3500 1800 3500
Wire Wire Line
	1250 3500 1250 3950
Connection ~ 1250 3500
Wire Wire Line
	1800 3500 1800 3600
Wire Wire Line
	1800 3600 1650 3600
Wire Wire Line
	1650 3600 1650 3700
Wire Wire Line
	1650 3700 1750 3700
Connection ~ 1800 3500
Wire Wire Line
	1750 3950 1250 3950
Wire Wire Line
	1100 3500 1250 3500
Text GLabel 3200 3800 2    50   Input ~ 0
GND
Wire Wire Line
	2750 3300 2800 3300
Wire Wire Line
	3200 3050 3150 3050
Wire Wire Line
	3150 3050 3150 3300
Wire Wire Line
	3150 3300 3100 3300
Wire Wire Line
	3150 3050 2750 3050
Connection ~ 3150 3050
Text GLabel 2850 3450 2    50   Input ~ 0
S1
Wire Wire Line
	2750 3450 2750 3300
Wire Wire Line
	2750 3450 2850 3450
Text GLabel 2900 4200 2    50   Input ~ 0
S2
Wire Wire Line
	2900 4200 2750 4200
Wire Wire Line
	2750 4200 2750 4050
Wire Wire Line
	2750 4050 2800 4050
Wire Wire Line
	3100 4050 3150 4050
Wire Wire Line
	3150 4050 3150 3800
Wire Wire Line
	3150 3800 3200 3800
Wire Wire Line
	2750 3800 3150 3800
Connection ~ 3150 3800
$Comp
L Device:R R3
U 1 1 5C4EC87E
P 1550 5250
F 0 "R3" H 1620 5296 50  0000 L CNN
F 1 "330" H 1620 5205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1480 5250 50  0001 C CNN
F 3 "~" H 1550 5250 50  0001 C CNN
	1    1550 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5C4EC885
P 2950 5800
F 0 "R7" H 3020 5846 50  0000 L CNN
F 1 "10k" H 3020 5755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2880 5800 50  0001 C CNN
F 3 "~" H 2950 5800 50  0001 C CNN
	1    2950 5800
	0    -1   -1   0   
$EndComp
Text GLabel 3200 4800 2    50   Input ~ 0
GND
$Comp
L Device:R R6
U 1 1 5C4EC89B
P 2950 5050
F 0 "R6" H 3020 5096 50  0000 L CNN
F 1 "10k" H 3020 5005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2880 5050 50  0001 C CNN
F 3 "~" H 2950 5050 50  0001 C CNN
	1    2950 5050
	0    -1   -1   0   
$EndComp
Text GLabel 1100 5250 0    50   Input ~ 0
VCC
Wire Wire Line
	1800 5250 1800 4800
Wire Wire Line
	1800 4800 1650 4800
Wire Wire Line
	1650 4800 1650 4700
Wire Wire Line
	1650 4700 1750 4700
Wire Wire Line
	1250 4950 1750 4950
Wire Wire Line
	1250 5250 1400 5250
Wire Wire Line
	1250 4950 1250 5250
Wire Wire Line
	1700 5250 1800 5250
Wire Wire Line
	1250 5250 1250 5700
Connection ~ 1250 5250
Wire Wire Line
	1800 5250 1800 5350
Wire Wire Line
	1800 5350 1650 5350
Wire Wire Line
	1650 5350 1650 5450
Wire Wire Line
	1650 5450 1750 5450
Connection ~ 1800 5250
Wire Wire Line
	1750 5700 1250 5700
Wire Wire Line
	1100 5250 1250 5250
Text GLabel 3200 5550 2    50   Input ~ 0
GND
Wire Wire Line
	2750 5050 2800 5050
Wire Wire Line
	3200 4800 3150 4800
Wire Wire Line
	3150 4800 3150 5050
Wire Wire Line
	3150 5050 3100 5050
Wire Wire Line
	3150 4800 2750 4800
Connection ~ 3150 4800
Wire Wire Line
	2750 5200 2750 5050
Wire Wire Line
	2750 5200 2850 5200
Wire Wire Line
	2900 5950 2750 5950
Wire Wire Line
	2750 5950 2750 5800
Wire Wire Line
	2750 5800 2800 5800
Wire Wire Line
	3100 5800 3150 5800
Wire Wire Line
	3150 5800 3150 5550
Wire Wire Line
	3150 5550 3200 5550
Wire Wire Line
	2750 5550 3150 5550
Connection ~ 3150 5550
$Comp
L Device:R R1
U 1 1 5C4ED81C
P 1500 6450
F 0 "R1" H 1570 6496 50  0000 L CNN
F 1 "330" H 1570 6405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1430 6450 50  0001 C CNN
F 3 "~" H 1500 6450 50  0001 C CNN
	1    1500 6450
	0    -1   -1   0   
$EndComp
Text GLabel 3200 6550 2    50   Input ~ 0
GND
$Comp
L Device:R R8
U 1 1 5C4ED839
P 2950 6800
F 0 "R8" H 3020 6846 50  0000 L CNN
F 1 "10k" H 3020 6755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2880 6800 50  0001 C CNN
F 3 "~" H 2950 6800 50  0001 C CNN
	1    2950 6800
	0    -1   -1   0   
$EndComp
Text GLabel 1100 6700 0    50   Input ~ 0
VCC
Wire Wire Line
	2750 6800 2800 6800
Wire Wire Line
	3200 6550 3150 6550
Wire Wire Line
	3150 6550 3150 6800
Wire Wire Line
	3150 6800 3100 6800
Wire Wire Line
	3150 6550 2750 6550
Connection ~ 3150 6550
Wire Wire Line
	2750 6950 2750 6800
Wire Wire Line
	2750 6950 2850 6950
$Comp
L Device:R R9
U 1 1 5C4EFA53
P 4400 2650
F 0 "R9" H 4470 2696 50  0000 L CNN
F 1 "330" H 4470 2605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4330 2650 50  0001 C CNN
F 3 "~" H 4400 2650 50  0001 C CNN
	1    4400 2650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R13
U 1 1 5C4EFA5A
P 5800 3200
F 0 "R13" H 5870 3246 50  0000 L CNN
F 1 "10k" H 5870 3155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5730 3200 50  0001 C CNN
F 3 "~" H 5800 3200 50  0001 C CNN
	1    5800 3200
	0    -1   -1   0   
$EndComp
Text GLabel 6050 2200 2    50   Input ~ 0
GND
$Comp
L Device:R R12
U 1 1 5C4EFA70
P 5800 2450
F 0 "R12" H 5870 2496 50  0000 L CNN
F 1 "10k" H 5870 2405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5730 2450 50  0001 C CNN
F 3 "~" H 5800 2450 50  0001 C CNN
	1    5800 2450
	0    -1   -1   0   
$EndComp
Text GLabel 3950 2650 0    50   Input ~ 0
VCC
Wire Wire Line
	4650 2650 4650 2200
Wire Wire Line
	4650 2200 4500 2200
Wire Wire Line
	4500 2200 4500 2100
Wire Wire Line
	4500 2100 4600 2100
Wire Wire Line
	4100 2350 4600 2350
Wire Wire Line
	4100 2650 4250 2650
Wire Wire Line
	4100 2350 4100 2650
Wire Wire Line
	4550 2650 4650 2650
Wire Wire Line
	4100 2650 4100 3100
Connection ~ 4100 2650
Wire Wire Line
	4650 2650 4650 2750
Wire Wire Line
	4650 2750 4500 2750
Wire Wire Line
	4500 2750 4500 2850
Wire Wire Line
	4500 2850 4600 2850
Connection ~ 4650 2650
Wire Wire Line
	4600 3100 4100 3100
Wire Wire Line
	3950 2650 4100 2650
Text GLabel 6050 2950 2    50   Input ~ 0
GND
Wire Wire Line
	5600 2450 5650 2450
Wire Wire Line
	6050 2200 6000 2200
Wire Wire Line
	6000 2200 6000 2450
Wire Wire Line
	6000 2450 5950 2450
Wire Wire Line
	6000 2200 5600 2200
Connection ~ 6000 2200
Wire Wire Line
	5600 2600 5600 2450
Wire Wire Line
	5600 2600 5700 2600
Wire Wire Line
	5750 3350 5600 3350
Wire Wire Line
	5600 3350 5600 3200
Wire Wire Line
	5600 3200 5650 3200
Wire Wire Line
	5950 3200 6000 3200
Wire Wire Line
	6000 3200 6000 2950
Wire Wire Line
	6000 2950 6050 2950
Wire Wire Line
	5600 2950 6000 2950
Connection ~ 6000 2950
Text GLabel 5700 2600 2    50   Input ~ 0
S6
Text GLabel 5750 3350 2    50   Input ~ 0
S7
Wire Wire Line
	1650 6450 1750 6450
Wire Wire Line
	1350 6450 1300 6450
Wire Wire Line
	1300 6450 1300 6700
Wire Wire Line
	1300 6700 1750 6700
Connection ~ 1300 6700
Wire Wire Line
	1100 6700 1300 6700
Text GLabel 2850 6950 2    50   Input ~ 0
S5
Text GLabel 2900 5950 2    50   Input ~ 0
S4
Text GLabel 2850 5200 2    50   Input ~ 0
S3
Text GLabel 1450 2300 0    50   Input ~ 0
GND
$Comp
L Connector:Conn_01x01_Female J1
U 1 1 5C4F42C9
P 2300 800
F 0 "J1" H 2327 826 50  0000 L CNN
F 1 "Conn_01x01_Female" H 2327 735 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 2300 800 50  0001 C CNN
F 3 "~" H 2300 800 50  0001 C CNN
	1    2300 800 
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J2
U 1 1 5C4F436B
P 2300 950
F 0 "J2" H 2327 976 50  0000 L CNN
F 1 "Conn_01x01_Female" H 2327 885 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 2300 950 50  0001 C CNN
F 3 "~" H 2300 950 50  0001 C CNN
	1    2300 950 
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J3
U 1 1 5C4F43A5
P 2300 1100
F 0 "J3" H 2327 1126 50  0000 L CNN
F 1 "Conn_01x01_Female" H 2327 1035 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 2300 1100 50  0001 C CNN
F 3 "~" H 2300 1100 50  0001 C CNN
	1    2300 1100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J4
U 1 1 5C4F43E1
P 2300 1250
F 0 "J4" H 2327 1276 50  0000 L CNN
F 1 "Conn_01x01_Female" H 2327 1185 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 2300 1250 50  0001 C CNN
F 3 "~" H 2300 1250 50  0001 C CNN
	1    2300 1250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J5
U 1 1 5C4F446B
P 2300 1400
F 0 "J5" H 2327 1426 50  0000 L CNN
F 1 "Conn_01x01_Female" H 2327 1335 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 2300 1400 50  0001 C CNN
F 3 "~" H 2300 1400 50  0001 C CNN
	1    2300 1400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J6
U 1 1 5C4F44AB
P 2300 1550
F 0 "J6" H 2327 1576 50  0000 L CNN
F 1 "Conn_01x01_Female" H 2327 1485 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 2300 1550 50  0001 C CNN
F 3 "~" H 2300 1550 50  0001 C CNN
	1    2300 1550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J7
U 1 1 5C4F44ED
P 2300 1700
F 0 "J7" H 2327 1726 50  0000 L CNN
F 1 "Conn_01x01_Female" H 2327 1635 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 2300 1700 50  0001 C CNN
F 3 "~" H 2300 1700 50  0001 C CNN
	1    2300 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J8
U 1 1 5C4F4531
P 2300 1850
F 0 "J8" H 2327 1876 50  0000 L CNN
F 1 "Conn_01x01_Female" H 2327 1785 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 2300 1850 50  0001 C CNN
F 3 "~" H 2300 1850 50  0001 C CNN
	1    2300 1850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J11
U 1 1 5C4F4577
P 2300 2300
F 0 "J11" H 2327 2326 50  0000 L CNN
F 1 "Conn_01x01_Female" H 2327 2235 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 2300 2300 50  0001 C CNN
F 3 "~" H 2300 2300 50  0001 C CNN
	1    2300 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 800  2100 800 
Wire Wire Line
	1450 950  2100 950 
Wire Wire Line
	1450 1100 2100 1100
Wire Wire Line
	1450 1250 2100 1250
Wire Wire Line
	1450 1400 2100 1400
Wire Wire Line
	1450 1550 2100 1550
Wire Wire Line
	1450 1700 2100 1700
Wire Wire Line
	1450 1850 2100 1850
Wire Wire Line
	1450 2300 2100 2300
Text GLabel 1450 2000 0    50   Input ~ 0
SensorEsq
$Comp
L Connector:Conn_01x01_Female J9
U 1 1 5C832331
P 2300 2000
F 0 "J9" H 2327 2026 50  0000 L CNN
F 1 "Conn_01x01_Female" H 2327 1935 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 2300 2000 50  0001 C CNN
F 3 "~" H 2300 2000 50  0001 C CNN
	1    2300 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2000 2100 2000
Text GLabel 1450 2150 0    50   Input ~ 0
SensorDir
$Comp
L Connector:Conn_01x01_Female J10
U 1 1 5C835915
P 2300 2150
F 0 "J10" H 2327 2176 50  0000 L CNN
F 1 "Conn_01x01_Female" H 2327 2085 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 2300 2150 50  0001 C CNN
F 3 "~" H 2300 2150 50  0001 C CNN
	1    2300 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2150 2100 2150
$Comp
L Tcrt5000_e_afins:TCRT5000 U1
U 1 1 5C83983B
P 2250 3000
F 0 "U1" H 2250 3150 60  0000 C CNN
F 1 "TCRT5000" H 2250 2600 60  0000 C CNN
F 2 "Tcrt5000_e_afins:TCRT50002" H 2250 3000 60  0001 C CNN
F 3 "" H 2250 3000 60  0000 C CNN
	1    2250 3000
	1    0    0    -1  
$EndComp
Connection ~ 2750 3300
$Comp
L Tcrt5000_e_afins:TCRT5000 U2
U 1 1 5C839B8E
P 2250 3750
F 0 "U2" H 2250 3900 60  0000 C CNN
F 1 "TCRT5000" H 2250 3350 60  0000 C CNN
F 2 "Tcrt5000_e_afins:TCRT50002" H 2250 3750 60  0001 C CNN
F 3 "" H 2250 3750 60  0000 C CNN
	1    2250 3750
	1    0    0    -1  
$EndComp
Connection ~ 2750 4050
$Comp
L Tcrt5000_e_afins:TCRT5000 U3
U 1 1 5C839DE2
P 2250 4750
F 0 "U3" H 2250 4900 60  0000 C CNN
F 1 "TCRT5000" H 2250 4350 60  0000 C CNN
F 2 "Tcrt5000_e_afins:TCRT50002" H 2250 4750 60  0001 C CNN
F 3 "" H 2250 4750 60  0000 C CNN
	1    2250 4750
	1    0    0    -1  
$EndComp
Connection ~ 2750 5050
$Comp
L Tcrt5000_e_afins:TCRT5000 U4
U 1 1 5C839E4E
P 2250 5500
F 0 "U4" H 2250 5650 60  0000 C CNN
F 1 "TCRT5000" H 2250 5100 60  0000 C CNN
F 2 "Tcrt5000_e_afins:TCRT50002" H 2250 5500 60  0001 C CNN
F 3 "" H 2250 5500 60  0000 C CNN
	1    2250 5500
	1    0    0    -1  
$EndComp
Connection ~ 2750 5800
$Comp
L Tcrt5000_e_afins:TCRT5000 U5
U 1 1 5C839EBA
P 2250 6500
F 0 "U5" H 2250 6650 60  0000 C CNN
F 1 "TCRT5000" H 2250 6100 60  0000 C CNN
F 2 "Tcrt5000_e_afins:TCRT50002" H 2250 6500 60  0001 C CNN
F 3 "" H 2250 6500 60  0000 C CNN
	1    2250 6500
	1    0    0    -1  
$EndComp
Connection ~ 2750 6800
$Comp
L Tcrt5000_e_afins:TCRT5000 U6
U 1 1 5C83A0C9
P 5100 2150
F 0 "U6" H 5100 2300 60  0000 C CNN
F 1 "TCRT5000" H 5100 1750 60  0000 C CNN
F 2 "Tcrt5000_e_afins:TCRT50002" H 5100 2150 60  0001 C CNN
F 3 "" H 5100 2150 60  0000 C CNN
	1    5100 2150
	1    0    0    -1  
$EndComp
Connection ~ 5600 2450
$Comp
L Tcrt5000_e_afins:TCRT5000 U7
U 1 1 5C83A153
P 5100 2900
F 0 "U7" H 5100 3050 60  0000 C CNN
F 1 "TCRT5000" H 5100 2500 60  0000 C CNN
F 2 "Tcrt5000_e_afins:TCRT50002" H 5100 2900 60  0001 C CNN
F 3 "" H 5100 2900 60  0000 C CNN
	1    5100 2900
	1    0    0    -1  
$EndComp
Connection ~ 5600 3200
$Comp
L Device:R R10
U 1 1 5C83B644
P 4400 4350
F 0 "R10" H 4470 4396 50  0000 L CNN
F 1 "330" H 4470 4305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4330 4350 50  0001 C CNN
F 3 "~" H 4400 4350 50  0001 C CNN
	1    4400 4350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R15
U 1 1 5C83B64B
P 5800 4900
F 0 "R15" H 5870 4946 50  0000 L CNN
F 1 "10k" H 5870 4855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5730 4900 50  0001 C CNN
F 3 "~" H 5800 4900 50  0001 C CNN
	1    5800 4900
	0    -1   -1   0   
$EndComp
Text GLabel 6050 3900 2    50   Input ~ 0
GND
$Comp
L Device:R R14
U 1 1 5C83B653
P 5800 4150
F 0 "R14" H 5870 4196 50  0000 L CNN
F 1 "10k" H 5870 4105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5730 4150 50  0001 C CNN
F 3 "~" H 5800 4150 50  0001 C CNN
	1    5800 4150
	0    -1   -1   0   
$EndComp
Text GLabel 3950 4350 0    50   Input ~ 0
VCC
Wire Wire Line
	4650 4350 4650 3900
Wire Wire Line
	4650 3900 4500 3900
Wire Wire Line
	4500 3900 4500 3800
Wire Wire Line
	4500 3800 4600 3800
Wire Wire Line
	4100 4050 4600 4050
Wire Wire Line
	4100 4350 4250 4350
Wire Wire Line
	4100 4050 4100 4350
Wire Wire Line
	4550 4350 4650 4350
Wire Wire Line
	4100 4350 4100 4800
Connection ~ 4100 4350
Wire Wire Line
	4650 4350 4650 4450
Wire Wire Line
	4650 4450 4500 4450
Wire Wire Line
	4500 4450 4500 4550
Wire Wire Line
	4500 4550 4600 4550
Connection ~ 4650 4350
Wire Wire Line
	4600 4800 4100 4800
Wire Wire Line
	3950 4350 4100 4350
Text GLabel 6050 4650 2    50   Input ~ 0
GND
Wire Wire Line
	5600 4150 5650 4150
Wire Wire Line
	6050 3900 6000 3900
Wire Wire Line
	6000 3900 6000 4150
Wire Wire Line
	6000 4150 5950 4150
Wire Wire Line
	6000 3900 5600 3900
Connection ~ 6000 3900
Wire Wire Line
	5600 4300 5600 4150
Wire Wire Line
	5600 4300 5700 4300
Wire Wire Line
	5750 5050 5600 5050
Wire Wire Line
	5600 5050 5600 4900
Wire Wire Line
	5600 4900 5650 4900
Wire Wire Line
	5950 4900 6000 4900
Wire Wire Line
	6000 4900 6000 4650
Wire Wire Line
	6000 4650 6050 4650
Wire Wire Line
	5600 4650 6000 4650
Connection ~ 6000 4650
Text GLabel 5700 4300 2    50   Input ~ 0
SensorEsq
Text GLabel 5750 5050 2    50   Input ~ 0
SensorDir
$Comp
L Tcrt5000_e_afins:TCRT5000 U8
U 1 1 5C83B67F
P 5100 3850
F 0 "U8" H 5100 4000 60  0000 C CNN
F 1 "TCRT5000" H 5100 3450 60  0000 C CNN
F 2 "Tcrt5000_e_afins:TCRT50002" H 5100 3850 60  0001 C CNN
F 3 "" H 5100 3850 60  0000 C CNN
	1    5100 3850
	1    0    0    -1  
$EndComp
Connection ~ 5600 4150
$Comp
L Tcrt5000_e_afins:TCRT5000 U9
U 1 1 5C83B687
P 5100 4600
F 0 "U9" H 5100 4750 60  0000 C CNN
F 1 "TCRT5000" H 5100 4200 60  0000 C CNN
F 2 "Tcrt5000_e_afins:TCRT50002" H 5100 4600 60  0001 C CNN
F 3 "" H 5100 4600 60  0000 C CNN
	1    5100 4600
	1    0    0    -1  
$EndComp
Connection ~ 5600 4900
$Comp
L Device:LED D1
U 1 1 5C8422F0
P 4000 800
F 0 "D1" H 4000 700 50  0000 C CNN
F 1 "LED - ON/OFF" H 4000 600 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 4000 800 50  0001 C CNN
F 3 "~" H 4000 800 50  0001 C CNN
	1    4000 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5C843FC5
P 4450 800
F 0 "R11" V 4350 800 50  0000 L CNN
F 1 "330" V 4250 700 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4380 800 50  0001 C CNN
F 3 "~" H 4450 800 50  0001 C CNN
	1    4450 800 
	0    -1   -1   0   
$EndComp
Text GLabel 3700 800  0    50   Input ~ 0
VCC
Text GLabel 4750 800  2    50   Input ~ 0
GND
Wire Wire Line
	4750 800  4600 800 
Wire Wire Line
	4150 800  4300 800 
Wire Wire Line
	3850 800  3700 800 
Text GLabel 3700 1250 0    50   Input ~ 0
GND
$Comp
L Connector:Conn_01x01_Female J12
U 1 1 5C862819
P 4150 1250
F 0 "J12" H 4177 1276 50  0000 L CNN
F 1 "Conn_01x01_Female" H 4177 1185 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 4150 1250 50  0001 C CNN
F 3 "~" H 4150 1250 50  0001 C CNN
	1    4150 1250
	1    0    0    -1  
$EndComp
Text Notes 3500 1150 0    50   ~ 0
Pad livre para referência de multímetro\n
Wire Wire Line
	3700 1250 3950 1250
Text Notes 3500 700  0    50   ~ 0
Led para indicar alimentação da placa
Text Notes 1300 700  0    50   ~ 0
Conectores dos sensores
Text Notes 1600 2650 0    98   ~ 0
Modulos Tcrt5000\n
$EndSCHEMATC
