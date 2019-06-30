EESchema Schematic File Version 4
LIBS:Placa_central_v01-cache
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
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5C812F31
P 2250 2250
F 0 "A1" H 2250 1164 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 2250 1073 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 2400 1300 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 2250 1250 50  0001 C CNN
	1    2250 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5C81702D
P 10000 3300
F 0 "D1" H 9991 3516 50  0000 C CNN
F 1 "LedAzul" H 9991 3425 50  0000 C CNN
F 2 "Capacitors_THT:CP_Axial_L11.0mm_D5.0mm_P18.00mm_Horizontal" H 10000 3300 50  0001 C CNN
F 3 "~" H 10000 3300 50  0001 C CNN
	1    10000 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5C817C0F
P 9600 3300
F 0 "R1" V 9393 3300 50  0000 C CNN
F 1 "RLedAzul330" V 9500 3200 50  0000 C CNN
F 2 "" V 9530 3300 50  0001 C CNN
F 3 "~" H 9600 3300 50  0001 C CNN
	1    9600 3300
	0    1    1    0   
$EndComp
Text GLabel 2050 1150 0    50   Input ~ 0
8.4V
Wire Wire Line
	2150 1150 2150 1250
Text GLabel 2450 3300 2    50   Input ~ 0
GND
Wire Wire Line
	2450 3300 2350 3300
Wire Wire Line
	2350 3250 2350 3300
NoConn ~ 2750 2050
Text GLabel 1650 1850 0    50   Input ~ 0
Encoder1
Text GLabel 1650 1950 0    50   Input ~ 0
Encoder2
$Comp
L Switch:SW_Push SW1
U 1 1 5C81F7C0
P 9700 4500
F 0 "SW1" H 9700 4785 50  0000 C CNN
F 1 "SW_comando1" H 9700 4694 50  0000 C CNN
F 2 "" H 9700 4700 50  0001 C CNN
F 3 "" H 9700 4700 50  0001 C CNN
	1    9700 4500
	1    0    0    -1  
$EndComp
Text GLabel 3400 4450 0    50   Input ~ 0
Sensor1
Text GLabel 3400 4550 0    50   Input ~ 0
Sensor2
Text GLabel 3400 4650 0    50   Input ~ 0
Sensor3
Text GLabel 3400 4750 0    50   Input ~ 0
Sensor4
Text GLabel 3400 4850 0    50   Input ~ 0
Sensor5
Text GLabel 3400 4950 0    50   Input ~ 0
Sensor6
Text GLabel 3400 5050 0    50   Input ~ 0
Sensor7
Text GLabel 1650 2850 0    50   Input ~ 0
SensorDir
Text GLabel 1650 2750 0    50   Input ~ 0
SensorEsq
$Comp
L Switch:SW_SPST SW?
U 1 1 5D0BCA30
P 2750 7200
F 0 "SW?" H 2750 7435 50  0000 C CNN
F 1 "SW_ON/OFF" H 2750 7344 50  0000 C CNN
F 2 "" H 2750 7200 50  0001 C CNN
F 3 "" H 2750 7200 50  0001 C CNN
	1    2750 7200
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 5D0BE091
P 2750 6000
F 0 "H?" H 2850 6051 50  0000 L CNN
F 1 "V8.4 - Lipo" H 2500 5950 50  0000 L CNN
F 2 "" H 2750 6000 50  0001 C CNN
F 3 "~" H 2750 6000 50  0001 C CNN
	1    2750 6000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 5D0BE14B
P 3200 6000
F 0 "H?" H 3300 6051 50  0000 L CNN
F 1 "GND - Lipo" H 3000 5950 50  0000 L CNN
F 2 "" H 3200 6000 50  0001 C CNN
F 3 "~" H 3200 6000 50  0001 C CNN
	1    3200 6000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D1527D8
P 2450 6500
F 0 "J?" H 2500 6500 50  0000 C CNN
F 1 "PinoChargeBateriaVcc" H 3000 6500 50  0000 C CNN
F 2 "" H 2450 6500 50  0001 C CNN
F 3 "~" H 2450 6500 50  0001 C CNN
	1    2450 6500
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D152CB0
P 3500 6350
F 0 "J?" H 3550 6350 50  0000 L CNN
F 1 "PinoChargeBateriaGND" H 3650 6350 50  0000 L CNN
F 2 "" H 3500 6350 50  0001 C CNN
F 3 "~" H 3500 6350 50  0001 C CNN
	1    3500 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:D D?
