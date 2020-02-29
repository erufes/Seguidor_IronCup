EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
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
L Switch:SW_SPST SW?
U 1 1 5D0BCA30
P 2850 2900
F 0 "SW?" H 2850 3135 50  0000 C CNN
F 1 "SW_ON/OFF" H 2850 3044 50  0000 C CNN
F 2 "CUSTOM_Placa_central_v01:Solder_Pad_Custom" H 2850 2900 50  0001 C CNN
F 3 "" H 2850 2900 50  0001 C CNN
	1    2850 2900
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 5D0BE091
P 2850 1600
F 0 "H?" H 2950 1651 50  0000 L CNN
F 1 "V8.4 - Lipo" H 2600 1550 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 2850 1600 50  0001 C CNN
F 3 "~" H 2850 1600 50  0001 C CNN
	1    2850 1600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 5D0BE14B
P 3300 1600
F 0 "H?" H 3400 1651 50  0000 L CNN
F 1 "GND - Lipo" H 3100 1550 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 3300 1600 50  0001 C CNN
F 3 "~" H 3300 1600 50  0001 C CNN
	1    3300 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D152CB0
P 3600 2050
F 0 "J?" H 3650 2050 50  0000 L CNN
F 1 "PinoCheckBateriaGND" H 3800 2050 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 3600 2050 50  0001 C CNN
F 3 "~" H 3600 2050 50  0001 C CNN
	1    3600 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:D D?
U 1 1 5D153AA9
P 2850 2500
F 0 "D?" V 2800 2400 50  0000 R CNN
F 1 "DiodoProtecao-5A" V 2800 3300 50  0000 R CNN
F 2 "Diode_THT:D_DO-27_P15.24mm_Horizontal" H 2850 2500 50  0001 C CNN
F 3 "~" H 2850 2500 50  0001 C CNN
	1    2850 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:Fuse F?
U 1 1 5D154189
P 2850 2150
F 0 "F?" H 2910 2196 50  0000 L CNN
F 1 "Fuse-5A" H 2910 2105 50  0000 L CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Stelvio-Kontek_PTF78_Horizontal_Open" V 2780 2150 50  0001 C CNN
F 3 "~" H 2850 2150 50  0001 C CNN
	1    2850 2150
	1    0    0    1   
$EndComp
Wire Wire Line
	3300 3050 3400 3050
Wire Wire Line
	3400 2050 3300 2050
Connection ~ 3300 2050
Text Notes 1300 1400 0    79   ~ 0
Circuito de Alimentação da placa e Sistema de proteção
Wire Notes Line
	1200 1200 5000 1200
Wire Notes Line
	5000 3500 1200 3500
Wire Wire Line
	2850 2650 2850 2700
$Comp
L Device:D_Zener D?
U 1 1 5D316091
P 6800 2500
F 0 "D?" V 6754 2579 50  0000 L CNN
F 1 "DiodoZener6.8V" V 6845 2579 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 6800 2500 50  0001 C CNN
F 3 "~" H 6800 2500 50  0001 C CNN
	1    6800 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D316319
P 7050 2900
F 0 "R?" V 7050 2900 50  0000 C CNN
F 1 "R1KMedidorDeBateria" V 6934 2900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6980 2900 50  0001 C CNN
F 3 "~" H 7050 2900 50  0001 C CNN
	1    7050 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D316455
P 6800 3150
F 0 "R?" H 6750 3150 50  0000 L CNN
F 1 "R6K6MedidorDeBateria" H 6870 3105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6730 3150 50  0001 C CNN
F 3 "~" H 6800 3150 50  0001 C CNN
	1    6800 3150
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC548 Q?
U 1 1 5D3166B6
P 7550 2900
F 0 "Q?" H 7741 2946 50  0000 L CNN
F 1 "BC548" H 7741 2855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 7750 2825 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 7550 2900 50  0001 L CNN
	1    7550 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D316CF8
P 7650 2400
F 0 "R?" H 7600 2400 50  0000 L CNN
F 1 "R10KMedidorDeBateria" H 7200 2550 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7580 2400 50  0001 C CNN
F 3 "~" H 7650 2400 50  0001 C CNN
	1    7650 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D31721A
P 7950 2100
F 0 "R?" V 7950 2100 50  0000 C CNN
F 1 "R1KMedidorDeBateria" V 7834 2100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7880 2100 50  0001 C CNN
F 3 "~" H 7950 2100 50  0001 C CNN
	1    7950 2100
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC548 Q?
U 1 1 5D3176BA
P 8100 2650
F 0 "Q?" H 8291 2696 50  0000 L CNN
F 1 "BC548" H 8291 2605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 8300 2575 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 8100 2650 50  0001 L CNN
	1    8100 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5D31810C
