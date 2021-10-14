EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title "COTS Swarmbot"
Date "2021-06-04"
Rev ""
Comp "SquashedFly Ltd"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 60BA13E5
P 2950 2750
F 0 "A1" H 2950 3931 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 2950 3840 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3_WithMountingHoles" H 2950 2750 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 2950 2750 50  0001 C CNN
	1    2950 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Raspberry_Pi_2_3 J3
U 1 1 60BA3E05
P 5900 3050
F 0 "J3" H 5900 4531 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 5900 4440 50  0000 C CNN
F 2 "Module:Raspberry_Pi_Zero_Socketed_THT_FaceDown_MountingHoles" H 5900 3050 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 5900 3050 50  0001 C CNN
	1    5900 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 60BA5BB0
P 2950 4450
F 0 "#PWR024" H 2950 4200 50  0001 C CNN
F 1 "GND" H 2955 4277 50  0000 C CNN
F 2 "" H 2950 4450 50  0001 C CNN
F 3 "" H 2950 4450 50  0001 C CNN
	1    2950 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 60BA6A0F
P 5500 4450
F 0 "#PWR025" H 5500 4200 50  0001 C CNN
F 1 "GND" H 5505 4277 50  0000 C CNN
F 2 "" H 5500 4450 50  0001 C CNN
F 3 "" H 5500 4450 50  0001 C CNN
	1    5500 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 60BA7009
P 6200 4450
F 0 "#PWR026" H 6200 4200 50  0001 C CNN
F 1 "GND" H 6205 4277 50  0000 C CNN
F 2 "" H 6200 4450 50  0001 C CNN
F 3 "" H 6200 4450 50  0001 C CNN
	1    6200 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3850 2850 3900
Wire Wire Line
	2850 3900 2950 3900
Wire Wire Line
	3050 3900 3050 3850
Wire Wire Line
	2950 3850 2950 3900
Connection ~ 2950 3900
Wire Wire Line
	2950 3900 3050 3900
Wire Wire Line
	2950 3900 2950 4450
Wire Wire Line
	5500 4450 5500 4400
Wire Wire Line
	5500 4400 5600 4400
Wire Wire Line
	5800 4400 5800 4350
Wire Wire Line
	5900 4350 5900 4400
Wire Wire Line
	5900 4400 6000 4400
Wire Wire Line
	6200 4400 6200 4450
Wire Wire Line
	5500 4350 5500 4400
Connection ~ 5500 4400
Wire Wire Line
	5600 4350 5600 4400
Connection ~ 5600 4400
Wire Wire Line
	5600 4400 5700 4400
Wire Wire Line
	5700 4350 5700 4400
Connection ~ 5700 4400
Wire Wire Line
	5700 4400 5800 4400
Wire Wire Line
	6000 4350 6000 4400
Connection ~ 6000 4400
Wire Wire Line
	6000 4400 6100 4400
Wire Wire Line
	6100 4350 6100 4400
Connection ~ 6100 4400
Wire Wire Line
	6100 4400 6200 4400
Wire Wire Line
	6200 4350 6200 4400
Connection ~ 6200 4400
Text GLabel 4950 2250 0    50   Input ~ 0
RPi_RX
Text GLabel 4950 2150 0    50   Output ~ 0
RPi_to_uC
Wire Wire Line
	5100 2150 4950 2150
Wire Wire Line
	5100 2250 4950 2250
Text GLabel 2300 2150 0    50   Input ~ 0
RPi_to_uC
Wire Wire Line
	2450 2150 2300 2150
Text GLabel 2300 2250 0    50   Output ~ 0
uC_TX
Wire Wire Line
	2300 2250 2450 2250
$Comp
L Device:R_Small R11
U 1 1 60BAB94E
P 8150 2350
F 0 "R11" H 8209 2396 50  0000 L CNN
F 1 "1k5" H 8209 2305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 8150 2350 50  0001 C CNN
F 3 "~" H 8150 2350 50  0001 C CNN
	1    8150 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R12
