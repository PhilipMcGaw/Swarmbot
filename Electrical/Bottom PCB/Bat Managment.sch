EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
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
L power:GND #PWR?
U 1 1 5ED9FE28
P 7100 1450
AR Path="/5ED9FE28" Ref="#PWR?"  Part="1" 
AR Path="/5ED67F7E/5ED9FE28" Ref="#PWR0309"  Part="1" 
F 0 "#PWR0309" H 7100 1200 50  0001 C CNN
F 1 "GND" H 7105 1277 50  0000 C CNN
F 2 "" H 7100 1450 50  0001 C CNN
F 3 "" H 7100 1450 50  0001 C CNN
	1    7100 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5ED9FE2E
P 7100 1100
AR Path="/5ED9FE2E" Ref="R?"  Part="1" 
AR Path="/5ED67F7E/5ED9FE2E" Ref="R303"  Part="1" 
F 0 "R303" V 6904 1100 50  0000 C CNN
F 1 "10k" V 6995 1100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 7100 1100 50  0001 C CNN
F 3 "~" H 7100 1100 50  0001 C CNN
	1    7100 1100
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5ED9FE34
P 7100 800
AR Path="/5ED9FE34" Ref="R?"  Part="1" 
AR Path="/5ED67F7E/5ED9FE34" Ref="R301"  Part="1" 
F 0 "R301" V 6904 800 50  0000 C CNN
F 1 "47k" V 6995 800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 7100 800 50  0001 C CNN
F 3 "~" H 7100 800 50  0001 C CNN
	1    7100 800 
	-1   0    0    1   
$EndComp
Wire Wire Line
	7100 650  7100 700 
Wire Wire Line
	7100 1200 7100 1450
$Comp
L power:GND #PWR?
U 1 1 5EBBCC9F
P 4400 2300
AR Path="/5EBBCC9F" Ref="#PWR?"  Part="1" 
AR Path="/5ED67F7E/5EBBCC9F" Ref="#PWR0312"  Part="1" 
F 0 "#PWR0312" H 4400 2050 50  0001 C CNN
F 1 "GND" H 4405 2127 50  0000 C CNN
F 2 "" H 4400 2300 50  0001 C CNN
F 3 "" H 4400 2300 50  0001 C CNN
	1    4400 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EBBD1E4
P 3300 1100
AR Path="/5EBBD1E4" Ref="C?"  Part="1" 
AR Path="/5ED67F7E/5EBBD1E4" Ref="C302"  Part="1" 
F 0 "C302" H 3392 1146 50  0000 L CNN
F 1 "22uF" H 3392 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3300 1100 50  0001 C CNN
F 3 "~" H 3300 1100 50  0001 C CNN
	1    3300 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EBBDA00
P 2900 1100
AR Path="/5EBBDA00" Ref="C?"  Part="1" 
AR Path="/5ED67F7E/5EBBDA00" Ref="C301"  Part="1" 
F 0 "C301" H 2992 1146 50  0000 L CNN
F 1 "22uF" H 2992 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2900 1100 50  0001 C CNN
F 3 "~" H 2900 1100 50  0001 C CNN
	1    2900 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 950  3300 1000
Wire Wire Line
	3300 950  2900 950 
Connection ~ 3300 950 
Wire Wire Line
	2900 950  2900 1000
$Comp
L power:GND #PWR?
U 1 1 5EBC0DE9
P 3300 1450
AR Path="/5EBC0DE9" Ref="#PWR?"  Part="1" 
AR Path="/5ED67F7E/5EBC0DE9" Ref="#PWR0306"  Part="1" 
F 0 "#PWR0306" H 3300 1200 50  0001 C CNN
F 1 "GND" H 3305 1277 50  0000 C CNN
F 2 "" H 3300 1450 50  0001 C CNN
F 3 "" H 3300 1450 50  0001 C CNN
	1    3300 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EBC1372
P 2900 1450
AR Path="/5EBC1372" Ref="#PWR?"  Part="1" 
AR Path="/5ED67F7E/5EBC1372" Ref="#PWR0305"  Part="1" 
F 0 "#PWR0305" H 2900 1200 50  0001 C CNN
F 1 "GND" H 2905 1277 50  0000 C CNN
F 2 "" H 2900 1450 50  0001 C CNN
F 3 "" H 2900 1450 50  0001 C CNN
	1    2900 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1450 3300 1200
Wire Wire Line
	2900 1450 2900 1200
$Comp
L Device:C_Small C?
U 1 1 5EBC21D7
P 6050 1100
AR Path="/5EBC21D7" Ref="C?"  Part="1" 
AR Path="/5ED67F7E/5EBC21D7" Ref="C303"  Part="1" 
F 0 "C303" H 6142 1146 50  0000 L CNN
F 1 "22uF" H 6142 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6050 1100 50  0001 C CNN
F 3 "~" H 6050 1100 50  0001 C CNN
	1    6050 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EBC29C5
