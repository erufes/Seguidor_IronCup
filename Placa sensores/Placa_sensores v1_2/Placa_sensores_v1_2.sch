EESchema Schematic File Version 4
LIBS:Placa_sensores_v1_2-cache
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
Text Notes 3450 850  0    79   ~ 0
Circuitos dos Sensores
$Comp
L Device:R R4
U 1 1 5D2D20F7
P 2550 2100
F 0 "R4" H 2620 2146 50  0000 L CNN
F 1 "R2kLed" H 2620 2055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2480 2100 50  0001 C CNN
F 3 "~" H 2550 2100 50  0001 C CNN
	1    2550 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D2D25A2
P 1550 2700
F 0 "R1" H 1620 2746 50  0000 L CNN
F 1 "R4k7Divisor" H 1620 2655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1480 2700 50  0001 C CNN
F 3 "~" H 1550 2700 50  0001 C CNN
	1    1550 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D2D28BF
P 2050 2500
F 0 "R2" V 1843 2500 50  0000 C CNN
F 1 "R1M2Transsistor" V 1934 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1980 2500 50  0001 C CNN
F 3 "~" H 2050 2500 50  0001 C CNN
	1    2050 2500
	0    1    1    0   
$EndComp
$Comp
L Sensores_SL:TCRT5000 U1
U 1 1 5D2D2BDB
P 1850 1950
F 0 "U1" V 1797 2278 60  0000 L CNN
F 1 "TCRT5000" V 1903 2278 60  0000 L CNN
F 2 "Sensores_SL:TCRT5000Extendido" H 1850 1950 60  0001 C CNN
F 3 "" H 1850 1950 60  0000 C CNN
	1    1850 1950
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5D2D3507
P 2100 1400
F 0 "R3" V 2100 1400 50  0000 C CNN
F 1 "R330Emissor" V 2000 1350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2030 1400 50  0001 C CNN
F 3 "~" H 2100 1400 50  0001 C CNN
	1    2100 1400
	0    -1   -1   0   
$EndComp
Text GLabel 1300 2900 0    50   Input ~ 0
GND
Text GLabel 1450 2500 0    50   Input ~ 0
Sensor1
Text GLabel 1300 1300 0    50   Input ~ 0
5V
$Comp
L Device:LED D1
U 1 1 5D2D5801
P 2550 1700
F 0 "D1" V 2589 1583 50  0000 R CNN
F 1 "LED" V 2498 1583 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 2550 1700 50  0001 C CNN
F 3 "~" H 2550 1700 50  0001 C CNN
	1    2550 1700
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:BC338 Q1
U 1 1 5D2D7FFD
P 2450 2500
F 0 "Q1" H 2641 2546 50  0000 L CNN
F 1 "2n2222a" H 2641 2455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 2650 2425 50  0001 L CIN
F 3 "http://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337" H 2450 2500 50  0001 L CNN
	1    2450 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1400 1900 1450
Wire Wire Line
	2550 1850 2550 1950
Wire Wire Line
	2250 2500 2200 2500
Wire Wire Line
	2550 2250 2550 2300
Wire Wire Line
	1900 2500 1550 2500
Wire Wire Line
	1550 2500 1550 2450
Wire Wire Line
	1450 2500 1550 2500
Connection ~ 1550 2500
Wire Wire Line
	1550 2500 1550 2550
Wire Wire Line
	1300 2900 1550 2900
Wire Wire Line
	1550 2900 1550 2850
Wire Wire Line
	1550 2900 1800 2900
Wire Wire Line
	2550 2900 2550 2700
Connection ~ 1550 2900
Wire Wire Line
	1800 2450 1800 2900
Connection ~ 1800 2900
Wire Wire Line
	1800 2900 2550 2900
Wire Wire Line
	1950 1400 1900 1400
Wire Wire Line
	1300 1300 1650 1300
Wire Wire Line
	2550 1300 2550 1550
Wire Wire Line
	2250 1400 2250 1300
Connection ~ 2250 1300
Wire Wire Line
	2250 1300 2550 1300
Wire Wire Line
	1650 1450 1650 1300
Connection ~ 1650 1300
Wire Wire Line
	1650 1300 2250 1300
Text Notes 1750 1200 0    50   ~ 0
Sensor 1
$Comp
L Device:R R8
U 1 1 5D2EFCB7
P 4650 2150
F 0 "R8" H 4720 2196 50  0000 L CNN
F 1 "R2kLed" H 4720 2105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4580 2150 50  0001 C CNN
F 3 "~" H 4650 2150 50  0001 C CNN
	1    4650 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5D2EFCBD
P 3650 2750
F 0 "R14" H 3720 2796 50  0000 L CNN
F 1 "R4k7Divisor" H 3720 2705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3580 2750 50  0001 C CNN
F 3 "~" H 3650 2750 50  0001 C CNN
	1    3650 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5D2EFCC3