U 1 1 5D153AA9
P 2750 6800
F 0 "D?" V 2796 6721 50  0000 R CNN
F 1 "DiodoProtecao-4A" V 2650 7100 50  0000 R CNN
F 2 "" H 2750 6800 50  0001 C CNN
F 3 "~" H 2750 6800 50  0001 C CNN
	1    2750 6800
	0    -1   -1   0   
$EndComp
$Comp
L Device:Fuse F?
U 1 1 5D154189
P 2750 6300
F 0 "F?" H 2810 6346 50  0000 L CNN
F 1 "Fuse-4A" H 2810 6255 50  0000 L CNN
F 2 "" V 2680 6300 50  0001 C CNN
F 3 "~" H 2750 6300 50  0001 C CNN
	1    2750 6300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW?
U 1 1 5D158BEE
P 4850 2850
F 0 "SW?" H 4850 3200 50  0000 C CNN
F 1 "SW_AlimentacaoPlacaSensores" H 4850 3100 50  0000 C CNN
F 2 "" H 4850 2850 50  0001 C CNN
F 3 "~" H 4850 2850 50  0001 C CNN
	1    4850 2850
	1    0    0    -1  
$EndComp
Text GLabel 4450 2850 0    50   Input ~ 0
VccSensores
NoConn ~ 5350 2950
Text GLabel 1650 2450 0    50   Input ~ 0
Motor1PWM
Text GLabel 1650 2350 0    50   Input ~ 0
Motor2PWM
Text GLabel 1650 2050 0    50   Input ~ 0
Motor1Dir1
Text GLabel 1650 2150 0    50   Input ~ 0
Motor1Dir2
Text GLabel 1650 2550 0    50   Input ~ 0
Motor2Dir1
Text GLabel 1650 2650 0    50   Input ~ 0
Motor2Dir2
Text GLabel 1650 2250 0    50   Input ~ 0
Botao1
Text GLabel 1650 2950 0    50   Input ~ 0
Botao2
Text GLabel 3400 5150 0    50   Input ~ 0
LedAzul
Text GLabel 3300 7350 2    50   Input ~ 0
GND
Wire Wire Line
	2250 3250 2250 3300
Wire Wire Line
	2250 3300 2350 3300
Connection ~ 2350 3300
Text GLabel 2700 7500 0    50   Input ~ 0
8.4V
Text GLabel 2550 1150 2    50   Input ~ 0
5VArduino
Wire Wire Line
	2050 1150 2150 1150
Wire Wire Line
	2550 1150 2450 1150
Wire Wire Line
	2450 1150 2450 1250
Text GLabel 6900 1350 0    50   Input ~ 0
5VPonteH
Wire Wire Line
	2750 6100 2750 6150
Wire Wire Line
	2750 6450 2750 6500
Wire Wire Line
	2650 6500 2750 6500
Connection ~ 2750 6500
Wire Wire Line
	2750 7400 2750 7500
Wire Wire Line
	2750 7500 2700 7500
Wire Wire Line
	3200 7350 3200 6500
Wire Wire Line
	3200 7350 3300 7350
Wire Wire Line
	3300 6350 3200 6350
Connection ~ 3200 6350
Wire Wire Line
	3200 6350 3200 6100
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
Text Notes 1200 5800 0    79   ~ 0
Circuito de Alimentação da placa e Sistema de proteção
Wire Wire Line
	4450 2850 4650 2850
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
P 6400 2650
F 0 "H?" H 6500 2696 50  0000 L CNN
F 1 "FurosPonteH" H 6500 2605 50  0000 L CNN
F 2 "" H 6400 2650 50  0001 C CNN
F 3 "~" H 6400 2650 50  0001 C CNN
	1    6400 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1850 1750 1850
Wire Wire Line
	1650 1950 1750 1950
Wire Wire Line
	1650 2050 1750 2050
Wire Wire Line
	1650 2150 1750 2150
Wire Wire Line
	1650 2250 1750 2250
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
Text Notes 1700 1050 0    79   ~ 0
Arduino Nano V3.x
Wire Wire Line
	5050 2750 5150 2750
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D1B2515
P 5350 2750
F 0 "J?" H 5378 2776 50  0000 L CNN
F 1 "Conn_01x01_5VPlacaSensores" H 5378 2685 50  0000 L CNN
F 2 "" H 5350 2750 50  0001 C CNN
F 3 "~" H 5350 2750 50  0001 C CNN
	1    5350 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2950 5350 2950
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
NoConn ~ 2350 1250
Text GLabel 9300 3300 0    59   Input ~ 0
LedAzul
Text GLabel 10300 3300 2    59   Input ~ 0
GND
Wire Wire Line
	9300 3300 9450 3300
Wire Wire Line
	9750 3300 9850 3300
Wire Wire Line
	10150 3300 10300 3300