P 6450 1100
AR Path="/5EBC29C5" Ref="C?"  Part="1" 
AR Path="/5ED67F7E/5EBC29C5" Ref="C304"  Part="1" 
F 0 "C304" H 6542 1146 50  0000 L CNN
F 1 "22uF" H 6542 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6450 1100 50  0001 C CNN
F 3 "~" H 6450 1100 50  0001 C CNN
	1    6450 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EBC3140
P 6050 1450
AR Path="/5EBC3140" Ref="#PWR?"  Part="1" 
AR Path="/5ED67F7E/5EBC3140" Ref="#PWR0307"  Part="1" 
F 0 "#PWR0307" H 6050 1200 50  0001 C CNN
F 1 "GND" H 6055 1277 50  0000 C CNN
F 2 "" H 6050 1450 50  0001 C CNN
F 3 "" H 6050 1450 50  0001 C CNN
	1    6050 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EBC34CB
P 6450 1450
AR Path="/5EBC34CB" Ref="#PWR?"  Part="1" 
AR Path="/5ED67F7E/5EBC34CB" Ref="#PWR0308"  Part="1" 
F 0 "#PWR0308" H 6450 1200 50  0001 C CNN
F 1 "GND" H 6455 1277 50  0000 C CNN
F 2 "" H 6450 1450 50  0001 C CNN
F 3 "" H 6450 1450 50  0001 C CNN
	1    6450 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1450 6450 1200
Wire Wire Line
	6450 1000 6450 950 
Wire Wire Line
	6450 950  6050 950 
Wire Wire Line
	6050 1000 6050 950 
Connection ~ 6050 950 
Wire Wire Line
	6050 1450 6050 1200
$Comp
L power:+5V #PWR?
U 1 1 5EBC669D
P 6450 800
AR Path="/5EBC669D" Ref="#PWR?"  Part="1" 
AR Path="/5ED67F7E/5EBC669D" Ref="#PWR0303"  Part="1" 
F 0 "#PWR0303" H 6450 650 50  0001 C CNN
F 1 "+5V" H 6465 973 50  0000 C CNN
F 2 "" H 6450 800 50  0001 C CNN
F 3 "" H 6450 800 50  0001 C CNN
	1    6450 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 800  6450 950 
Connection ~ 6450 950 
$Comp
L power:+BATT #PWR?
U 1 1 5ED9FE22
P 7100 650
AR Path="/5ED9FE22" Ref="#PWR?"  Part="1" 
AR Path="/5ED67F7E/5ED9FE22" Ref="#PWR0301"  Part="1" 
F 0 "#PWR0301" H 7100 500 50  0001 C CNN
F 1 "+BATT" H 7115 823 50  0000 C CNN
F 2 "" H 7100 650 50  0001 C CNN
F 3 "" H 7100 650 50  0001 C CNN
	1    7100 650 
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW301
U 1 1 5EC14CF7
P 2050 950
F 0 "SW301" H 2050 1185 50  0000 C CNN
F 1 "SW_SPST" H 2050 1094 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3U-3100P-B" H 2050 950 50  0001 C CNN
F 3 "~" H 2050 950 50  0001 C CNN
	1    2050 950 
	1    0    0    -1  
$EndComp
Connection ~ 7100 950 
Wire Wire Line
	7100 950  7100 1000
Wire Wire Line
	7100 900  7100 950 
Connection ~ 7450 950 
Wire Wire Line
	7450 950  7600 950 
Wire Wire Line
	7450 1000 7450 950 
Wire Wire Line
	7450 1450 7450 1200
$Comp
L power:GND #PWR?
U 1 1 5ED9FE46
P 7450 1450
AR Path="/5ED9FE46" Ref="#PWR?"  Part="1" 
AR Path="/5ED67F7E/5ED9FE46" Ref="#PWR0310"  Part="1" 
F 0 "#PWR0310" H 7450 1200 50  0001 C CNN
F 1 "GND" H 7455 1277 50  0000 C CNN
F 2 "" H 7450 1450 50  0001 C CNN
F 3 "" H 7450 1450 50  0001 C CNN
	1    7450 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5ED9FE40
P 7450 1100
AR Path="/5ED9FE40" Ref="C?"  Part="1" 
AR Path="/5ED67F7E/5ED9FE40" Ref="C305"  Part="1" 
F 0 "C305" H 7542 1146 50  0000 L CNN
F 1 "10uF" H 7542 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7450 1100 50  0001 C CNN
F 3 "~" H 7450 1100 50  0001 C CNN
	1    7450 1100
	1    0    0    -1  
$EndComp
Text GLabel 7600 950  2    50   Input ~ 0
A0
Wire Wire Line
	7100 950  7450 950 
$Comp
L power:+BATT #PWR?
U 1 1 5EBBC7EC
P 2500 800
AR Path="/5EBBC7EC" Ref="#PWR?"  Part="1" 
AR Path="/5ED67F7E/5EBBC7EC" Ref="#PWR0302"  Part="1" 
F 0 "#PWR0302" H 2500 650 50  0001 C CNN
F 1 "+BATT" H 2515 973 50  0000 C CNN
F 2 "" H 2500 800 50  0001 C CNN
F 3 "" H 2500 800 50  0001 C CNN
	1    2500 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 800  2500 950 
