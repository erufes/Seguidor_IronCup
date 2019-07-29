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
L Switch:SW_SPST SW1
U 1 1 5D0BCA30
P 2850 2900
F 0 "SW1" H 2850 3135 50  0000 C CNN
F 1 "SW_ON/OFF" H 2850 3044 50  0000 C CNN
F 2 "CUSTOM_Placa_central_v01:Solder_Pad_Custom" H 2850 2900 50  0001 C CNN
F 3 "" H 2850 2900 50  0001 C CNN
	1    2850 2900
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5D0BE091
P 2850 1700
F 0 "H1" H 2950 1751 50  0000 L CNN
F 1 "V8.4 - Lipo" H 2600 1650 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 2850 1700 50  0001 C CNN
F 3 "~" H 2850 1700 50  0001 C CNN
	1    2850 1700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5D0BE14B
P 3300 1700
F 0 "H2" H 3400 1751 50  0000 L CNN
F 1 "GND - Lipo" H 3100 1650 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 3300 1700 50  0001 C CNN
F 3 "~" H 3300 1700 50  0001 C CNN
	1    3300 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J2
U 1 1 5D152CB0
P 3600 2050
F 0 "J2" H 3650 2050 50  0000 L CNN
F 1 "PinoCheckBateriaGND" H 3800 2050 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 3600 2050 50  0001 C CNN
F 3 "~" H 3600 2050 50  0001 C CNN
	1    3600 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5D153AA9
P 2850 2500
F 0 "D1" V 2800 2400 50  0000 R CNN
F 1 "DiodoProtecao-5A" V 2800 3300 50  0000 R CNN
F 2 "Diode_THT:D_DO-27_P15.24mm_Horizontal" H 2850 2500 50  0001 C CNN
F 3 "~" H 2850 2500 50  0001 C CNN
	1    2850 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5D154189
P 2850 2000
F 0 "F1" H 2910 2046 50  0000 L CNN
F 1 "Fuse-5A" H 2910 1955 50  0000 L CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Stelvio-Kontek_PTF78_Horizontal_Open" V 2780 2000 50  0001 C CNN
F 3 "~" H 2850 2000 50  0001 C CNN
	1    2850 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1800 2850 1850
Wire Wire Line
	2850 3100 2850 3200
Wire Wire Line
	2850 3200 2800 3200
Wire Wire Line
	3300 3050 3400 3050
Wire Wire Line
	3400 2050 3300 2050
Connection ~ 3300 2050
Wire Wire Line
	3300 2050 3300 1800
Text Notes 1300 1500 0    79   ~ 0
Circuito de Alimentação da placa e Sistema de proteção
Wire Notes Line
	1200 3300 1200 1300
Wire Notes Line
	5000 1300 5000 3300
Wire Notes Line
	1200 1300 5000 1300
Wire Notes Line
	5000 3300 1200 3300
Wire Wire Line
	2850 2650 2850 2700
$Comp
L Connector:Conn_01x01_Female J1
U 1 1 5D20493D
P 2200 2300
F 0 "J1" H 2300 2300 50  0000 C CNN
F 1 "PinoCheckBateriaVcc" H 2800 2300 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 2200 2300 50  0001 C CNN
F 3 "~" H 2200 2300 50  0001 C CNN
	1    2200 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2750 2300 2850 2300
Wire Wire Line
	2850 2350 2850 2300
Connection ~ 2850 2300
$Comp
L Device:D_Zener D2
U 1 1 5D316091
P 6800 2500
F 0 "D2" V 6754 2579 50  0000 L CNN
F 1 "DiodoZener6.8V" V 6845 2579 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 6800 2500 50  0001 C CNN
F 3 "~" H 6800 2500 50  0001 C CNN
	1    6800 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5D316319
P 7050 2900
F 0 "R3" V 7050 2900 50  0000 C CNN
F 1 "R1KMedidorDeBateria" V 6934 2900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6980 2900 50  0001 C CNN
F 3 "~" H 7050 2900 50  0001 C CNN
	1    7050 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5D316455
P 6800 3150
F 0 "R2" H 6750 3150 50  0000 L CNN
F 1 "R6K6MedidorDeBateria" H 6870 3105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6730 3150 50  0001 C CNN
F 3 "~" H 6800 3150 50  0001 C CNN
	1    6800 3150
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC548 Q1
U 1 1 5D3166B6
P 7550 2900
F 0 "Q1" H 7741 2946 50  0000 L CNN
F 1 "BC548" H 7741 2855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 7750 2825 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 7550 2900 50  0001 L CNN
	1    7550 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5D316CF8
