EESchema Schematic File Version 4
LIBS:Upper PCB-cache
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
L power:+5V #PWR01
U 1 1 5DA6D0A1
P 10450 600
F 0 "#PWR01" H 10450 450 50  0001 C CNN
F 1 "+5V" H 10465 773 50  0000 C CNN
F 2 "" H 10450 600 50  0001 C CNN
F 3 "" H 10450 600 50  0001 C CNN
	1    10450 600 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5DA6DCAB
P 10450 1900
F 0 "#PWR05" H 10450 1650 50  0001 C CNN
F 1 "GND" H 10455 1727 50  0000 C CNN
F 2 "" H 10450 1900 50  0001 C CNN
F 3 "" H 10450 1900 50  0001 C CNN
	1    10450 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J1
U 1 1 5DA7A600
P 10800 1200
F 0 "J1" H 10880 1192 50  0000 L CNN
F 1 "Conn_01x12" H 10880 1101 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 10800 1200 50  0001 C CNN
F 3 "~" H 10800 1200 50  0001 C CNN
	1    10800 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 600  10450 700 
Wire Wire Line
	10450 700  10600 700 
Wire Wire Line
	10600 1800 10450 1800
Wire Wire Line
	10450 1800 10450 1900
Wire Wire Line
	10600 800  10400 800 
Wire Wire Line
	10600 900  10400 900 
Wire Wire Line
	10600 1000 10400 1000
Wire Wire Line
	10600 1100 10400 1100
Wire Wire Line
	10600 1200 10400 1200
Wire Wire Line
	10600 1300 10400 1300
Wire Wire Line
	10600 1400 10400 1400
Wire Wire Line
	10600 1500 10400 1500
Wire Wire Line
	10600 1600 10400 1600
Wire Wire Line
	10600 1700 10400 1700
Text GLabel 10400 800  0    39   Input ~ 0
SwFL
Text GLabel 10400 900  0    39   Input ~ 0
SwFR
Text GLabel 10400 1000 0    39   Input ~ 0
SwRL
Text GLabel 10400 1100 0    39   Input ~ 0
SwRR
$EndSCHEMATC