Wire Wire Line
	2500 950  2900 950 
$Comp
L Device:LED_Small_ALT D302
U 1 1 5EC1C886
P 2500 1050
F 0 "D302" V 2546 982 50  0000 R CNN
F 1 "Power" V 2455 982 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2500 1050 50  0001 C CNN
F 3 "~" V 2500 1050 50  0001 C CNN
	1    2500 1050
	0    -1   -1   0   
$EndComp
Connection ~ 2500 950 
$Comp
L Device:R_Small R?
U 1 1 5EC1DA1F
P 2500 1300
AR Path="/5EC1DA1F" Ref="R?"  Part="1" 
AR Path="/5ED67F7E/5EC1DA1F" Ref="R304"  Part="1" 
F 0 "R304" V 2304 1300 50  0000 C CNN
F 1 "470" V 2395 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 2500 1300 50  0001 C CNN
F 3 "~" H 2500 1300 50  0001 C CNN
	1    2500 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2500 1150 2500 1200
$Comp
L power:GND #PWR?
U 1 1 5EC1E9FE
P 2500 1450
AR Path="/5EC1E9FE" Ref="#PWR?"  Part="1" 
AR Path="/5ED67F7E/5EC1E9FE" Ref="#PWR0304"  Part="1" 
F 0 "#PWR0304" H 2500 1200 50  0001 C CNN
F 1 "GND" H 2505 1277 50  0000 C CNN
F 2 "" H 2500 1450 50  0001 C CNN
F 3 "" H 2500 1450 50  0001 C CNN
	1    2500 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1400 2500 1450
Connection ~ 2900 950 
Wire Wire Line
	2250 950  2500 950 
$Comp
L FP6298:FP6298 U301
U 1 1 5EC702E1
P 4350 1550
F 0 "U301" H 4350 1600 50  0000 C CNN
F 1 "FP6298" H 4350 1500 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4350 1550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1811141821_Feeling-Tech-FP6298XR-G1_C88319.pdf" H 4350 1950 50  0001 C CNN
F 4 "C88319" H 4350 1650 50  0001 C CNN "LCSC#"
	1    4350 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2300 4400 2250
Wire Wire Line
	4300 2150 4300 2250
Wire Wire Line
	4300 2250 4400 2250
Connection ~ 4400 2250
Wire Wire Line
	4400 2250 4400 2150
$Comp
L Device:R_Small R?
U 1 1 5EC7649C
P 3800 2100
AR Path="/5EC7649C" Ref="R?"  Part="1" 
AR Path="/5ED67F7E/5EC7649C" Ref="R305"  Part="1" 
F 0 "R305" V 3604 2100 50  0000 C CNN
F 1 "30k" V 3695 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 3800 2100 50  0001 C CNN
F 3 "~" H 3800 2100 50  0001 C CNN
	1    3800 2100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EC76D68
P 3800 2300
AR Path="/5EC76D68" Ref="#PWR?"  Part="1" 
AR Path="/5ED67F7E/5EC76D68" Ref="#PWR0311"  Part="1" 
F 0 "#PWR0311" H 3800 2050 50  0001 C CNN
F 1 "GND" H 3805 2127 50  0000 C CNN
F 2 "" H 3800 2300 50  0001 C CNN
F 3 "" H 3800 2300 50  0001 C CNN
	1    3800 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2300 3800 2200
Wire Wire Line
	3800 2000 3800 1650
Wire Wire Line
	3800 1650 3950 1650
Wire Wire Line
	3950 1450 3800 1450
Wire Wire Line
	3800 1450 3800 950 
Wire Wire Line
	3300 950  3800 950 
Wire Wire Line
	4350 1050 4350 950 
Wire Wire Line
	4350 950  3800 950 
Connection ~ 3800 950 
$Comp
L Device:L_Core_Iron_Small L301
U 1 1 5EC7A0F6
P 4650 950
F 0 "L301" V 4855 950 50  0000 C CNN
F 1 "3.3uH" V 4764 950 50  0000 C CNN
F 2 "" H 4650 950 50  0001 C CNN
F 3 "~" H 4650 950 50  0001 C CNN
	1    4650 950 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4750 1450 4950 1450
Wire Wire Line
	4950 950  4750 950 
Wire Wire Line
	4550 950  4350 950 
Connection ~ 4350 950 
$Comp
L Device:D_Schottky_Small_ALT D301
U 1 1 5EC7D39D
P 5200 950
F 0 "D301" H 5200 745 50  0000 C CNN
F 1 "SS24" H 5200 836 50  0000 C CNN
F 2 "Diode_SMD:D_SMB-SMC_Universal_Handsoldering" V 5200 950 50  0001 C CNN
F 3 "https://www.mouser.co.uk/datasheet/2/308/SS24-D-1772113.pdf" V 5200 950 50  0001 C CNN
	1    5200 950 
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Schottky_Small_ALT D303
U 1 1 5EC83F4E
P 5200 1450
F 0 "D303" H 5200 1245 50  0000 C CNN
F 1 "SS24" H 5200 1336 50  0000 C CNN
F 2 "Diode_SMD:D_SMB-SMC_Universal_Handsoldering" V 5200 1450 50  0001 C CNN
F 3 "https://www.mouser.co.uk/datasheet/2/308/SS24-D-1772113.pdf" V 5200 1450 50  0001 C CNN
	1    5200 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 950  4950 950 
