EESchema Schematic File Version 4
LIBS:Placa_central_v01-cache
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
L Device:LED D4
U 1 1 5C81702D
P 10000 3300
F 0 "D4" H 9991 3516 50  0000 C CNN
F 1 "LedAzul" H 9991 3425 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 10000 3300 50  0001 C CNN
F 3 "~" H 10000 3300 50  0001 C CNN
	1    10000 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5C817C0F
P 9600 3300
F 0 "R6" V 9600 3300 50  0000 C CNN
F 1 "R330LedAzul" V 9500 3200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9530 3300 50  0001 C CNN
F 3 "~" H 9600 3300 50  0001 C CNN
	1    9600 3300
	0    1    1    0   
$EndComp
Text GLabel 2050 1150 0    50   Input ~ 0
8.4V
Text GLabel 2450 3300 2    50   Input ~ 0
GND
NoConn ~ 2750 2050
Text GLabel 1650 1850 0    50   Input ~ 0
Encoder1
Text GLabel 1650 2050 0    50   Input ~ 0
Encoder2
$Comp
L Switch:SW_Push SW3
U 1 1 5C81F7C0
P 9700 4500
F 0 "SW3" H 9700 4785 50  0000 C CNN
F 1 "SW_comando1" H 9700 4694 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 9700 4700 50  0001 C CNN
F 3 "" H 9700 4700 50  0001 C CNN
	1    9700 4500
	1    0    0    -1  
$EndComp
Text GLabel 1650 2850 0    50   Input ~ 0
SensorDir
Text GLabel 1650 2750 0    50   Input ~ 0
SensorEsq
Text GLabel 1650 2650 0    50   Input ~ 0
Motor1PWM
Text GLabel 1650 2150 0    50   Input ~ 0
Motor2PWM
Text GLabel 1650 2350 0    50   Input ~ 0
Motor1Dir1
Text GLabel 1650 2250 0    50   Input ~ 0
Motor1Dir2
Text GLabel 1650 2450 0    50   Input ~ 0
Motor2Dir1
Text GLabel 1650 2550 0    50   Input ~ 0
Motor2Dir2
Text GLabel 1650 1950 0    50   Input ~ 0
Botao1
Text GLabel 2550 1150 2    50   Input ~ 0
5VArduino
Text GLabel 6900 1350 0    50   Input ~ 0
5VPonteH
Text GLabel 6900 1700 0    50   Input ~ 0
Motor1Dir1
Text GLabel 6900 1800 0    50   Input ~ 0
Motor1Dir2
Text GLabel 6900 2100 0    50   Input ~ 0
Motor2PWM
Text GLabel 6900 1600 0    50   Input ~ 0
Motor1PWM
Text GLabel 6900 1900 0    50   Input ~ 0
Motor2Dir1
Text GLabel 6900 2000 0    50   Input ~ 0
Motor2Dir2
Text GLabel 6900 1450 0    50   Input ~ 0
GND
$Comp
L Connector:Conn_01x01_Female J42
U 1 1 5D17CCD0
P 7200 1800
F 0 "J42" H 7228 1826 50  0000 L CNN
F 1 "Conn_01x01_Motor1Dir2" H 7350 1800 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 7200 1800 50  0001 C CNN
F 3 "~" H 7200 1800 50  0001 C CNN
	1    7200 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J43
U 1 1 5D17CE09
P 7200 1900
F 0 "J43" H 7228 1926 50  0000 L CNN
F 1 "Conn_01x01_Motor2Dir1" H 7350 1900 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 7200 1900 50  0001 C CNN
F 3 "~" H 7200 1900 50  0001 C CNN
	1    7200 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J44
U 1 1 5D17CF2D
P 7200 2000
F 0 "J44" H 7228 2026 50  0000 L CNN
F 1 "Conn_01x01_Motor2Dir2" H 7350 2000 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 7200 2000 50  0001 C CNN
F 3 "~" H 7200 2000 50  0001 C CNN
	1    7200 2000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J45
U 1 1 5D17D53A
P 7200 2100
F 0 "J45" H 7228 2126 50  0000 L CNN
F 1 "Conn_01x01_Motor2PWM" H 7350 2100 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 7200 2100 50  0001 C CNN
F 3 "~" H 7200 2100 50  0001 C CNN
	1    7200 2100
	1    0    0    -1  