U 1 1 60BABB80
P 8150 2750
F 0 "R12" H 8209 2796 50  0000 L CNN
F 1 "3k3" H 8209 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 8150 2750 50  0001 C CNN
F 3 "~" H 8150 2750 50  0001 C CNN
	1    8150 2750
	1    0    0    -1  
$EndComp
Text GLabel 8400 2550 2    50   Output ~ 0
RPi_RX
$Comp
L power:GND #PWR023
U 1 1 60BAC2CC
P 8150 2950
F 0 "#PWR023" H 8150 2700 50  0001 C CNN
F 1 "GND" H 8155 2777 50  0000 C CNN
F 2 "" H 8150 2950 50  0001 C CNN
F 3 "" H 8150 2950 50  0001 C CNN
	1    8150 2950
	1    0    0    -1  
$EndComp
Text GLabel 7950 2150 0    50   Input ~ 0
uC_TX
Wire Wire Line
	7950 2150 8150 2150
Wire Wire Line
	8150 2150 8150 2250
Wire Wire Line
	8150 2450 8150 2550
Wire Wire Line
	8150 2850 8150 2950
Wire Wire Line
	8400 2550 8150 2550
Connection ~ 8150 2550
Wire Wire Line
	8150 2550 8150 2650
Text GLabel 2300 3350 0    50   Output ~ 0
Pi_Power
Text GLabel 2300 3450 0    50   Input ~ 0
On_Charge?
Wire Wire Line
	2450 3350 2300 3350
Wire Wire Line
	2450 3450 2300 3450
Text GLabel 9250 2550 0    50   Input ~ 0
Pi_Power
$Comp
L power:+5V #PWR021
U 1 1 60BE2A55
P 3150 1400
F 0 "#PWR021" H 3150 1250 50  0001 C CNN
F 1 "+5V" H 3165 1573 50  0000 C CNN
F 2 "" H 3150 1400 50  0001 C CNN
F 3 "" H 3150 1400 50  0001 C CNN
	1    3150 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1750 3150 1400
$Comp
L power:+5V #PWR022
U 1 1 60BE39D3
P 9250 1900
F 0 "#PWR022" H 9250 1750 50  0001 C CNN
F 1 "+5V" H 9265 2073 50  0000 C CNN
F 2 "" H 9250 1900 50  0001 C CNN
F 3 "" H 9250 1900 50  0001 C CNN
	1    9250 1900
	1    0    0    -1  
$EndComp
$Comp
L MIC94052YC6-TR:MIC94052YC6-TR U3
U 1 1 60BA5138
P 9750 2550
F 0 "U3" H 10228 2558 50  0000 L CNN
F 1 "MIC94052YC6-TR" H 10228 2467 50  0000 L CNN
F 2 "" H 9550 2550 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/264781.pdf" H 9550 2550 50  0001 C CNN
F 4 "FN# 2857804" H 10228 2376 50  0000 L CNN "Farnel partnumber"
	1    9750 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 1900 9250 2200
Wire Wire Line
	9250 2200 9350 2200
Wire Wire Line
	9350 2550 9250 2550
Wire Wire Line
	9750 3150 9750 3250
Wire Wire Line
	9750 3250 9850 3250
Wire Wire Line
	10050 3250 10050 3150
Wire Wire Line
	9950 3150 9950 3250
Connection ~ 9950 3250
Wire Wire Line
	9950 3250 10050 3250
Wire Wire Line
	9850 3150 9850 3250
Connection ~ 9850 3250
Wire Wire Line
	9850 3250 9950 3250
Text GLabel 10450 3250 2    50   Output ~ 0
RPi_Supply
Wire Wire Line
	10450 3250 10050 3250
Connection ~ 10050 3250
Text GLabel 4950 1550 0    50   Input ~ 0
RPi_Supply
Wire Wire Line
	4950 1550 5700 1550
Wire Wire Line
	5800 1550 5800 1750
Wire Wire Line
	5700 1750 5700 1550
Connection ~ 5700 1550
Wire Wire Line
	5700 1550 5800 1550
$EndSCHEMATC
