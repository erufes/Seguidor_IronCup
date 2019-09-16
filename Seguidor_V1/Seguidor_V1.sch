EESchema Schematic File Version 4
LIBS:Seguidor_V1-cache
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
L Device:LED D?
U 1 1 5D80B977
P 9050 2700
F 0 "D?" H 9041 2916 50  0000 C CNN
F 1 "LedAzul" H 9041 2825 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 9050 2700 50  0001 C CNN
F 3 "~" H 9050 2700 50  0001 C CNN
	1    9050 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D80B97E
P 8650 2700
F 0 "R?" V 8650 2700 50  0000 C CNN
F 1 "R330LedAzul" V 8550 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8580 2700 50  0001 C CNN
F 3 "~" H 8650 2700 50  0001 C CNN
	1    8650 2700
	0    1    1    0   
$EndComp
Text GLabel 1550 800  0    50   Input ~ 0
8.4V
Text GLabel 1950 2950 2    50   Input ~ 0
GND
NoConn ~ 2250 1700
Text GLabel 1150 1500 0    50   Input ~ 0
Encoder1
Text GLabel 1150 1600 0    50   Input ~ 0
Encoder2
$Comp
L Switch:SW_Push SW?
U 1 1 5D80B98A
P 8750 3900
F 0 "SW?" H 8750 4185 50  0000 C CNN
F 1 "SW_comando1" H 8750 4094 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 8750 4100 50  0001 C CNN
F 3 "" H 8750 4100 50  0001 C CNN
	1    8750 3900
	1    0    0    -1  
$EndComp
Text GLabel 1150 2500 0    50   Input ~ 0
SensorDir
Text GLabel 1150 2400 0    50   Input ~ 0
SensorEsq
Text GLabel 1150 2000 0    50   Input ~ 0
Motor1Dir1
Text GLabel 1150 1900 0    50   Input ~ 0
Motor1Dir2
Text GLabel 1150 2100 0    50   Input ~ 0
Motor2Dir1
Text GLabel 1150 2200 0    50   Input ~ 0
Motor2Dir2
Text GLabel 1150 1700 0    50   Input ~ 0
Botao1
Text GLabel 2050 800  2    50   Input ~ 0
5VArduino
Text GLabel 5900 900  0    50   Input ~ 0
5VPonteH
Text GLabel 5900 1250 0    50   Input ~ 0
Motor1Dir1
Text GLabel 5900 1350 0    50   Input ~ 0
Motor1Dir2
Text GLabel 5900 1650 0    50   Input ~ 0
Motor2PWM
Text GLabel 5900 1150 0    50   Input ~ 0
Motor1PWM
Text GLabel 5900 1450 0    50   Input ~ 0
Motor2Dir1
Text GLabel 5900 1550 0    50   Input ~ 0
Motor2Dir2
Text GLabel 5900 1000 0    50   Input ~ 0
GND
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80B9A1
P 6200 1350
F 0 "J?" H 6228 1376 50  0000 L CNN
F 1 "Conn_01x01_Motor1Dir2" H 6350 1350 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 6200 1350 50  0001 C CNN
F 3 "~" H 6200 1350 50  0001 C CNN
	1    6200 1350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80B9A8
P 6200 1450
F 0 "J?" H 6228 1476 50  0000 L CNN
F 1 "Conn_01x01_Motor2Dir1" H 6350 1450 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 6200 1450 50  0001 C CNN
F 3 "~" H 6200 1450 50  0001 C CNN
	1    6200 1450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80B9AF
P 6200 1550
F 0 "J?" H 6228 1576 50  0000 L CNN
F 1 "Conn_01x01_Motor2Dir2" H 6350 1550 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 6200 1550 50  0001 C CNN
F 3 "~" H 6200 1550 50  0001 C CNN
	1    6200 1550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80B9B6
P 6200 1650
F 0 "J?" H 6228 1676 50  0000 L CNN
F 1 "Conn_01x01_Motor2PWM" H 6350 1650 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 6200 1650 50  0001 C CNN
F 3 "~" H 6200 1650 50  0001 C CNN
	1    6200 1650
	1    0    0    -1  
$EndComp
Text GLabel 5900 800  0    50   Input ~ 0
8.4V
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80B9BE
P 6200 800
F 0 "J?" H 6228 826 50  0000 L CNN
F 1 "Conn_01x01_8.4VPonteH" H 6350 800 50  0000 L CNN
F 2 "Wire_Pads:SolderWirePad_single_1-2mmDrill" H 6200 800 50  0001 C CNN
F 3 "~" H 6200 800 50  0001 C CNN
	1    6200 800 
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80B9C5
P 6200 1000
F 0 "J?" H 6228 1026 50  0000 L CNN
F 1 "Conn_01x01_GNDPonteH" H 6350 1000 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 6200 1000 50  0001 C CNN
F 3 "~" H 6200 1000 50  0001 C CNN
	1    6200 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80B9CC
P 6200 900
F 0 "J?" H 6228 926 50  0000 L CNN
F 1 "Conn_01x01_5VPonteH" H 6350 900 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 6200 900 50  0001 C CNN
F 3 "~" H 6200 900 50  0001 C CNN
	1    6200 900 
	1    0    0    -1  
$EndComp
Text Notes 5650 650  0    79   ~ 0
Ponte H - Pinos soltos
$Comp
L Mechanical:MountingHole H?
U 1 1 5D80B9D4
P 6700 3200
F 0 "H?" H 6800 3246 50  0000 L CNN
F 1 "FurosPonteH" H 6800 3155 50  0000 L CNN
F 2 "Sensores_e_componentes_SL:Ponte_H_furos" H 6700 3200 50  0001 C CNN
F 3 "~" H 6700 3200 50  0001 C CNN
	1    6700 3200
	1    0    0    -1  
$EndComp
Text Notes 1200 700  0    79   ~ 0
Arduino Nano V3.x
NoConn ~ 1850 900 
Text GLabel 8350 2700 0    59   Input ~ 0
LedAzul
Text GLabel 9350 2700 2    59   Input ~ 0
GND
Text Notes 8350 2400 0    79   ~ 0
Leds da pcb
$Comp
L Device:R R?
U 1 1 5D80B9E0
P 8650 3100
F 0 "R?" V 8650 3100 50  0000 C CNN
F 1 "R330LedVerde" V 8550 3000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8580 3100 50  0001 C CNN
F 3 "~" H 8650 3100 50  0001 C CNN
	1    8650 3100
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D80B9E7
P 9050 3100
F 0 "D?" H 9041 3316 50  0000 C CNN
F 1 "LedVerde" H 9041 3225 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 9050 3100 50  0001 C CNN
F 3 "~" H 9050 3100 50  0001 C CNN
	1    9050 3100
	1    0    0    -1  
$EndComp
Text GLabel 9350 3100 2    59   Input ~ 0
GND
Text GLabel 8350 3100 0    59   Input ~ 0
5VArduino
$Comp
L Device:R RPullDown?
U 1 1 5D80B9F0
P 9100 4150
F 0 "RPullDown?" H 9170 4196 50  0000 L CNN
F 1 "R10KPullDown" H 9170 4105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9030 4150 50  0001 C CNN
F 3 "~" H 9100 4150 50  0001 C CNN
	1    9100 4150
	1    0    0    -1  
