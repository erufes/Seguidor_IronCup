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
$Comp
L Device:R_POT_TRIM_US RV2
U 1 1 5D400987
P 3650 2550
F 0 "RV2" H 3550 2600 50  0000 R CNN
F 1 "R10KPOT_TRIMEsq" H 3850 2300 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical" H 3650 2550 50  0001 C CNN
F 3 "~" H 3650 2550 50  0001 C CNN
	1    3650 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_TRIM_US RV1
U 1 1 5D4015A7
P 2850 2550
F 0 "RV1" H 2782 2504 50  0000 R CNN
F 1 "R10KPOT_TRIMEsq" H 3100 2800 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical" H 2850 2550 50  0001 C CNN
F 3 "~" H 2850 2550 50  0001 C CNN
	1    2850 2550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5D402880
P 1600 2000
F 0 "R1" V 1807 2000 50  0000 C CNN
F 1 "R220ledIREsq" V 1716 2000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1530 2000 50  0001 C CNN
F 3 "~" H 1600 2000 50  0001 C CNN
	1    1600 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5D4030B7
P 3950 2750
F 0 "R3" H 4020 2796 50  0000 L CNN
F 1 "R10kEsq" H 4020 2705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3880 2750 50  0001 C CNN
F 3 "~" H 3950 2750 50  0001 C CNN
	1    3950 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J2
U 1 1 5D403B8C
P 2400 3750
F 0 "J2" H 2428 3776 50  0000 L CNN
F 1 "Conn_01x01_Female" H 2428 3685 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 2400 3750 50  0001 C CNN
F 3 "~" H 2400 3750 50  0001 C CNN
	1    2400 3750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J1
U 1 1 5D4040C9
P 2400 3550
F 0 "J1" H 2428 3576 50  0000 L CNN
F 1 "Conn_01x01_Female" H 2428 3485 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 2400 3550 50  0001 C CNN
F 3 "~" H 2400 3550 50  0001 C CNN
	1    2400 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J3
U 1 1 5D4042C4
P 2400 3950
F 0 "J3" H 2428 3976 50  0000 L CNN
F 1 "Conn_01x01_Female" H 2428 3885 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 2400 3950 50  0001 C CNN
F 3 "~" H 2400 3950 50  0001 C CNN
	1    2400 3950
	1    0    0    -1  
$EndComp
Text GLabel 2100 3550 0    50   Input ~ 0
SinalEncoderEsq
$Comp
L Sensores_e_componentes_SL:TCRT5000 U1
U 1 1 5D3FFB2A
P 2300 2050
F 0 "U1" H 2300 2537 60  0000 C CNN
F 1 "TCRT5000Esq" H 2300 2431 60  0000 C CNN
F 2 "Sensores_e_componentes_SL:TCRT5000Extendido" H 2300 2050 60  0001 C CNN
F 3 "" H 2300 2050 60  0000 C CNN
	1    2300 2050
	1    0    0    -1  
$EndComp
Text GLabel 1400 2150 0    50   Input ~ 0
VccEsq
Wire Wire Line
	1400 2150 1450 2150
Wire Wire Line
	1450 2150 1450 2000
Wire Wire Line
	1450 2150 1450 2250
Wire Wire Line
	1450 2250 1800 2250
Connection ~ 1450 2150
Wire Wire Line
	1750 2000 1800 2000
Text GLabel 2850 2100 2    50   Input ~ 0
GNDEsq
Wire Wire Line
	2850 2100 2800 2100
$Comp
L Amplifier_Operational:LM741 U2
U 1 1 5D406FDF
P 4450 2450
F 0 "U2" H 4500 2600 50  0000 L CNN
F 1 "LM741Esq" H 4600 2300 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 4500 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm741.pdf" H 4600 2600 50  0001 C CNN
	1    4450 2450
	1    0    0    -1  
$EndComp
NoConn ~ 4450 2750
NoConn ~ 4550 2750
Wire Wire Line
	4350 2100 4350 2150
Wire Wire Line
	3650 2100 3800 2100
Wire Wire Line
	3800 2250 3650 2250
Wire Wire Line
	3650 2250 3650 2400
Wire Wire Line
	3800 2100 3800 2250
Connection ~ 3800 2100
Wire Wire Line
	3800 2100 4350 2100
Wire Wire Line
	3800 2550 3950 2550
NoConn ~ 3650 2700
Text GLabel 4800 2450 2    50   Input ~ 0
SinalEncoderEsq
Wire Wire Line
	4800 2450 4750 2450
Wire Wire Line
	3950 2600 3950 2550
Connection ~ 3950 2550
Wire Wire Line
	3950 2550 4150 2550
