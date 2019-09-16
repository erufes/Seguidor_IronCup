EESchema Schematic File Version 4
LIBS:Placa_central_v01 - Encoder-cache
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
L Device:R_POT_TRIM_US RV?
U 1 1 5D801742
P 3750 -3100
F 0 "RV?" H 3650 -3050 50  0000 R CNN
F 1 "R10KPOT_TRIMEsq" H 3950 -3350 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical" H 3750 -3100 50  0001 C CNN
F 3 "~" H 3750 -3100 50  0001 C CNN
	1    3750 -3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_TRIM_US RV?
U 1 1 5D801749
P 2950 -3100
F 0 "RV?" H 2882 -3146 50  0000 R CNN
F 1 "R10KPOT_TRIMEsq" H 3200 -2850 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical" H 2950 -3100 50  0001 C CNN
F 3 "~" H 2950 -3100 50  0001 C CNN
	1    2950 -3100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5D801750
P 1700 -3650
F 0 "R?" V 1907 -3650 50  0000 C CNN
F 1 "R220ledIREsq" V 1816 -3650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1630 -3650 50  0001 C CNN
F 3 "~" H 1700 -3650 50  0001 C CNN
	1    1700 -3650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D801757
P 4050 -2900
F 0 "R?" H 4120 -2854 50  0000 L CNN
F 1 "R10kEsq" H 4120 -2945 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3980 -2900 50  0001 C CNN
F 3 "~" H 4050 -2900 50  0001 C CNN
	1    4050 -2900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80175E
P 2500 -1900
F 0 "J?" H 2528 -1874 50  0000 L CNN
F 1 "Conn_01x01_Female" H 2528 -1965 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 2500 -1900 50  0001 C CNN
F 3 "~" H 2500 -1900 50  0001 C CNN
	1    2500 -1900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D801765
P 2500 -2100
F 0 "J?" H 2528 -2074 50  0000 L CNN
F 1 "Conn_01x01_Female" H 2528 -2165 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 2500 -2100 50  0001 C CNN
F 3 "~" H 2500 -2100 50  0001 C CNN
	1    2500 -2100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80176C
P 2500 -1700
F 0 "J?" H 2528 -1674 50  0000 L CNN
F 1 "Conn_01x01_Female" H 2528 -1765 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 2500 -1700 50  0001 C CNN
F 3 "~" H 2500 -1700 50  0001 C CNN
	1    2500 -1700
	1    0    0    -1  
$EndComp
Text GLabel 2200 -2100 0    50   Input ~ 0
SinalEncoderEsq
$Comp
L Sensores_e_componentes_SL:TCRT5000 U?
U 1 1 5D801774
P 2400 -3600
F 0 "U?" H 2400 -3113 60  0000 C CNN
F 1 "TCRT5000Esq" H 2400 -3219 60  0000 C CNN
F 2 "Sensores_e_componentes_SL:TCRT5000Extendido" H 2400 -3600 60  0001 C CNN
F 3 "" H 2400 -3600 60  0000 C CNN
	1    2400 -3600
	1    0    0    -1  
$EndComp
Text GLabel 1500 -3500 0    50   Input ~ 0
VccEsq
Wire Wire Line
	1500 -3500 1550 -3500
Wire Wire Line
	1550 -3500 1550 -3650
Wire Wire Line
	1550 -3500 1550 -3400
Wire Wire Line
	1550 -3400 1900 -3400
Connection ~ 1550 -3500
Wire Wire Line
	1850 -3650 1900 -3650
Text GLabel 2950 -3550 2    50   Input ~ 0
GNDEsq
Wire Wire Line
	2950 -3550 2900 -3550
$Comp
L Amplifier_Operational:LM741 U?
U 1 1 5D801784
P 4550 -3200
F 0 "U?" H 4600 -3050 50  0000 L CNN
F 1 "LM741Esq" H 4700 -3350 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 4600 -3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm741.pdf" H 4700 -3050 50  0001 C CNN
	1    4550 -3200
	1    0    0    -1  
$EndComp
NoConn ~ 4550 -2900
NoConn ~ 4650 -2900
Wire Wire Line
	4450 -3550 4450 -3500
Wire Wire Line
	3750 -3550 3900 -3550
Wire Wire Line
	3900 -3400 3750 -3400
Wire Wire Line
	3750 -3400 3750 -3250