$EndComp
Text GLabel 9200 3900 2    50   Input ~ 0
Botao1
Text GLabel 9000 4400 0    59   Input ~ 0
GND
Text Notes 8300 3500 0    79   ~ 0
Botoes da pcb
Text GLabel 8300 1250 0    50   Input ~ 0
Encoder1
Text GLabel 8300 1100 0    50   Input ~ 0
5VArduino
Text GLabel 8300 1400 0    50   Input ~ 0
GND
Text GLabel 8300 1900 0    50   Input ~ 0
Encoder2
Text GLabel 8300 1750 0    50   Input ~ 0
5VArduino
Text GLabel 8300 2050 0    50   Input ~ 0
GND
Text Notes 7850 800  0    79   ~ 0
Encoders - Pads de conexao
Text Notes 7900 950  0    39   ~ 0
1 - Esquerda\n
Text Notes 7900 1600 0    39   ~ 0
2 - Direita
Text GLabel 3850 1550 0    50   Input ~ 0
Sensor1
Text GLabel 3850 1450 0    50   Input ~ 0
Sensor2
Text GLabel 3850 1350 0    50   Input ~ 0
Sensor3
Text GLabel 3850 1250 0    50   Input ~ 0
Sensor4
Text GLabel 3850 1150 0    50   Input ~ 0
Sensor5
Text GLabel 3850 1050 0    50   Input ~ 0
Sensor6
Text GLabel 3850 950  0    50   Input ~ 0
Sensor7
Text GLabel 3850 1650 0    50   Input ~ 0
SensorEsq
Text GLabel 4550 1650 2    50   Input ~ 0
SensorDir
Text Notes 3350 1950 0    59   ~ 0
Alimentação da placa de sensores
Text Notes 3200 700  0    79   ~ 0
Placa Sensores - Pinos soltos
Text Notes 1200 3400 0    79   ~ 0
Arduino Nano V3.x - Pinos Extras Soltos
Text GLabel 2350 1900 2    50   Input ~ 0
Sensor1
Text GLabel 2350 2000 2    50   Input ~ 0
Sensor2
Text GLabel 2350 2100 2    50   Input ~ 0
Sensor3
Text GLabel 2350 2200 2    50   Input ~ 0
Sensor4
Text GLabel 2350 2300 2    50   Input ~ 0
Sensor5
Text GLabel 2350 2400 2    50   Input ~ 0
Sensor6
Text GLabel 2350 2500 2    50   Input ~ 0
Sensor7
Text GLabel 1150 2600 0    50   Input ~ 0
LedAzul
Text GLabel 1150 1300 0    50   Input ~ 0
Tx
Text GLabel 1150 1400 0    50   Input ~ 0
Rx
Text GLabel 2050 3600 2    50   Input ~ 0
Rx
Text GLabel 2050 3500 2    50   Input ~ 0
Tx
$Comp
L Connector:Conn_01x02_Female J?
U 1 1 5D80BA1B
P 1700 3600
F 0 "J?" H 1750 3550 50  0000 C CNN
F 1 "Conn_01x02_ArduinoTxRx" H 2300 3550 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 1700 3600 50  0001 C CNN
F 3 "~" H 1700 3600 50  0001 C CNN
	1    1700 3600
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80BA22
P 1700 3700
F 0 "J?" H 1700 3700 50  0000 L CNN
F 1 "Conn_01x01_ArduinoReset" H 1800 3700 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 1700 3700 50  0001 C CNN
F 3 "~" H 1700 3700 50  0001 C CNN
	1    1700 3700
	-1   0    0    1   
$EndComp
Text GLabel 2350 1400 2    50   Input ~ 0
ResetArduino
Text GLabel 2050 3700 2    50   Input ~ 0
ResetArduino
NoConn ~ 2250 1300
Text GLabel 4600 1050 2    50   Input ~ 0
GND
Text GLabel 4300 2150 2    50   Input ~ 0
VccSensores
Text GLabel 4550 1550 2    50   Input ~ 0
VccSensores
Text GLabel 4050 2150 0    50   Input ~ 0
5VArduino
$Comp
L Device:Fuse F?
U 1 1 5D80BA30
P 6050 2750
F 0 "F?" H 6110 2796 50  0000 L CNN
F 1 "Fuse-3A" H 6110 2705 50  0000 L CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Stelvio-Kontek_PTF78_Horizontal_Open" V 5980 2750 50  0001 C CNN
F 3 "~" H 6050 2750 50  0001 C CNN
	1    6050 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F?
U 1 1 5D80BA37
P 6600 2750
F 0 "F?" H 6660 2796 50  0000 L CNN
F 1 "Fuse-3A" H 6660 2705 50  0000 L CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Stelvio-Kontek_PTF78_Horizontal_Open" V 6530 2750 50  0001 C CNN
F 3 "~" H 6600 2750 50  0001 C CNN
	1    6600 2750
	1    0    0    -1  
$EndComp
Text GLabel 6050 2950 0    50   Input ~ 0
PCBMotor1_fused
Text GLabel 6600 2550 2    50   Input ~ 0
PonteHPCBMotor2
Text GLabel 6600 2950 2    50   Input ~ 0
PCBMotor2_fused
Text GLabel 6050 2550 0    50   Input ~ 0
PonteHPCBMotor1
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80BA42
P 6300 1850
F 0 "J?" H 6328 1876 50  0000 L CNN
F 1 "Conn_01x01_Motor1PonteHPCB" H 6450 1850 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 6300 1850 50  0001 C CNN
F 3 "~" H 6300 1850 50  0001 C CNN
	1    6300 1850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80BA49
P 6300 1950
F 0 "J?" H 6328 1976 50  0000 L CNN
F 1 "Conn_01x01_Motor2PonteHPCB" H 6450 1950 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 6300 1950 50  0001 C CNN
F 3 "~" H 6300 1950 50  0001 C CNN
	1    6300 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80BA50
P 6300 2100
F 0 "J?" H 6328 2126 50  0000 L CNN
F 1 "Conn_01x01_Motor1PCBMotor" H 6450 2100 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 6300 2100 50  0001 C CNN
F 3 "~" H 6300 2100 50  0001 C CNN
	1    6300 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80BA57
P 6300 2200
F 0 "J?" H 6328 2226 50  0000 L CNN
F 1 "Conn_01x01_Motor2PCBMotor" H 6450 2200 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 6300 2200 50  0001 C CNN
F 3 "~" H 6300 2200 50  0001 C CNN
	1    6300 2200
	1    0    0    -1  
$EndComp
Text GLabel 6000 2100 0    50   Input ~ 0
PCBMotor1_fused
Text GLabel 6000 1850 0    50   Input ~ 0
PonteHPCBMotor1
Text GLabel 6000 1950 0    50   Input ~ 0
PonteHPCBMotor2
Text GLabel 6000 2200 0    50   Input ~ 0
PCBMotor2_fused
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80BA62
P 6200 1250
F 0 "J?" H 6228 1276 50  0000 L CNN
F 1 "Conn_01x01_Motor1Dir1" H 6350 1250 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 6200 1250 50  0001 C CNN
F 3 "~" H 6200 1250 50  0001 C CNN
	1    6200 1250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80BA69
P 6200 1150
F 0 "J?" H 6228 1176 50  0000 L CNN
F 1 "Conn_01x01_Motor1PWM" H 6350 1150 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 6200 1150 50  0001 C CNN
F 3 "~" H 6200 1150 50  0001 C CNN
	1    6200 1150
	1    0    0    -1  
