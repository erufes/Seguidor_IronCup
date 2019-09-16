EESchema Schematic File Version 4
LIBS:Alimentacao e protecao-cache
EELAYER 26 0
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
$Comp
L Switch:SW_SPST SW?
U 1 1 5D800C9F
P 3800 -1400
F 0 "SW?" H 3800 -1165 50  0000 C CNN
F 1 "SW_ON/OFF" H 3800 -1256 50  0000 C CNN
F 2 "CUSTOM_Placa_central_v01:Solder_Pad_Custom" H 3800 -1400 50  0001 C CNN
F 3 "" H 3800 -1400 50  0001 C CNN
	1    3800 -1400
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 5D800CA6
P 3800 -2600
F 0 "H?" H 3900 -2549 50  0000 L CNN
F 1 "V8.4 - Lipo" H 3550 -2650 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 3800 -2600 50  0001 C CNN
F 3 "~" H 3800 -2600 50  0001 C CNN
	1    3800 -2600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 5D800CAD
P 4250 -2600
F 0 "H?" H 4350 -2549 50  0000 L CNN
F 1 "GND - Lipo" H 4050 -2650 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 4250 -2600 50  0001 C CNN
F 3 "~" H 4250 -2600 50  0001 C CNN
	1    4250 -2600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D800CB4
P 4550 -2250
F 0 "J?" H 4600 -2250 50  0000 L CNN
F 1 "PinoCheckBateriaGND" H 4750 -2250 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 4550 -2250 50  0001 C CNN
F 3 "~" H 4550 -2250 50  0001 C CNN
	1    4550 -2250
	1    0    0    -1  
$EndComp
$Comp
L Device:D D?
U 1 1 5D800CBB
P 3800 -1800
F 0 "D?" V 3750 -1900 50  0000 R CNN
F 1 "DiodoProtecao-5A" V 3750 -1000 50  0000 R CNN
F 2 "Diode_THT:D_DO-27_P15.24mm_Horizontal" H 3800 -1800 50  0001 C CNN
F 3 "~" H 3800 -1800 50  0001 C CNN
	1    3800 -1800
	0    -1   -1   0   
$EndComp
$Comp
L Device:Fuse F?
U 1 1 5D800CC2
P 3800 -2150
F 0 "F?" H 3860 -2104 50  0000 L CNN
F 1 "Fuse-5A" H 3860 -2195 50  0000 L CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Stelvio-Kontek_PTF78_Horizontal_Open" V 3730 -2150 50  0001 C CNN
F 3 "~" H 3800 -2150 50  0001 C CNN
	1    3800 -2150
	1    0    0    1   
$EndComp
Wire Wire Line
	4250 -1250 4350 -1250
Wire Wire Line
	4350 -2250 4250 -2250
Connection ~ 4250 -2250
Wire Wire Line
	4250 -2250 4250 -2500
Text Notes 2250 -2800 0    79   ~ 0
Circuito de Alimentação da placa e Sistema de proteção
Wire Notes Line
	2150 -3000 5950 -3000
Wire Notes Line
	5950 -800 2150 -800
Wire Wire Line
	3800 -1650 3800 -1600
$Comp
L Device:D_Zener D?
U 1 1 5D800CD1
P 7750 -1800
F 0 "D?" V 7704 -1721 50  0000 L CNN
F 1 "DiodoZener6.8V" V 7795 -1721 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 7750 -1800 50  0001 C CNN
F 3 "~" H 7750 -1800 50  0001 C CNN
	1    7750 -1800
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D800CD8
P 8000 -1400
F 0 "R?" V 8000 -1400 50  0000 C CNN
F 1 "R1KMedidorDeBateria" V 7884 -1400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7930 -1400 50  0001 C CNN
F 3 "~" H 8000 -1400 50  0001 C CNN
	1    8000 -1400
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D800CDF
P 7750 -1150
F 0 "R?" H 7700 -1150 50  0000 L CNN
F 1 "R6K6MedidorDeBateria" H 7820 -1195 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7680 -1150 50  0001 C CNN
F 3 "~" H 7750 -1150 50  0001 C CNN
	1    7750 -1150
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC548 Q?
U 1 1 5D800CE6
P 8500 -1400
F 0 "Q?" H 8691 -1354 50  0000 L CNN
F 1 "BC548" H 8691 -1445 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 8700 -1475 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 8500 -1400 50  0001 L CNN
	1    8500 -1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D800CED
P 8600 -1900
F 0 "R?" H 8550 -1900 50  0000 L CNN
F 1 "R10KMedidorDeBateria" H 8150 -1750 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8530 -1900 50  0001 C CNN
F 3 "~" H 8600 -1900 50  0001 C CNN
	1    8600 -1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D800CF4
P 8900 -2200
F 0 "R?" V 8900 -2200 50  0000 C CNN
F 1 "R1KMedidorDeBateria" V 8784 -2200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8830 -2200 50  0001 C CNN
F 3 "~" H 8900 -2200 50  0001 C CNN
	1    8900 -2200
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC548 Q?
U 1 1 5D800CFB
P 9050 -1650
F 0 "Q?" H 9241 -1604 50  0000 L CNN
F 1 "BC548" H 9241 -1695 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 9250 -1725 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 9050 -1650 50  0001 L CNN
	1    9050 -1650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5D800D02