Wire Wire Line
	3900 -3550 3900 -3400
Connection ~ 3900 -3550
Wire Wire Line
	3900 -3550 4450 -3550
Wire Wire Line
	3900 -3100 4050 -3100
NoConn ~ 3750 -2950
Text GLabel 4900 -3200 2    50   Input ~ 0
SinalEncoderEsq
Wire Wire Line
	4900 -3200 4850 -3200
Wire Wire Line
	4050 -3050 4050 -3100
Connection ~ 4050 -3100
Wire Wire Line
	4050 -3100 4250 -3100
Wire Wire Line
	4050 -2750 4050 -2700
Wire Wire Line
	4450 -2700 4050 -2700
Wire Wire Line
	4450 -2900 4450 -2700
Connection ~ 4050 -2700
Wire Wire Line
	2950 -3300 2950 -3250
NoConn ~ 2950 -2950
Wire Wire Line
	2200 -1700 2300 -1700
Wire Wire Line
	2200 -1900 2300 -1900
Wire Wire Line
	2200 -2100 2300 -2100
$Comp
L Device:R R?
U 1 1 5D8017A4
P 2650 -2950
F 0 "R?" V 2650 -2950 50  0000 C CNN
F 1 "R1KEsq" V 2550 -2950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2580 -2950 50  0001 C CNN
F 3 "~" H 2650 -2950 50  0001 C CNN
	1    2650 -2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 -3300 2950 -3300
Wire Wire Line
	2950 -3300 4250 -3300
Connection ~ 2950 -3300
Text Notes 1850 -2350 0    79   ~ 0
Pinos Encoder Esquerdo
Text Notes 1900 -4200 0    79   ~ 0
Encoder Esquerda
$Comp
L Device:R_POT_TRIM_US RV?
U 1 1 5D8017B0
P 8950 -3050
F 0 "RV?" H 8850 -3000 50  0000 R CNN
F 1 "R10KPOT_TRIM" H 9150 -3300 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical" H 8950 -3050 50  0001 C CNN
F 3 "~" H 8950 -3050 50  0001 C CNN
	1    8950 -3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_TRIM_US RV?
U 1 1 5D8017B7
P 8150 -3050
F 0 "RV?" H 8082 -3096 50  0000 R CNN
F 1 "R10KPOT_TRIMDir" H 8400 -2800 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical" H 8150 -3050 50  0001 C CNN
F 3 "~" H 8150 -3050 50  0001 C CNN
	1    8150 -3050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5D8017BE
P 6900 -3600
F 0 "R?" V 7107 -3600 50  0000 C CNN
F 1 "R220ledIRDir" V 7016 -3600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6830 -3600 50  0001 C CNN
F 3 "~" H 6900 -3600 50  0001 C CNN
	1    6900 -3600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D8017C5
P 9250 -2850
F 0 "R?" H 9320 -2804 50  0000 L CNN
F 1 "R10k" H 9320 -2895 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9180 -2850 50  0001 C CNN
F 3 "~" H 9250 -2850 50  0001 C CNN
	1    9250 -2850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D8017CC
P 7700 -1850
F 0 "J?" H 7728 -1824 50  0000 L CNN
F 1 "Conn_01x01_Female" H 7728 -1915 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 7700 -1850 50  0001 C CNN
F 3 "~" H 7700 -1850 50  0001 C CNN
	1    7700 -1850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D8017D3
P 7700 -2050
F 0 "J?" H 7728 -2024 50  0000 L CNN
F 1 "Conn_01x01_Female" H 7728 -2115 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 7700 -2050 50  0001 C CNN
F 3 "~" H 7700 -2050 50  0001 C CNN
	1    7700 -2050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D8017DA
P 7700 -1650
F 0 "J?" H 7728 -1624 50  0000 L CNN
F 1 "Conn_01x01_Female" H 7728 -1715 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 7700 -1650 50  0001 C CNN
F 3 "~" H 7700 -1650 50  0001 C CNN
	1    7700 -1650
	1    0    0    -1  