$EndComp
Text Notes 5700 2450 0    79   ~ 0
Fusíveis dos Motores
Text Notes 5300 3200 0    39   ~ 0
Furos da PonteH para fixação na placa:
NoConn ~ 4450 1150
NoConn ~ 4450 1250
Wire Wire Line
	1650 800  1650 900 
Wire Wire Line
	1950 2950 1850 2950
Wire Wire Line
	1850 2900 1850 2950
Wire Wire Line
	1750 2900 1750 2950
Wire Wire Line
	1750 2950 1850 2950
Connection ~ 1850 2950
Wire Wire Line
	1550 800  1650 800 
Wire Wire Line
	2050 800  1950 800 
Wire Wire Line
	1950 800  1950 900 
Wire Wire Line
	1150 1500 1250 1500
Wire Wire Line
	1150 1600 1250 1600
Wire Wire Line
	1150 1700 1250 1700
Wire Wire Line
	1150 1800 1250 1800
Wire Wire Line
	1150 2000 1250 2000
Wire Wire Line
	1150 2100 1250 2100
Wire Wire Line
	1150 2200 1250 2200
Wire Wire Line
	1150 2300 1250 2300
Wire Wire Line
	1150 2400 1250 2400
Wire Wire Line
	1150 2500 1250 2500
Wire Wire Line
	1150 2600 1250 2600
Wire Wire Line
	2350 2600 2250 2600
Wire Wire Line
	2250 2500 2350 2500
Wire Wire Line
	2250 2400 2350 2400
Wire Wire Line
	2250 2300 2350 2300
Wire Wire Line
	2250 2200 2350 2200
Wire Wire Line
	2250 2100 2350 2100
Wire Wire Line
	2250 2000 2350 2000
Wire Wire Line
	2250 1900 2350 1900
Wire Wire Line
	5900 800  6000 800 
Wire Wire Line
	6000 900  5900 900 
Wire Wire Line
	5900 1000 6000 1000
Wire Wire Line
	5900 1150 6000 1150
Wire Wire Line
	5900 1250 6000 1250
Wire Wire Line
	5900 1350 6000 1350
Wire Wire Line
	5900 1450 6000 1450
Wire Wire Line
	5900 1550 6000 1550
Wire Wire Line
	5900 1650 6000 1650
Wire Wire Line
	8350 2700 8500 2700
Wire Wire Line
	8800 2700 8900 2700
Wire Wire Line
	9200 2700 9350 2700
Wire Wire Line
	9200 3100 9350 3100
Wire Wire Line
	8900 3100 8800 3100
Wire Wire Line
	8350 3100 8500 3100
Wire Wire Line
	8950 3900 9100 3900
Wire Wire Line
	9100 4000 9100 3900
Connection ~ 9100 3900
Wire Wire Line
	9100 3900 9200 3900
Wire Wire Line
	9000 4400 9100 4400
Wire Wire Line
	9100 4400 9100 4300
Wire Wire Line
	8250 3900 8550 3900
Wire Notes Line
	7400 4050 5250 4050
Wire Notes Line
	9750 2200 9750 4600
Wire Notes Line
	2750 3200 2750 550 
Wire Notes Line
	600  550  2750 550 
Wire Notes Line
	7650 600  9800 600 
Wire Notes Line
	9800 600  9800 2200
Wire Notes Line
	7650 2200 7650 600 
Wire Notes Line
	5250 2350 3000 2350
Wire Wire Line
	1150 1400 1250 1400
Wire Wire Line
	1150 1300 1250 1300
Wire Wire Line
	2050 3600 1900 3600
Wire Wire Line
	2050 3500 1900 3500
Wire Wire Line
	2350 1400 2250 1400
Wire Wire Line
	2050 3700 1900 3700
Wire Wire Line
	4050 2150 4300 2150
Wire Notes Line
	3000 500  3000 2350
Wire Wire Line
	6000 1850 6100 1850
Wire Wire Line
	6000 1950 6100 1950
Wire Wire Line
	6000 2100 6100 2100
Wire Wire Line
	6000 2200 6100 2200
Wire Wire Line
	6050 2550 6050 2600
Wire Wire Line
	6600 2950 6600 2900
Wire Wire Line
	6600 2550 6600 2600
Wire Wire Line
	6050 2950 6050 2900
Wire Wire Line
	3850 950  3950 950 
Wire Wire Line
	3850 1050 3950 1050
Wire Wire Line
	3850 1150 3950 1150
Wire Wire Line
	3850 1250 3950 1250
Wire Wire Line
	3850 1350 3950 1350
Wire Wire Line
	3850 1450 3950 1450
Wire Wire Line
	3850 1550 3950 1550
Wire Wire Line
	3850 1650 3950 1650
Wire Wire Line
	4550 1650 4450 1650
Text Notes 1000 4000 0    79   ~ 0
Circuito de Alimentação - Pads de Conexão
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80BAD6
P 2550 4250
F 0 "J?" H 2578 4276 50  0000 L CNN
F 1 "Conn_8.4V_PlacaAlimentação" H 2700 4250 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 2550 4250 50  0001 C CNN
F 3 "~" H 2550 4250 50  0001 C CNN
	1    2550 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 4250 2350 4250
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80BADE
P 2550 4650
F 0 "J?" H 2578 4676 50  0000 L CNN
F 1 "Conn_GND_PlacaAlimentação" H 2700 4650 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 2550 4650 50  0001 C CNN
F 3 "~" H 2550 4650 50  0001 C CNN
	1    2550 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 4650 2350 4650
Text GLabel 1750 4650 0    50   Input ~ 0
GND
Text GLabel 1750 4250 0    50   Input ~ 0
8.4V
Text GLabel 8250 3900 0    59   Input ~ 0
5VArduino
$Comp
L MCU_Module:Arduino_Nano_v3.x A?
U 1 1 5D80BAE9
P 1750 1900
F 0 "A?" H 1750 814 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 1750 723 50  0000 C CNN
F 2 "Sensores_e_componentes_SL:Arduino_Nano" H 1900 950 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 1750 900 50  0001 C CNN
	1    1750 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1900 1150 1900
Wire Wire Line
	4450 1550 4550 1550
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J?
U 1 1 5D80BAF2
P 4150 1250
F 0 "J?" H 4200 1767 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 4200 1676 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x08_P2.54mm_Horizontal" H 4150 1250 50  0001 C CNN
F 3 "~" H 4150 1250 50  0001 C CNN
	1    4150 1250
	1    0    0    -1  
$EndComp
NoConn ~ 4450 1350
Wire Wire Line
	4450 950  4600 950 
$Comp
L Mechanical:MountingHole H?
U 1 1 5D80BAFB
P 6700 3600
F 0 "H?" H 6800 3646 50  0000 L CNN
F 1 "FuroPlaca" H 6800 3555 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill2.5mm" H 6700 3600 50  0001 C CNN
F 3 "~" H 6700 3600 50  0001 C CNN
	1    6700 3600
	1    0    0    -1  
$EndComp
Text Notes 5340 3625 0    39   ~ 0
Furos da placa para fixação no acrílico
$Comp
L Mechanical:MountingHole H?
U 1 1 5D80BB03
P 6695 3860
F 0 "H?" H 6795 3906 50  0000 L CNN
F 1 "FuroPlaca" H 6795 3815 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill2.5mm" H 6695 3860 50  0001 C CNN
F 3 "~" H 6695 3860 50  0001 C CNN
	1    6695 3860
	1    0    0    -1  
$EndComp
Text GLabel 2350 2600 2    50   Input ~ 0
Sensor8
Text GLabel 4600 950  2    50   Input ~ 0
Sensor8
Wire Wire Line
	4600 1050 4450 1050