Connection ~ 4950 950 
Wire Wire Line
	5100 1450 4950 1450
Connection ~ 4950 1450
Wire Wire Line
	4950 1450 4950 950 
Wire Wire Line
	5300 950  5450 950 
$Comp
L Device:R_Small R?
U 1 1 5EC86BE0
P 5650 1100
AR Path="/5EC86BE0" Ref="R?"  Part="1" 
AR Path="/5ED67F7E/5EC86BE0" Ref="R302"  Part="1" 
F 0 "R302" H 5591 1054 50  0000 R CNN
F 1 "73k" H 5591 1145 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 5650 1100 50  0001 C CNN
F 3 "~" H 5650 1100 50  0001 C CNN
	1    5650 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5650 1000 5650 950 
Wire Wire Line
	5650 950  6050 950 
Wire Wire Line
	5300 1450 5450 1450
Wire Wire Line
	5450 1450 5450 950 
Connection ~ 5450 950 
Wire Wire Line
	5450 950  5650 950 
Wire Wire Line
	5650 1200 5650 1850
Wire Wire Line
	5650 1850 4750 1850
$Comp
L Device:R_Small R?
U 1 1 5EC8AA3E
P 5650 2100
AR Path="/5EC8AA3E" Ref="R?"  Part="1" 
AR Path="/5ED67F7E/5EC8AA3E" Ref="R306"  Part="1" 
F 0 "R306" V 5454 2100 50  0000 C CNN
F 1 "10k" V 5545 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 5650 2100 50  0001 C CNN
F 3 "~" H 5650 2100 50  0001 C CNN
	1    5650 2100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EC8B017
P 5650 2300
AR Path="/5EC8B017" Ref="#PWR?"  Part="1" 
AR Path="/5ED67F7E/5EC8B017" Ref="#PWR0313"  Part="1" 
F 0 "#PWR0313" H 5650 2050 50  0001 C CNN
F 1 "GND" H 5655 2127 50  0000 C CNN
F 2 "" H 5650 2300 50  0001 C CNN
F 3 "" H 5650 2300 50  0001 C CNN
	1    5650 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2000 5650 1850
Connection ~ 5650 1850
Wire Wire Line
	5650 2300 5650 2200
Connection ~ 5650 950 
Text GLabel 1450 950  0    50   Input ~ 0
PowerIn
$Comp
L Connector_Generic:Conn_01x01 H301
U 1 1 606A99A0
P 1150 3450
F 0 "H301" H 1068 3225 50  0000 C CNN
F 1 "+VE" H 1068 3316 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 1150 3450 50  0001 C CNN
F 3 "~" H 1150 3450 50  0001 C CNN
	1    1150 3450
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 H302
U 1 1 606AAB9C
P 1150 4150
F 0 "H302" H 1229 4100 50  0000 L CNN
F 1 "-Ve" H 1229 4191 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 1150 4150 50  0001 C CNN
F 3 "~" H 1150 4150 50  0001 C CNN
	1    1150 4150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 606AAF67
P 1700 4550
AR Path="/606AAF67" Ref="#PWR?"  Part="1" 
AR Path="/5ED67F7E/606AAF67" Ref="#PWR0319"  Part="1" 
F 0 "#PWR0319" H 1700 4300 50  0001 C CNN
F 1 "GND" H 1705 4377 50  0000 C CNN
F 2 "" H 1700 4550 50  0001 C CNN
F 3 "" H 1700 4550 50  0001 C CNN
	1    1700 4550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J302
U 1 1 606ADF4D
P 1150 3750
F 0 "J302" H 1229 3742 50  0000 L CNN
F 1 "Charging Header" H 1229 3651 50  0000 L CNN
F 2 "" H 1150 3750 50  0001 C CNN
F 3 "~" H 1150 3750 50  0001 C CNN
	1    1150 3750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1350 4150 1700 4150
Wire Wire Line
	1700 4150 1700 4550
Wire Wire Line
	1350 3850 1700 3850
Wire Wire Line
	1700 3850 1700 4150
Connection ~ 1700 4150
Wire Wire Line
	1700 3450 1700 3750
Wire Wire Line
	1700 3750 1350 3750
$Comp
L Device:R_Small R?
U 1 1 606C2BB5
P 3300 3750
AR Path="/606C2BB5" Ref="R?"  Part="1" 
AR Path="/5ED67F7E/606C2BB5" Ref="R309"  Part="1" 
F 0 "R309" V 3104 3750 50  0000 C CNN
F 1 "1k" V 3195 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 3300 3750 50  0001 C CNN
F 3 "~" H 3300 3750 50  0001 C CNN
	1    3300 3750
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small_ALT D305
U 1 1 606C2BAF
P 3000 3750
F 0 "D305" H 3000 3543 50  0000 C CNN
F 1 "Charging" H 3000 3634 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3000 3750 50  0001 C CNN
F 3 "~" V 3000 3750 50  0001 C CNN
	1    3000 3750
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5EBBDBE9
P 5700 3650
AR Path="/5EBBDBE9" Ref="J?"  Part="1" 
AR Path="/5ED67F7E/5EBBDBE9" Ref="J301"  Part="1" 
F 0 "J301" H 5780 3642 50  0000 L CNN
F 1 "Battery 1S2P" H 5780 3551 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 5700 3650 50  0001 C CNN
F 3 "~" H 5700 3650 50  0001 C CNN
	1    5700 3650
	1    0    0    1   
