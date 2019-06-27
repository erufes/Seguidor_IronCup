EESchema Schematic File Version 4
LIBS:Placa_central_v01-cache
EELAYER 29 0
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
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5C812F31
P 1750 1900
F 0 "A1" H 1750 814 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 1750 723 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 1900 950 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 1750 900 50  0001 C CNN
	1    1750 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5C8132E2
P 10150 2450
F 0 "R5" V 9943 2450 50  0000 C CNN
F 1 "330" V 10034 2450 50  0000 C CNN
F 2 "" V 10080 2450 50  0001 C CNN
F 3 "~" H 10150 2450 50  0001 C CNN
	1    10150 2450
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5C813322
P 10150 2700
F 0 "R6" V 9943 2700 50  0000 C CNN
F 1 "11k" V 10034 2700 50  0000 C CNN
F 2 "" V 10080 2700 50  0001 C CNN
F 3 "~" H 10150 2700 50  0001 C CNN
	1    10150 2700
	0    1    1    0   
$EndComp
Text GLabel 10400 2450 2    50   Input ~ 0
GND
Wire Wire Line
	10400 2450 10300 2450
Text GLabel 10400 2700 2    50   Input ~ 0
GND
Wire Wire Line
	10400 2700 10300 2700
Wire Wire Line
	9950 2450 10000 2450
Wire Wire Line
	9950 2700 10000 2700
$Comp
L Device:R R3
U 1 1 5C813A06
P 10150 1500
F 0 "R3" V 9943 1500 50  0000 C CNN
F 1 "330" V 10034 1500 50  0000 C CNN
F 2 "" V 10080 1500 50  0001 C CNN
F 3 "~" H 10150 1500 50  0001 C CNN
	1    10150 1500
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5C813A0D
P 10150 1750
F 0 "R4" V 9943 1750 50  0000 C CNN
F 1 "11k" V 10034 1750 50  0000 C CNN
F 2 "" V 10080 1750 50  0001 C CNN
F 3 "~" H 10150 1750 50  0001 C CNN
	1    10150 1750
	0    1    1    0   
$EndComp
Text GLabel 10400 1500 2    50   Input ~ 0
GND
Wire Wire Line
	10400 1500 10300 1500
Text GLabel 10400 1750 2    50   Input ~ 0
GND
Wire Wire Line
	10400 1750 10300 1750
Wire Wire Line
	9950 1500 10000 1500
Wire Wire Line
	9950 1750 10000 1750
Wire Wire Line
	9950 1750 9950 1950
Wire Wire Line
	9950 1950 10050 1950
Wire Wire Line
	9950 2700 9950 2900
Wire Wire Line
	9950 2900 10050 2900
Text GLabel 8850 2450 0    50   Input ~ 0
5V
Text GLabel 8850 1500 0    50   Input ~ 0
5V
Wire Wire Line
	8850 1500 8950 1500
Wire Wire Line
	8950 1500 8950 1400
Wire Wire Line
	8950 1500 8950 1650
Connection ~ 8950 1500
Wire Wire Line
	8950 2450 8950 2350
Wire Wire Line
	8850 2450 8950 2450
Wire Wire Line
	8950 2450 8950 2600
Connection ~ 8950 2450
Text GLabel 10050 1950 2    50   Input ~ 0
Encoder1
Text GLabel 10050 2900 2    50   Input ~ 0
Encoder2
$Comp
L Device:LED D1
U 1 1 5C81702D
P 9950 3700
F 0 "D1" H 9941 3916 50  0000 C CNN
F 1 "LedAzul" H 9941 3825 50  0000 C CNN
F 2 "Capacitors_THT:CP_Axial_L11.0mm_D5.0mm_P18.00mm_Horizontal" H 9950 3700 50  0001 C CNN
F 3 "~" H 9950 3700 50  0001 C CNN
	1    9950 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5C817C0F
P 9550 3700
F 0 "R1" V 9343 3700 50  0000 C CNN
F 1 "330" V 9434 3700 50  0000 C CNN
F 2 "" V 9480 3700 50  0001 C CNN
F 3 "~" H 9550 3700 50  0001 C CNN
	1    9550 3700
	0    1    1    0   
$EndComp
Text GLabel 1550 800  0    50   Input ~ 0
8.4V
Wire Wire Line
	1650 800  1650 900 