Text Notes 9300 3000 0    79   ~ 0
Leds da pcb
$Comp
L Device:R R?
U 1 1 5D1DC4E5
P 9600 3700
F 0 "R?" V 9393 3700 50  0000 C CNN
F 1 "RLedVerde330" V 9500 3600 50  0000 C CNN
F 2 "" V 9530 3700 50  0001 C CNN
F 3 "~" H 9600 3700 50  0001 C CNN
	1    9600 3700
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D1DC66B
P 10000 3700
F 0 "D?" H 9991 3916 50  0000 C CNN
F 1 "LedVerde" H 9991 3825 50  0000 C CNN
F 2 "Capacitors_THT:CP_Axial_L11.0mm_D5.0mm_P18.00mm_Horizontal" H 10000 3700 50  0001 C CNN
F 3 "~" H 10000 3700 50  0001 C CNN
	1    10000 3700
	1    0    0    -1  
$EndComp
Text GLabel 10300 3700 2    59   Input ~ 0
GND
Wire Wire Line
	10150 3700 10300 3700
Wire Wire Line
	9850 3700 9750 3700
Text GLabel 9300 3700 0    59   Input ~ 0
5V
Wire Wire Line
	9300 3700 9450 3700
$Comp
L Device:R RPullDown
U 1 1 5D1E3F24
P 10050 4750
F 0 "RPullDown" H 10120 4796 50  0000 L CNN
F 1 "R" H 10120 4705 50  0000 L CNN
F 2 "" V 9980 4750 50  0001 C CNN
F 3 "~" H 10050 4750 50  0001 C CNN
	1    10050 4750
	1    0    0    -1  
$EndComp
Text GLabel 10150 4500 2    50   Input ~ 0
Botao1
Wire Wire Line
	9900 4500 10050 4500
Wire Wire Line
	10050 4600 10050 4500
Connection ~ 10050 4500
Wire Wire Line
	10050 4500 10150 4500
Text GLabel 9950 5000 0    59   Input ~ 0
GND
Wire Wire Line
	9950 5000 10050 5000
Wire Wire Line
	10050 5000 10050 4900
Text GLabel 9200 4500 0    59   Input ~ 0
5V
Wire Wire Line
	9200 4500 9500 4500
Text Notes 9250 4100 0    79   ~ 0
Botoes da pcb
Text GLabel 4450 3150 0    59   Input ~ 0
GND
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D1F3BEA
P 5350 3150
F 0 "J?" H 5378 3176 50  0000 L CNN
F 1 "Conn_01x01_GNDPlacaSensores" H 5378 3085 50  0000 L CNN
F 2 "" H 5350 3150 50  0001 C CNN
F 3 "~" H 5350 3150 50  0001 C CNN
	1    5350 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3150 4450 3150
Wire Notes Line
	6250 950  8400 950 
Wire Notes Line
	8400 950  8400 2900
Wire Notes Line
	8400 2900 6250 2900
Wire Notes Line
	6250 2900 6250 950 
Wire Notes Line
	8700 2800 10700 2800
Wire Notes Line
	10700 2800 10700 5200
Wire Notes Line
	10700 5200 8700 5200
Wire Notes Line
	8700 5200 8700 2800
Wire Notes Line
	1100 7600 1100 5600
Wire Notes Line
	1100 3550 1100 900 
Wire Notes Line
	3250 3550 3250 900 
Wire Notes Line
	3250 3550 1100 3550
Wire Notes Line
	1100 900  3250 900 
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D18DC68
P 9650 1450
F 0 "J?" H 9678 1476 50  0000 L CNN
F 1 "Conn_01x01_5VEncoder1" H 9650 1550 50  0000 L CNN
F 2 "" H 9650 1450 50  0001 C CNN
F 3 "~" H 9650 1450 50  0001 C CNN
	1    9650 1450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D18E3FC
P 9650 1600
F 0 "J?" H 9678 1626 50  0000 L CNN
F 1 "Conn_01x01_OutputEncoder1" H 9650 1700 50  0000 L CNN
F 2 "" H 9650 1600 50  0001 C CNN
F 3 "~" H 9650 1600 50  0001 C CNN
	1    9650 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D18E464
P 9650 1750
F 0 "J?" H 9677 1776 50  0000 L CNN
F 1 "Conn_01x01_GNDEncoder1" H 9650 1850 50  0000 L CNN
F 2 "" H 9650 1750 50  0001 C CNN
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
Wire Wire Line
	9350 1450 9450 1450
Wire Wire Line
	9350 1600 9450 1600