$EndComp
Wire Wire Line
	5500 3650 5500 3750
Wire Wire Line
	5500 3550 5500 3450
Wire Wire Line
	2350 3600 2350 3450
Wire Wire Line
	2400 3600 2350 3600
Wire Wire Line
	2750 3600 2750 3450
Wire Wire Line
	2700 3600 2750 3600
$Comp
L Device:R R308
U 1 1 606EDD7E
P 2550 3600
F 0 "R308" V 2700 3600 50  0000 C CNN
F 1 "2R" V 2800 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2480 3600 50  0001 C CNN
F 3 "~" H 2550 3600 50  0001 C CNN
F 4 "This is a current limiting resistor, 1 Ω limites the current to about 1.25 A." V 2435 3600 50  0001 C CNN "Note:"
F 5 "5W" V 2900 3600 50  0000 C CNN "Current"
	1    2550 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 4250 2000 4550
$Comp
L power:GND #PWR?
U 1 1 606DE33D
P 2000 4550
AR Path="/606DE33D" Ref="#PWR?"  Part="1" 
AR Path="/5ED67F7E/606DE33D" Ref="#PWR0320"  Part="1" 
F 0 "#PWR0320" H 2000 4300 50  0001 C CNN
F 1 "GND" H 2005 4377 50  0000 C CNN
F 2 "" H 2000 4550 50  0001 C CNN
F 3 "" H 2000 4550 50  0001 C CNN
	1    2000 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3950 2000 3750
$Comp
L Device:C C310
U 1 1 606D0E60
P 2000 4100
F 0 "C310" H 2115 4146 50  0000 L CNN
F 1 "10uF" H 2115 4055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2038 3950 50  0001 C CNN
F 3 "~" H 2000 4100 50  0001 C CNN
	1    2000 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3450 2700 3450
Connection ~ 2350 3450
Wire Wire Line
	2400 3450 2350 3450
$Comp
L Device:R R307
U 1 1 606C8320
P 2550 3450
F 0 "R307" V 2253 3450 50  0000 C CNN
F 1 "2R" V 2344 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2480 3450 50  0001 C CNN
F 3 "~" H 2550 3450 50  0001 C CNN
F 4 "This is a current limiting resistor, 1 Ω limites the current to about 1.25 A." V 2435 3450 50  0001 C CNN "Note:"
F 5 "5W" V 2435 3450 50  0000 C CNN "Current"
	1    2550 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 3450 2350 3450
$Comp
L Device:LED_Small_ALT D306
U 1 1 6083FF97
P 3000 3850
F 0 "D306" H 3000 3993 50  0000 C CNN
F 1 "Standby" H 3000 4084 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3000 3850 50  0001 C CNN
F 3 "~" V 3000 3850 50  0001 C CNN
	1    3000 3850
	-1   0    0    1   
$EndComp
Connection ~ 3450 3450
Wire Wire Line
	3550 3450 3450 3450
Wire Wire Line
	2750 3450 3450 3450
Wire Wire Line
	3450 3550 3450 3450
Wire Wire Line
	3550 3550 3450 3550
$Comp
L TP4056:TP4056 U303
U 1 1 6081398C
P 4050 3700
F 0 "U303" H 4050 4237 60  0000 C CNN
F 1 "TP4056" H 4050 4131 60  0000 C CNN
F 2 "Package_SO:SOP-8-1EP_4.57x4.57mm_P1.27mm_EP4.57x4.45mm_ThermalVias" H 4050 3700 60  0001 C CNN
F 3 "" H 4050 3700 60  0001 C CNN
	1    4050 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky_Small_ALT D304
U 1 1 60856226
P 1850 3450
F 0 "D304" H 1850 3245 50  0000 C CNN
F 1 "SS24" H 1850 3336 50  0000 C CNN
F 2 "Diode_SMD:D_SMB-SMC_Universal_Handsoldering" V 1850 3450 50  0001 C CNN
F 3 "https://www.mouser.co.uk/datasheet/2/308/SS24-D-1772113.pdf" V 1850 3450 50  0001 C CNN
	1    1850 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 3450 1700 3450
Connection ~ 1700 3450
Wire Wire Line
	1950 3450 2000 3450
Connection ~ 2000 3450
Connection ~ 2750 3450
$Comp
L Device:R_Small R?
U 1 1 6087ECC4
P 3300 3850
AR Path="/6087ECC4" Ref="R?"  Part="1" 
AR Path="/5ED67F7E/6087ECC4" Ref="R310"  Part="1" 
F 0 "R310" V 3104 3850 50  0000 C CNN
F 1 "1k" V 3195 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 3300 3850 50  0001 C CNN
F 3 "~" H 3300 3850 50  0001 C CNN
	1    3300 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2900 3850 2750 3850