Wire Wire Line
	3950 2900 3950 2950
Wire Wire Line
	4350 2950 3950 2950
Wire Wire Line
	4350 2750 4350 2950
Connection ~ 3950 2950
Wire Wire Line
	2850 2350 2850 2400
NoConn ~ 2850 2700
Wire Wire Line
	2100 3950 2150 3950
Wire Wire Line
	2100 3750 2150 3750
Wire Wire Line
	2100 3550 2150 3550
$Comp
L Device:R R2
U 1 1 5D410C75
P 2550 2700
F 0 "R2" V 2550 2700 50  0000 C CNN
F 1 "R1KEsq" V 2450 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2480 2700 50  0001 C CNN
F 3 "~" H 2550 2700 50  0001 C CNN
	1    2550 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2350 2850 2350
Wire Wire Line
	2850 2350 4150 2350
Connection ~ 2850 2350
Text Notes 1750 3300 0    79   ~ 0
Pinos Encoder Esquerdo
Text Notes 1800 1450 0    79   ~ 0
Encoder Esquerda
$Comp
L Device:R_POT_TRIM_US RV4
U 1 1 5D434C2F
P 8850 2600
F 0 "RV4" H 8750 2650 50  0000 R CNN
F 1 "R10KPOT_TRIM" H 9050 2350 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical" H 8850 2600 50  0001 C CNN
F 3 "~" H 8850 2600 50  0001 C CNN
	1    8850 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_TRIM_US RV3
U 1 1 5D434C39
P 8050 2600
F 0 "RV3" H 7982 2554 50  0000 R CNN
F 1 "R10KPOT_TRIMDir" H 8300 2850 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical" H 8050 2600 50  0001 C CNN
F 3 "~" H 8050 2600 50  0001 C CNN
	1    8050 2600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5D434C43
P 6800 2050
F 0 "R4" V 7007 2050 50  0000 C CNN
F 1 "R220ledIRDir" V 6916 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6730 2050 50  0001 C CNN
F 3 "~" H 6800 2050 50  0001 C CNN
	1    6800 2050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5D434C4D
P 9150 2800
F 0 "R6" H 9220 2846 50  0000 L CNN
F 1 "R10k" H 9220 2755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9080 2800 50  0001 C CNN
F 3 "~" H 9150 2800 50  0001 C CNN
	1    9150 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J5
U 1 1 5D434C57
P 7600 3800
F 0 "J5" H 7628 3826 50  0000 L CNN
F 1 "Conn_01x01_Female" H 7628 3735 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 7600 3800 50  0001 C CNN
F 3 "~" H 7600 3800 50  0001 C CNN
	1    7600 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J4
U 1 1 5D434C61
P 7600 3600
F 0 "J4" H 7628 3626 50  0000 L CNN
F 1 "Conn_01x01_Female" H 7628 3535 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 7600 3600 50  0001 C CNN
F 3 "~" H 7600 3600 50  0001 C CNN
	1    7600 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J6
U 1 1 5D434C6B
P 7600 4000
F 0 "J6" H 7628 4026 50  0000 L CNN
F 1 "Conn_01x01_Female" H 7628 3935 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 7600 4000 50  0001 C CNN
F 3 "~" H 7600 4000 50  0001 C CNN
	1    7600 4000
	1    0    0    -1  
$EndComp
Text GLabel 7300 4000 0    50   Input ~ 0
GNDDir
Text GLabel 7300 3600 0    50   Input ~ 0
SinalEncoderDIr
$Comp
L Sensores_e_componentes_SL:TCRT5000 U3
U 1 1 5D434C77
P 7500 2100
F 0 "U3" H 7500 2587 60  0000 C CNN
F 1 "TCRT5000Dir" H 7500 2481 60  0000 C CNN
F 2 "Sensores_e_componentes_SL:TCRT5000Extendido" H 7500 2100 60  0001 C CNN
F 3 "" H 7500 2100 60  0000 C CNN
	1    7500 2100
	1    0    0    -1  
$EndComp
Text GLabel 6600 2200 0    50   Input ~ 0
VccDir
Text GLabel 7300 3800 0    50   Input ~ 0
VccDir
Wire Wire Line
	6600 2200 6650 2200
Wire Wire Line
	6650 2200 6650 2050
Wire Wire Line
	6650 2200 6650 2300
Wire Wire Line
	6650 2300 7000 2300
Connection ~ 6650 2200
Wire Wire Line
	6950 2050 7000 2050
Text GLabel 8050 2150 2    50   Input ~ 0
GNDDir
Wire Wire Line
	8050 2150 8000 2150