Text GLabel 1950 2950 2    50   Input ~ 0
GND
Wire Wire Line
	1950 2950 1850 2950
Wire Wire Line
	1850 2900 1850 2950
NoConn ~ 1250 1400
NoConn ~ 1250 1300
NoConn ~ 2250 1700
Text GLabel 1150 1500 0    50   Input ~ 0
Encoder1
Text GLabel 1150 1600 0    50   Input ~ 0
Encoder2
Wire Notes Line
	8650 3000 8650 950 
Wire Notes Line
	8650 950  10650 950 
Wire Notes Line
	10650 950  10650 3000
Wire Notes Line
	10650 3000 8650 3000
Text Notes 9350 1100 0    79   ~ 0
Encoder
$Comp
L Switch:SW_Push SW1
U 1 1 5C81F7C0
P 9650 4900
F 0 "SW1" H 9650 5185 50  0000 C CNN
F 1 "SW_comando1" H 9650 5094 50  0000 C CNN
F 2 "" H 9650 5100 50  0001 C CNN
F 3 "" H 9650 5100 50  0001 C CNN
	1    9650 4900
	1    0    0    -1  
$EndComp
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
Text GLabel 1150 2500 0    50   Input ~ 0
SensorDir
Text GLabel 1150 2400 0    50   Input ~ 0
SensorEsq
$Comp
L Switch:SW_SPST SW?
U 1 1 5D0BCA30
P 1650 7300
F 0 "SW?" H 1650 7535 50  0000 C CNN
F 1 "SW_ON/OFF" H 1650 7444 50  0000 C CNN
F 2 "" H 1650 7300 50  0001 C CNN
F 3 "" H 1650 7300 50  0001 C CNN
	1    1650 7300
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 5D0BE091
P 1650 6150
F 0 "H?" H 1750 6201 50  0000 L CNN
F 1 "V8.4 - Lipo" H 1400 6100 50  0000 L CNN
F 2 "" H 1650 6150 50  0001 C CNN
F 3 "~" H 1650 6150 50  0001 C CNN
	1    1650 6150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 5D0BE14B
P 2100 6150
F 0 "H?" H 2200 6201 50  0000 L CNN
F 1 "GND - Lipo" H 1900 6100 50  0000 L CNN
F 2 "" H 2100 6150 50  0001 C CNN
F 3 "~" H 2100 6150 50  0001 C CNN
	1    2100 6150
	1    0    0    -1  
$EndComp
$Comp
L Sensores_e_componentes_SL:TCRT5000 U?
U 1 1 5D0BF882
P 9450 1450
F 0 "U?" H 9300 1650 60  0000 C CNN
F 1 "TCRT5000" H 9700 1650 60  0000 C CNN
F 2 "" H 9450 1450 60  0000 C CNN
F 3 "" H 9450 1450 60  0000 C CNN
	1    9450 1450
	1    0    0    -1  
$EndComp
Connection ~ 9950 1750
$Comp
L Sensores_e_componentes_SL:TCRT5000 U?
U 1 1 5D0BF8FC
P 9450 2400
F 0 "U?" H 9450 2887 60  0000 C CNN
F 1 "TCRT5000" H 9450 2781 60  0000 C CNN
F 2 "" H 9450 2400 60  0000 C CNN
F 3 "" H 9450 2400 60  0000 C CNN
	1    9450 2400
	1    0    0    -1  
$EndComp
Connection ~ 9950 2700
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D1527D8
P 1350 6650
F 0 "J?" H 1250 6450 50  0000 C CNN
F 1 "PinoChargeBateriaV++" H 1600 6550 50  0000 C CNN
F 2 "" H 1350 6650 50  0001 C CNN
F 3 "~" H 1350 6650 50  0001 C CNN
	1    1350 6650
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D152CB0
P 2400 6500
F 0 "J?" H 2428 6526 50  0000 L CNN
F 1 "PinoChargeBateriaGND" H 2428 6435 50  0000 L CNN
F 2 "" H 2400 6500 50  0001 C CNN
F 3 "~" H 2400 6500 50  0001 C CNN
	1    2400 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D?
U 1 1 5D153AA9
P 1650 6850
F 0 "D?" V 1696 6771 50  0000 R CNN
F 1 "DiodoProtecao-4A" V 1605 6771 50  0000 R CNN
F 2 "" H 1650 6850 50  0001 C CNN
F 3 "~" H 1650 6850 50  0001 C CNN
	1    1650 6850
	0    -1   -1   0   