Wire Wire Line
	2750 3850 2750 3750
Connection ~ 2750 3600
Wire Wire Line
	2900 3750 2750 3750
Connection ~ 2750 3750
Wire Wire Line
	2750 3750 2750 3600
Wire Wire Line
	3200 3750 3100 3750
Wire Wire Line
	3200 3850 3100 3850
Wire Wire Line
	3550 3750 3400 3750
Wire Wire Line
	3550 3850 3400 3850
$Comp
L Device:C_Small C?
U 1 1 6089581A
P 5150 4150
AR Path="/6089581A" Ref="C?"  Part="1" 
AR Path="/5ED67F7E/6089581A" Ref="C311"  Part="1" 
F 0 "C311" H 5242 4196 50  0000 L CNN
F 1 "10uF" H 5242 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5150 4150 50  0001 C CNN
F 3 "~" H 5150 4150 50  0001 C CNN
	1    5150 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60899403
P 5150 4550
AR Path="/60899403" Ref="#PWR?"  Part="1" 
AR Path="/5ED67F7E/60899403" Ref="#PWR0324"  Part="1" 
F 0 "#PWR0324" H 5150 4300 50  0001 C CNN
F 1 "GND" H 5155 4377 50  0000 C CNN
F 2 "" H 5150 4550 50  0001 C CNN
F 3 "" H 5150 4550 50  0001 C CNN
	1    5150 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4050 5150 3450
Wire Wire Line
	5150 3450 4550 3450
Wire Wire Line
	5150 4550 5150 4250
Wire Wire Line
	5500 3450 5150 3450
Connection ~ 5500 3450
Connection ~ 5150 3450
$Comp
L power:GND #PWR?
U 1 1 608A3852
P 5500 4550
AR Path="/608A3852" Ref="#PWR?"  Part="1" 
AR Path="/5ED67F7E/608A3852" Ref="#PWR0325"  Part="1" 
F 0 "#PWR0325" H 5500 4300 50  0001 C CNN
F 1 "GND" H 5505 4377 50  0000 C CNN
F 2 "" H 5500 4550 50  0001 C CNN
F 3 "" H 5500 4550 50  0001 C CNN
	1    5500 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4550 5500 3750
Connection ~ 5500 3750
$Comp
L power:GND #PWR?
U 1 1 608A6D68
P 4850 4550
AR Path="/608A6D68" Ref="#PWR?"  Part="1" 
AR Path="/5ED67F7E/608A6D68" Ref="#PWR0323"  Part="1" 
F 0 "#PWR0323" H 4850 4300 50  0001 C CNN
F 1 "GND" H 4855 4377 50  0000 C CNN
F 2 "" H 4850 4550 50  0001 C CNN
F 3 "" H 4850 4550 50  0001 C CNN
	1    4850 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3600 4850 3600
Wire Wire Line
	4850 3600 4850 4550
$Comp
L Device:R R311
U 1 1 608AAA92
P 4600 4150
F 0 "R311" H 4530 4104 50  0000 R CNN
F 1 "1k2" H 4530 4195 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4530 4150 50  0001 C CNN
F 3 "~" H 4600 4150 50  0001 C CNN
	1    4600 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	4550 3750 4600 3750
Wire Wire Line
	4600 3750 4600 4000
$Comp
L power:GND #PWR?
U 1 1 608B993E
P 4600 4550
AR Path="/608B993E" Ref="#PWR?"  Part="1" 
AR Path="/5ED67F7E/608B993E" Ref="#PWR0322"  Part="1" 
F 0 "#PWR0322" H 4600 4300 50  0001 C CNN
F 1 "GND" H 4605 4377 50  0000 C CNN
F 2 "" H 4600 4550 50  0001 C CNN
F 3 "" H 4600 4550 50  0001 C CNN
	1    4600 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4300 4600 4550
Wire Wire Line
	1350 3450 1700 3450
$Comp
L power:GND #PWR?
U 1 1 606CB90F
P 4100 4550
AR Path="/606CB90F" Ref="#PWR?"  Part="1" 
AR Path="/5ED67F7E/606CB90F" Ref="#PWR0321"  Part="1" 
F 0 "#PWR0321" H 4100 4300 50  0001 C CNN
F 1 "GND" H 4105 4377 50  0000 C CNN
F 2 "" H 4100 4550 50  0001 C CNN
F 3 "" H 4100 4550 50  0001 C CNN
	1    4100 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4100 4100 4550
Wire Wire Line
	4250 4100 4100 4100
Connection ~ 4100 4100
$Comp
L Regulator_Linear:AP2112K-3.3 U?
U 1 1 606F820D
P 9000 3500
AR Path="/5EBB31C5/606F820D" Ref="U?"  Part="1" 
AR Path="/5ED67F7E/606F820D" Ref="U302"  Part="1" 
F 0 "U302" H 9000 3842 50  0000 C CNN
F 1 "AP2112K-3.3" H 9000 3751 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 9000 3825 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP2112.pdf" H 9000 3600 50  0001 C CNN
F 4 "AP2112K-3.3TRG1" H 9000 3500 50  0001 C CNN "mpn"
	1    9000 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 606F8214