$EndComp
Text GLabel 7400 -1650 0    50   Input ~ 0
GNDDir
Text GLabel 7400 -2050 0    50   Input ~ 0
SinalEncoderDIr
$Comp
L Sensores_e_componentes_SL:TCRT5000 U?
U 1 1 5D8017E3
P 7600 -3550
F 0 "U?" H 7600 -3063 60  0000 C CNN
F 1 "TCRT5000Dir" H 7600 -3169 60  0000 C CNN
F 2 "Sensores_e_componentes_SL:TCRT5000Extendido" H 7600 -3550 60  0001 C CNN
F 3 "" H 7600 -3550 60  0000 C CNN
	1    7600 -3550
	1    0    0    -1  
$EndComp
Text GLabel 6700 -3450 0    50   Input ~ 0
VccDir
Text GLabel 7400 -1850 0    50   Input ~ 0
VccDir
Wire Wire Line
	6700 -3450 6750 -3450
Wire Wire Line
	6750 -3450 6750 -3600
Wire Wire Line
	6750 -3450 6750 -3350
Wire Wire Line
	6750 -3350 7100 -3350
Connection ~ 6750 -3450
Wire Wire Line
	7050 -3600 7100 -3600
Text GLabel 8150 -3500 2    50   Input ~ 0
GNDDir
Wire Wire Line
	8150 -3500 8100 -3500
$Comp
L Amplifier_Operational:LM741 U?
U 1 1 5D8017F4
P 9750 -3150
F 0 "U?" H 9800 -3000 50  0000 L CNN
F 1 "LM741" H 9900 -3300 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 9800 -3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm741.pdf" H 9900 -3000 50  0001 C CNN
	1    9750 -3150
	1    0    0    -1  
$EndComp
NoConn ~ 9750 -2850
NoConn ~ 9850 -2850
Wire Wire Line
	9650 -3500 9650 -3450
Wire Wire Line
	8950 -3500 9100 -3500
Wire Wire Line
	9100 -3350 8950 -3350
Wire Wire Line
	8950 -3350 8950 -3200
Wire Wire Line
	9100 -3500 9100 -3350
Connection ~ 9100 -3500
Wire Wire Line
	9100 -3500 9650 -3500
Wire Wire Line
	9100 -3050 9250 -3050
NoConn ~ 8950 -2900
Text GLabel 10100 -3150 2    50   Input ~ 0
SinalEncoderDIr
Wire Wire Line
	10100 -3150 10050 -3150
Wire Wire Line
	9250 -3000 9250 -3050
Connection ~ 9250 -3050
Wire Wire Line
	9250 -3050 9450 -3050
Wire Wire Line
	9250 -2700 9250 -2650
Wire Wire Line
	9650 -2650 9250 -2650
Wire Wire Line
	9650 -2850 9650 -2650
Connection ~ 9250 -2650
Wire Wire Line
	8150 -3250 8150 -3200
NoConn ~ 8150 -2900
Wire Wire Line
	7400 -1650 7500 -1650
Wire Wire Line
	7400 -1850 7500 -1850
Wire Wire Line
	7400 -2050 7500 -2050
$Comp
L Device:R R?
U 1 1 5D801814
P 7850 -2900
F 0 "R?" V 7850 -2900 50  0000 C CNN
F 1 "R1KDir" V 7750 -2900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7780 -2900 50  0001 C CNN
F 3 "~" H 7850 -2900 50  0001 C CNN
	1    7850 -2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 -3250 8150 -3250
Wire Wire Line
	8150 -3250 9450 -3250
Connection ~ 8150 -3250
Text Notes 7050 -2300 0    79   ~ 0
Pinos Encoder Direito
Text Notes 7100 -4150 0    79   ~ 0
Encoder Direito
Wire Wire Line
	8000 -3050 7850 -3050
Wire Wire Line
	7850 -2750 7850 -2650
Wire Wire Line
	7850 -2650 7750 -2650
Wire Wire Line
	7850 -2650 9250 -2650
Connection ~ 7850 -2650
Wire Wire Line
	2650 -2800 2650 -2700
Wire Wire Line
	2650 -2700 2450 -2700
Wire Wire Line
	2650 -2700 4050 -2700
Connection ~ 2650 -2700
Wire Wire Line
	2800 -3100 2650 -3100