P 4150 2550
F 0 "R11" V 3943 2550 50  0000 C CNN
F 1 "R1M2Transsistor" V 4034 2550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4080 2550 50  0001 C CNN
F 3 "~" H 4150 2550 50  0001 C CNN
	1    4150 2550
	0    1    1    0   
$EndComp
$Comp
L Sensores_SL:TCRT5000 U2
U 1 1 5D2EFCC9
P 3950 2000
F 0 "U2" V 3897 2328 60  0000 L CNN
F 1 "TCRT5000" V 4003 2328 60  0000 L CNN
F 2 "Sensores_SL:TCRT5000Extendido" H 3950 2000 60  0001 C CNN
F 3 "" H 3950 2000 60  0000 C CNN
	1    3950 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5D2EFCCF
P 4200 1450
F 0 "R5" V 4200 1450 50  0000 C CNN
F 1 "R330Emissor" V 4100 1400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4130 1450 50  0001 C CNN
F 3 "~" H 4200 1450 50  0001 C CNN
	1    4200 1450
	0    -1   -1   0   
$EndComp
Text GLabel 3400 2950 0    50   Input ~ 0
GND
Text GLabel 3550 2550 0    50   Input ~ 0
Sensor2
Text GLabel 3400 1350 0    50   Input ~ 0
5V
$Comp
L Device:LED D2
U 1 1 5D2EFCD8
P 4650 1750
F 0 "D2" V 4689 1633 50  0000 R CNN
F 1 "LED" V 4598 1633 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 4650 1750 50  0001 C CNN
F 3 "~" H 4650 1750 50  0001 C CNN
	1    4650 1750
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:BC338 Q2
U 1 1 5D2EFCDE
P 4550 2550
F 0 "Q2" H 4741 2596 50  0000 L CNN
F 1 "2n2222a" H 4741 2505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 4750 2475 50  0001 L CIN
F 3 "http://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337" H 4550 2550 50  0001 L CNN
	1    4550 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1450 4000 1500
Wire Wire Line
	4650 1900 4650 2000
Wire Wire Line
	4350 2550 4300 2550
Wire Wire Line
	4650 2300 4650 2350
Wire Wire Line
	4000 2550 3650 2550
Wire Wire Line
	3650 2550 3650 2500
Wire Wire Line
	3550 2550 3650 2550
Connection ~ 3650 2550
Wire Wire Line
	3650 2550 3650 2600
Wire Wire Line
	3400 2950 3650 2950
Wire Wire Line
	3650 2950 3650 2900
Wire Wire Line
	3650 2950 3900 2950
Wire Wire Line
	4650 2950 4650 2750
Connection ~ 3650 2950
Wire Wire Line
	3900 2500 3900 2950
Connection ~ 3900 2950
Wire Wire Line
	3900 2950 4650 2950
Wire Wire Line
	4050 1450 4000 1450
Wire Wire Line
	3400 1350 3750 1350
Wire Wire Line
	4650 1350 4650 1600
Wire Wire Line
	4350 1450 4350 1350
Connection ~ 4350 1350
Wire Wire Line
	4350 1350 4650 1350
Wire Wire Line
	3750 1500 3750 1350
Connection ~ 3750 1350
Wire Wire Line
	3750 1350 4350 1350
Text Notes 3850 1250 0    50   ~ 0
Sensor 2
$Comp
L Device:R R9
U 1 1 5D2F2B12
P 6750 2150
F 0 "R9" H 6820 2196 50  0000 L CNN
F 1 "R2kLed" H 6820 2105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6680 2150 50  0001 C CNN
F 3 "~" H 6750 2150 50  0001 C CNN
	1    6750 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5D2F2B18
P 5750 2750
F 0 "R15" H 5820 2796 50  0000 L CNN
F 1 "R4k7Divisor" H 5820 2705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5680 2750 50  0001 C CNN
F 3 "~" H 5750 2750 50  0001 C CNN
	1    5750 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5D2F2B1E
P 6250 2550
F 0 "R12" V 6043 2550 50  0000 C CNN
F 1 "R1M2Transsistor" V 6134 2550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6180 2550 50  0001 C CNN
F 3 "~" H 6250 2550 50  0001 C CNN
	1    6250 2550
	0    1    1    0   
$EndComp
$Comp
L Sensores_SL:TCRT5000 U3
U 1 1 5D2F2B24
P 6050 2000
F 0 "U3" V 5997 2328 60  0000 L CNN
F 1 "TCRT5000" V 6103 2328 60  0000 L CNN
F 2 "Sensores_SL:TCRT5000Extendido" H 6050 2000 60  0001 C CNN
F 3 "" H 6050 2000 60  0000 C CNN
	1    6050 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5D2F2B2A