$EndComp
Text GLabel 6900 1250 0    50   Input ~ 0
8.4V
$Comp
L Connector:Conn_01x01_Female J37
U 1 1 5D1815D1
P 7200 1250
F 0 "J37" H 7228 1276 50  0000 L CNN
F 1 "Conn_01x01_8.4VPonteH" H 7350 1250 50  0000 L CNN
F 2 "Wire_Pads:SolderWirePad_single_1-2mmDrill" H 7200 1250 50  0001 C CNN
F 3 "~" H 7200 1250 50  0001 C CNN
	1    7200 1250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J39
U 1 1 5D181805
P 7200 1450
F 0 "J39" H 7228 1476 50  0000 L CNN
F 1 "Conn_01x01_GNDPonteH" H 7350 1450 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 7200 1450 50  0001 C CNN
F 3 "~" H 7200 1450 50  0001 C CNN
	1    7200 1450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J38
U 1 1 5D181A54
P 7200 1350
F 0 "J38" H 7228 1376 50  0000 L CNN
F 1 "Conn_01x01_5VPonteH" H 7350 1350 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 7200 1350 50  0001 C CNN
F 3 "~" H 7200 1350 50  0001 C CNN
	1    7200 1350
	1    0    0    -1  
$EndComp
Text Notes 6650 1100 0    79   ~ 0
Ponte H - Pinos soltos
$Comp
L Mechanical:MountingHole H4
U 1 1 5D1915F0
P 7700 3650
F 0 "H4" H 7800 3696 50  0000 L CNN
F 1 "FurosPonteH" H 7800 3605 50  0000 L CNN
F 2 "Sensores_e_componentes_SL:Ponte_H_furos" H 7700 3650 50  0001 C CNN
F 3 "~" H 7700 3650 50  0001 C CNN
	1    7700 3650
	1    0    0    -1  
$EndComp
Text Notes 1700 1050 0    79   ~ 0
Arduino Nano V3.x
NoConn ~ 2350 1250
Text GLabel 9300 3300 0    59   Input ~ 0
LedAzul
Text GLabel 10300 3300 2    59   Input ~ 0
GND
Text Notes 9300 3000 0    79   ~ 0
Leds da pcb
$Comp
L Device:R R7
U 1 1 5D1DC4E5
P 9600 3700
F 0 "R7" V 9600 3700 50  0000 C CNN
F 1 "R330LedVerde" V 9500 3600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9530 3700 50  0001 C CNN
F 3 "~" H 9600 3700 50  0001 C CNN
	1    9600 3700
	0    1    1    0   
$EndComp
$Comp
L Device:LED D5
U 1 1 5D1DC66B
P 10000 3700
F 0 "D5" H 9991 3916 50  0000 C CNN
F 1 "LedVerde" H 9991 3825 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 10000 3700 50  0001 C CNN
F 3 "~" H 10000 3700 50  0001 C CNN
	1    10000 3700
	1    0    0    -1  
$EndComp
Text GLabel 10300 3700 2    59   Input ~ 0
GND
Text GLabel 9300 3700 0    59   Input ~ 0
5VArduino
$Comp
L Device:R RPullDown1
U 1 1 5D1E3F24
P 10050 4750
F 0 "RPullDown1" H 10120 4796 50  0000 L CNN
F 1 "R10KPullDown" H 10120 4705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9980 4750 50  0001 C CNN
F 3 "~" H 10050 4750 50  0001 C CNN
	1    10050 4750
	1    0    0    -1  
$EndComp
Text GLabel 10150 4500 2    50   Input ~ 0
Botao1
Text GLabel 9950 5000 0    59   Input ~ 0
GND
Text Notes 9250 4100 0    79   ~ 0
Botoes da pcb
$Comp
L Connector:Conn_01x01_Female J48
U 1 1 5D18DC68
P 9650 1450
F 0 "J48" H 9678 1476 50  0000 L CNN
F 1 "Conn_01x01_5VEncoderEsq" H 9650 1550 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 9650 1450 50  0001 C CNN
F 3 "~" H 9650 1450 50  0001 C CNN
	1    9650 1450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J49
U 1 1 5D18E3FC
P 9650 1600
F 0 "J49" H 9678 1626 50  0000 L CNN
F 1 "Conn_01x01_OutputEncoderEsq" H 9650 1700 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 9650 1600 50  0001 C CNN
F 3 "~" H 9650 1600 50  0001 C CNN
	1    9650 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J50