P 8200 2250
F 0 "D?" V 8238 2132 50  0000 R CNN
F 1 "LedBateriaVermelho" V 8150 2100 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 8200 2250 50  0001 C CNN
F 3 "~" H 8200 2250 50  0001 C CNN
	1    8200 2250
	0    -1   -1   0   
$EndComp
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
	3300 2050 3300 3050
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D3D07BC
P 2650 3400
F 0 "J?" H 2678 3426 50  0000 L CNN
F 1 "8.4V_PlacaCentral" H 2800 3400 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 2650 3400 50  0001 C CNN
F 3 "~" H 2650 3400 50  0001 C CNN
	1    2650 3400
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D3D515E
P 3500 3400
F 0 "J?" H 3528 3426 50  0000 L CNN
F 1 "GND_PlacaCentral" H 3650 3400 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 3500 3400 50  0001 C CNN
F 3 "~" H 3500 3400 50  0001 C CNN
	1    3500 3400
	1    0    0    -1  
$EndComp
Text GLabel 3400 3050 2    50   Input ~ 0
GND
Text GLabel 6650 3400 0    50   Input ~ 0
GND
$Comp
L Mechanical:MountingHole H?
U 1 1 5D58B29C
P 1900 3650
F 0 "H?" H 2000 3696 50  0000 L CNN
F 1 "Furos" H 2000 3605 50  0000 L CNN
F 2 "Wire_Pads:SolderWirePad_single_2-5mmDrill" H 1900 3650 50  0001 C CNN
F 3 "~" H 1900 3650 50  0001 C CNN
	1    1900 3650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5D58BCCF
P 1900 3900
F 0 "H?" H 2000 3946 50  0000 L CNN
F 1 "Furos" H 2000 3855 50  0000 L CNN
F 2 "Wire_Pads:SolderWirePad_single_2-5mmDrill" H 1900 3900 50  0001 C CNN
F 3 "~" H 1900 3900 50  0001 C CNN
	1    1900 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D20493D
P 2200 1950
F 0 "J?" H 2300 1950 50  0000 C CNN
F 1 "PinoCheckBateriaVcc" H 2800 1950 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 2200 1950 50  0001 C CNN
F 3 "~" H 2200 1950 50  0001 C CNN
	1    2200 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 1950 2450 1950
$Comp
L Device:R R?
U 1 1 5D1A4675
P 2600 1950
F 0 "R?" V 2600 1950 50  0000 C CNN
F 1 "R10KBatCheck" V 2700 1900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2530 1950 50  0001 C CNN
F 3 "~" H 2600 1950 50  0001 C CNN
	1    2600 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 1950 2850 1950
Wire Wire Line
	2850 1950 2850 2000
Connection ~ 2850 1950
Wire Wire Line
	2850 2300 2850 2350
Text GLabel 2700 1850 0    50   Input ~ 0
8.4VCircuitoMedidor
Wire Wire Line
	2700 1850 2850 1850
Connection ~ 2850 1850
Wire Wire Line
	2850 1850 2850 1950
Text GLabel 6800 1900 2    50   Input ~ 0
8.4VCircuitoMedidor
Wire Wire Line
	6800 1900 6800 2150
Wire Wire Line
	2850 3100 2850 3150
Wire Wire Line
	3300 3400 3300 3300
Connection ~ 3300 3050
Wire Wire Line
	7650 3400 6800 3400
Wire Wire Line
	6650 3400 6800 3400
Connection ~ 6800 3400
Text HLabel 2650 3300 0    50   Output ~ 0
8.4V_OutPlacaCentral
Text HLabel 3500 3300 2    50   Output ~ 0
GND_OutPlacaCentral
Text HLabel 2700 1750 0    50   Input ~ 0
8.4V_InBateria
Text HLabel 3550 1750 2    50   Input ~ 0
GND_InBateria
Wire Notes Line
	1200 1200 1200 3500
Wire Notes Line
	5000 1200 5000 3500
Wire Wire Line
	2700 1750 2850 1750
Wire Wire Line
	2850 1750 2850 1700
Wire Wire Line
	2850 1750 2850 1850
Connection ~ 2850 1750
Wire Wire Line
	3300 1700 3300 1750
Wire Wire Line
	3300 1750 3550 1750
Connection ~ 3300 1750
Wire Wire Line
	3300 1750 3300 2050
Wire Wire Line
	2650 3300 2850 3300
Connection ~ 2850 3300
Wire Wire Line
	2850 3300 2850 3400
Wire Wire Line
	3500 3300 3300 3300
Connection ~ 3300 3300
Wire Wire Line
	3300 3300 3300 3050
Text HLabel 2650 2650 0    50   Output ~ 0
Botão_Out
Text HLabel 2650 3150 0    50   Input ~ 0
Botão_In
Wire Wire Line
	2650 2650 2850 2650
Connection ~ 2850 2650
Wire Wire Line
	2650 3150 2850 3150
Connection ~ 2850 3150
Wire Wire Line
	2850 3150 2850 3300
$EndSCHEMATC