P 6300 1450
F 0 "R6" V 6300 1450 50  0000 C CNN
F 1 "R330Emissor" V 6200 1400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6230 1450 50  0001 C CNN
F 3 "~" H 6300 1450 50  0001 C CNN
	1    6300 1450
	0    -1   -1   0   
$EndComp
Text GLabel 5500 2950 0    50   Input ~ 0
GND
Text GLabel 5650 2550 0    50   Input ~ 0
Sensor3
Text GLabel 5500 1350 0    50   Input ~ 0
5V
$Comp
L Device:LED D3
U 1 1 5D2F2B33
P 6750 1750
F 0 "D3" V 6789 1633 50  0000 R CNN
F 1 "LED" V 6698 1633 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 6750 1750 50  0001 C CNN
F 3 "~" H 6750 1750 50  0001 C CNN
	1    6750 1750
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:BC338 Q3
U 1 1 5D2F2B39
P 6650 2550
F 0 "Q3" H 6841 2596 50  0000 L CNN
F 1 "2n2222a" H 6841 2505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 6850 2475 50  0001 L CIN
F 3 "http://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337" H 6650 2550 50  0001 L CNN
	1    6650 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1450 6100 1500
Wire Wire Line
	6750 1900 6750 2000
Wire Wire Line
	6450 2550 6400 2550
Wire Wire Line
	6750 2300 6750 2350
Wire Wire Line
	6100 2550 5750 2550
Wire Wire Line
	5750 2550 5750 2500
Wire Wire Line
	5650 2550 5750 2550
Connection ~ 5750 2550
Wire Wire Line
	5750 2550 5750 2600
Wire Wire Line
	5500 2950 5750 2950
Wire Wire Line
	5750 2950 5750 2900
Wire Wire Line
	5750 2950 6000 2950
Wire Wire Line
	6750 2950 6750 2750
Connection ~ 5750 2950
Wire Wire Line
	6000 2500 6000 2950
Connection ~ 6000 2950
Wire Wire Line
	6000 2950 6750 2950
Wire Wire Line
	6150 1450 6100 1450
Wire Wire Line
	5500 1350 5850 1350
Wire Wire Line
	6750 1350 6750 1600
Wire Wire Line
	6450 1450 6450 1350
Connection ~ 6450 1350
Wire Wire Line
	6450 1350 6750 1350
Wire Wire Line
	5850 1500 5850 1350
Connection ~ 5850 1350
Wire Wire Line
	5850 1350 6450 1350
Text Notes 5950 1250 0    50   ~ 0
Sensor 3
$Comp
L Device:R R10
U 1 1 5D2F4A55
P 8850 2150
F 0 "R10" H 8920 2196 50  0000 L CNN
F 1 "R2kLed" H 8920 2105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8780 2150 50  0001 C CNN
F 3 "~" H 8850 2150 50  0001 C CNN
	1    8850 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5D2F4A5B
P 7850 2750
F 0 "R16" H 7920 2796 50  0000 L CNN
F 1 "R4k7Divisor" H 7920 2705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7780 2750 50  0001 C CNN
F 3 "~" H 7850 2750 50  0001 C CNN
	1    7850 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5D2F4A61
P 8350 2550
F 0 "R13" V 8143 2550 50  0000 C CNN
F 1 "R1M2Transsistor" V 8234 2550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8280 2550 50  0001 C CNN
F 3 "~" H 8350 2550 50  0001 C CNN
	1    8350 2550
	0    1    1    0   
$EndComp
$Comp
L Sensores_SL:TCRT5000 U4
U 1 1 5D2F4A67
P 8150 2000
F 0 "U4" V 8097 2328 60  0000 L CNN
F 1 "TCRT5000" V 8203 2328 60  0000 L CNN
F 2 "Sensores_SL:TCRT5000Extendido" H 8150 2000 60  0001 C CNN
F 3 "" H 8150 2000 60  0000 C CNN
	1    8150 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5D2F4A6D
P 8400 1450
F 0 "R7" V 8400 1450 50  0000 C CNN
F 1 "R330Emissor" V 8300 1400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8330 1450 50  0001 C CNN
F 3 "~" H 8400 1450 50  0001 C CNN
	1    8400 1450
	0    -1   -1   0   
$EndComp
Text GLabel 7600 2950 0    50   Input ~ 0
GND
Text GLabel 7750 2550 0    50   Input ~ 0
Sensor4
Text GLabel 7600 1350 0    50   Input ~ 0
5V
$Comp
L Device:LED D4
U 1 1 5D2F4A76
P 8850 1750
F 0 "D4" V 8889 1633 50  0000 R CNN
F 1 "LED" V 8798 1633 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 8850 1750 50  0001 C CNN
F 3 "~" H 8850 1750 50  0001 C CNN
	1    8850 1750
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:BC338 Q4
U 1 1 5D2F4A7C
P 8750 2550
F 0 "Q4" H 8941 2596 50  0000 L CNN
F 1 "2n2222a" H 8941 2505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 8950 2475 50  0001 L CIN
F 3 "http://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337" H 8750 2550 50  0001 L CNN
	1    8750 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 1450 8200 1500