U 1 1 5D18E464
P 9650 1750
F 0 "J50" H 9677 1776 50  0000 L CNN
F 1 "Conn_01x01_GNDEncoderEsq" H 9650 1850 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 9650 1750 50  0001 C CNN
F 3 "~" H 9650 1750 50  0001 C CNN
	1    9650 1750
	1    0    0    -1  
$EndComp
Text GLabel 9350 1600 0    50   Input ~ 0
Encoder1
Text GLabel 9350 1450 0    50   Input ~ 0
5VArduino
Text GLabel 9350 1750 0    50   Input ~ 0
GND
$Comp
L Connector:Conn_01x01_Female J51
U 1 1 5D19974C
P 9650 2100
F 0 "J51" H 9678 2126 50  0000 L CNN
F 1 "Conn_01x01_5VEncoderDir" H 9650 2200 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 9650 2100 50  0001 C CNN
F 3 "~" H 9650 2100 50  0001 C CNN
	1    9650 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J52
U 1 1 5D199753
P 9650 2250
F 0 "J52" H 9678 2276 50  0000 L CNN
F 1 "Conn_01x01_OutputEncoderDir" H 9650 2350 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 9650 2250 50  0001 C CNN
F 3 "~" H 9650 2250 50  0001 C CNN
	1    9650 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J53
U 1 1 5D19975A
P 9650 2400
F 0 "J53" H 9677 2426 50  0000 L CNN
F 1 "Conn_01x01_GNDEncoderDir" H 9650 2500 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 9650 2400 50  0001 C CNN
F 3 "~" H 9650 2400 50  0001 C CNN
	1    9650 2400
	1    0    0    -1  
$EndComp
Text GLabel 9350 2250 0    50   Input ~ 0
Encoder2
Text GLabel 9350 2100 0    50   Input ~ 0
5VArduino
Text GLabel 9350 2400 0    50   Input ~ 0
GND
Text Notes 8900 1150 0    79   ~ 0
Encoders - Pads de conexao
Text Notes 8950 1300 0    39   ~ 0
1 - Esquerda\n
Text Notes 8950 1950 0    39   ~ 0
2 - Direita
Text GLabel 4550 2000 0    50   Input ~ 0
Sensor1
Text GLabel 4550 1900 0    50   Input ~ 0
Sensor2
Text GLabel 4550 1800 0    50   Input ~ 0
Sensor3
Text GLabel 4550 1700 0    50   Input ~ 0
Sensor4
Text GLabel 4550 1600 0    50   Input ~ 0
Sensor5
Text GLabel 4550 1500 0    50   Input ~ 0
Sensor6
Text GLabel 4550 1400 0    50   Input ~ 0
Sensor7
Text GLabel 4550 2100 0    50   Input ~ 0
SensorEsq
Text GLabel 5250 2000 2    50   Input ~ 0
SensorDir
Text Notes 4050 2400 0    59   ~ 0
Alimentação da placa de sensores
Text Notes 3900 1150 0    79   ~ 0
Placa Sensores - Pinos soltos
Text Notes 1700 3850 0    79   ~ 0
Arduino Nano V3.x - Pinos Extras Soltos
Text GLabel 2850 2250 2    50   Input ~ 0
Sensor1
Text GLabel 2850 2350 2    50   Input ~ 0
Sensor2
Text GLabel 2850 2450 2    50   Input ~ 0
Sensor3
Text GLabel 2850 2550 2    50   Input ~ 0
Sensor4
Text GLabel 2850 2650 2    50   Input ~ 0
Sensor5
Text GLabel 2850 2750 2    50   Input ~ 0
Sensor6
Text GLabel 2850 2850 2    50   Input ~ 0
Sensor7
Text GLabel 2850 2950 2    50   Input ~ 0
LedAzul
Text GLabel 1650 1650 0    50   Input ~ 0
Tx
Text GLabel 1650 1750 0    50   Input ~ 0
Rx
Text GLabel 2550 4050 2    50   Input ~ 0
Rx
Text GLabel 2550 3950 2    50   Input ~ 0
Tx
$Comp
L Connector:Conn_01x02_Female J2
U 1 1 5D45EE73
P 2200 4050
F 0 "J2" H 2250 4000 50  0000 C CNN
F 1 "Conn_01x02_ArduinoTxRx" H 2800 4000 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 2200 4050 50  0001 C CNN
F 3 "~" H 2200 4050 50  0001 C CNN
	1    2200 4050
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J3
U 1 1 5D46520F
P 2200 4150
F 0 "J3" H 2200 4150 50  0000 L CNN
F 1 "Conn_01x01_ArduinoReset" H 2300 4150 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 2200 4150 50  0001 C CNN
F 3 "~" H 2200 4150 50  0001 C CNN
	1    2200 4150
	-1   0    0    1   