NoConn ~ 4450 1450
Wire Wire Line
	8600 1100 8600 1150
Wire Wire Line
	8300 1100 8600 1100
Wire Wire Line
	8300 1250 8600 1250
Wire Wire Line
	8600 1400 8600 1350
Wire Wire Line
	8300 1400 8600 1400
Wire Wire Line
	8600 1750 8600 1800
Wire Wire Line
	8300 1750 8600 1750
Wire Wire Line
	8300 1900 8600 1900
Wire Wire Line
	8600 2050 8600 2000
Wire Wire Line
	8300 2050 8600 2050
$Comp
L Connector:Conn_01x03_Female J?
U 1 1 5D80BB18
P 8800 1250
F 0 "J?" H 8828 1276 50  0000 L CNN
F 1 "Conn_01x03_Female" H 8828 1185 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 8800 1250 50  0001 C CNN
F 3 "~" H 8800 1250 50  0001 C CNN
	1    8800 1250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J?
U 1 1 5D80BB1F
P 8800 1900
F 0 "J?" H 8828 1926 50  0000 L CNN
F 1 "Conn_01x03_Female" H 8828 1835 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 8800 1900 50  0001 C CNN
F 3 "~" H 8800 1900 50  0001 C CNN
	1    8800 1900
	1    0    0    -1  
$EndComp
Text GLabel 1150 1800 0    50   Input ~ 0
Motor1PWM
Text GLabel 1150 2300 0    50   Input ~ 0
Motor2PWM
Wire Notes Line
	7400 500  7400 4050
Wire Notes Line
	4400 3200 4400 5050
Wire Notes Line
	7700 2250 7700 4600
Wire Notes Line
	7700 4600 9750 4600
Wire Notes Line
	3000 500  7400 500 
Wire Notes Line
	5250 500  5250 4050
Wire Notes Line
	7650 2200 9800 2200
Wire Notes Line
	600  3200 4400 3200
$Comp
L Switch:SW_SPST SW?
U 1 1 5D800C9F
P 4550 6650
F 0 "SW?" H 4550 6885 50  0000 C CNN
F 1 "SW_ON/OFF" H 4550 6794 50  0000 C CNN
F 2 "CUSTOM_Placa_central_v01:Solder_Pad_Custom" H 4550 6650 50  0001 C CNN
F 3 "" H 4550 6650 50  0001 C CNN
	1    4550 6650
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 5D800CA6
P 4550 5450
F 0 "H?" H 4650 5501 50  0000 L CNN
F 1 "V8.4 - Lipo" H 4300 5400 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 4550 5450 50  0001 C CNN
F 3 "~" H 4550 5450 50  0001 C CNN
	1    4550 5450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 5D800CAD
P 5000 5450
F 0 "H?" H 5100 5501 50  0000 L CNN
F 1 "GND - Lipo" H 4800 5400 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 5000 5450 50  0001 C CNN
F 3 "~" H 5000 5450 50  0001 C CNN
	1    5000 5450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D800CB4
P 5300 5800
F 0 "J?" H 5350 5800 50  0000 L CNN
F 1 "PinoCheckBateriaGND" H 5500 5800 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 5300 5800 50  0001 C CNN
F 3 "~" H 5300 5800 50  0001 C CNN
	1    5300 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:D D?
U 1 1 5D800CBB
P 4550 6250
F 0 "D?" V 4500 6150 50  0000 R CNN
F 1 "DiodoProtecao-5A" V 4500 7050 50  0000 R CNN
F 2 "Diode_THT:D_DO-27_P15.24mm_Horizontal" H 4550 6250 50  0001 C CNN
F 3 "~" H 4550 6250 50  0001 C CNN
	1    4550 6250
	0    -1   -1   0   
$EndComp
$Comp
L Device:Fuse F?
U 1 1 5D800CC2
P 4550 5900
F 0 "F?" H 4610 5946 50  0000 L CNN
F 1 "Fuse-5A" H 4610 5855 50  0000 L CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Stelvio-Kontek_PTF78_Horizontal_Open" V 4480 5900 50  0001 C CNN
F 3 "~" H 4550 5900 50  0001 C CNN
	1    4550 5900
	1    0    0    1   
$EndComp
Wire Wire Line
	5000 6800 5100 6800
Wire Wire Line
	5100 5800 5000 5800
Connection ~ 5000 5800
Wire Wire Line
	5000 5800 5000 5550
Text Notes 3000 5250 0    79   ~ 0
Circuito de Alimentação da placa e Sistema de proteção
Wire Notes Line
	6700 7250 2900 7250
Wire Wire Line
	4550 6400 4550 6450
$Comp
L Device:D_Zener D?
U 1 1 5D800CD1
P 1150 5950
F 0 "D?" V 1104 6029 50  0000 L CNN
F 1 "DiodoZener6.8V" V 1195 6029 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 1150 5950 50  0001 C CNN
F 3 "~" H 1150 5950 50  0001 C CNN
	1    1150 5950
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D800CD8
P 1400 6350
F 0 "R?" V 1400 6350 50  0000 C CNN
F 1 "R1KMedidorDeBateria" V 1284 6350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1330 6350 50  0001 C CNN
F 3 "~" H 1400 6350 50  0001 C CNN
	1    1400 6350
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D800CDF
P 1150 6600
F 0 "R?" H 1100 6600 50  0000 L CNN
F 1 "R6K6MedidorDeBateria" H 1220 6555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1080 6600 50  0001 C CNN
F 3 "~" H 1150 6600 50  0001 C CNN
	1    1150 6600
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC548 Q?
U 1 1 5D800CE6
P 1900 6350
F 0 "Q?" H 2091 6396 50  0000 L CNN
F 1 "BC548" H 2091 6305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 2100 6275 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 1900 6350 50  0001 L CNN
	1    1900 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D800CED
P 2000 5850
F 0 "R?" H 1950 5850 50  0000 L CNN
F 1 "R10KMedidorDeBateria" H 1550 6000 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1930 5850 50  0001 C CNN
F 3 "~" H 2000 5850 50  0001 C CNN
	1    2000 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D800CF4
P 2300 5550
F 0 "R?" V 2300 5550 50  0000 C CNN
F 1 "R1KMedidorDeBateria" V 2184 5550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2230 5550 50  0001 C CNN
F 3 "~" H 2300 5550 50  0001 C CNN
	1    2300 5550
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC548 Q?
U 1 1 5D800CFB
P 2450 6100
F 0 "Q?" H 2641 6146 50  0000 L CNN
F 1 "BC548" H 2641 6055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 2650 6025 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 2450 6100 50  0001 L CNN
	1    2450 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5D800D02
P 2550 5700
F 0 "D?" V 2588 5582 50  0000 R CNN
F 1 "LedBateriaVermelho" V 2400 5550 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 2550 5700 50  0001 C CNN
F 3 "~" H 2550 5700 50  0001 C CNN
	1    2550 5700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1150 6850 1150 6750
Wire Wire Line
	1150 6450 1150 6350
Wire Wire Line
	1250 6350 1150 6350
Connection ~ 1150 6350
Wire Wire Line
	1550 6350 1700 6350
Wire Wire Line
	2000 6150 2000 6100
Wire Wire Line
	2550 5550 2450 5550
Wire Wire Line
	2550 5850 2550 5900
Wire Wire Line
	2250 6100 2000 6100