Wire Wire Line
	8850 1900 8850 2000
Wire Wire Line
	8550 2550 8500 2550
Wire Wire Line
	8850 2300 8850 2350
Wire Wire Line
	8200 2550 7850 2550
Wire Wire Line
	7850 2550 7850 2500
Wire Wire Line
	7750 2550 7850 2550
Connection ~ 7850 2550
Wire Wire Line
	7850 2550 7850 2600
Wire Wire Line
	7600 2950 7850 2950
Wire Wire Line
	7850 2950 7850 2900
Wire Wire Line
	7850 2950 8100 2950
Wire Wire Line
	8850 2950 8850 2750
Connection ~ 7850 2950
Wire Wire Line
	8100 2500 8100 2950
Connection ~ 8100 2950
Wire Wire Line
	8100 2950 8850 2950
Wire Wire Line
	8250 1450 8200 1450
Wire Wire Line
	7600 1350 7950 1350
Wire Wire Line
	8850 1350 8850 1600
Wire Wire Line
	8550 1450 8550 1350
Connection ~ 8550 1350
Wire Wire Line
	8550 1350 8850 1350
Wire Wire Line
	7950 1500 7950 1350
Connection ~ 7950 1350
Wire Wire Line
	7950 1350 8550 1350
Text Notes 8050 1250 0    50   ~ 0
Sensor 4
$Comp
L Device:R R21
U 1 1 5D2F6CF3
P 2550 4100
F 0 "R21" H 2620 4146 50  0000 L CNN
F 1 "R2kLed" H 2620 4055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2480 4100 50  0001 C CNN
F 3 "~" H 2550 4100 50  0001 C CNN
	1    2550 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R29
U 1 1 5D2F6CF9
P 1550 4700
F 0 "R29" H 1620 4746 50  0000 L CNN
F 1 "R4k7Divisor" H 1620 4655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1480 4700 50  0001 C CNN
F 3 "~" H 1550 4700 50  0001 C CNN
	1    1550 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R25
U 1 1 5D2F6CFF
P 2050 4500
F 0 "R25" V 1843 4500 50  0000 C CNN
F 1 "R1M2Transsistor" V 1934 4500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1980 4500 50  0001 C CNN
F 3 "~" H 2050 4500 50  0001 C CNN
	1    2050 4500
	0    1    1    0   
$EndComp
$Comp
L Sensores_SL:TCRT5000 U5
U 1 1 5D2F6D05
P 1850 3950
F 0 "U5" V 1797 4278 60  0000 L CNN
F 1 "TCRT5000" V 1903 4278 60  0000 L CNN
F 2 "Sensores_SL:TCRT5000Extendido" H 1850 3950 60  0001 C CNN
F 3 "" H 1850 3950 60  0000 C CNN
	1    1850 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 5D2F6D0B
P 2100 3400
F 0 "R17" V 2100 3400 50  0000 C CNN
F 1 "R330Emissor" V 2000 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2030 3400 50  0001 C CNN
F 3 "~" H 2100 3400 50  0001 C CNN
	1    2100 3400
	0    -1   -1   0   
$EndComp
Text GLabel 1300 4900 0    50   Input ~ 0
GND
Text GLabel 1450 4500 0    50   Input ~ 0
Sensor5
Text GLabel 1300 3300 0    50   Input ~ 0
5V
$Comp
L Device:LED D5
U 1 1 5D2F6D14
P 2550 3700
F 0 "D5" V 2589 3583 50  0000 R CNN
F 1 "LED" V 2498 3583 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 2550 3700 50  0001 C CNN
F 3 "~" H 2550 3700 50  0001 C CNN
	1    2550 3700
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:BC338 Q5
U 1 1 5D2F6D1A
P 2450 4500
F 0 "Q5" H 2641 4546 50  0000 L CNN
F 1 "2n2222a" H 2641 4455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 2650 4425 50  0001 L CIN
F 3 "http://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337" H 2450 4500 50  0001 L CNN
	1    2450 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3400 1900 3450
Wire Wire Line
	2550 3850 2550 3950
Wire Wire Line
	2250 4500 2200 4500
Wire Wire Line
	2550 4250 2550 4300
Wire Wire Line
	1900 4500 1550 4500
Wire Wire Line
	1550 4500 1550 4450
Wire Wire Line
	1450 4500 1550 4500
