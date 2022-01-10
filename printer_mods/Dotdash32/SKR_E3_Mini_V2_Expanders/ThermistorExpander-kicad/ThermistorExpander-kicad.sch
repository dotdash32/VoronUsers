EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "SPI Thermistor Expander"
Date "2022-01-10"
Rev "1.0.2"
Comp "Voron Design"
Comment1 "Designed by Dotdash32 (JDeW)"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 1150 2800 0    50   ~ 0
SKR E3 V2.0\n———————\n- - | - -\nMISO |   +5V\nSCK  | MOSI\nRST  |   GND
$Comp
L power:GND #PWR02
U 1 1 61A0D489
P 2400 2000
F 0 "#PWR02" H 2400 1750 50  0001 C CNN
F 1 "GND" H 2405 1827 50  0000 C CNN
F 2 "" H 2400 2000 50  0001 C CNN
F 3 "" H 2400 2000 50  0001 C CNN
	1    2400 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1850 2300 1850
Wire Wire Line
	2400 1850 2400 2000
Wire Wire Line
	1500 1750 1350 1750
Wire Wire Line
	2000 1750 2150 1750
Text Label 1350 1750 0    50   ~ 0
TH2
Text Label 2150 1750 2    50   ~ 0
TH3
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 61A0FD6D
P 4500 900
F 0 "J2" H 4580 892 50  0000 L CNN
F 1 "JST-XH2" H 4580 801 50  0000 L CNN
F 2 "Connectors_JST:JST_XH_B02B-XH-A_02x2.50mm_Straight" H 4500 900 50  0001 C CNN
F 3 "~" H 4500 900 50  0001 C CNN
	1    4500 900 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 61A1120B
P 4500 1300
F 0 "J3" H 4580 1292 50  0000 L CNN
F 1 "JST-XH2" H 4580 1201 50  0000 L CNN
F 2 "Connectors_JST:JST_XH_B02B-XH-A_02x2.50mm_Straight" H 4500 1300 50  0001 C CNN
F 3 "~" H 4500 1300 50  0001 C CNN
	1    4500 1300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 61A11821
P 4500 1700
F 0 "J4" H 4580 1692 50  0000 L CNN
F 1 "JST-XH2" H 4580 1601 50  0000 L CNN
F 2 "Connectors_JST:JST_XH_B02B-XH-A_02x2.50mm_Straight" H 4500 1700 50  0001 C CNN
F 3 "~" H 4500 1700 50  0001 C CNN
	1    4500 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2000 3850 2000
Wire Wire Line
	3750 1200 3750 2000
Wire Wire Line
	3850 1600 3850 2000
Connection ~ 3850 2000
Wire Wire Line
	4300 1000 4250 1000
Wire Wire Line
	4250 1000 4250 1400
Wire Wire Line
	4250 2000 4050 2000
Wire Wire Line
	4300 1400 4250 1400
Connection ~ 4250 1400
Wire Wire Line
	4250 1400 4250 1800
Wire Wire Line
	4300 1800 4250 1800
Connection ~ 4250 1800
Wire Wire Line
	4250 1800 4250 2000
$Comp
L power:GND #PWR03
U 1 1 61A1C70A
P 4050 2100
F 0 "#PWR03" H 4050 1850 50  0001 C CNN
F 1 "GND" H 4055 1927 50  0000 C CNN
F 2 "" H 4050 2100 50  0001 C CNN
F 3 "" H 4050 2100 50  0001 C CNN
	1    4050 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2100 4050 2000
Connection ~ 4050 2000
Text Label 3450 900  0    50   ~ 0
TH2
Text Label 3450 1300 0    50   ~ 0
TH3
Text Label 3450 1700 0    50   ~ 0
TH4
Text Notes 1200 3200 0    50   ~ 0
- - | - - \nPA6 | +5V\nPA5 | PA7\nXXX | GND
Text Notes 1950 2800 0    50   ~ 0
SKR E3 V3.0\n———————\n+5V   | GND\nNSS   | CLK\nMOSI  | MISO\n+3V3  |   GND
Text Notes 2000 3200 0    50   ~ 0
+5V | GND\nPD9 | PA5\nPA7 | PA6\nXXX | GND
$Comp
L Jumper:Jumper_3_Open JP1
U 1 1 61B9AB20
P 1750 950
F 0 "JP1" H 1750 1081 50  0000 C CNN
F 1 "V2-3_SEL" H 1750 1172 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm" H 1750 950 50  0001 C CNN
F 3 "~" H 1750 950 50  0001 C CNN
	1    1750 950 
	-1   0    0    1   