P 7650 2400
F 0 "R4" H 7600 2400 50  0000 L CNN
F 1 "R10KMedidorDeBateria" H 7200 2550 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7580 2400 50  0001 C CNN
F 3 "~" H 7650 2400 50  0001 C CNN
	1    7650 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5D31721A
P 7950 2100
F 0 "R5" V 7950 2100 50  0000 C CNN
F 1 "RMedidorDeBateria1K" V 7834 2100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7880 2100 50  0001 C CNN
F 3 "~" H 7950 2100 50  0001 C CNN
	1    7950 2100
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC548 Q2
U 1 1 5D3176BA
P 8100 2650
F 0 "Q2" H 8291 2696 50  0000 L CNN
F 1 "BC548" H 8291 2605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 8300 2575 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 8100 2650 50  0001 L CNN
	1    8100 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5D31810C
P 8200 2250
F 0 "D3" V 8238 2132 50  0000 R CNN
F 1 "LedBateriaVermelho" V 8150 2100 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 8200 2250 50  0001 C CNN
F 3 "~" H 8200 2250 50  0001 C CNN
	1    8200 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6650 3400 6800 3400
Wire Wire Line
	6800 3400 6800 3300
Wire Wire Line
	6800 3000 6800 2900
Wire Wire Line
	6900 2900 6800 2900
Connection ~ 6800 2900
Wire Wire Line
	7200 2900 7350 2900
Wire Wire Line
	7650 2700 7650 2650
Wire Wire Line
	8200 2100 8100 2100
Wire Wire Line
	8200 2400 8200 2450
Wire Wire Line
	7900 2650 7650 2650
Connection ~ 7650 2650
Wire Wire Line
	8200 2850 8200 3400
Wire Wire Line
	8200 3400 7650 3400
Connection ~ 6800 3400
Wire Wire Line
	7650 3400 6800 3400
Connection ~ 7650 3400
Wire Wire Line
	7650 3100 7650 3400
Wire Wire Line
	7800 2150 7800 2100
Wire Wire Line
	7650 2550 7650 2650
Wire Wire Line
	7650 2250 7650 2150
Connection ~ 7650 2150
Wire Wire Line
	7650 2150 7800 2150
Wire Wire Line
	6650 2150 6800 2150
Wire Wire Line
	6800 2350 6800 2150
Connection ~ 6800 2150
Wire Wire Line
	6800 2150 7650 2150
Wire Wire Line
	6800 2650 6800 2900
Text Notes 6550 1800 0    79   ~ 0
Circuito Medidor de Bateria
Wire Notes Line
	8500 1600 8500 3550
Wire Notes Line
	8500 3550 6250 3550
Wire Notes Line
	6250 3550 6250 1600
Wire Notes Line
	6250 1600 8500 1600
Wire Wire Line
	2400 2300 2450 2300
Wire Wire Line
	3300 2050 3300 3050
$Comp
L Device:R R1
U 1 1 5D1A4675
P 2600 2300
F 0 "R1" V 2600 2300 50  0000 C CNN
F 1 "RBatCheck10K" V 2700 2250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2530 2300 50  0001 C CNN
F 3 "~" H 2600 2300 50  0001 C CNN
	1    2600 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 2150 2850 2300
$Comp
L Connector:Conn_01x01_Female J3
U 1 1 5D3D07BC
P 6450 2150
F 0 "J3" H 6478 2176 50  0000 L CNN
F 1 "Conn_01x01_MedidorBateriaVcc" H 6600 2150 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 6450 2150 50  0001 C CNN
F 3 "~" H 6450 2150 50  0001 C CNN
	1    6450 2150
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J4
U 1 1 5D3D515E
P 6450 3400
F 0 "J4" H 6478 3426 50  0000 L CNN
F 1 "Conn_01x01_MedidorBateriaGnd" H 6600 3400 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 6450 3400 50  0001 C CNN
F 3 "~" H 6450 3400 50  0001 C CNN
	1    6450 3400
	-1   0    0    1   
$EndComp
Text GLabel 2800 3200 0    50   Input ~ 0
8.4V
Text GLabel 3400 3050 2    50   Input ~ 0
GND
Text GLabel 6800 2050 1    50   Input ~ 0
8.4V
Wire Wire Line
	6800 2050 6800 2150
Text GLabel 6800 3500 3    50   Input ~ 0
GND
Wire Wire Line
	6800 3500 6800 3400
$EndSCHEMATC