Wire Wire Line
	9350 1750 9450 1750
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D19974C
P 9650 2100
F 0 "J?" H 9678 2126 50  0000 L CNN
F 1 "Conn_01x01_5VEncoder1" H 9650 2200 50  0000 L CNN
F 2 "" H 9650 2100 50  0001 C CNN
F 3 "~" H 9650 2100 50  0001 C CNN
	1    9650 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D199753
P 9650 2250
F 0 "J?" H 9678 2276 50  0000 L CNN
F 1 "Conn_01x01_OutputEncoder1" H 9650 2350 50  0000 L CNN
F 2 "" H 9650 2250 50  0001 C CNN
F 3 "~" H 9650 2250 50  0001 C CNN
	1    9650 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D19975A
P 9650 2400
F 0 "J?" H 9677 2426 50  0000 L CNN
F 1 "Conn_01x01_GNDEncoder1" H 9650 2500 50  0000 L CNN
F 2 "" H 9650 2400 50  0001 C CNN
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
Wire Wire Line
	9350 2100 9450 2100
Wire Wire Line
	9350 2250 9450 2250
Wire Wire Line
	9350 2400 9450 2400
Text Notes 8900 1150 0    79   ~ 0
Encoders - Pads de conexao
Text Notes 8950 1300 0    39   ~ 0
1 - Esquerda\n
Text Notes 8950 1950 0    39   ~ 0
2 - Direita
Wire Notes Line
	8700 950  10850 950 
Wire Notes Line
	10850 950  10850 2550
Wire Notes Line
	10850 2550 8700 2550
Wire Notes Line
	8700 2550 8700 950 
$Comp
L Mechanical:MountingHole H?
U 1 1 5D1A4A91
P 8250 2650
F 0 "H?" H 8350 2696 50  0000 L CNN
F 1 "FurosPonteH" H 8350 2605 50  0000 L CNN
F 2 "" H 8250 2650 50  0001 C CNN
F 3 "~" H 8250 2650 50  0001 C CNN
	1    8250 2650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5D1A4BFD
P 8250 1100
F 0 "H?" H 8350 1146 50  0000 L CNN
F 1 "FurosPonteH" H 8350 1055 50  0000 L CNN
F 2 "" H 8250 1100 50  0001 C CNN
F 3 "~" H 8250 1100 50  0001 C CNN
	1    8250 1100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5D1A4C89
P 6400 1100
F 0 "H?" H 6500 1146 50  0000 L CNN
F 1 "FurosPonteH" H 6500 1055 50  0000 L CNN
F 2 "" H 6400 1100 50  0001 C CNN
F 3 "~" H 6400 1100 50  0001 C CNN
	1    6400 1100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D1A60A4
P 4850 1300
F 0 "J?" H 4878 1326 50  0000 L CNN
F 1 "Conn_01x01_Sensor1" H 5000 1350 50  0000 L CNN
F 2 "" H 4850 1300 50  0001 C CNN
F 3 "~" H 4850 1300 50  0001 C CNN
	1    4850 1300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D1A6112
P 4850 1400
F 0 "J?" H 4878 1426 50  0000 L CNN
F 1 "Conn_01x01_Sensor2" H 5000 1450 50  0000 L CNN
F 2 "" H 4850 1400 50  0001 C CNN
F 3 "~" H 4850 1400 50  0001 C CNN
	1    4850 1400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D1A6180
P 4850 1500
F 0 "J?" H 4878 1526 50  0000 L CNN
F 1 "Conn_01x01_Sensor3" H 5000 1550 50  0000 L CNN
F 2 "" H 4850 1500 50  0001 C CNN
F 3 "~" H 4850 1500 50  0001 C CNN
	1    4850 1500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D1A61F4
P 4850 1600
F 0 "J?" H 4878 1626 50  0000 L CNN
F 1 "Conn_01x01_Sensor4" H 5000 1650 50  0000 L CNN
F 2 "" H 4850 1600 50  0001 C CNN
F 3 "~" H 4850 1600 50  0001 C CNN
	1    4850 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D1A6266
P 4850 1700
F 0 "J?" H 4878 1726 50  0000 L CNN
F 1 "Conn_01x01_Sensor5" H 5000 1750 50  0000 L CNN
F 2 "" H 4850 1700 50  0001 C CNN
F 3 "~" H 4850 1700 50  0001 C CNN
	1    4850 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D1A637E
P 4850 1800
F 0 "J?" H 4878 1826 50  0000 L CNN
F 1 "Conn_01x01_Sensor6" H 5000 1850 50  0000 L CNN
F 2 "" H 4850 1800 50  0001 C CNN
F 3 "~" H 4850 1800 50  0001 C CNN
	1    4850 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D1A63F8