$EndComp
Text GLabel 2850 1750 2    50   Input ~ 0
ResetArduino
Text GLabel 2550 4150 2    50   Input ~ 0
ResetArduino
NoConn ~ 2750 1650
Text GLabel 5300 1400 2    50   Input ~ 0
GND
Text GLabel 5000 2600 2    50   Input ~ 0
VccSensores
Text GLabel 5250 2100 2    50   Input ~ 0
VccSensores
Text GLabel 4750 2600 0    50   Input ~ 0
5VArduino
$Comp
L Device:Fuse F2
U 1 1 5D2FBDD6
P 7050 3200
F 0 "F2" H 7110 3246 50  0000 L CNN
F 1 "Fuse-3A" H 7110 3155 50  0000 L CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Stelvio-Kontek_PTF78_Horizontal_Open" V 6980 3200 50  0001 C CNN
F 3 "~" H 7050 3200 50  0001 C CNN
	1    7050 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F3
U 1 1 5D2FC357
P 7600 3200
F 0 "F3" H 7660 3246 50  0000 L CNN
F 1 "Fuse-3A" H 7660 3155 50  0000 L CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Stelvio-Kontek_PTF78_Horizontal_Open" V 7530 3200 50  0001 C CNN
F 3 "~" H 7600 3200 50  0001 C CNN
	1    7600 3200
	1    0    0    -1  
$EndComp
Text GLabel 7050 3400 0    50   Input ~ 0
PCBMotor1_fused
Text GLabel 7600 3000 2    50   Input ~ 0
PonteHPCBMotor2
Text GLabel 7600 3400 2    50   Input ~ 0
PCBMotor2_fused
Text GLabel 7050 3000 0    50   Input ~ 0
PonteHPCBMotor1
$Comp
L Connector:Conn_01x01_Female J16
U 1 1 5D31E89D
P 7300 2300
F 0 "J16" H 7328 2326 50  0000 L CNN
F 1 "Conn_01x01_Motor1PonteHPCB" H 7450 2300 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 7300 2300 50  0001 C CNN
F 3 "~" H 7300 2300 50  0001 C CNN
	1    7300 2300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J27
U 1 1 5D31E8A3
P 7300 2400
F 0 "J27" H 7328 2426 50  0000 L CNN
F 1 "Conn_01x01_Motor2PonteHPCB" H 7450 2400 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 7300 2400 50  0001 C CNN
F 3 "~" H 7300 2400 50  0001 C CNN
	1    7300 2400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J28
U 1 1 5D33C265
P 7300 2550
F 0 "J28" H 7328 2576 50  0000 L CNN
F 1 "Conn_01x01_Motor1PCBMotor" H 7450 2550 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 7300 2550 50  0001 C CNN
F 3 "~" H 7300 2550 50  0001 C CNN
	1    7300 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J29
U 1 1 5D33C26B
P 7300 2650
F 0 "J29" H 7328 2676 50  0000 L CNN
F 1 "Conn_01x01_Motor2PCBMotor" H 7450 2650 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 7300 2650 50  0001 C CNN
F 3 "~" H 7300 2650 50  0001 C CNN
	1    7300 2650
	1    0    0    -1  
$EndComp
Text GLabel 7000 2550 0    50   Input ~ 0
PCBMotor1_fused
Text GLabel 7000 2300 0    50   Input ~ 0
PonteHPCBMotor1
Text GLabel 7000 2400 0    50   Input ~ 0
PonteHPCBMotor2
Text GLabel 7000 2650 0    50   Input ~ 0
PCBMotor2_fused
$Comp
L Connector:Conn_01x01_Female J41
U 1 1 5D17CB00
P 7200 1700
F 0 "J41" H 7228 1726 50  0000 L CNN
F 1 "Conn_01x01_Motor1Dir1" H 7350 1700 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 7200 1700 50  0001 C CNN
F 3 "~" H 7200 1700 50  0001 C CNN
	1    7200 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J40