$EndComp
$Comp
L Device:Fuse F?
U 1 1 5D154189
P 1650 6450
F 0 "F?" H 1710 6496 50  0000 L CNN
F 1 "Fuse-4A" H 1710 6405 50  0000 L CNN
F 2 "" V 1580 6450 50  0001 C CNN
F 3 "~" H 1650 6450 50  0001 C CNN
	1    1650 6450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW?
U 1 1 5D158BEE
P 3600 7300
F 0 "SW?" H 3600 7650 50  0000 C CNN
F 1 "SW_AlimentacaoPlacaSensores" H 3600 7550 50  0000 C CNN
F 2 "" H 3600 7300 50  0001 C CNN
F 3 "~" H 3600 7300 50  0001 C CNN
	1    3600 7300
	1    0    0    -1  
$EndComp
Text GLabel 3200 7300 0    50   Input ~ 0
VccSensores
NoConn ~ 4100 7400
Text GLabel 1150 2100 0    50   Input ~ 0
Motor1PWM
Text GLabel 1150 2000 0    50   Input ~ 0
Motor2PWM
Text GLabel 1150 1700 0    50   Input ~ 0
Motor1Dir1
Text GLabel 1150 1800 0    50   Input ~ 0
Motor1Dir2
Text GLabel 1150 2200 0    50   Input ~ 0
Motor2Dir1
Text GLabel 1150 2300 0    50   Input ~ 0
Motor2Dir2
Text GLabel 1150 1900 0    50   Input ~ 0
Botao1
Text GLabel 1150 2600 0    50   Input ~ 0
Botao2
Text GLabel 2350 2600 2    50   Input ~ 0
LedAzul
Text GLabel 2200 7500 2    50   Input ~ 0
GND
Wire Wire Line
	1750 2900 1750 2950
Wire Wire Line
	1750 2950 1850 2950
Connection ~ 1850 2950
Text GLabel 1600 7600 0    50   Input ~ 0
8.4V
Text GLabel 2050 800  2    50   Input ~ 0
5VArduino
Wire Wire Line
	1550 800  1650 800 
Wire Wire Line
	2050 800  1950 800 
Wire Wire Line
	1950 800  1950 900 
Text GLabel 6900 1350 0    50   Input ~ 0
5VPonteH
Wire Wire Line
	1650 6250 1650 6300
Wire Wire Line
	1650 6600 1650 6650
Wire Wire Line
	1550 6650 1650 6650
Connection ~ 1650 6650
Wire Wire Line
	1650 6650 1650 6700
Wire Wire Line
	1650 7000 1650 7100
Wire Wire Line
	1650 7500 1650 7600
Wire Wire Line
	1650 7600 1600 7600
Wire Wire Line
	2100 7500 2100 6500
Wire Wire Line
	2100 7500 2200 7500
Wire Wire Line
	2200 6500 2100 6500
Connection ~ 2100 6500
Wire Wire Line
	2100 6500 2100 6250
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
Text GLabel 6900 2350 0    50   Input ~ 0
Motor11
Text GLabel 6900 2250 0    50   Input ~ 0
Motor12
Text GLabel 6900 2550 0    50   Input ~ 0
Motor21
Text GLabel 6900 2450 0    50   Input ~ 0
Motor22
Text Notes 650  5950 0    79   ~ 0
Circuito de Alimentação da placa e Sistema de proteção
Wire Wire Line
	3200 7300 3400 7300
$Comp
L Connector:Conn_01x02_Female J?
U 1 1 5D178B41
P 7200 2250
F 0 "J?" H 7300 2200 50  0000 C CNN
F 1 "Conn_01x02_Motor1" H 7750 2200 50  0000 C CNN
F 2 "" H 7200 2250 50  0001 C CNN
F 3 "~" H 7200 2250 50  0001 C CNN
	1    7200 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J?
U 1 1 5D179BFA
P 7200 2450
F 0 "J?" H 7300 2400 50  0000 C CNN
F 1 "Conn_01x02_Motor2" H 7750 2400 50  0000 C CNN
F 2 "" H 7200 2450 50  0001 C CNN
F 3 "~" H 7200 2450 50  0001 C CNN
	1    7200 2450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D17BE38