P 4850 1900
F 0 "J?" H 4878 1926 50  0000 L CNN
F 1 "Conn_01x01_Sensor7" H 5000 1950 50  0000 L CNN
F 2 "" H 4850 1900 50  0001 C CNN
F 3 "~" H 4850 1900 50  0001 C CNN
	1    4850 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D1A6472
P 4850 2000
F 0 "J?" H 4877 2026 50  0000 L CNN
F 1 "Conn_01x01_SensorEsq" H 5000 2050 50  0000 L CNN
F 2 "" H 4850 2000 50  0001 C CNN
F 3 "~" H 4850 2000 50  0001 C CNN
	1    4850 2000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D1A64EE
P 4850 2100
F 0 "J?" H 4877 2126 50  0000 L CNN
F 1 "Conn_01x01_SensorDir" H 5000 2150 50  0000 L CNN
F 2 "" H 4850 2100 50  0001 C CNN
F 3 "~" H 4850 2100 50  0001 C CNN
	1    4850 2100
	1    0    0    -1  
$EndComp
Text GLabel 4550 1300 0    50   Input ~ 0
Sensor1
Text GLabel 4550 1400 0    50   Input ~ 0
Sensor2
Text GLabel 4550 1500 0    50   Input ~ 0
Sensor3
Text GLabel 4550 1600 0    50   Input ~ 0
Sensor4
Text GLabel 4550 1700 0    50   Input ~ 0
Sensor5
Text GLabel 4550 1800 0    50   Input ~ 0
Sensor6
Text GLabel 4550 1900 0    50   Input ~ 0
Sensor7
Text GLabel 4550 2000 0    50   Input ~ 0
SensorEsq
Text GLabel 4550 2100 0    50   Input ~ 0
SensorDir
Text Notes 3800 2400 0    59   ~ 0
Switch de alimentação da placa de sensores
Text Notes 3900 1150 0    79   ~ 0
Placa Sensores - Pinos soltos
Wire Notes Line
	3700 950  5950 950 
Wire Notes Line
	5950 950  5950 3300
Wire Notes Line
	5950 3300 3700 3300
Wire Notes Line
	3700 3300 3700 950 
Wire Wire Line
	4550 1300 4650 1300
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
Wire Notes Line
	4900 5600 4900 7600
Wire Notes Line
	1100 5600 4900 5600
Wire Notes Line
	4900 7600 1100 7600
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D1FC77F
P 3500 6500
F 0 "J?" H 3550 6500 50  0000 L CNN
F 1 "PinoCheckBateriaGND" H 3650 6500 50  0000 L CNN
F 2 "" H 3500 6500 50  0001 C CNN
F 3 "~" H 3500 6500 50  0001 C CNN
	1    3500 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 6950 2750 7000
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D20493D
P 2450 6600
F 0 "J?" H 2500 6600 50  0000 C CNN
F 1 "PinoCheckBateriaVcc" H 3000 6600 50  0000 C CNN
F 2 "" H 2450 6600 50  0001 C CNN
F 3 "~" H 2450 6600 50  0001 C CNN
	1    2450 6600
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 6600 2750 6600
Wire Wire Line
	2750 6500 2750 6600
Wire Wire Line
	2750 6650 2750 6600
Connection ~ 2750 6600
Wire Wire Line
	3200 6500 3300 6500