U 1 1 5D17BE38
P 7200 1600
F 0 "J40" H 7228 1626 50  0000 L CNN
F 1 "Conn_01x01_Motor1PWM" H 7350 1600 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 7200 1600 50  0001 C CNN
F 3 "~" H 7200 1600 50  0001 C CNN
	1    7200 1600
	1    0    0    -1  
$EndComp
Text Notes 6700 2900 0    79   ~ 0
Fusíveis dos Motores
Text Notes 6300 3650 0    39   ~ 0
Furos da PonteH para fixação na placa:
NoConn ~ 5150 1600
NoConn ~ 5150 1700
NoConn ~ 5150 1500
Wire Wire Line
	2150 1150 2150 1250
Wire Wire Line
	2450 3300 2350 3300
Wire Wire Line
	2350 3250 2350 3300
Wire Wire Line
	2250 3250 2250 3300
Wire Wire Line
	2250 3300 2350 3300
Connection ~ 2350 3300
Wire Wire Line
	2050 1150 2150 1150
Wire Wire Line
	2550 1150 2450 1150
Wire Wire Line
	2450 1150 2450 1250
Wire Wire Line
	1650 1850 1750 1850
Wire Wire Line
	1650 1950 1750 1950
Wire Wire Line
	1650 2050 1750 2050
Wire Wire Line
	1650 2150 1750 2150
Wire Wire Line
	1650 2350 1750 2350
Wire Wire Line
	1650 2450 1750 2450
Wire Wire Line
	1650 2550 1750 2550
Wire Wire Line
	1650 2650 1750 2650
Wire Wire Line
	1650 2750 1750 2750
Wire Wire Line
	1650 2850 1750 2850
Wire Wire Line
	1650 2950 1750 2950
Wire Wire Line
	2850 2950 2750 2950
Wire Wire Line
	2750 2850 2850 2850
Wire Wire Line
	2750 2750 2850 2750
Wire Wire Line
	2750 2650 2850 2650
Wire Wire Line
	2750 2550 2850 2550
Wire Wire Line
	2750 2450 2850 2450
Wire Wire Line
	2750 2350 2850 2350
Wire Wire Line
	2750 2250 2850 2250
Wire Wire Line
	6900 1250 7000 1250
Wire Wire Line
	7000 1350 6900 1350
Wire Wire Line
	6900 1450 7000 1450
Wire Wire Line
	6900 1600 7000 1600
Wire Wire Line
	6900 1700 7000 1700
Wire Wire Line
	6900 1800 7000 1800
Wire Wire Line
	6900 1900 7000 1900
Wire Wire Line
	6900 2000 7000 2000
Wire Wire Line
	6900 2100 7000 2100
Wire Wire Line
	9300 3300 9450 3300
Wire Wire Line
	9750 3300 9850 3300
Wire Wire Line
	10150 3300 10300 3300
Wire Wire Line
	10150 3700 10300 3700
Wire Wire Line
	9850 3700 9750 3700
Wire Wire Line
	9300 3700 9450 3700
Wire Wire Line
	9900 4500 10050 4500
Wire Wire Line
	10050 4600 10050 4500
Connection ~ 10050 4500
Wire Wire Line
	10050 4500 10150 4500
Wire Wire Line
	9950 5000 10050 5000
Wire Wire Line
	10050 5000 10050 4900
Wire Wire Line
	9200 4500 9500 4500
Wire Notes Line
	6250 950  8400 950 
Wire Notes Line
	8400 3850 6250 3850
Wire Notes Line
	8700 2800 10700 2800
Wire Notes Line
	10700 2800 10700 5200
Wire Notes Line
	10700 5200 8700 5200
Wire Notes Line
	8700 5200 8700 2800
Wire Notes Line
	1100 3550 1100 900 
Wire Notes Line
	3250 3550 3250 900 
Wire Notes Line
	3250 3550 1100 3550
Wire Notes Line
	1100 900  3250 900 
Wire Wire Line
	9350 1450 9450 1450
Wire Wire Line
	9350 1600 9450 1600
Wire Wire Line
	9350 1750 9450 1750
Wire Wire Line
	9350 2100 9450 2100
Wire Wire Line
	9350 2250 9450 2250
Wire Wire Line
	9350 2400 9450 2400
Wire Notes Line
	8700 950  10850 950 