Connection ~ 2000 6100
Wire Wire Line
	2550 6300 2550 6850
Wire Wire Line
	2550 6850 2000 6850
Connection ~ 2000 6850
Wire Wire Line
	2000 6550 2000 6850
Wire Wire Line
	2150 5600 2150 5550
Wire Wire Line
	2000 6000 2000 6100
Wire Wire Line
	2000 5700 2000 5600
Connection ~ 2000 5600
Wire Wire Line
	2000 5600 2150 5600
Wire Wire Line
	1150 5800 1150 5600
Connection ~ 1150 5600
Wire Wire Line
	1150 5600 2000 5600
Wire Wire Line
	1150 6100 1150 6350
Text Notes 900  5250 0    79   ~ 0
Circuito Medidor de Bateria
Wire Notes Line
	2850 5050 2850 7000
Wire Notes Line
	2850 7000 600  7000
Wire Wire Line
	5000 5800 5000 6800
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D800D26
P 4350 7150
F 0 "J?" H 4378 7176 50  0000 L CNN
F 1 "8.4V_PlacaCentral" H 4500 7150 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 4350 7150 50  0001 C CNN
F 3 "~" H 4350 7150 50  0001 C CNN
	1    4350 7150
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D800D2D
P 5200 7150
F 0 "J?" H 5228 7176 50  0000 L CNN
F 1 "GND_PlacaCentral" H 5350 7150 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 5200 7150 50  0001 C CNN
F 3 "~" H 5200 7150 50  0001 C CNN
	1    5200 7150
	1    0    0    -1  
$EndComp
Text GLabel 5100 6800 2    50   Input ~ 0
GND
Text GLabel 1000 6850 0    50   Input ~ 0
GND
$Comp
L Mechanical:MountingHole H?
U 1 1 5D800D36
P 3250 6350
F 0 "H?" H 3350 6396 50  0000 L CNN
F 1 "Furos" H 3350 6305 50  0000 L CNN
F 2 "Wire_Pads:SolderWirePad_single_2-5mmDrill" H 3250 6350 50  0001 C CNN
F 3 "~" H 3250 6350 50  0001 C CNN
	1    3250 6350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5D800D3D
P 3250 6600
F 0 "H?" H 3350 6646 50  0000 L CNN
F 1 "Furos" H 3350 6555 50  0000 L CNN
F 2 "Wire_Pads:SolderWirePad_single_2-5mmDrill" H 3250 6600 50  0001 C CNN
F 3 "~" H 3250 6600 50  0001 C CNN
	1    3250 6600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D800D44
P 3900 5700
F 0 "J?" H 4000 5700 50  0000 C CNN
F 1 "PinoCheckBateriaVcc" H 4450 5700 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 3900 5700 50  0001 C CNN
F 3 "~" H 3900 5700 50  0001 C CNN
	1    3900 5700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 5700 4150 5700
$Comp
L Device:R R?
U 1 1 5D800D4C
P 4300 5700
F 0 "R?" V 4300 5700 50  0000 C CNN
F 1 "R10KBatCheck" V 4400 5650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4230 5700 50  0001 C CNN
F 3 "~" H 4300 5700 50  0001 C CNN
	1    4300 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 5700 4550 5700
Wire Wire Line
	4550 5550 4550 5600
Wire Wire Line
	4550 5700 4550 5750
Connection ~ 4550 5700
Wire Wire Line
	4550 6050 4550 6100
Text GLabel 4400 5600 0    50   Input ~ 0
8.4VCircuitoMedidor
Wire Wire Line
	4400 5600 4550 5600
Connection ~ 4550 5600
Wire Wire Line
	4550 5600 4550 5700
Text GLabel 1150 5350 2    50   Input ~ 0
8.4VCircuitoMedidor
Wire Wire Line
	1150 5350 1150 5600
Wire Notes Line
	6700 5050 6700 7250
Wire Notes Line
	2900 5050 2900 7250
Wire Wire Line
	4550 6850 4550 7150
Wire Wire Line
	5000 7150 5000 6800
Connection ~ 5000 6800
Wire Wire Line
	2000 6850 1150 6850
Wire Wire Line
	1000 6850 1150 6850
Connection ~ 1150 6850
Wire Notes Line
	600  550  600  7000
Wire Notes Line
	600  5050 6700 5050
$Comp
L Mechanical:MountingHole H?
U 1 1 5D801881
P 16050 7700
F 0 "H?" H 16150 7746 50  0000 L CNN
F 1 "Furo6Dir" H 16150 7655 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 16050 7700 50  0001 C CNN
F 3 "~" H 16050 7700 50  0001 C CNN
	1    16050 7700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5D80187A
P 16050 7350
F 0 "H?" H 16150 7396 50  0000 L CNN
F 1 "Furo5Dir" H 16150 7305 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 16050 7350 50  0001 C CNN
F 3 "~" H 16050 7350 50  0001 C CNN
	1    16050 7350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5D801873
P 15300 7700
F 0 "H?" H 15400 7746 50  0000 L CNN
F 1 "Furo4Dir" H 15400 7655 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 15300 7700 50  0001 C CNN
F 3 "~" H 15300 7700 50  0001 C CNN
	1    15300 7700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5D80186C
P 15300 7350
F 0 "H?" H 15400 7396 50  0000 L CNN
F 1 "Furo3Dir" H 15400 7305 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 15300 7350 50  0001 C CNN
F 3 "~" H 15300 7350 50  0001 C CNN
	1    15300 7350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5D801865
P 16000 3750
F 0 "H?" H 16100 3796 50  0000 L CNN
F 1 "Furo6Esq" H 16100 3705 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 16000 3750 50  0001 C CNN
F 3 "~" H 16000 3750 50  0001 C CNN
	1    16000 3750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5D80185E
P 16000 3400
F 0 "H?" H 16100 3446 50  0000 L CNN
F 1 "Furo5Esq" H 16100 3355 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 16000 3400 50  0001 C CNN
F 3 "~" H 16000 3400 50  0001 C CNN
	1    16000 3400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5D801857
P 15250 3750
F 0 "H?" H 15350 3796 50  0000 L CNN
F 1 "Furo4Esq" H 15350 3705 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 15250 3750 50  0001 C CNN
F 3 "~" H 15250 3750 50  0001 C CNN
	1    15250 3750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5D801850
P 15250 3400
F 0 "H?" H 15350 3446 50  0000 L CNN
F 1 "Furo3Esq" H 15350 3355 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 15250 3400 50  0001 C CNN
F 3 "~" H 15250 3400 50  0001 C CNN
	1    15250 3400
	1    0    0    -1  
$EndComp
Text Notes 14850 7100 0    79   ~ 0
Furos Motor Case Encoder Direito
Text Notes 14750 3150 0    79   ~ 0
Furos Motor Case Encoder Esquerdo
$Comp
L Mechanical:MountingHole H?
U 1 1 5D801847
P 15300 6750
F 0 "H?" H 15400 6796 50  0000 L CNN
F 1 "Furo2Dir" H 15400 6705 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 15300 6750 50  0001 C CNN
F 3 "~" H 15300 6750 50  0001 C CNN
	1    15300 6750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5D801840
P 15300 6400
F 0 "H?" H 15400 6446 50  0000 L CNN
F 1 "Furo1Dir" H 15400 6355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 15300 6400 50  0001 C CNN
F 3 "~" H 15300 6400 50  0001 C CNN
	1    15300 6400
	1    0    0    -1  