Connection ~ 3200 6500
Wire Wire Line
	3200 6500 3200 6350
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D2129B1
P 2200 5350
F 0 "J?" H 2228 5376 50  0000 L CNN
F 1 "Conn_01x01_Arduino16" H 2350 5400 50  0000 L CNN
F 2 "" H 2200 5350 50  0001 C CNN
F 3 "~" H 2200 5350 50  0001 C CNN
	1    2200 5350
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D212C6D
P 2200 5250
F 0 "J?" H 2228 5276 50  0000 L CNN
F 1 "Conn_01x01_Arduino15" H 2350 5300 50  0000 L CNN
F 2 "" H 2200 5250 50  0001 C CNN
F 3 "~" H 2200 5250 50  0001 C CNN
	1    2200 5250
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D212DA6
P 2200 5150
F 0 "J?" H 2228 5176 50  0000 L CNN
F 1 "Conn_01x01_Arduino14" H 2350 5200 50  0000 L CNN
F 2 "" H 2200 5150 50  0001 C CNN
F 3 "~" H 2200 5150 50  0001 C CNN
	1    2200 5150
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D212E2C
P 2200 5050
F 0 "J?" H 2228 5076 50  0000 L CNN
F 1 "Conn_01x01_Arduino13" H 2350 5100 50  0000 L CNN
F 2 "" H 2200 5050 50  0001 C CNN
F 3 "~" H 2200 5050 50  0001 C CNN
	1    2200 5050
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D212EB4
P 2200 4950
F 0 "J?" H 2228 4976 50  0000 L CNN
F 1 "Conn_01x01_Arduino12" H 2350 5000 50  0000 L CNN
F 2 "" H 2200 4950 50  0001 C CNN
F 3 "~" H 2200 4950 50  0001 C CNN
	1    2200 4950
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D212F3C
P 2200 4850
F 0 "J?" H 2228 4876 50  0000 L CNN
F 1 "Conn_01x01_Arduino11" H 2350 4900 50  0000 L CNN
F 2 "" H 2200 4850 50  0001 C CNN
F 3 "~" H 2200 4850 50  0001 C CNN
	1    2200 4850
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D212FC6
P 2200 4750
F 0 "J?" H 2228 4776 50  0000 L CNN
F 1 "Conn_01x01_Arduino10" H 2350 4800 50  0000 L CNN
F 2 "" H 2200 4750 50  0001 C CNN
F 3 "~" H 2200 4750 50  0001 C CNN
	1    2200 4750
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D213054
P 2200 4650
F 0 "J?" H 2228 4676 50  0000 L CNN
F 1 "Conn_01x01_Arduino9" H 2350 4700 50  0000 L CNN
F 2 "" H 2200 4650 50  0001 C CNN
F 3 "~" H 2200 4650 50  0001 C CNN
	1    2200 4650
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D2131AD
P 2200 4550
F 0 "J?" H 2228 4576 50  0000 L CNN
F 1 "Conn_01x01_Arduino8" H 2350 4600 50  0000 L CNN
F 2 "" H 2200 4550 50  0001 C CNN
F 3 "~" H 2200 4550 50  0001 C CNN
	1    2200 4550
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D21323D
P 2200 4450
F 0 "J?" H 2228 4476 50  0000 L CNN
F 1 "Conn_01x01_Arduino7" H 2350 4500 50  0000 L CNN
F 2 "" H 2200 4450 50  0001 C CNN
F 3 "~" H 2200 4450 50  0001 C CNN
	1    2200 4450
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D2132CF
P 2200 4350
F 0 "J?" H 2228 4376 50  0000 L CNN
F 1 "Conn_01x01_Arduino6" H 2350 4400 50  0000 L CNN
F 2 "" H 2200 4350 50  0001 C CNN
F 3 "~" H 2200 4350 50  0001 C CNN
	1    2200 4350
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D213363
P 2200 4250
F 0 "J?" H 2228 4276 50  0000 L CNN
F 1 "Conn_01x01_Arduino5" H 2350 4300 50  0000 L CNN
F 2 "" H 2200 4250 50  0001 C CNN
F 3 "~" H 2200 4250 50  0001 C CNN
	1    2200 4250
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D21B22A
P 3750 5150
F 0 "J?" H 3778 5176 50  0000 L CNN
F 1 "Conn_01x01_Arduino26" H 3900 5150 50  0000 L CNN
F 2 "" H 3750 5150 50  0001 C CNN
F 3 "~" H 3750 5150 50  0001 C CNN
	1    3750 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D21B2CC
P 3750 5050
F 0 "J?" H 3778 5076 50  0000 L CNN
F 1 "Conn_01x01_Arduino25" H 3900 5050 50  0000 L CNN
F 2 "" H 3750 5050 50  0001 C CNN
F 3 "~" H 3750 5050 50  0001 C CNN
	1    3750 5050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D21B36C
P 3750 4950
F 0 "J?" H 3778 4976 50  0000 L CNN
F 1 "Conn_01x01_Arduino24" H 3900 4950 50  0000 L CNN
F 2 "" H 3750 4950 50  0001 C CNN
F 3 "~" H 3750 4950 50  0001 C CNN
	1    3750 4950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D21B40E
P 3750 4850
F 0 "J?" H 3778 4876 50  0000 L CNN
F 1 "Conn_01x01_Arduino23" H 3900 4850 50  0000 L CNN
F 2 "" H 3750 4850 50  0001 C CNN
F 3 "~" H 3750 4850 50  0001 C CNN
	1    3750 4850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D21B4B2
P 3750 4750
F 0 "J?" H 3778 4776 50  0000 L CNN
F 1 "Conn_01x01_Arduino22" H 3900 4750 50  0000 L CNN
F 2 "" H 3750 4750 50  0001 C CNN
F 3 "~" H 3750 4750 50  0001 C CNN
	1    3750 4750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D21B558
P 3750 4650
F 0 "J?" H 3778 4676 50  0000 L CNN
F 1 "Conn_01x01_Arduino21" H 3900 4650 50  0000 L CNN
F 2 "" H 3750 4650 50  0001 C CNN
F 3 "~" H 3750 4650 50  0001 C CNN
	1    3750 4650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D21B602