P 9500 3550
AR Path="/5EBB31C5/606F8214" Ref="C?"  Part="1" 
AR Path="/5ED67F7E/606F8214" Ref="C307"  Part="1" 
F 0 "C307" H 9615 3596 50  0000 L CNN
F 1 "10uF" H 9615 3505 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9538 3400 50  0001 C CNN
F 3 "~" H 9500 3550 50  0001 C CNN
F 4 "MF-CAP-1206-10uF" H 9500 3550 50  0001 C CNN "mpn"
	1    9500 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 606F821B
P 9950 3550
AR Path="/5EBB31C5/606F821B" Ref="C?"  Part="1" 
AR Path="/5ED67F7E/606F821B" Ref="C308"  Part="1" 
F 0 "C308" H 10065 3596 50  0000 L CNN
F 1 "1uF" H 10065 3505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9988 3400 50  0001 C CNN
F 3 "~" H 9950 3550 50  0001 C CNN
F 4 "MF-CAP-0603-1uF" H 9950 3550 50  0001 C CNN "mpn"
	1    9950 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 606F8222
P 8450 3550
AR Path="/5EBB31C5/606F8222" Ref="C?"  Part="1" 
AR Path="/5ED67F7E/606F8222" Ref="C306"  Part="1" 
F 0 "C306" H 8565 3596 50  0000 L CNN
F 1 "1uF" H 8565 3505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8488 3400 50  0001 C CNN
F 3 "~" H 8450 3550 50  0001 C CNN
F 4 "MF-CAP-0603-1uF" H 8450 3550 50  0001 C CNN "mpn"
	1    8450 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3400 8700 3400
Wire Wire Line
	9300 3400 9500 3400
Wire Wire Line
	9950 3400 9500 3400
Connection ~ 9500 3400
Wire Wire Line
	9500 3700 9500 3800
Wire Wire Line
	9500 3800 9000 3800
Wire Wire Line
	9500 3800 9950 3800
Wire Wire Line
	9950 3800 9950 3700
Connection ~ 9500 3800
Wire Wire Line
	8450 3700 8450 3800
Wire Wire Line
	8450 3800 9000 3800
Connection ~ 9000 3800
$Comp
L power:GND #PWR?
U 1 1 606F8234
P 9000 3800
AR Path="/5EBB31C5/606F8234" Ref="#PWR?"  Part="1" 
AR Path="/5ED67F7E/606F8234" Ref="#PWR0318"  Part="1" 
F 0 "#PWR0318" H 9000 3550 50  0001 C CNN
F 1 "GND" H 9005 3627 50  0000 C CNN
F 2 "" H 9000 3800 50  0001 C CNN
F 3 "" H 9000 3800 50  0001 C CNN
	1    9000 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3500 8700 3400
Connection ~ 8700 3400
$Comp
L power:+3.3V #PWR?
U 1 1 606F8243
P 9950 3400
AR Path="/5EBB31C5/606F8243" Ref="#PWR?"  Part="1" 
AR Path="/5ED67F7E/606F8243" Ref="#PWR0315"  Part="1" 
F 0 "#PWR0315" H 9950 3250 50  0001 C CNN
F 1 "+3.3V" H 9965 3573 50  0000 C CNN
F 2 "" H 9950 3400 50  0001 C CNN
F 3 "" H 9950 3400 50  0001 C CNN
	1    9950 3400
	1    0    0    -1  
$EndComp
Connection ~ 9950 3400
$Comp
L power:GND #PWR?
U 1 1 606F824A
P 10500 3700
AR Path="/5EBB31C5/606F824A" Ref="#PWR?"  Part="1" 
AR Path="/5ED67F7E/606F824A" Ref="#PWR0317"  Part="1" 
F 0 "#PWR0317" H 10500 3450 50  0001 C CNN
F 1 "GND" H 10505 3527 50  0000 C CNN
F 2 "" H 10500 3700 50  0001 C CNN
F 3 "" H 10500 3700 50  0001 C CNN
	1    10500 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 606F8251
P 10500 3550
AR Path="/5EBB31C5/606F8251" Ref="C?"  Part="1" 
AR Path="/5ED67F7E/606F8251" Ref="C309"  Part="1" 
F 0 "C309" H 10615 3596 50  0000 L CNN
F 1 "0.1uF" H 10615 3505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10538 3400 50  0001 C CNN
F 3 "~" H 10500 3550 50  0001 C CNN
F 4 "MF-CAP-0603-0.1uF" H 10500 3550 50  0001 C CNN "mpn"
	1    10500 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 606F8257