Wire Notes Line
	10850 950  10850 2550
Wire Notes Line
	10850 2550 8700 2550
Wire Notes Line
	8700 2550 8700 950 
Wire Notes Line
	5950 2800 3700 2800
Wire Notes Line
	1100 3650 4900 3650
Wire Notes Line
	4900 5500 1100 5500
Wire Wire Line
	1650 1750 1750 1750
Wire Wire Line
	1650 1650 1750 1650
Wire Wire Line
	2550 4050 2400 4050
Wire Wire Line
	2550 3950 2400 3950
Wire Wire Line
	2850 1750 2750 1750
Wire Wire Line
	2550 4150 2400 4150
Wire Notes Line
	3700 950  5950 950 
Wire Wire Line
	4750 2600 5000 2600
Wire Notes Line
	5950 950  5950 2800
Wire Notes Line
	3700 950  3700 2800
Wire Wire Line
	7000 2300 7100 2300
Wire Wire Line
	7000 2400 7100 2400
Wire Wire Line
	7000 2550 7100 2550
Wire Wire Line
	7000 2650 7100 2650
Wire Wire Line
	7050 3000 7050 3050
Wire Wire Line
	7600 3400 7600 3350
Wire Wire Line
	7600 3000 7600 3050
Wire Wire Line
	7050 3400 7050 3350
Wire Notes Line
	6250 950  6250 3850
Wire Notes Line
	8400 950  8400 3850
Wire Wire Line
	4550 1400 4650 1400
Wire Wire Line
	4550 1500 4650 1500
Wire Wire Line
	4550 1600 4650 1600
Wire Wire Line
	4550 1700 4650 1700
Wire Wire Line
	4550 1800 4650 1800
Wire Wire Line
	4550 1900 4650 1900
Wire Wire Line
	4550 2000 4650 2000
Wire Wire Line
	4550 2100 4650 2100
Wire Wire Line
	5250 2100 5150 2100
Wire Notes Line
	4900 3650 4900 5500
Wire Notes Line
	1100 3650 1100 5500
Text Notes 1700 5950 0    79   ~ 0
Circuito de Alimentação - Pads de Conexão
Wire Notes Line
	1100 5750 4900 5750
Wire Notes Line
	4900 7600 1100 7600
Wire Notes Line
	4900 5750 4900 7600
Wire Notes Line
	1100 5750 1100 7600
$Comp
L Connector:Conn_01x01_Female J1
U 1 1 5D47203A
P 3250 6200
F 0 "J1" H 3278 6226 50  0000 L CNN
F 1 "Conn_8.4V_PlacaAlimentação" H 3400 6200 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 3250 6200 50  0001 C CNN
F 3 "~" H 3250 6200 50  0001 C CNN
	1    3250 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 6200 3050 6200
$Comp
L Connector:Conn_01x01_Female J4
U 1 1 5D47B2C5
P 3250 6600
F 0 "J4" H 3278 6626 50  0000 L CNN
F 1 "Conn_GND_PlacaAlimentação" H 3400 6600 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 3250 6600 50  0001 C CNN
F 3 "~" H 3250 6600 50  0001 C CNN
	1    3250 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 6600 3050 6600
Text GLabel 2450 6600 0    50   Input ~ 0
GND
Text GLabel 2450 6200 0    50   Input ~ 0
8.4V
Text GLabel 9200 4500 0    59   Input ~ 0
5VArduino
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5C812F31
P 2250 2250
F 0 "A1" H 2250 1164 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 2250 1073 50  0000 C CNN
F 2 "Sensores_e_componentes_SL:Arduino_Nano" H 2400 1300 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 2250 1250 50  0001 C CNN
	1    2250 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2250 1650 2250
Text GLabel 5250 1900 2    50   Input ~ 0
ArduinoD13
Wire Wire Line
	5150 2000 5250 2000
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J26
U 1 1 5D2D91DB
P 4850 1700
F 0 "J26" H 4900 2217 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 4900 2126 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x08_P2.54mm_Horizontal" H 4850 1700 50  0001 C CNN
F 3 "~" H 4850 1700 50  0001 C CNN
	1    4850 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1900 5150 1900
NoConn ~ 5150 1800
Wire Wire Line
	5150 1400 5300 1400
Text GLabel 1650 2950 0    50   Input ~ 0
ArduinoD13
$EndSCHEMATC