P 3750 4550
F 0 "J?" H 3778 4576 50  0000 L CNN
F 1 "Conn_01x01_Arduino20" H 3900 4550 50  0000 L CNN
F 2 "" H 3750 4550 50  0001 C CNN
F 3 "~" H 3750 4550 50  0001 C CNN
	1    3750 4550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D21B6AE
P 3750 4450
F 0 "J?" H 3778 4476 50  0000 L CNN
F 1 "Conn_01x01_Arduino19" H 3900 4450 50  0000 L CNN
F 2 "" H 3750 4450 50  0001 C CNN
F 3 "~" H 3750 4450 50  0001 C CNN
	1    3750 4450
	1    0    0    -1  
$EndComp
Text GLabel 2550 4250 2    50   Input ~ 0
Encoder1
Text GLabel 2550 4350 2    50   Input ~ 0
Encoder2
Text GLabel 2550 5250 2    50   Input ~ 0
SensorDir
Text GLabel 2550 5150 2    50   Input ~ 0
SensorEsq
Text GLabel 2550 4850 2    50   Input ~ 0
Motor1PWM
Text GLabel 2550 4750 2    50   Input ~ 0
Motor2PWM
Text GLabel 2550 4450 2    50   Input ~ 0
Motor1Dir1
Text GLabel 2550 4550 2    50   Input ~ 0
Motor1Dir2
Text GLabel 2550 4950 2    50   Input ~ 0
Motor2Dir1
Text GLabel 2550 5050 2    50   Input ~ 0
Motor2Dir2
Text GLabel 2550 4650 2    50   Input ~ 0
Botao1
Text GLabel 2550 5350 2    50   Input ~ 0
Botao2
Wire Wire Line
	3400 4450 3550 4450
Wire Wire Line
	3400 4550 3550 4550
Wire Wire Line
	3400 4650 3550 4650
Wire Wire Line
	3400 4750 3550 4750
Wire Wire Line
	3400 4850 3550 4850
Wire Wire Line
	3400 4950 3550 4950
Wire Wire Line
	3400 5050 3550 5050
Wire Wire Line
	3400 5150 3550 5150
Wire Wire Line
	2400 4250 2550 4250
Wire Wire Line
	2400 4350 2550 4350
Wire Wire Line
	2400 4450 2550 4450
Wire Wire Line
	2400 4550 2550 4550
Wire Wire Line
	2400 4650 2550 4650
Wire Wire Line
	2400 4750 2550 4750
Wire Wire Line
	2400 4850 2550 4850
Wire Wire Line
	2400 4950 2550 4950
Wire Wire Line
	2400 5050 2550 5050
Wire Wire Line
	2400 5150 2550 5150
Wire Wire Line
	2400 5250 2550 5250
Wire Wire Line
	2400 5350 2550 5350
Text Notes 1700 3850 0    79   ~ 0
Arduino Nano V3.x - Pinos Extras Soltos
Wire Notes Line
	1100 3650 4900 3650
Wire Notes Line
	4900 5500 1100 5500
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
Text GLabel 6600 3600 0    79   Input ~ 0
8.4V
$Comp
L Device:D_Zener D?
U 1 1 5D316091
P 6750 3950
F 0 "D?" V 6704 4029 50  0000 L CNN
F 1 "DiodoZener6.8V" V 6795 4029 50  0000 L CNN
F 2 "" H 6750 3950 50  0001 C CNN
F 3 "~" H 6750 3950 50  0001 C CNN
	1    6750 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D316319
P 7000 4350
F 0 "R?" V 6793 4350 50  0000 C CNN
F 1 "RMedidorDeBateria1K" V 6884 4350 50  0000 C CNN
F 2 "" V 6930 4350 50  0001 C CNN
F 3 "~" H 7000 4350 50  0001 C CNN
	1    7000 4350
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D316455
P 6750 4600
F 0 "R?" H 6820 4646 50  0000 L CNN
F 1 "RMedidorDeBateria5K6" H 6820 4555 50  0000 L CNN
F 2 "" V 6680 4600 50  0001 C CNN
F 3 "~" H 6750 4600 50  0001 C CNN
	1    6750 4600
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC548 Q?
U 1 1 5D3166B6
P 7500 4350
F 0 "Q?" H 7691 4396 50  0000 L CNN
F 1 "BC548" H 7691 4305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7700 4275 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 7500 4350 50  0001 L CNN
	1    7500 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D316CF8
