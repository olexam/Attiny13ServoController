EESchema Schematic File Version 4
LIBS:Attiny13ServoTester-cache
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
L MCU_Microchip_ATtiny:ATtiny13A-SSU U1
U 1 1 5C40FF33
P 4150 3800
F 0 "U1" H 3620 3846 50  0000 R CNN
F 1 "ATtiny13A-SSU" H 3620 3755 50  0000 R CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4150 3800 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8126.pdf" H 4150 3800 50  0001 C CNN
	1    4150 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5C4B7DF5
P 5500 3700
F 0 "D1" H 5491 3916 50  0000 C CNN
F 1 "LED_MIN" H 5491 3825 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 5500 3700 50  0001 C CNN
F 3 "~" H 5500 3700 50  0001 C CNN
	1    5500 3700
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 5C66E5AD
P 5500 4000
F 0 "D2" H 5491 4216 50  0000 C CNN
F 1 "LED_MAX" H 5491 4125 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 5500 4000 50  0001 C CNN
F 3 "~" H 5500 4000 50  0001 C CNN
	1    5500 4000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5C682918
P 5150 3900
F 0 "R2" H 5220 3946 50  0000 L CNN
F 1 "1k" H 5220 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5080 3900 50  0001 C CNN
F 3 "~" H 5150 3900 50  0001 C CNN
	1    5150 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5C6829CF
P 5150 3800
F 0 "R1" H 5220 3846 50  0000 L CNN
F 1 "1k" H 5220 3755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5080 3800 50  0001 C CNN
F 3 "~" H 5150 3800 50  0001 C CNN
	1    5150 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4750 3800 5000 3800
Wire Wire Line
	4750 3900 5000 3900
Wire Wire Line
	5300 3800 5300 3700
Wire Wire Line
	5300 3700 5350 3700
Wire Wire Line
	5300 3900 5300 4000
Wire Wire Line
	5300 4000 5350 4000
Wire Wire Line
	5650 3700 5700 3700
Wire Wire Line
	5700 4000 5650 4000
Wire Wire Line
	4150 4400 5800 4400
Wire Wire Line
	5800 4400 5800 3850
Wire Wire Line
	5800 3850 5700 3850
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 5C6969FE
P 6300 3100
F 0 "J2" H 6273 3030 50  0000 R CNN
F 1 "SERVO" H 6273 3121 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6300 3100 50  0001 C CNN
F 3 "~" H 6300 3100 50  0001 C CNN
	1    6300 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5800 3200 5800 3500
Connection ~ 5800 3850
$Comp
L Device:R_POT RV1
U 1 1 5C69691C
P 5450 3350
F 0 "RV1" H 5380 3396 50  0000 R CNN
F 1 "R_POT" H 5380 3305 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09K_Single_Vertical" H 5450 3350 50  0001 C CNN
F 3 "~" H 5450 3350 50  0001 C CNN
	1    5450 3350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5450 3200 5450 3100
Wire Wire Line
	5450 3500 5800 3500
Connection ~ 5800 3500
Wire Wire Line
	5800 3500 5800 3850
Wire Wire Line
	4750 3600 5300 3600
Wire Wire Line
	5300 3600 5300 3350
Wire Wire Line
	4750 3500 4750 3000
Wire Wire Line
	4750 3000 6100 3000
$Comp
L Regulator_Linear:AMS1117-3.3 U2
U 1 1 5C698234
P 3500 2250
F 0 "U2" H 3500 2492 50  0000 C CNN
F 1 "AMS1117-3.3" H 3500 2401 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3500 2450 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 3600 2000 50  0001 C CNN
	1    3500 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 5C69873F
P 2350 2450
F 0 "J1" H 2323 2380 50  0000 R CNN
F 1 "POWER" H 2323 2471 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2350 2450 50  0001 C CNN
F 3 "~" H 2350 2450 50  0001 C CNN
	1    2350 2450
	1    0    0    1   
$EndComp
$Comp
L Device:C C2
U 1 1 5C698A3F
P 3850 2400
F 0 "C2" H 3735 2354 50  0000 R CNN
F 1 "10uF" H 3735 2445 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3888 2250 50  0001 C CNN
F 3 "~" H 3850 2400 50  0001 C CNN
	1    3850 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	4150 3200 4150 3100
$Comp
L Device:C C1
U 1 1 5C699FC1
P 3000 2400
F 0 "C1" H 3115 2446 50  0000 L CNN
F 1 "10uF" H 3115 2355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3038 2250 50  0001 C CNN
F 3 "~" H 3000 2400 50  0001 C CNN
	1    3000 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2250 3200 2250
Wire Wire Line
	3800 2250 3850 2250
Connection ~ 3850 2250
Wire Wire Line
	3850 2250 4150 2250
Wire Wire Line
	3850 2550 3500 2550
Connection ~ 3500 2550
Wire Wire Line
	3500 2550 3000 2550
Wire Wire Line
	2750 2250 3000 2250
Connection ~ 3000 2250
Wire Wire Line
	5450 3100 4150 3100
Connection ~ 4150 3100
Wire Wire Line
	4150 3100 4150 2250
Connection ~ 3000 2550
Wire Wire Line
	2550 2550 3000 2550
Wire Wire Line
	4150 4400 3000 4400
Wire Wire Line
	3000 4400 3000 2550
Wire Wire Line
	6100 3200 5800 3200
Connection ~ 4150 4400
Connection ~ 5700 3850
Wire Wire Line
	5700 3850 5700 4000
Wire Wire Line
	5700 3700 5700 3850
Wire Wire Line
	2750 2450 2750 2250
Wire Wire Line
	2550 2450 2750 2450
Connection ~ 2750 2250
Wire Wire Line
	2750 2250 2750 1900
Wire Wire Line
	5800 3100 6100 3100
Wire Wire Line
	5800 1900 5800 3100
Wire Wire Line
	2750 1900 5800 1900
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 5C6A6AE2
P 6800 3100
F 0 "J3" H 6773 3030 50  0000 R CNN
F 1 "SERVO" H 6773 3121 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6800 3100 50  0001 C CNN
F 3 "~" H 6800 3100 50  0001 C CNN
	1    6800 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6600 3000 6100 3000
Connection ~ 6100 3000
Wire Wire Line
	6600 3100 6100 3100
Connection ~ 6100 3100
Wire Wire Line
	6600 3200 6100 3200
Connection ~ 6100 3200
$EndSCHEMATC
