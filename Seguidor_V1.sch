EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1300 2650 1550 1350
U 5E60F01E
F0 "Placa de Alimentação" 50
F1 "Placa de Alimentação e Proteção/Alimentacao e protecao.sch" 50
F2 "8.4V_OutPlacaCentral" O R 2850 3550 55 
F3 "8.4V_InBateria" I L 1300 3250 55 
F4 "GND_InBateria" I L 1300 3350 55 
F5 "Botão_Out" O R 2850 2850 55 
F6 "Botão_In" I R 2850 2950 55 
F7 "GND_OutPlacaCentral" O R 2850 3650 55 
$EndSheet
$Sheet
S 6750 4750 3800 1350
U 5E60FC11
F0 "Placa de Encoder" 50
F1 "Placas de Encoder/Placa_central_v01 - Encoder.sch" 50
F2 "Sinal_OutEncoderEsquerdo" O L 6750 5150 55 
F3 "Vcc_InEncoderEsquerdo" I L 6750 4850 55 
F4 "GND_InEncoderEsquerdo" I L 6750 5000 55 
F5 "Sinal_OutEncoderDireito" O L 6750 5250 55 
$EndSheet
$Sheet
S 6750 2750 3800 1800
U 5E60FD40
F0 "Placa Sensores" 50
F1 "Placa Sensores/Placa_sensores v1_2/Placa_sensores_v1_2.sch" 50
F2 "Vcc_In" I L 6750 4300 55 
F3 "GND_In" I L 6750 4400 55 
F4 "SensorDireita_Out" O L 6750 3100 55 
F5 "SensorEsquerda_Out" O L 6750 3200 55 
F6 "Sensor1_Out" O L 6750 3400 55 
F7 "Sensor2_Out" O L 6750 3500 55 
F8 "Sensor3_Out" O L 6750 3600 55 
F9 "Sensor4_Out" O L 6750 3700 55 
F10 "Sensor5_Out" O L 6750 3800 55 
F11 "Sensor6_Out" O L 6750 3900 55 
F12 "Sensor7_Out" O L 6750 4000 55 
F13 "Sensor8_Out" O L 6750 4100 55 
$EndSheet
$Sheet
S 3950 1350 1900 4050
U 5E5E8AC3
F0 "Placa Central" 50
F1 "Placa Central/Placa_central_v01.sch" 50
F2 "8.4V_InPlacaCentral" I L 3950 3550 55 
F3 "GND_InPlacaCentral" I L 3950 3650 55 
F4 "8.4V_OutPonteH" O L 3950 1750 55 
F5 "5VPonteH_InPonteH" I L 3950 1950 55 
F6 "GND_OutPonteH" O L 3950 1850 55 
F7 "M1PWM_OutPonteH" O L 3950 2150 55 
F8 "M1Dir1_OutPonteH" O L 3950 2250 55 
F9 "M1Dir2_OutPonteH" O L 3950 2350 55 
F10 "M2Dir1_OutPonteH" O L 3950 2450 55 
F11 "M2Dir2_OutPonteH" O L 3950 2550 55 
F12 "M2PWM_OutPonteH" O L 3950 2650 55 
F13 "SensorDireita_InPlacaCentral" I R 5850 3100 55 
F14 "SensorEsquerda_InPlacaCentral" I R 5850 3200 55 
F15 "Sensor1_InPlacaCentral" I R 5850 3400 55 
F16 "Sensor2_InPlacaCentral" I R 5850 3500 55 
F17 "Sensor3_InPlacaCentral" I R 5850 3600 55 
F18 "Sensor4_InPlacaCentral" I R 5850 3700 55 
F19 "Sensor5_InPlacaCentral" I R 5850 3800 55 
F20 "Sensor6_InPlacaCentral" I R 5850 3900 55 
F21 "Sensor7_InPlacaCentral" I R 5850 4000 55 
F22 "Sensor8_InPlacaCentral" I R 5850 4100 55 
F23 "GND_OutPlacaCentral" O R 5850 4300 55 
F24 "Vcc_OutPlacaCentral" O R 5850 4400 55 
F25 "5V_OutEncoder" O R 5850 4850 55 
F26 "GND_OutEncoder" O R 5850 5000 55 
F27 "EncoderEsq_Encoder" B R 5850 5150 55 
F28 "EncoderDir_Encoder" B R 5850 5250 55 
$EndSheet
Text Notes 2950 1000 0    118  ~ 0
Projeto Seguidor de Linha -  2019 - Destiscalpium Automata
Text Notes 4500 1200 0    79   ~ 0
Placa Central
Text Notes 8100 5000 0    79   ~ 0
Placas de Encoder Direito e Esquerdo
Text Notes 8300 2950 0    79   ~ 0
Placas de Conexão e de Sensores
Text Notes 1100 2300 0    79   ~ 0
Placa de alimentação e proteção
Text Notes 3250 3200 1    55   ~ 0
Botão ON/OFF
Wire Notes Line
	2850 2850 3150 2850
Wire Notes Line
	2850 2950 3150 2950
Text Notes 1000 3750 1    55   ~ 0
LiPo 2S - 8.4V Máx.
Wire Notes Line
	1300 3350 1050 3350
Wire Notes Line
	1300 3250 1050 3250
Text Notes 4950 2800 1    55   ~ 0
Ponte H - Parafusada na Placa
Wire Notes Line
	4550 1400 4550 2850
Wire Notes Line
	4550 2850 5300 2850
Wire Notes Line
	5300 2850 5300 1400
Wire Notes Line
	4550 1400 5300 1400
Wire Notes Line
	2850 3650 3950 3650
Wire Notes Line
	2850 3550 3950 3550
Text Notes 6350 4400 1    55   ~ 0
          Conector IDC\n(Invertido em uma das pontas)
Wire Notes Line
	5850 4100 6750 4100
Wire Notes Line
	5850 4000 6750 4000
Wire Notes Line
	5850 3900 6750 3900
Wire Notes Line
	5850 3800 6750 3800
Wire Notes Line
	5850 3700 6750 3700
Wire Notes Line
	5850 3600 6750 3600
Wire Notes Line
	5850 3500 6750 3500
Wire Notes Line
	5850 3400 6750 3400
Wire Notes Line
	5850 3200 6750 3200
Wire Notes Line
	5850 3100 6750 3100
Wire Notes Line
	5850 4400 6750 4400
Wire Notes Line
	5850 4300 6750 4300
Wire Notes Line
	5850 5050 6750 5050
Wire Notes Line
	5850 4950 6750 4950
Wire Notes Line
	5850 4900 6750 4900
Wire Notes Line
	5850 4800 6750 4800
Wire Notes Line
	5850 5250 6750 5250
Wire Notes Line
	5850 5150 6750 5150
$EndSCHEMATC