$EndComp
Wire Wire Line
	1500 1650 1100 1650
Wire Wire Line
	1100 950  1500 950 
Wire Wire Line
	2000 1650 2450 1650
Wire Wire Line
	2450 950  2000 950 
Wire Wire Line
	1750 800  1750 750 
Wire Wire Line
	1750 750  1950 750 
Text Label 1950 750  2    50   ~ 0
TH4
$Comp
L Device:C C2
U 1 1 61BA2620
P 3750 1050
F 0 "C2" H 3865 1096 50  0000 L CNN
F 1 "10uF" H 3865 1005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3788 900 50  0001 C CNN
F 3 "~" H 3750 1050 50  0001 C CNN
	1    3750 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 900  3750 900 
Wire Wire Line
	3450 1300 3850 1300
Wire Wire Line
	3450 1700 3950 1700
Wire Wire Line
	3850 2000 3950 2000
Connection ~ 3750 900 
Wire Wire Line
	3750 900  4300 900 
$Comp
L Device:C C3
U 1 1 61BA4139
P 3850 1450
F 0 "C3" H 3965 1496 50  0000 L CNN
F 1 "10uF" H 3965 1405 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3888 1300 50  0001 C CNN
F 3 "~" H 3850 1450 50  0001 C CNN
	1    3850 1450
	1    0    0    -1  
$EndComp
Connection ~ 3850 1300
Wire Wire Line
	3850 1300 4300 1300
$Comp
L Device:C C4
U 1 1 61BA4A2F
P 3950 1850
F 0 "C4" H 4065 1896 50  0000 L CNN
F 1 "10uF" H 4065 1805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3988 1700 50  0001 C CNN
F 3 "~" H 3950 1850 50  0001 C CNN
	1    3950 1850
	1    0    0    -1  
$EndComp
Connection ~ 3950 1700
Wire Wire Line
	3950 1700 4300 1700
Connection ~ 3950 2000
Wire Wire Line
	3950 2000 4050 2000
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J1
U 1 1 61BB4B9B
P 1700 1650
F 0 "J1" H 1750 1967 50  0000 C CNN
F 1 "SPI_Header" H 1750 1876 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04_Pitch2.54mm" H 1700 1650 50  0001 C CNN
F 3 "~" H 1700 1650 50  0001 C CNN
	1    1700 1650
	1    0    0    -1  
$EndComp
Text Label 1100 1450 1    50   ~ 0
V2.0
Text Label 2450 1450 1    50   ~ 0
V3.0
Wire Wire Line
	1100 950  1100 1650
Wire Wire Line
	2450 950  2450 1650
Wire Wire Line
	2000 1550 2300 1550
Wire Wire Line
	2300 1550 2300 1850
Connection ~ 2300 1850
Wire Wire Line
	2300 1850 2400 1850
NoConn ~ 1500 1850
NoConn ~ 1500 1550
Wire Notes Line
	3000 500  3000 3300
Wire Notes Line
	3000 2350 5250 2350
Wire Notes Line
	5250 2350 5250 500 
$Comp
L Mechanical:MountingHole FID1
U 1 1 61E1F362
P 3350 2700
F 0 "FID1" H 3450 2746 50  0000 L CNN
F 1 "Fiducial" H 3450 2655 50  0000 L CNN
F 2 "Fiducials:Fiducial_0.5mm_Dia_1mm_Outer" H 3350 2700 50  0001 C CNN
F 3 "~" H 3350 2700 50  0001 C CNN
	1    3350 2700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole FID2
U 1 1 61E21341
P 3350 3050
F 0 "FID2" H 3450 3096 50  0000 L CNN
F 1 "Fiducial" H 3450 3005 50  0000 L CNN
F 2 "Fiducials:Fiducial_0.5mm_Dia_1mm_Outer" H 3350 3050 50  0001 C CNN
F 3 "~" H 3350 3050 50  0001 C CNN
	1    3350 3050
	1    0    0    -1  
$EndComp
Text Notes 600  700  0    100  ~ 0
SPI Header In
Text Notes 3100 700  0    100  ~ 0
LPF and Connectors
Text Notes 3150 2550 0    100  ~ 0
Fiducials
Wire Notes Line
	4250 3300 4250 2350
Wire Notes Line
	500  3300 4250 3300
$EndSCHEMATC