Text GLabel 3750 -3550 0    50   Input ~ 0
VccEsq
Text GLabel 2450 -2700 0    50   Input ~ 0
GNDEsq
Text GLabel 2200 -1900 0    50   Input ~ 0
VccEsq
Text GLabel 2200 -1700 0    50   Input ~ 0
GNDEsq
Text GLabel 8950 -3500 0    50   Input ~ 0
VccDir
Text GLabel 7750 -2650 0    50   Input ~ 0
GNDDir
Text Notes 3500 -2350 0    79   ~ 0
Furos Suporte Encoder Esquerdo
$Comp
L Mechanical:MountingHole H?
U 1 1 5D801831
P 3950 -2100
F 0 "H?" H 4050 -2054 50  0000 L CNN
F 1 "Furo1Esq" H 4050 -2145 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 3950 -2100 50  0001 C CNN
F 3 "~" H 3950 -2100 50  0001 C CNN
	1    3950 -2100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5D801838
P 3950 -1750
F 0 "H?" H 4050 -1704 50  0000 L CNN
F 1 "Furo2Esq" H 4050 -1795 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 3950 -1750 50  0001 C CNN
F 3 "~" H 3950 -1750 50  0001 C CNN
	1    3950 -1750
	1    0    0    -1  
$EndComp
Text Notes 8800 -2300 0    79   ~ 0
Furos Suporte Encoder Direito
$Comp
L Mechanical:MountingHole H?
U 1 1 5D801840
P 9250 -2050
F 0 "H?" H 9350 -2004 50  0000 L CNN
F 1 "Furo1Dir" H 9350 -2095 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 9250 -2050 50  0001 C CNN
F 3 "~" H 9250 -2050 50  0001 C CNN
	1    9250 -2050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5D801847
P 9250 -1700
F 0 "H?" H 9350 -1654 50  0000 L CNN
F 1 "Furo2Dir" H 9350 -1745 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 9250 -1700 50  0001 C CNN
F 3 "~" H 9250 -1700 50  0001 C CNN
	1    9250 -1700
	1    0    0    -1  
$EndComp
Text Notes 3450 -1350 0    79   ~ 0
Furos Motor Case Encoder Esquerdo
Text Notes 8800 -1350 0    79   ~ 0
Furos Motor Case Encoder Direito
$Comp
L Mechanical:MountingHole H?
U 1 1 5D801850
P 3950 -1100
F 0 "H?" H 4050 -1054 50  0000 L CNN
F 1 "Furo3Esq" H 4050 -1145 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 3950 -1100 50  0001 C CNN
F 3 "~" H 3950 -1100 50  0001 C CNN
	1    3950 -1100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5D801857
P 3950 -750
F 0 "H?" H 4050 -704 50  0000 L CNN
F 1 "Furo4Esq" H 4050 -795 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 3950 -750 50  0001 C CNN
F 3 "~" H 3950 -750 50  0001 C CNN
	1    3950 -750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5D80185E
P 4700 -1100
F 0 "H?" H 4800 -1054 50  0000 L CNN
F 1 "Furo5Esq" H 4800 -1145 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 4700 -1100 50  0001 C CNN
F 3 "~" H 4700 -1100 50  0001 C CNN
	1    4700 -1100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5D801865
P 4700 -750
F 0 "H?" H 4800 -704 50  0000 L CNN
F 1 "Furo6Esq" H 4800 -795 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 4700 -750 50  0001 C CNN
F 3 "~" H 4700 -750 50  0001 C CNN
	1    4700 -750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5D80186C
P 9250 -1100
F 0 "H?" H 9350 -1054 50  0000 L CNN
F 1 "Furo3Dir" H 9350 -1145 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 9250 -1100 50  0001 C CNN
F 3 "~" H 9250 -1100 50  0001 C CNN
	1    9250 -1100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5D801873
P 9250 -750
F 0 "H?" H 9350 -704 50  0000 L CNN
F 1 "Furo4Dir" H 9350 -795 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 9250 -750 50  0001 C CNN
F 3 "~" H 9250 -750 50  0001 C CNN
	1    9250 -750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5D80187A
P 10000 -1100
F 0 "H?" H 10100 -1054 50  0000 L CNN
F 1 "Furo5Dir" H 10100 -1145 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 10000 -1100 50  0001 C CNN
F 3 "~" H 10000 -1100 50  0001 C CNN
	1    10000 -1100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5D801881
P 10000 -750
F 0 "H?" H 10100 -704 50  0000 L CNN
F 1 "Furo6Dir" H 10100 -795 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 10000 -750 50  0001 C CNN
F 3 "~" H 10000 -750 50  0001 C CNN
	1    10000 -750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