$Comp
L Amplifier_Operational:LM741 U4
U 1 1 5D434C8B
P 9650 2500
F 0 "U4" H 9700 2650 50  0000 L CNN
F 1 "LM741" H 9800 2350 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 9700 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm741.pdf" H 9800 2650 50  0001 C CNN
	1    9650 2500
	1    0    0    -1  
$EndComp
NoConn ~ 9650 2800
NoConn ~ 9750 2800
Wire Wire Line
	9550 2150 9550 2200
Wire Wire Line
	8850 2150 9000 2150
Wire Wire Line
	9000 2300 8850 2300
Wire Wire Line
	8850 2300 8850 2450
Wire Wire Line
	9000 2150 9000 2300
Connection ~ 9000 2150
Wire Wire Line
	9000 2150 9550 2150
Wire Wire Line
	9000 2600 9150 2600
NoConn ~ 8850 2750
Text GLabel 10000 2500 2    50   Input ~ 0
SinalEncoderDIr
Wire Wire Line
	10000 2500 9950 2500
Wire Wire Line
	9150 2650 9150 2600
Connection ~ 9150 2600
Wire Wire Line
	9150 2600 9350 2600
Wire Wire Line
	9150 2950 9150 3000
Wire Wire Line
	9550 3000 9150 3000
Wire Wire Line
	9550 2800 9550 3000
Connection ~ 9150 3000
Wire Wire Line
	8050 2400 8050 2450
NoConn ~ 8050 2750
Wire Wire Line
	7300 4000 7350 4000
Wire Wire Line
	7300 3800 7350 3800
Wire Wire Line
	7300 3600 7350 3600
$Comp
L Device:R R5
U 1 1 5D434CB2
P 7750 2750
F 0 "R5" V 7750 2750 50  0000 C CNN
F 1 "R1KDir" V 7650 2750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7680 2750 50  0001 C CNN
F 3 "~" H 7750 2750 50  0001 C CNN
	1    7750 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2400 8050 2400
Wire Wire Line
	8050 2400 9350 2400
Connection ~ 8050 2400
Text Notes 6950 3350 0    79   ~ 0
Pinos Encoder Direito
Text Notes 7000 1500 0    79   ~ 0
Encoder Direito
Wire Wire Line
	7900 2600 7750 2600
Wire Wire Line
	7750 2900 7750 3000
Wire Wire Line
	7750 3000 7650 3000
Wire Wire Line
	7750 3000 9150 3000
Connection ~ 7750 3000
Wire Wire Line
	2550 2850 2550 2950
Wire Wire Line
	2550 2950 2350 2950
Wire Wire Line
	2550 2950 3950 2950
Connection ~ 2550 2950
Wire Wire Line
	2700 2550 2550 2550
Text GLabel 3650 2100 0    50   Input ~ 0
VccEsq
Text GLabel 2350 2950 0    50   Input ~ 0
GNDEsq
Text GLabel 2100 3750 0    50   Input ~ 0
VccEsq
Text GLabel 2100 3950 0    50   Input ~ 0
GNDEsq
Text GLabel 8850 2150 0    50   Input ~ 0
VccDir
Text GLabel 7650 3000 0    50   Input ~ 0
GNDDir
Text Notes 3400 3300 0    79   ~ 0
Furos Suporte Encoder Esquerdo
$Comp
L Mechanical:MountingHole H1
U 1 1 5D406AF8
P 3850 3550
F 0 "H1" H 3950 3596 50  0000 L CNN
F 1 "Furo1Esq" H 3950 3505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 3850 3550 50  0001 C CNN
F 3 "~" H 3850 3550 50  0001 C CNN
	1    3850 3550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5D4070A4
P 3850 3900
F 0 "H2" H 3950 3946 50  0000 L CNN
F 1 "Furo2Esq" H 3950 3855 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 3850 3900 50  0001 C CNN
F 3 "~" H 3850 3900 50  0001 C CNN
	1    3850 3900
	1    0    0    -1  
$EndComp
Text Notes 8700 3350 0    79   ~ 0
Furos Suporte Encoder Direito
$Comp
L Mechanical:MountingHole H3
U 1 1 5D407741
P 9150 3600
F 0 "H3" H 9250 3646 50  0000 L CNN
F 1 "Furo1Dir" H 9250 3555 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 9150 3600 50  0001 C CNN
F 3 "~" H 9150 3600 50  0001 C CNN
	1    9150 3600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5D40774B
P 9150 3950
F 0 "H4" H 9250 3996 50  0000 L CNN
F 1 "Furo2Dir" H 9250 3905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 9150 3950 50  0001 C CNN
F 3 "~" H 9150 3950 50  0001 C CNN
	1    9150 3950
	1    0    0    -1  