Connection ~ 1550 4500
Wire Wire Line
	1550 4500 1550 4550
Wire Wire Line
	1300 4900 1550 4900
Wire Wire Line
	1550 4900 1550 4850
Wire Wire Line
	1550 4900 1800 4900
Wire Wire Line
	2550 4900 2550 4700
Connection ~ 1550 4900
Wire Wire Line
	1800 4450 1800 4900
Connection ~ 1800 4900
Wire Wire Line
	1800 4900 2550 4900
Wire Wire Line
	1950 3400 1900 3400
Wire Wire Line
	1300 3300 1650 3300
Wire Wire Line
	2550 3300 2550 3550
Wire Wire Line
	2250 3400 2250 3300
Connection ~ 2250 3300
Wire Wire Line
	2250 3300 2550 3300
Wire Wire Line
	1650 3450 1650 3300
Connection ~ 1650 3300
Wire Wire Line
	1650 3300 2250 3300
Text Notes 1750 3200 0    50   ~ 0
Sensor 5
$Comp
L Device:R R22
U 1 1 5D2FA715
P 4650 4100
F 0 "R22" H 4720 4146 50  0000 L CNN
F 1 "R2kLed" H 4720 4055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4580 4100 50  0001 C CNN
F 3 "~" H 4650 4100 50  0001 C CNN
	1    4650 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R30
U 1 1 5D2FA71B
P 3650 4700
F 0 "R30" H 3720 4746 50  0000 L CNN
F 1 "R4k7Divisor" H 3720 4655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3580 4700 50  0001 C CNN
F 3 "~" H 3650 4700 50  0001 C CNN
	1    3650 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R26
U 1 1 5D2FA721
P 4150 4500
F 0 "R26" V 3943 4500 50  0000 C CNN
F 1 "R1M2Transsistor" V 4034 4500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4080 4500 50  0001 C CNN
F 3 "~" H 4150 4500 50  0001 C CNN
	1    4150 4500
	0    1    1    0   
$EndComp
$Comp
L Sensores_SL:TCRT5000 U6
U 1 1 5D2FA727
P 3950 3950
F 0 "U6" V 3897 4278 60  0000 L CNN
F 1 "TCRT5000" V 4003 4278 60  0000 L CNN
F 2 "Sensores_SL:TCRT5000Extendido" H 3950 3950 60  0001 C CNN
F 3 "" H 3950 3950 60  0000 C CNN
	1    3950 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 5D2FA72D
P 4200 3400
F 0 "R18" V 4200 3400 50  0000 C CNN
F 1 "R330Emissor" V 4100 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4130 3400 50  0001 C CNN
F 3 "~" H 4200 3400 50  0001 C CNN
	1    4200 3400
	0    -1   -1   0   
$EndComp
Text GLabel 3400 4900 0    50   Input ~ 0
GND
Text GLabel 3550 4500 0    50   Input ~ 0
Sensor6
Text GLabel 3400 3300 0    50   Input ~ 0
5V
$Comp
L Device:LED D6
U 1 1 5D2FA736
P 4650 3700
F 0 "D6" V 4689 3583 50  0000 R CNN
F 1 "LED" V 4598 3583 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 4650 3700 50  0001 C CNN
F 3 "~" H 4650 3700 50  0001 C CNN
	1    4650 3700
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:BC338 Q6
U 1 1 5D2FA73C
P 4550 4500
F 0 "Q6" H 4741 4546 50  0000 L CNN
F 1 "2n2222a" H 4741 4455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 4750 4425 50  0001 L CIN
F 3 "http://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337" H 4550 4500 50  0001 L CNN
	1    4550 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3400 4000 3450
Wire Wire Line
	4650 3850 4650 3950
Wire Wire Line
	4350 4500 4300 4500
Wire Wire Line
	4650 4250 4650 4300
Wire Wire Line
	4000 4500 3650 4500
Wire Wire Line
	3650 4500 3650 4450
Wire Wire Line
	3550 4500 3650 4500
Connection ~ 3650 4500
Wire Wire Line
	3650 4500 3650 4550
Wire Wire Line
	3400 4900 3650 4900
Wire Wire Line
	3650 4900 3650 4850
Wire Wire Line
	3650 4900 3900 4900
Wire Wire Line
	4650 4900 4650 4700
Connection ~ 3650 4900
Wire Wire Line
	3900 4450 3900 4900
Connection ~ 3900 4900
Wire Wire Line
	3900 4900 4650 4900
Wire Wire Line
	4050 3400 4000 3400
Wire Wire Line
	3400 3300 3750 3300
Wire Wire Line
	4650 3300 4650 3550
Wire Wire Line
	4350 3400 4350 3300
Connection ~ 4350 3300
Wire Wire Line
	4350 3300 4650 3300
Wire Wire Line
	3750 3450 3750 3300