P 7200 1600
F 0 "J?" H 7228 1626 50  0000 L CNN
F 1 "Conn_01x01_Motor1PWM" H 7300 1600 50  0000 L CNN
F 2 "" H 7200 1600 50  0001 C CNN
F 3 "~" H 7200 1600 50  0001 C CNN
	1    7200 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D17CB00
P 7200 1700
F 0 "J?" H 7228 1726 50  0000 L CNN
F 1 "Conn_01x01_Motor1Dir1" H 7300 1700 50  0000 L CNN
F 2 "" H 7200 1700 50  0001 C CNN
F 3 "~" H 7200 1700 50  0001 C CNN
	1    7200 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D17CCD0
P 7200 1800
F 0 "J?" H 7228 1826 50  0000 L CNN
F 1 "Conn_01x01_Motor1Dir2" H 7300 1800 50  0000 L CNN
F 2 "" H 7200 1800 50  0001 C CNN
F 3 "~" H 7200 1800 50  0001 C CNN
	1    7200 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D17CE09
P 7200 1900
F 0 "J?" H 7228 1926 50  0000 L CNN
F 1 "Conn_01x01_Motor2Dir1" H 7300 1900 50  0000 L CNN
F 2 "" H 7200 1900 50  0001 C CNN
F 3 "~" H 7200 1900 50  0001 C CNN
	1    7200 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D17CF2D
P 7200 2000
F 0 "J?" H 7228 2026 50  0000 L CNN
F 1 "Conn_01x01_Motor2Dir2" H 7300 2000 50  0000 L CNN
F 2 "" H 7200 2000 50  0001 C CNN
F 3 "~" H 7200 2000 50  0001 C CNN
	1    7200 2000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D17D53A
P 7200 2100
F 0 "J?" H 7228 2126 50  0000 L CNN
F 1 "Conn_01x01_Motor2PWM" H 7300 2100 50  0000 L CNN
F 2 "" H 7200 2100 50  0001 C CNN
F 3 "~" H 7200 2100 50  0001 C CNN
	1    7200 2100
	1    0    0    -1  
$EndComp
Text GLabel 6900 1250 0    50   Input ~ 0
8.4V
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D1815D1
P 7200 1250
F 0 "J?" H 7228 1276 50  0000 L CNN
F 1 "Conn_01x01_8.4VPonteH" H 7300 1250 50  0000 L CNN
F 2 "" H 7200 1250 50  0001 C CNN
F 3 "~" H 7200 1250 50  0001 C CNN
	1    7200 1250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D181805
P 7200 1450
F 0 "J?" H 7228 1476 50  0000 L CNN
F 1 "Conn_01x01_GNDPonteH" H 7300 1450 50  0000 L CNN
F 2 "" H 7200 1450 50  0001 C CNN
F 3 "~" H 7200 1450 50  0001 C CNN
	1    7200 1450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D181A54
P 7200 1350
F 0 "J?" H 7228 1376 50  0000 L CNN
F 1 "Conn_01x01_5VPonteH" H 7300 1350 50  0000 L CNN
F 2 "" H 7200 1350 50  0001 C CNN
F 3 "~" H 7200 1350 50  0001 C CNN
	1    7200 1350
	1    0    0    -1  
$EndComp
Text Notes 6650 1100 0    79   ~ 0
Ponte H - Pinos soltos
$Comp
L Mechanical:MountingHole H?
U 1 1 5D1915F0
P 6600 2750
F 0 "H?" H 6700 2796 50  0000 L CNN
F 1 "FurosPonteH" H 6700 2705 50  0000 L CNN
F 2 "" H 6600 2750 50  0001 C CNN
F 3 "~" H 6600 2750 50  0001 C CNN
	1    6600 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1500 1250 1500
Wire Wire Line
	1150 1600 1250 1600
Wire Wire Line
	1150 1700 1250 1700
Wire Wire Line
	1150 1800 1250 1800
Wire Wire Line
	1150 1900 1250 1900
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
Text Notes 1200 700  0    79   ~ 0
Arduino Nano V3.x
Text Notes 2650 6850 0    59   ~ 0
Switch de alimentação da placa de sensores
Wire Wire Line
	3800 7200 3900 7200
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D1B2515
P 4100 7200
F 0 "J?" H 4128 7226 50  0000 L CNN
F 1 "Conn_01x01_5VPlacaSensores" H 4128 7135 50  0000 L CNN
F 2 "" H 4100 7200 50  0001 C CNN
F 3 "~" H 4100 7200 50  0001 C CNN
	1    4100 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 7400 4100 7400
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
	6900 2250 7000 2250