P 10500 3400
AR Path="/5EBB31C5/606F8257" Ref="#PWR?"  Part="1" 
AR Path="/5ED67F7E/606F8257" Ref="#PWR0316"  Part="1" 
F 0 "#PWR0316" H 10500 3250 50  0001 C CNN
F 1 "+3.3V" H 10515 3573 50  0000 C CNN
F 2 "" H 10500 3400 50  0001 C CNN
F 3 "" H 10500 3400 50  0001 C CNN
	1    10500 3400
	1    0    0    -1  
$EndComp
Text GLabel 5150 3000 2    50   Input ~ 0
PowerIn
Wire Wire Line
	5150 3450 5150 3000
$Comp
L power:+BATT #PWR?
U 1 1 60F72F10
P 8450 3400
AR Path="/60F72F10" Ref="#PWR?"  Part="1" 
AR Path="/5ED67F7E/60F72F10" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 8450 3250 50  0001 C CNN
F 1 "+BATT" H 8465 3573 50  0000 C CNN
F 2 "" H 8450 3400 50  0001 C CNN
F 3 "" H 8450 3400 50  0001 C CNN
	1    8450 3400
	1    0    0    -1  
$EndComp
Connection ~ 8450 3400
$Comp
L Device:D_Schottky_Small_ALT D309
U 1 1 60F73DD1
P 1650 950
F 0 "D309" H 1650 745 50  0000 C CNN
F 1 "SS24" H 1650 836 50  0000 C CNN
F 2 "Diode_SMD:D_SMB-SMC_Universal_Handsoldering" V 1650 950 50  0001 C CNN
F 3 "https://www.mouser.co.uk/datasheet/2/308/SS24-D-1772113.pdf" V 1650 950 50  0001 C CNN
	1    1650 950 
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 950  1800 950 
Wire Wire Line
	1550 950  1500 950 
$Comp
L Device:D_Schottky_Small_ALT D307
U 1 1 60F7B65B
P 3400 650
F 0 "D307" H 3400 445 50  0000 C CNN
F 1 "SS24" H 3400 536 50  0000 C CNN
F 2 "Diode_SMD:D_SMB-SMC_Universal_Handsoldering" V 3400 650 50  0001 C CNN
F 3 "https://www.mouser.co.uk/datasheet/2/308/SS24-D-1772113.pdf" V 3400 650 50  0001 C CNN
	1    3400 650 
	-1   0    0    1   
$EndComp
Text GLabel 1700 3100 2    50   Input ~ 0
Charge
Wire Wire Line
	1700 3450 1700 3100
Text GLabel 3150 650  0    50   Input ~ 0
Charge
Wire Wire Line
	3150 650  3250 650 
Wire Wire Line
	3500 650  3550 650 
Wire Wire Line
	3800 650  3800 950 
$Comp
L Device:D_Schottky_Small_ALT D310
U 1 1 60F8C444
P 1650 1250
F 0 "D310" H 1650 1045 50  0000 C CNN
F 1 "SS24" H 1650 1136 50  0000 C CNN
F 2 "Diode_SMD:D_SMB-SMC_Universal_Handsoldering" V 1650 1250 50  0001 C CNN
F 3 "https://www.mouser.co.uk/datasheet/2/308/SS24-D-1772113.pdf" V 1650 1250 50  0001 C CNN
	1    1650 1250
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Schottky_Small_ALT D308
U 1 1 60F8C8FC
P 3400 800
F 0 "D308" H 3400 593 50  0000 C CNN
F 1 "SS24" H 3400 684 50  0000 C CNN
F 2 "Diode_SMD:D_SMB-SMC_Universal_Handsoldering" V 3400 800 50  0001 C CNN
F 3 "https://www.mouser.co.uk/datasheet/2/308/SS24-D-1772113.pdf" V 3400 800 50  0001 C CNN
	1    3400 800 
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 1250 1800 1250
Wire Wire Line
	1800 1250 1800 950 
Connection ~ 1800 950 
Wire Wire Line
	1800 950  1850 950 
Wire Wire Line
	1550 1250 1500 1250
Wire Wire Line
	1500 1250 1500 950 
Connection ~ 1500 950 
Wire Wire Line
	1500 950  1450 950 
Wire Wire Line
	3300 800  3250 800 
Wire Wire Line
	3250 800  3250 650 
Connection ~ 3250 650 
Wire Wire Line
	3250 650  3300 650 
Wire Wire Line
	3500 800  3550 800 
Wire Wire Line
	3550 800  3550 650 
Connection ~ 3550 650 
Wire Wire Line
	3550 650  3800 650 
$Comp
L Device:D_Schottky_Small_ALT D311
U 1 1 60F9F2E8
P 1850 3750
F 0 "D311" H 1850 3545 50  0000 C CNN
F 1 "SS24" H 1850 3636 50  0000 C CNN
F 2 "Diode_SMD:D_SMB-SMC_Universal_Handsoldering" V 1850 3750 50  0001 C CNN
F 3 "https://www.mouser.co.uk/datasheet/2/308/SS24-D-1772113.pdf" V 1850 3750 50  0001 C CNN
	1    1850 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 3750 1700 3750
Connection ~ 1700 3750
Wire Wire Line
	1950 3750 2000 3750
Connection ~ 2000 3750
Wire Wire Line
	2000 3750 2000 3450
$EndSCHEMATC