$EndComp
Text Notes 14850 6150 0    79   ~ 0
Furos Suporte Encoder Direito
$Comp
L Mechanical:MountingHole H?
U 1 1 5D801838
P 15250 2750
F 0 "H?" H 15350 2796 50  0000 L CNN
F 1 "Furo2Esq" H 15350 2705 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 15250 2750 50  0001 C CNN
F 3 "~" H 15250 2750 50  0001 C CNN
	1    15250 2750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5D801831
P 15250 2400
F 0 "H?" H 15350 2446 50  0000 L CNN
F 1 "Furo1Esq" H 15350 2355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 15250 2400 50  0001 C CNN
F 3 "~" H 15250 2400 50  0001 C CNN
	1    15250 2400
	1    0    0    -1  
$EndComp
Text Notes 14800 2150 0    79   ~ 0
Furos Suporte Encoder Esquerdo
Text GLabel 13800 5800 0    50   Input ~ 0
GNDDir
Text GLabel 15000 4950 0    50   Input ~ 0
VccDir
Text GLabel 13500 2800 0    50   Input ~ 0
GNDEsq
Text GLabel 13500 2600 0    50   Input ~ 0
VccEsq
Text GLabel 13750 1800 0    50   Input ~ 0
GNDEsq
Text GLabel 15050 950  0    50   Input ~ 0
VccEsq
Wire Wire Line
	14100 1400 13950 1400
Wire Wire Line
	13950 1800 13750 1800
Connection ~ 13950 1800
Wire Wire Line
	13950 1700 13950 1800
Wire Wire Line
	13900 5800 13800 5800
Connection ~ 13900 5800
Wire Wire Line
	13900 5700 13900 5800
Wire Wire Line
	14050 5400 13900 5400
Text Notes 13150 4300 0    79   ~ 0
Encoder Direito
Text Notes 13100 6150 0    79   ~ 0
Pinos Encoder Direito
$Comp
L Device:R R?
U 1 1 5D801814
P 13900 5550
F 0 "R?" V 13900 5550 50  0000 C CNN
F 1 "R1KDir" V 13800 5550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 13830 5550 50  0001 C CNN
F 3 "~" H 13900 5550 50  0001 C CNN
	1    13900 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	13450 6400 13550 6400
Wire Wire Line
	13450 6600 13550 6600
Wire Wire Line
	13450 6800 13550 6800
NoConn ~ 14200 5550
Wire Wire Line
	14200 5200 15500 5200
Wire Wire Line
	14150 5200 14200 5200
Connection ~ 14200 5200
Wire Wire Line
	14200 5200 14200 5250
Wire Wire Line
	15700 5600 15700 5800
Wire Wire Line
	13900 5800 15300 5800
Wire Wire Line
	15700 5800 15300 5800
Connection ~ 15300 5800
Wire Wire Line
	15300 5750 15300 5800
Wire Wire Line
	15300 5400 15500 5400
Wire Wire Line
	15300 5450 15300 5400
Wire Wire Line
	16150 5300 16100 5300
Text GLabel 16150 5300 2    50   Input ~ 0
SinalEncoderDIr
NoConn ~ 15000 5550
Connection ~ 15300 5400
Wire Wire Line
	15150 5400 15300 5400
Wire Wire Line
	15150 4950 15700 4950
Wire Wire Line
	15150 4950 15150 5100
Wire Wire Line
	15000 5100 15000 5250
Wire Wire Line
	15150 5100 15000 5100
Connection ~ 15150 4950
Wire Wire Line
	15000 4950 15150 4950
Wire Wire Line
	15700 4950 15700 5000
NoConn ~ 15900 5600
NoConn ~ 15800 5600
$Comp
L Amplifier_Operational:LM741 U?
U 1 1 5D8017F4
P 15800 5300
F 0 "U?" H 15850 5450 50  0000 L CNN
F 1 "LM741" H 15950 5150 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 15850 5350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm741.pdf" H 15950 5450 50  0001 C CNN
	1    15800 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	14200 4950 14150 4950
Text GLabel 14200 4950 2    50   Input ~ 0
GNDDir
Wire Wire Line
	13100 4850 13150 4850
Wire Wire Line
	12800 5100 13150 5100
Wire Wire Line
	12800 5000 12800 5100
Wire Wire Line
	12800 5000 12800 4850
Connection ~ 12800 5000
Wire Wire Line
	12750 5000 12800 5000
Text GLabel 13450 6600 0    50   Input ~ 0
VccDir
Text GLabel 12750 5000 0    50   Input ~ 0
VccDir
$Comp
L Seguidor_V1-rescue:TCRT5000-Sensores_e_componentes_SL U?
U 1 1 5D8017E3
P 13650 4900
F 0 "U?" H 13650 5387 60  0000 C CNN
F 1 "TCRT5000Dir" H 13650 5281 60  0000 C CNN
F 2 "Sensores_e_componentes_SL:TCRT5000Extendido" H 13650 4900 60  0001 C CNN
F 3 "" H 13650 4900 60  0000 C CNN
	1    13650 4900
	1    0    0    -1  
$EndComp
Text GLabel 13450 6400 0    50   Input ~ 0
SinalEncoderDIr
Text GLabel 13450 6800 0    50   Input ~ 0
GNDDir
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D8017DA
P 13750 6800
F 0 "J?" H 13778 6826 50  0000 L CNN
F 1 "Conn_01x01_Female" H 13778 6735 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 13750 6800 50  0001 C CNN
F 3 "~" H 13750 6800 50  0001 C CNN
	1    13750 6800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D8017D3
P 13750 6400
F 0 "J?" H 13778 6426 50  0000 L CNN
F 1 "Conn_01x01_Female" H 13778 6335 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 13750 6400 50  0001 C CNN
F 3 "~" H 13750 6400 50  0001 C CNN
	1    13750 6400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D8017CC
P 13750 6600
F 0 "J?" H 13778 6626 50  0000 L CNN
F 1 "Conn_01x01_Female" H 13778 6535 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 13750 6600 50  0001 C CNN
F 3 "~" H 13750 6600 50  0001 C CNN
	1    13750 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D8017C5
P 15300 5600
F 0 "R?" H 15370 5646 50  0000 L CNN
F 1 "R10k" H 15370 5555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 15230 5600 50  0001 C CNN
F 3 "~" H 15300 5600 50  0001 C CNN
	1    15300 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D8017BE
P 12950 4850
F 0 "R?" V 13157 4850 50  0000 C CNN
F 1 "R220ledIRDir" V 13066 4850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 12880 4850 50  0001 C CNN
F 3 "~" H 12950 4850 50  0001 C CNN
	1    12950 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_POT_TRIM_US RV?
U 1 1 5D8017B7
P 14200 5400
F 0 "RV?" H 14132 5354 50  0000 R CNN
F 1 "R10KPOT_TRIMDir" H 14450 5650 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical" H 14200 5400 50  0001 C CNN
F 3 "~" H 14200 5400 50  0001 C CNN
	1    14200 5400
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT_TRIM_US RV?
U 1 1 5D8017B0
P 15000 5400
F 0 "RV?" H 14900 5450 50  0000 R CNN
F 1 "R10KPOT_TRIM" H 15200 5150 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical" H 15000 5400 50  0001 C CNN
F 3 "~" H 15000 5400 50  0001 C CNN
	1    15000 5400
	1    0    0    -1  