Connection ~ 3750 3300
Wire Wire Line
	3750 3300 4350 3300
Text Notes 3850 3200 0    50   ~ 0
Sensor 6
$Comp
L Device:R R23
U 1 1 5D30020A
P 6750 4100
F 0 "R23" H 6820 4146 50  0000 L CNN
F 1 "R2kLed" H 6820 4055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6680 4100 50  0001 C CNN
F 3 "~" H 6750 4100 50  0001 C CNN
	1    6750 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R31
U 1 1 5D300210
P 5750 4700
F 0 "R31" H 5820 4746 50  0000 L CNN
F 1 "R4k7Divisor" H 5820 4655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5680 4700 50  0001 C CNN
F 3 "~" H 5750 4700 50  0001 C CNN
	1    5750 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R27
U 1 1 5D300216
P 6250 4500
F 0 "R27" V 6043 4500 50  0000 C CNN
F 1 "R1M2Transsistor" V 6134 4500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6180 4500 50  0001 C CNN
F 3 "~" H 6250 4500 50  0001 C CNN
	1    6250 4500
	0    1    1    0   
$EndComp
$Comp
L Sensores_SL:TCRT5000 U7
U 1 1 5D30021C
P 6050 3950
F 0 "U7" V 5997 4278 60  0000 L CNN
F 1 "TCRT5000" V 6103 4278 60  0000 L CNN
F 2 "Sensores_SL:TCRT5000Extendido" H 6050 3950 60  0001 C CNN
F 3 "" H 6050 3950 60  0000 C CNN
	1    6050 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R R19
U 1 1 5D300222
P 6300 3400
F 0 "R19" V 6300 3400 50  0000 C CNN
F 1 "R330Emissor" V 6200 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6230 3400 50  0001 C CNN
F 3 "~" H 6300 3400 50  0001 C CNN
	1    6300 3400
	0    -1   -1   0   
$EndComp
Text GLabel 5500 4900 0    50   Input ~ 0
GND
Text GLabel 5650 4500 0    50   Input ~ 0
Sensor7
Text GLabel 5500 3300 0    50   Input ~ 0
5V
$Comp
L Device:LED D7
U 1 1 5D30022B
P 6750 3700
F 0 "D7" V 6789 3583 50  0000 R CNN
F 1 "LED" V 6698 3583 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 6750 3700 50  0001 C CNN
F 3 "~" H 6750 3700 50  0001 C CNN
	1    6750 3700
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:BC338 Q7
U 1 1 5D300231
P 6650 4500
F 0 "Q7" H 6841 4546 50  0000 L CNN
F 1 "2n2222a" H 6841 4455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 6850 4425 50  0001 L CIN
F 3 "http://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337" H 6650 4500 50  0001 L CNN
	1    6650 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3400 6100 3450
Wire Wire Line
	6750 3850 6750 3950
Wire Wire Line
	6450 4500 6400 4500
Wire Wire Line
	6750 4250 6750 4300
Wire Wire Line
	6100 4500 5750 4500
Wire Wire Line
	5750 4500 5750 4450
Wire Wire Line
	5650 4500 5750 4500
Connection ~ 5750 4500
Wire Wire Line
	5750 4500 5750 4550
Wire Wire Line
	5500 4900 5750 4900
Wire Wire Line
	5750 4900 5750 4850
Wire Wire Line
	5750 4900 6000 4900
Wire Wire Line
	6750 4900 6750 4700
Connection ~ 5750 4900
Wire Wire Line
	6000 4450 6000 4900
Connection ~ 6000 4900
Wire Wire Line
	6000 4900 6750 4900
Wire Wire Line
	6150 3400 6100 3400
Wire Wire Line
	5500 3300 5850 3300
Wire Wire Line
	6750 3300 6750 3550
Wire Wire Line
	6450 3400 6450 3300
Connection ~ 6450 3300
Wire Wire Line
	6450 3300 6750 3300
Wire Wire Line
	5850 3450 5850 3300
Connection ~ 5850 3300
Wire Wire Line
	5850 3300 6450 3300
Text Notes 5950 3200 0    50   ~ 0
Sensor 7
$Comp
L Device:R R24
U 1 1 5D30714E
P 8850 4100
F 0 "R24" H 8920 4146 50  0000 L CNN
F 1 "R2kLed" H 8920 4055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8780 4100 50  0001 C CNN
F 3 "~" H 8850 4100 50  0001 C CNN
	1    8850 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R32
U 1 1 5D307154
P 7850 4700
F 0 "R32" H 7920 4746 50  0000 L CNN
F 1 "R4k7Divisor" H 7920 4655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7780 4700 50  0001 C CNN
F 3 "~" H 7850 4700 50  0001 C CNN
	1    7850 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R28