$EndComp
Text Notes 3350 4300 0    79   ~ 0
Furos Motor Case Encoder Esquerdo
Text Notes 8700 4300 0    79   ~ 0
Furos Motor Case Encoder Direito
$Comp
L Mechanical:MountingHole H5
U 1 1 5D40CB8F
P 3850 4550
F 0 "H5" H 3950 4596 50  0000 L CNN
F 1 "Furo3Esq" H 3950 4505 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 3850 4550 50  0001 C CNN
F 3 "~" H 3850 4550 50  0001 C CNN
	1    3850 4550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H6
U 1 1 5D40CB95
P 3850 4900
F 0 "H6" H 3950 4946 50  0000 L CNN
F 1 "Furo4Esq" H 3950 4855 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 3850 4900 50  0001 C CNN
F 3 "~" H 3850 4900 50  0001 C CNN
	1    3850 4900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H7
U 1 1 5D40DDE5
P 4600 4550
F 0 "H7" H 4700 4596 50  0000 L CNN
F 1 "Furo5Esq" H 4700 4505 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 4600 4550 50  0001 C CNN
F 3 "~" H 4600 4550 50  0001 C CNN
	1    4600 4550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H8
U 1 1 5D40DDEB
P 4600 4900
F 0 "H8" H 4700 4946 50  0000 L CNN
F 1 "Furo6Esq" H 4700 4855 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 4600 4900 50  0001 C CNN
F 3 "~" H 4600 4900 50  0001 C CNN
	1    4600 4900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H9
U 1 1 5D40EB57
P 9150 4550
F 0 "H9" H 9250 4596 50  0000 L CNN
F 1 "Furo3Dir" H 9250 4505 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 9150 4550 50  0001 C CNN
F 3 "~" H 9150 4550 50  0001 C CNN
	1    9150 4550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H10
U 1 1 5D40EB61
P 9150 4900
F 0 "H10" H 9250 4946 50  0000 L CNN
F 1 "Furo4Dir" H 9250 4855 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 9150 4900 50  0001 C CNN
F 3 "~" H 9150 4900 50  0001 C CNN
	1    9150 4900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H11
U 1 1 5D40EB6B
P 9900 4550
F 0 "H11" H 10000 4596 50  0000 L CNN
F 1 "Furo5Dir" H 10000 4505 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 9900 4550 50  0001 C CNN
F 3 "~" H 9900 4550 50  0001 C CNN
	1    9900 4550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H12
U 1 1 5D40EB75
P 9900 4900
F 0 "H12" H 10000 4946 50  0000 L CNN
F 1 "Furo6Dir" H 10000 4855 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 9900 4900 50  0001 C CNN
F 3 "~" H 9900 4900 50  0001 C CNN
	1    9900 4900
	1    0    0    -1  
$EndComp
Text HLabel 2100 3650 0    50   Output ~ 0
Sinal_OutEncoderEsquerdo
Text HLabel 2100 3850 0    50   Input ~ 0
Vcc_InEncoderEsquerdo
Text HLabel 2100 4050 0    50   Input ~ 0
GND_InEncoderEsquerdo
Text HLabel 7300 3700 0    50   Output ~ 0
Sinal_OutEncoderDireito
Text HLabel 7300 3900 0    50   Input ~ 0
Vcc_InEncoderDireito
Text HLabel 7300 4100 0    50   Input ~ 0
GND_InEncoderDireito
Wire Wire Line
	2100 3650 2150 3650
Wire Wire Line
	2150 3650 2150 3550
Connection ~ 2150 3550
Wire Wire Line
	2150 3550 2200 3550
Wire Wire Line
	2100 3850 2150 3850
Wire Wire Line
	2150 3850 2150 3750
Connection ~ 2150 3750
Wire Wire Line
	2150 3750 2200 3750
Wire Wire Line
	2100 4050 2150 4050
Wire Wire Line
	2150 4050 2150 3950
Connection ~ 2150 3950
Wire Wire Line
	2150 3950 2200 3950
Wire Wire Line
	7300 3700 7350 3700
Wire Wire Line
	7350 3700 7350 3600
Connection ~ 7350 3600
Wire Wire Line
	7350 3600 7400 3600
Wire Wire Line
	7300 3900 7350 3900
Wire Wire Line
	7350 3900 7350 3800
Connection ~ 7350 3800
Wire Wire Line
	7350 3800 7400 3800
Wire Wire Line
	7300 4100 7350 4100
Wire Wire Line
	7350 4100 7350 4000
Connection ~ 7350 4000
Wire Wire Line
	7350 4000 7400 4000
$EndSCHEMATC