P 7600 3850
F 0 "R?" H 7670 3896 50  0000 L CNN
F 1 "RMedidorDeBateria10K" H 7670 3805 50  0000 L CNN
F 2 "" V 7530 3850 50  0001 C CNN
F 3 "~" H 7600 3850 50  0001 C CNN
	1    7600 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D31721A
P 7900 3550
F 0 "R?" V 7900 3550 50  0000 C CNN
F 1 "RMedidorDeBateria1K" V 7784 3550 50  0000 C CNN
F 2 "" V 7830 3550 50  0001 C CNN
F 3 "~" H 7900 3550 50  0001 C CNN
	1    7900 3550
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC548 Q?
U 1 1 5D3176BA
P 8050 4100
F 0 "Q?" H 8241 4146 50  0000 L CNN
F 1 "BC548" H 8241 4055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8250 4025 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 8050 4100 50  0001 L CNN
	1    8050 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5D31810C
P 8150 3700
F 0 "D?" V 8188 3582 50  0000 R CNN
F 1 "LedBateria" V 8097 3582 50  0000 R CNN
F 2 "" H 8150 3700 50  0001 C CNN
F 3 "~" H 8150 3700 50  0001 C CNN
	1    8150 3700
	0    -1   -1   0   
$EndComp
Text GLabel 6600 4850 0    79   Input ~ 0
GND
Wire Wire Line
	6600 4850 6750 4850
Wire Wire Line
	6750 4850 6750 4750
Wire Wire Line
	6750 4450 6750 4350
Wire Wire Line
	6850 4350 6750 4350
Connection ~ 6750 4350
Wire Wire Line
	7150 4350 7300 4350
Wire Wire Line
	7600 4150 7600 4100
Wire Wire Line
	8150 3550 8050 3550
Wire Wire Line
	8150 3850 8150 3900
Wire Wire Line
	7850 4100 7600 4100
Connection ~ 7600 4100
Wire Wire Line
	8150 4300 8150 4850
Wire Wire Line
	8150 4850 7600 4850
Connection ~ 6750 4850
Wire Wire Line
	7600 4850 6750 4850
Connection ~ 7600 4850
Wire Wire Line
	7600 4550 7600 4850
Wire Wire Line
	7750 3600 7750 3550
Wire Wire Line
	7600 4000 7600 4100
Wire Wire Line
	7600 3700 7600 3600
Connection ~ 7600 3600
Wire Wire Line
	7600 3600 7750 3600
Wire Wire Line
	6600 3600 6750 3600
Wire Wire Line
	6750 3800 6750 3600
Connection ~ 6750 3600
Wire Wire Line
	6750 3600 7600 3600
Wire Wire Line
	6750 4100 6750 4350
Text Notes 6500 3250 0    79   ~ 0
Circuito Medidor de Bateria
Wire Notes Line
	8450 3050 8450 5000
Wire Notes Line
	8450 5000 6200 5000
Wire Notes Line
	6200 5000 6200 3050
Wire Notes Line
	6200 3050 8450 3050
Wire Notes Line
	1100 3650 1100 5500
Wire Notes Line
	4900 3650 4900 5500
Text GLabel 1650 1650 0    50   Input ~ 0
Tx
Text GLabel 1650 1750 0    50   Input ~ 0
Rx
Wire Wire Line
	1650 1750 1750 1750
Wire Wire Line
	1650 1650 1750 1650
Text GLabel 2550 4050 2    50   Input ~ 0
Rx
Text GLabel 2550 3950 2    50   Input ~ 0
Tx
Wire Wire Line
	2550 4050 2400 4050
Wire Wire Line
	2550 3950 2400 3950
$Comp
L Connector:Conn_01x02_Female J?
U 1 1 5D45EE73
P 2200 4050
F 0 "J?" H 2250 4000 50  0000 C CNN
F 1 "Conn_01x02_ArduinoTxRx" H 2800 4000 50  0000 C CNN
F 2 "" H 2200 4050 50  0001 C CNN
F 3 "~" H 2200 4050 50  0001 C CNN
	1    2200 4050
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D46520F
P 2200 4150
F 0 "J?" H 2200 4150 50  0000 L CNN
F 1 "Conn_01x01_ArduinoReset" H 2300 4150 50  0000 L CNN
F 2 "" H 2200 4150 50  0001 C CNN
F 3 "~" H 2200 4150 50  0001 C CNN
	1    2200 4150
	-1   0    0    1   
$EndComp
Text GLabel 2850 1750 2    50   Input ~ 0
ArduinoReset
Wire Wire Line
	2850 1750 2750 1750
Text GLabel 2550 4150 2    50   Input ~ 0
ArduinoReset
Wire Wire Line
	2550 4150 2400 4150
$EndSCHEMATC