Wire Wire Line
	6900 2350 7000 2350
Wire Wire Line
	6900 2450 7000 2450
Wire Wire Line
	6900 2550 7000 2550
NoConn ~ 1850 900 
Text GLabel 9250 3700 0    59   Input ~ 0
LedAzul
Text GLabel 10250 3700 2    59   Input ~ 0
GND
Wire Wire Line
	9250 3700 9400 3700
Wire Wire Line
	9700 3700 9800 3700
Wire Wire Line
	10100 3700 10250 3700
Text Notes 9250 3400 0    79   ~ 0
Leds da pcb
$Comp
L Device:R R?
U 1 1 5D1DC4E5
P 9550 4100
F 0 "R?" V 9343 4100 50  0000 C CNN
F 1 "330" V 9434 4100 50  0000 C CNN
F 2 "" V 9480 4100 50  0001 C CNN
F 3 "~" H 9550 4100 50  0001 C CNN
	1    9550 4100
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D1DC66B
P 9950 4100
F 0 "D?" H 9941 4316 50  0000 C CNN
F 1 "LedVerde" H 9941 4225 50  0000 C CNN
F 2 "Capacitors_THT:CP_Axial_L11.0mm_D5.0mm_P18.00mm_Horizontal" H 9950 4100 50  0001 C CNN
F 3 "~" H 9950 4100 50  0001 C CNN
	1    9950 4100
	1    0    0    -1  
$EndComp
Text GLabel 10250 4100 2    59   Input ~ 0
GND
Wire Wire Line
	10100 4100 10250 4100
Wire Wire Line
	9800 4100 9700 4100
Text GLabel 9250 4100 0    59   Input ~ 0
5V
Wire Wire Line
	9250 4100 9400 4100
$Comp
L Device:R RPullDown
U 1 1 5D1E3F24
P 10000 5150
F 0 "RPullDown" H 10070 5196 50  0000 L CNN
F 1 "R" H 10070 5105 50  0000 L CNN
F 2 "" V 9930 5150 50  0001 C CNN
F 3 "~" H 10000 5150 50  0001 C CNN
	1    10000 5150
	1    0    0    -1  
$EndComp
Text GLabel 10100 4900 2    50   Input ~ 0
Botao1
Wire Wire Line
	9850 4900 10000 4900
Wire Wire Line
	10000 5000 10000 4900
Connection ~ 10000 4900
Wire Wire Line
	10000 4900 10100 4900
Text GLabel 9900 5400 0    59   Input ~ 0
GND
Wire Wire Line
	9900 5400 10000 5400
Wire Wire Line
	10000 5400 10000 5300
Text GLabel 9150 4900 0    59   Input ~ 0
5V
Wire Wire Line
	9150 4900 9450 4900
Text Notes 9200 4500 0    79   ~ 0
Botoes da pcb
Text GLabel 3200 7600 0    59   Input ~ 0
GND
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D1F3BEA
P 4100 7600
F 0 "J?" H 4128 7626 50  0000 L CNN
F 1 "Conn_01x01_GNDPlacaSensores" H 4128 7535 50  0000 L CNN
F 2 "" H 4100 7600 50  0001 C CNN
F 3 "~" H 4100 7600 50  0001 C CNN
	1    4100 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 7600 3200 7600
Wire Notes Line
	6250 950  8400 950 
Wire Notes Line
	8400 950  8400 2900
Wire Notes Line
	8400 2900 6250 2900
Wire Notes Line
	6250 2900 6250 950 
Wire Notes Line
	8650 3200 10650 3200
Wire Notes Line
	10650 3200 10650 5600
Wire Notes Line
	10650 5600 8650 5600
Wire Notes Line
	8650 5600 8650 3200
Wire Notes Line
	550  5750 5500 5750
Wire Notes Line
	5500 5750 5500 7750
Wire Notes Line
	550  7750 550  5750
Wire Notes Line
	550  7750 5500 7750
Wire Notes Line
	600  3200 600  550 
Wire Notes Line
	2750 3200 2750 550 
Wire Notes Line
	2750 3200 600  3200
Wire Notes Line
	600  550  2750 550 
$EndSCHEMATC