U 1 1 5D30715A
P 8350 4500
F 0 "R28" V 8143 4500 50  0000 C CNN
F 1 "R1M2Transsistor" V 8234 4500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8280 4500 50  0001 C CNN
F 3 "~" H 8350 4500 50  0001 C CNN
	1    8350 4500
	0    1    1    0   
$EndComp
$Comp
L Sensores_SL:TCRT5000 U8
U 1 1 5D307160
P 8150 3950
F 0 "U8" V 8097 4278 60  0000 L CNN
F 1 "TCRT5000" V 8203 4278 60  0000 L CNN
F 2 "Sensores_SL:TCRT5000Extendido" H 8150 3950 60  0001 C CNN
F 3 "" H 8150 3950 60  0000 C CNN
	1    8150 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R R20
U 1 1 5D307166
P 8400 3400
F 0 "R20" V 8400 3400 50  0000 C CNN
F 1 "R330Emissor" V 8300 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8330 3400 50  0001 C CNN
F 3 "~" H 8400 3400 50  0001 C CNN
	1    8400 3400
	0    -1   -1   0   
$EndComp
Text GLabel 7600 4900 0    50   Input ~ 0
GND
Text GLabel 7750 4500 0    50   Input ~ 0
SensorEsq
Text GLabel 7600 3300 0    50   Input ~ 0
5V
$Comp
L Device:LED D8
U 1 1 5D30716F
P 8850 3700
F 0 "D8" V 8889 3583 50  0000 R CNN
F 1 "LED" V 8798 3583 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 8850 3700 50  0001 C CNN
F 3 "~" H 8850 3700 50  0001 C CNN
	1    8850 3700
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:BC338 Q8
U 1 1 5D307175
P 8750 4500
F 0 "Q8" H 8941 4546 50  0000 L CNN
F 1 "2n2222a" H 8941 4455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 8950 4425 50  0001 L CIN
F 3 "http://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337" H 8750 4500 50  0001 L CNN
	1    8750 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3400 8200 3450
Wire Wire Line
	8850 3850 8850 3950
Wire Wire Line
	8550 4500 8500 4500
Wire Wire Line
	8850 4250 8850 4300
Wire Wire Line
	8200 4500 7850 4500
Wire Wire Line
	7850 4500 7850 4450
Wire Wire Line
	7750 4500 7850 4500
Connection ~ 7850 4500
Wire Wire Line
	7850 4500 7850 4550
Wire Wire Line
	7600 4900 7850 4900
Wire Wire Line
	7850 4900 7850 4850
Wire Wire Line
	7850 4900 8100 4900
Wire Wire Line
	8850 4900 8850 4700
Connection ~ 7850 4900
Wire Wire Line
	8100 4450 8100 4900
Connection ~ 8100 4900
Wire Wire Line
	8100 4900 8850 4900
Wire Wire Line
	8250 3400 8200 3400
Wire Wire Line
	7600 3300 7950 3300
Wire Wire Line
	8850 3300 8850 3550
Wire Wire Line
	8550 3400 8550 3300
Connection ~ 8550 3300
Wire Wire Line
	8550 3300 8850 3300
Wire Wire Line
	7950 3450 7950 3300
Connection ~ 7950 3300
Wire Wire Line
	7950 3300 8550 3300
Text Notes 8050 3200 0    50   ~ 0
Sensor Esquerda
$Comp
L Device:R R34
U 1 1 5D30FD77
P 2550 6050
F 0 "R34" H 2620 6096 50  0000 L CNN
F 1 "R2kLed" H 2620 6005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2480 6050 50  0001 C CNN
F 3 "~" H 2550 6050 50  0001 C CNN
	1    2550 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R36
U 1 1 5D30FD7D
P 1550 6650
F 0 "R36" H 1620 6696 50  0000 L CNN
F 1 "R4k7Divisor" H 1620 6605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1480 6650 50  0001 C CNN
F 3 "~" H 1550 6650 50  0001 C CNN
	1    1550 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R35
U 1 1 5D30FD83
P 2050 6450
F 0 "R35" V 1843 6450 50  0000 C CNN
F 1 "R1M2Transsistor" V 1934 6450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1980 6450 50  0001 C CNN
F 3 "~" H 2050 6450 50  0001 C CNN
	1    2050 6450
	0    1    1    0   
$EndComp
$Comp
L Sensores_SL:TCRT5000 U9
U 1 1 5D30FD89
P 1850 5900
F 0 "U9" V 1797 6228 60  0000 L CNN
F 1 "TCRT5000" V 1903 6228 60  0000 L CNN
F 2 "Sensores_SL:TCRT5000Extendido" H 1850 5900 60  0001 C CNN
F 3 "" H 1850 5900 60  0000 C CNN
	1    1850 5900
	0    1    1    0   