$EndComp
Text Notes 13200 300  0    79   ~ 0
Encoder Esquerda
Text Notes 13150 2150 0    79   ~ 0
Pinos Encoder Esquerdo
$Comp
L Device:R R?
U 1 1 5D8017A4
P 13950 1550
F 0 "R?" V 13950 1550 50  0000 C CNN
F 1 "R1KEsq" V 13850 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 13880 1550 50  0001 C CNN
F 3 "~" H 13950 1550 50  0001 C CNN
	1    13950 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	13500 2400 13600 2400
Wire Wire Line
	13500 2600 13600 2600
Wire Wire Line
	13500 2800 13600 2800
NoConn ~ 14250 1550
Wire Wire Line
	14250 1200 15550 1200
Wire Wire Line
	14200 1200 14250 1200
Connection ~ 14250 1200
Wire Wire Line
	14250 1200 14250 1250
Wire Wire Line
	15750 1600 15750 1800
Wire Wire Line
	13950 1800 15350 1800
Wire Wire Line
	15750 1800 15350 1800
Connection ~ 15350 1800
Wire Wire Line
	15350 1750 15350 1800
Wire Wire Line
	15350 1400 15550 1400
Wire Wire Line
	15350 1450 15350 1400
Wire Wire Line
	16200 1300 16150 1300
Text GLabel 16200 1300 2    50   Input ~ 0
SinalEncoderEsq
NoConn ~ 15050 1550
Connection ~ 15350 1400
Wire Wire Line
	15200 1400 15350 1400
Wire Wire Line
	15200 950  15750 950 
Wire Wire Line
	15200 950  15200 1100
Wire Wire Line
	15050 1100 15050 1250
Wire Wire Line
	15200 1100 15050 1100
Connection ~ 15200 950 
Wire Wire Line
	15050 950  15200 950 
Wire Wire Line
	15750 950  15750 1000
NoConn ~ 15950 1600
NoConn ~ 15850 1600
$Comp
L Amplifier_Operational:LM741 U?
U 1 1 5D801784
P 15850 1300
F 0 "U?" H 15900 1450 50  0000 L CNN
F 1 "LM741Esq" H 16000 1150 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 15900 1350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm741.pdf" H 16000 1450 50  0001 C CNN
	1    15850 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	14250 950  14200 950 
Text GLabel 14250 950  2    50   Input ~ 0
GNDEsq
Wire Wire Line
	13150 850  13200 850 
Wire Wire Line
	12850 1100 13200 1100
Wire Wire Line
	12850 1000 12850 1100
Wire Wire Line
	12850 1000 12850 850 
Connection ~ 12850 1000
Wire Wire Line
	12800 1000 12850 1000
Text GLabel 12800 1000 0    50   Input ~ 0
VccEsq
$Comp
L Seguidor_V1-rescue:TCRT5000-Sensores_e_componentes_SL U?
U 1 1 5D801774
P 13700 900
F 0 "U?" H 13700 1387 60  0000 C CNN
F 1 "TCRT5000Esq" H 13700 1281 60  0000 C CNN
F 2 "Sensores_e_componentes_SL:TCRT5000Extendido" H 13700 900 60  0001 C CNN
F 3 "" H 13700 900 60  0000 C CNN
	1    13700 900 
	1    0    0    -1  
$EndComp
Text GLabel 13500 2400 0    50   Input ~ 0
SinalEncoderEsq
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80176C
P 13800 2800
F 0 "J?" H 13828 2826 50  0000 L CNN
F 1 "Conn_01x01_Female" H 13828 2735 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 13800 2800 50  0001 C CNN
F 3 "~" H 13800 2800 50  0001 C CNN
	1    13800 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D801765
P 13800 2400
F 0 "J?" H 13828 2426 50  0000 L CNN
F 1 "Conn_01x01_Female" H 13828 2335 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 13800 2400 50  0001 C CNN
F 3 "~" H 13800 2400 50  0001 C CNN
	1    13800 2400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80175E
P 13800 2600
F 0 "J?" H 13828 2626 50  0000 L CNN
F 1 "Conn_01x01_Female" H 13828 2535 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 13800 2600 50  0001 C CNN
F 3 "~" H 13800 2600 50  0001 C CNN
	1    13800 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D801757
P 15350 1600
F 0 "R?" H 15420 1646 50  0000 L CNN
F 1 "R10kEsq" H 15420 1555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 15280 1600 50  0001 C CNN
F 3 "~" H 15350 1600 50  0001 C CNN
	1    15350 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D801750
P 13000 850
F 0 "R?" V 13207 850 50  0000 C CNN
F 1 "R220ledIREsq" V 13116 850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 12930 850 50  0001 C CNN
F 3 "~" H 13000 850 50  0001 C CNN
	1    13000 850 
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_POT_TRIM_US RV?
U 1 1 5D801749
P 14250 1400
F 0 "RV?" H 14182 1354 50  0000 R CNN
F 1 "R10KPOT_TRIMEsq" H 14500 1650 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical" H 14250 1400 50  0001 C CNN
F 3 "~" H 14250 1400 50  0001 C CNN
	1    14250 1400
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT_TRIM_US RV?
U 1 1 5D801742
P 15050 1400
F 0 "RV?" H 14950 1450 50  0000 R CNN
F 1 "R10KPOT_TRIMEsq" H 15250 1150 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical" H 15050 1400 50  0001 C CNN
F 3 "~" H 15050 1400 50  0001 C CNN
	1    15050 1400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D801995
P -1350 3200
F 0 "J?" H -1322 3226 50  0000 L CNN
F 1 "Conn_01x01_Female" H -1200 3200 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H -1350 3200 50  0001 C CNN
F 3 "~" H -1350 3200 50  0001 C CNN
	1    -1350 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80199C
P -1350 3300
F 0 "J?" H -1322 3326 50  0000 L CNN
F 1 "Conn_01x01_Female" H -1200 3300 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H -1350 3300 50  0001 C CNN
F 3 "~" H -1350 3300 50  0001 C CNN
	1    -1350 3300
	1    0    0    -1  
$EndComp
Text GLabel -1700 3500 0    50   Input ~ 0
Sensor3
Text GLabel -1700 3900 0    50   Input ~ 0
Sensor7
Text GLabel -1700 3800 0    50   Input ~ 0
Sensor6
Text GLabel -1700 3700 0    50   Input ~ 0
Sensor5
Text GLabel -1700 3600 0    50   Input ~ 0
Sensor4
Text GLabel -1700 3400 0    50   Input ~ 0
Sensor2
Text GLabel -1700 3300 0    50   Input ~ 0
Sensor1
Text GLabel -1700 3200 0    50   Input ~ 0
SensorEsq
Text GLabel -1700 4000 0    50   Input ~ 0
Sensor8
Text GLabel -1700 4100 0    50   Input ~ 0
GND
Text GLabel -1700 4200 0    50   Input ~ 0
VccSensores
Text GLabel -1700 4300 0    50   Input ~ 0
SensorDir
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D8019AF
P -1350 3400
F 0 "J?" H -1322 3426 50  0000 L CNN
F 1 "Conn_01x01_Female" H -1200 3400 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H -1350 3400 50  0001 C CNN
F 3 "~" H -1350 3400 50  0001 C CNN
	1    -1350 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D8019B6
P -1350 3500
F 0 "J?" H -1322 3526 50  0000 L CNN
F 1 "Conn_01x01_Female" H -1200 3500 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H -1350 3500 50  0001 C CNN
F 3 "~" H -1350 3500 50  0001 C CNN
	1    -1350 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D8019BD