P 9150 -2050
F 0 "D?" V 9188 -2168 50  0000 R CNN
F 1 "LedBateriaVermelho" V 9100 -2200 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 9150 -2050 50  0001 C CNN
F 3 "~" H 9150 -2050 50  0001 C CNN
	1    9150 -2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7750 -900 7750 -1000
Wire Wire Line
	7750 -1300 7750 -1400
Wire Wire Line
	7850 -1400 7750 -1400
Connection ~ 7750 -1400
Wire Wire Line
	8150 -1400 8300 -1400
Wire Wire Line
	8600 -1600 8600 -1650
Wire Wire Line
	9150 -2200 9050 -2200
Wire Wire Line
	9150 -1900 9150 -1850
Wire Wire Line
	8850 -1650 8600 -1650
Connection ~ 8600 -1650
Wire Wire Line
	9150 -1450 9150 -900
Wire Wire Line
	9150 -900 8600 -900
Connection ~ 8600 -900
Wire Wire Line
	8600 -1200 8600 -900
Wire Wire Line
	8750 -2150 8750 -2200
Wire Wire Line
	8600 -1750 8600 -1650
Wire Wire Line
	8600 -2050 8600 -2150
Connection ~ 8600 -2150
Wire Wire Line
	8600 -2150 8750 -2150
Wire Wire Line
	7750 -1950 7750 -2150
Connection ~ 7750 -2150
Wire Wire Line
	7750 -2150 8600 -2150
Wire Wire Line
	7750 -1650 7750 -1400
Text Notes 7500 -2500 0    79   ~ 0
Circuito Medidor de Bateria
Wire Notes Line
	9450 -2700 9450 -750
Wire Notes Line
	9450 -750 7200 -750
Wire Notes Line
	7200 -750 7200 -2700
Wire Notes Line
	7200 -2700 9450 -2700
Wire Wire Line
	4250 -2250 4250 -1250
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D800D26
P 3600 -900
F 0 "J?" H 3628 -874 50  0000 L CNN
F 1 "8.4V_PlacaCentral" H 3750 -900 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 3600 -900 50  0001 C CNN
F 3 "~" H 3600 -900 50  0001 C CNN
	1    3600 -900
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D800D2D
P 4450 -900
F 0 "J?" H 4478 -874 50  0000 L CNN
F 1 "GND_PlacaCentral" H 4600 -900 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 4450 -900 50  0001 C CNN
F 3 "~" H 4450 -900 50  0001 C CNN
	1    4450 -900
	1    0    0    -1  
$EndComp
Text GLabel 4350 -1250 2    50   Input ~ 0
GND
Text GLabel 7600 -900 0    50   Input ~ 0
GND
$Comp
L Mechanical:MountingHole H?
U 1 1 5D800D36
P 2850 -650
F 0 "H?" H 2950 -604 50  0000 L CNN
F 1 "Furos" H 2950 -695 50  0000 L CNN
F 2 "Wire_Pads:SolderWirePad_single_2-5mmDrill" H 2850 -650 50  0001 C CNN
F 3 "~" H 2850 -650 50  0001 C CNN
	1    2850 -650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5D800D3D
P 2850 -400
F 0 "H?" H 2950 -354 50  0000 L CNN
F 1 "Furos" H 2950 -445 50  0000 L CNN
F 2 "Wire_Pads:SolderWirePad_single_2-5mmDrill" H 2850 -400 50  0001 C CNN
F 3 "~" H 2850 -400 50  0001 C CNN
	1    2850 -400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D800D44
P 3150 -2350
F 0 "J?" H 3250 -2350 50  0000 C CNN
F 1 "PinoCheckBateriaVcc" H 3750 -2350 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 3150 -2350 50  0001 C CNN
F 3 "~" H 3150 -2350 50  0001 C CNN
	1    3150 -2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3350 -2350 3400 -2350
$Comp
L Device:R R?
U 1 1 5D800D4C
P 3550 -2350
F 0 "R?" V 3550 -2350 50  0000 C CNN
F 1 "R10KBatCheck" V 3650 -2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3480 -2350 50  0001 C CNN
F 3 "~" H 3550 -2350 50  0001 C CNN
	1    3550 -2350
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 -2350 3800 -2350
Wire Wire Line
	3800 -2500 3800 -2450
Wire Wire Line
	3800 -2350 3800 -2300
Connection ~ 3800 -2350
Wire Wire Line
	3800 -2000 3800 -1950
Text GLabel 3650 -2450 0    50   Input ~ 0
8.4VCircuitoMedidor
Wire Wire Line
	3650 -2450 3800 -2450
Connection ~ 3800 -2450
Wire Wire Line
	3800 -2450 3800 -2350
Text GLabel 7750 -2400 2    50   Input ~ 0
8.4VCircuitoMedidor
Wire Wire Line
	7750 -2400 7750 -2150
Wire Notes Line
	5950 -3000 5950 -800
Wire Notes Line
	2150 -3000 2150 -800
Wire Wire Line
	3800 -1200 3800 -900
Wire Wire Line
	4250 -900 4250 -1250
Connection ~ 4250 -1250
Wire Wire Line
	8600 -900 7750 -900
Wire Wire Line
	7600 -900 7750 -900
Connection ~ 7750 -900
$EndSCHEMATC