$EndComp
$Comp
L Device:R R33
U 1 1 5D30FD8F
P 2100 5350
F 0 "R33" V 2100 5350 50  0000 C CNN
F 1 "R330Emissor" V 2000 5300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2030 5350 50  0001 C CNN
F 3 "~" H 2100 5350 50  0001 C CNN
	1    2100 5350
	0    -1   -1   0   
$EndComp
Text GLabel 1300 6850 0    50   Input ~ 0
GND
Text GLabel 1450 6450 0    50   Input ~ 0
SensorDir
Text GLabel 1300 5250 0    50   Input ~ 0
5V
$Comp
L Device:LED D9
U 1 1 5D30FD98
P 2550 5650
F 0 "D9" V 2589 5533 50  0000 R CNN
F 1 "LED" V 2498 5533 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 2550 5650 50  0001 C CNN
F 3 "~" H 2550 5650 50  0001 C CNN
	1    2550 5650
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:BC338 Q9
U 1 1 5D30FD9E
P 2450 6450
F 0 "Q9" H 2641 6496 50  0000 L CNN
F 1 "2n2222a" H 2641 6405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 2650 6375 50  0001 L CIN
F 3 "http://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337" H 2450 6450 50  0001 L CNN
	1    2450 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 5350 1900 5400
Wire Wire Line
	2550 5800 2550 5900
Wire Wire Line
	2250 6450 2200 6450
Wire Wire Line
	2550 6200 2550 6250
Wire Wire Line
	1900 6450 1550 6450
Wire Wire Line
	1550 6450 1550 6400
Wire Wire Line
	1450 6450 1550 6450
Connection ~ 1550 6450
Wire Wire Line
	1550 6450 1550 6500
Wire Wire Line
	1300 6850 1550 6850
Wire Wire Line
	1550 6850 1550 6800
Wire Wire Line
	1550 6850 1800 6850
Wire Wire Line
	2550 6850 2550 6650
Connection ~ 1550 6850
Wire Wire Line
	1800 6400 1800 6850
Connection ~ 1800 6850
Wire Wire Line
	1800 6850 2550 6850
Wire Wire Line
	1950 5350 1900 5350
Wire Wire Line
	1300 5250 1650 5250
Wire Wire Line
	2550 5250 2550 5500
Wire Wire Line
	2250 5350 2250 5250
Connection ~ 2250 5250
Wire Wire Line
	2250 5250 2550 5250
Wire Wire Line
	1650 5400 1650 5250
Connection ~ 1650 5250
Wire Wire Line
	1650 5250 2250 5250
Text Notes 1750 5150 0    50   ~ 0
Sensor Direita
Text Notes 4100 5300 0    79   ~ 0
Pinos de conexão
Text GLabel 4350 6400 0    50   Input ~ 0
5V
Text GLabel 4350 5700 0    50   Input ~ 0
Gnd
Text GLabel 5050 5800 2    50   Input ~ 0
Sensor6
Text GLabel 5050 5700 2    50   Input ~ 0
Sensor7
Text GLabel 5050 6400 2    50   Input ~ 0
SensorEsq
Text GLabel 4450 6300 0    50   Input ~ 0
SensorDir
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J1
U 1 1 5D37A805
P 4750 6100
F 0 "J1" H 4800 5475 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 4800 5566 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x08_P2.54mm_Horizontal" H 4750 6100 50  0001 C CNN
F 3 "~" H 4750 6100 50  0001 C CNN
	1    4750 6100
	-1   0    0    1   
$EndComp
Wire Wire Line
	4350 5700 4450 5700
Wire Wire Line
	4350 6400 4450 6400
Wire Wire Line
	4950 6400 5050 6400
Wire Wire Line
	4950 6300 5050 6300
Wire Wire Line
	4950 6200 5050 6200
Wire Wire Line
	4950 6100 5050 6100
Wire Wire Line
	4950 6000 5050 6000
Wire Wire Line
	4950 5900 5050 5900
Wire Wire Line
	4950 5800 5050 5800
Wire Wire Line
	4950 5700 5050 5700
Text GLabel 5050 6300 2    50   Input ~ 0
Sensor1
Text GLabel 5050 6200 2    50   Input ~ 0
Sensor2
Text GLabel 5050 6100 2    50   Input ~ 0
Sensor3
Text GLabel 5050 6000 2    50   Input ~ 0
Sensor4
Text GLabel 5050 5900 2    50   Input ~ 0
Sensor5
Text GLabel 4450 6200 0    50   Input ~ 0
ArduinoD13
NoConn ~ 4450 6100
NoConn ~ 4450 6000
NoConn ~ 4450 5900
NoConn ~ 4450 5800
NoConn ~ 6700 5200
NoConn ~ 7250 5300
$EndSCHEMATC