P -1350 3600
F 0 "J?" H -1322 3626 50  0000 L CNN
F 1 "Conn_01x01_Female" H -1200 3600 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H -1350 3600 50  0001 C CNN
F 3 "~" H -1350 3600 50  0001 C CNN
	1    -1350 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D8019C4
P -1350 3700
F 0 "J?" H -1322 3726 50  0000 L CNN
F 1 "Conn_01x01_Female" H -1200 3700 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H -1350 3700 50  0001 C CNN
F 3 "~" H -1350 3700 50  0001 C CNN
	1    -1350 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D8019CB
P -1350 3800
F 0 "J?" H -1322 3826 50  0000 L CNN
F 1 "Conn_01x01_Female" H -1200 3800 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H -1350 3800 50  0001 C CNN
F 3 "~" H -1350 3800 50  0001 C CNN
	1    -1350 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D8019D2
P -1350 3900
F 0 "J?" H -1322 3926 50  0000 L CNN
F 1 "Conn_01x01_Female" H -1200 3900 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H -1350 3900 50  0001 C CNN
F 3 "~" H -1350 3900 50  0001 C CNN
	1    -1350 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D8019D9
P -1350 4000
F 0 "J?" H -1322 4026 50  0000 L CNN
F 1 "Conn_01x01_Female" H -1200 4000 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H -1350 4000 50  0001 C CNN
F 3 "~" H -1350 4000 50  0001 C CNN
	1    -1350 4000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D8019E0
P -1350 4100
F 0 "J?" H -1322 4126 50  0000 L CNN
F 1 "Conn_01x01_Female" H -1200 4100 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H -1350 4100 50  0001 C CNN
F 3 "~" H -1350 4100 50  0001 C CNN
	1    -1350 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D8019E7
P -1350 4200
F 0 "J?" H -1322 4226 50  0000 L CNN
F 1 "Conn_01x01_Female" H -1200 4200 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H -1350 4200 50  0001 C CNN
F 3 "~" H -1350 4200 50  0001 C CNN
	1    -1350 4200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D8019EE
P -1350 4300
F 0 "J?" H -1322 4326 50  0000 L CNN
F 1 "Conn_01x01_Female" H -1200 4300 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H -1350 4300 50  0001 C CNN
F 3 "~" H -1350 4300 50  0001 C CNN
	1    -1350 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	-1700 4100 -1550 4100
Wire Wire Line
	-1700 4200 -1550 4200
Wire Wire Line
	-1700 4300 -1550 4300
Wire Wire Line
	-1550 4000 -1700 4000
Wire Wire Line
	-1550 3900 -1700 3900
Wire Wire Line
	-1550 3800 -1700 3800
Wire Wire Line
	-1700 3700 -1550 3700
Wire Wire Line
	-1550 3600 -1700 3600
Wire Wire Line
	-1700 3500 -1550 3500
Wire Wire Line
	-1550 3400 -1700 3400
Wire Wire Line
	-1700 3300 -1550 3300
Wire Wire Line
	-1550 3200 -1700 3200
$Comp
L Mechanical:MountingHole H?
U 1 1 5D801A01
P -2050 5100
F 0 "H?" H -1950 5146 50  0000 L CNN
F 1 "MountingHole" H -1950 5055 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H -2050 5100 50  0001 C CNN
F 3 "~" H -2050 5100 50  0001 C CNN
	1    -2050 5100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5D801A08
P -1500 5100
F 0 "H?" H -1400 5146 50  0000 L CNN
F 1 "MountingHole" H -1400 5055 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H -1500 5100 50  0001 C CNN
F 3 "~" H -1500 5100 50  0001 C CNN
	1    -1500 5100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D801A0F
P -1350 4850
F 0 "J?" H -1322 4876 50  0000 L CNN
F 1 "Conn_01x01_Female" H -1200 4850 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H -1350 4850 50  0001 C CNN
F 3 "~" H -1350 4850 50  0001 C CNN
	1    -1350 4850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D801A16
P -1350 4550
F 0 "J?" H -1322 4576 50  0000 L CNN
F 1 "Conn_01x01_Female" H -1200 4550 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H -1350 4550 50  0001 C CNN
F 3 "~" H -1350 4550 50  0001 C CNN
	1    -1350 4550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D801A1D
P -1350 4750
F 0 "J?" H -1322 4776 50  0000 L CNN
F 1 "Conn_01x01_Female" H -1200 4750 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H -1350 4750 50  0001 C CNN
F 3 "~" H -1350 4750 50  0001 C CNN
	1    -1350 4750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D801A24
P -1350 4450
F 0 "J?" H -1322 4476 50  0000 L CNN
F 1 "Conn_01x01_Female" H -1200 4450 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H -1350 4450 50  0001 C CNN
F 3 "~" H -1350 4450 50  0001 C CNN
	1    -1350 4450
	1    0    0    -1  
$EndComp
Text GLabel -1700 4850 0    50   Input ~ 0
GND
Text GLabel -1700 4550 0    50   Input ~ 0
GND
Text GLabel -1700 4450 0    50   Input ~ 0
VccSensores
Text GLabel -1700 4750 0    50   Input ~ 0
VccSensores
Wire Wire Line
	-1700 4450 -1550 4450
Wire Wire Line
	-1550 4550 -1700 4550
Wire Wire Line
	-1700 4750 -1550 4750
Wire Wire Line
	-1550 4850 -1700 4850
Text GLabel -2000 2250 0    50   Input ~ 0
SensorDir
Text GLabel -2000 2950 0    50   Input ~ 0
Sensor8
Text GLabel -2000 2850 0    50   Input ~ 0
GND
Text GLabel -1300 2550 2    50   Input ~ 0
Sensor3
Text GLabel -1300 2950 2    50   Input ~ 0
Sensor7
Text GLabel -1300 2850 2    50   Input ~ 0
Sensor6
Text GLabel -1300 2750 2    50   Input ~ 0
Sensor5
Text GLabel -1300 2650 2    50   Input ~ 0
Sensor4
Text GLabel -1300 2450 2    50   Input ~ 0
Sensor2
Text GLabel -1300 2350 2    50   Input ~ 0
Sensor1
Text GLabel -1300 2250 2    50   Input ~ 0
SensorEsq
NoConn ~ -1900 2450
NoConn ~ -1900 2550
NoConn ~ -1900 2650
NoConn ~ -1900 2750
Wire Wire Line
	-1400 2250 -1300 2250
Wire Wire Line
	-1400 2350 -1300 2350
Wire Wire Line
	-1300 2450 -1400 2450
Wire Wire Line
	-1400 2550 -1300 2550
Wire Wire Line
	-1400 2650 -1300 2650
Wire Wire Line
	-1400 2750 -1300 2750
Wire Wire Line
	-1400 2850 -1300 2850
Wire Wire Line
	-1400 2950 -1300 2950
Wire Wire Line
	-2000 2950 -1900 2950
Wire Wire Line
	-2000 2850 -1900 2850
Wire Wire Line
	-2000 2250 -1900 2250
Wire Wire Line
	-2000 2350 -1900 2350
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J?
U 1 1 5D801A4E
P -1700 2550
F 0 "J?" H -1650 3067 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H -1650 2976 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x08_P2.54mm_Horizontal" H -1700 2550 50  0001 C CNN
F 3 "~" H -1700 2550 50  0001 C CNN
	1    -1700 2550
	1    0    0    -1  
$EndComp
Text GLabel -2000 2350 0    50   Input ~ 0
VccSensores
$EndSCHEMATC
