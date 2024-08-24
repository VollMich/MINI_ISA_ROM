EESchema Schematic File Version 4
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
L Connector:Bus_ISA_8bit J1
U 1 1 60F88334
P 2200 2950
F 0 "J1" H 2200 4717 50  0000 C CNN
F 1 "Bus_ISA_8bit" H 2200 4626 50  0000 C CNN
F 2 "SamacSys_Parts:BUS_XT" H 2200 2950 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/Industry_Standard_Architecture" H 2200 2950 50  0001 C CNN
	1    2200 2950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS688 U2
U 1 1 60F955F0
P 5050 2500
F 0 "U2" H 5594 2546 50  0000 L CNN
F 1 "74LS688" H 5594 2455 50  0000 L CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 5050 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS688" H 5050 2500 50  0001 C CNN
	1    5050 2500
	1    0    0    -1  
$EndComp
$Comp
L Memory_EPROM:27C256 U1
U 1 1 60F969F1
P 7300 2500
F 0 "U1" H 7950 2500 50  0000 C CNN
F 1 "27C256" H 8050 2400 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 7300 2500 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0014.pdf" H 7300 2500 50  0001 C CNN
	1    7300 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Network04 RN1
U 1 1 60F97D2C
P 10350 1500
F 0 "RN1" H 10538 1546 50  0000 L CNN
F 1 "10k" H 10538 1455 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP5" V 10625 1500 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 10350 1500 50  0001 C CNN
	1    10350 1500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J2
U 1 1 60F9BC27
P 9600 2000
F 0 "J2" H 9650 2317 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 9650 2226 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 9600 2000 50  0001 C CNN
F 3 "~" H 9600 2000 50  0001 C CNN
	1    9600 2000
	1    0    0    -1  
$EndComp
Text Label 10700 1900 0    50   ~ 0
P0
Text Label 10700 2000 0    50   ~ 0
P1
Text Label 10700 2100 0    50   ~ 0
P2
Text Label 10700 2200 0    50   ~ 0
P3
Wire Wire Line
	9900 1900 10150 1900
Wire Wire Line
	9900 2000 10250 2000
Wire Wire Line
	9900 2100 10350 2100
Wire Wire Line
	9900 2200 10450 2200
Wire Wire Line
	10150 1700 10150 1900
Connection ~ 10150 1900
Wire Wire Line
	10150 1900 10700 1900
Wire Wire Line
	10250 1700 10250 2000
Connection ~ 10250 2000
Wire Wire Line
	10250 2000 10700 2000
Wire Wire Line
	10350 1700 10350 2100
Connection ~ 10350 2100
Wire Wire Line
	10350 2100 10700 2100
Wire Wire Line
	10450 1700 10450 2200
Connection ~ 10450 2200
Wire Wire Line
	10450 2200 10700 2200
$Comp
L power:GND #PWR0101
U 1 1 60FA70B2
P 9100 1150
F 0 "#PWR0101" H 9100 900 50  0001 C CNN
F 1 "GND" H 9105 977 50  0000 C CNN
F 2 "" H 9100 1150 50  0001 C CNN
F 3 "" H 9100 1150 50  0001 C CNN
	1    9100 1150
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 60FA7BDB
P 10150 1150
F 0 "#PWR0102" H 10150 1000 50  0001 C CNN
F 1 "+5V" H 10165 1323 50  0000 C CNN
F 2 "" H 10150 1150 50  0001 C CNN
F 3 "" H 10150 1150 50  0001 C CNN
	1    10150 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 1150 10150 1300
Wire Wire Line
	9100 1150 9100 1900
Wire Wire Line
	9100 2200 9400 2200
Wire Wire Line
	9400 2100 9100 2100
Connection ~ 9100 2100
Wire Wire Line
	9100 2100 9100 2200
Wire Wire Line
	9400 2000 9100 2000
Connection ~ 9100 2000
Wire Wire Line
	9100 2000 9100 2100
Wire Wire Line
	9400 1900 9100 1900
Connection ~ 9100 1900
Wire Wire Line
	9100 1900 9100 2000
Wire Notes Line
	8950 650  11000 650 
Wire Notes Line
	11000 650  11000 2300
Wire Notes Line
	11000 2300 8950 2300
Wire Notes Line
	8950 2300 8950 650 
Text Notes 9500 800  0    50   ~ 0
Address Select Jumpers
Text Label 4250 1600 0    50   ~ 0
P0
Text Label 4250 1700 0    50   ~ 0
P1
Text Label 4250 1800 0    50   ~ 0
P2
Text Label 4250 1900 0    50   ~ 0
P3
Wire Wire Line
	4250 1600 4550 1600
Wire Wire Line
	4250 1700 4550 1700
Wire Wire Line
	4250 1800 4550 1800
Wire Wire Line
	4250 1900 4550 1900
Text Label 5750 1600 0    50   ~ 0
CE
Text Label 6650 3300 0    50   ~ 0
CE
Wire Wire Line
	6650 3300 6900 3300
Wire Wire Line
	5550 1600 5750 1600
Text Label 3100 4450 0    50   ~ 0
ADR00
Text Label 3100 4350 0    50   ~ 0
ADR01
Text Label 3100 4250 0    50   ~ 0
ADR02
Text Label 3100 4150 0    50   ~ 0
ADR03
Text Label 3100 4050 0    50   ~ 0
ADR04
Text Label 3100 3950 0    50   ~ 0
ADR05
Text Label 3100 3850 0    50   ~ 0
ADR06
Text Label 3100 3750 0    50   ~ 0
ADR07
Text Label 3100 3650 0    50   ~ 0
ADR08
Text Label 3100 3550 0    50   ~ 0
ADR09
Text Label 3100 3450 0    50   ~ 0
ADR10
Text Label 3100 3350 0    50   ~ 0
ADR11
Text Label 3100 3250 0    50   ~ 0
ADR12
Text Label 3100 3150 0    50   ~ 0
ADR13
Text Label 3100 3050 0    50   ~ 0
ADR14
Text Label 3100 2950 0    50   ~ 0
ADR15
Text Label 3100 2850 0    50   ~ 0
ADR16
Text Label 3100 2750 0    50   ~ 0
ADR17
Text Label 3100 2650 0    50   ~ 0
ADR18
Text Label 3100 2550 0    50   ~ 0
ADR19
Text Label 3100 2450 0    50   ~ 0
AEN
Text Label 3100 2350 0    50   ~ 0
IO_READY
Text Label 3100 2250 0    50   ~ 0
DATA0
Text Label 3100 2150 0    50   ~ 0
DATA1
Text Label 3100 2050 0    50   ~ 0
DATA2
Text Label 3100 1950 0    50   ~ 0
DATA3
Text Label 3100 1850 0    50   ~ 0
DATA4
Text Label 3100 1750 0    50   ~ 0
DATA5
Text Label 3100 1650 0    50   ~ 0
DATA6
Text Label 3100 1550 0    50   ~ 0
DATA7
Text Label 3100 1450 0    50   ~ 0
IO
Wire Wire Line
	2900 4450 3100 4450
Wire Wire Line
	2900 4350 3100 4350
Wire Wire Line
	2900 4250 3100 4250
Wire Wire Line
	2900 4150 3100 4150
Wire Wire Line
	2900 4050 3100 4050
Wire Wire Line
	2900 3950 3100 3950
Wire Wire Line
	2900 3850 3100 3850
Wire Wire Line
	2900 3750 3100 3750
Wire Wire Line
	2900 3650 3100 3650
Wire Wire Line
	2900 2550 3100 2550
Wire Wire Line
	2900 2650 3100 2650
Wire Wire Line
	2900 2750 3100 2750
Wire Wire Line
	2900 2850 3100 2850
Wire Wire Line
	2900 2950 3100 2950
Wire Wire Line
	2900 3050 3100 3050
Wire Wire Line
	2900 3150 3100 3150
Wire Wire Line
	2900 3250 3100 3250
Wire Wire Line
	2900 3350 3100 3350
Wire Wire Line
	2900 3450 3100 3450
Wire Wire Line
	2900 3550 3100 3550
Wire Wire Line
	2900 2450 3100 2450
Wire Wire Line
	2900 2350 3100 2350
Wire Wire Line
	2900 2250 3100 2250
Wire Wire Line
	2900 2150 3100 2150
Wire Wire Line
	2900 2050 3100 2050
Wire Wire Line
	2900 1950 3100 1950
Wire Wire Line
	2900 1850 3100 1850
Wire Wire Line
	2900 1750 3100 1750
Wire Wire Line
	2900 1650 3100 1650
Wire Wire Line
	2900 1550 3100 1550
Wire Wire Line
	2900 1450 3100 1450
Text Label 1200 1450 0    50   ~ 0
GND
Text Label 1200 1550 0    50   ~ 0
RESET
Text Label 1200 1650 0    50   ~ 0
5V
Text Label 1200 1750 0    50   ~ 0
INQ2
Text Label 1200 1850 0    50   ~ 0
-5V
Text Label 1200 1950 0    50   ~ 0
DRQ2
Text Label 1200 2050 0    50   ~ 0
-12V
Text Label 1200 2150 0    50   ~ 0
DETECT
Text Label 1200 2250 0    50   ~ 0
12V
Text Label 1200 2350 0    50   ~ 0
GND
Text Label 1200 2450 0    50   ~ 0
MEMW
Text Label 1200 2550 0    50   ~ 0
MEMR
Text Label 1200 2650 0    50   ~ 0
IOW
Text Label 1200 2750 0    50   ~ 0
IOR
Text Label 1200 2850 0    50   ~ 0
DACK3
Text Label 1200 2950 0    50   ~ 0
DRQ3
Text Label 1200 3050 0    50   ~ 0
DACK1
Text Label 1200 3150 0    50   ~ 0
DRQ1
Text Label 1200 3250 0    50   ~ 0
DACK0
Text Label 1200 3350 0    50   ~ 0
CLK
Text Label 1200 3450 0    50   ~ 0
IRQ7
Text Label 1200 3550 0    50   ~ 0
IRQ6
Text Label 1200 3650 0    50   ~ 0
IRQ5
Text Label 1200 3750 0    50   ~ 0
IRQ4
Text Label 1200 3850 0    50   ~ 0
IRQ3
Text Label 1200 3950 0    50   ~ 0
DACK2
Text Label 1200 4250 0    50   ~ 0
5V
Text Label 1200 4450 0    50   ~ 0
GND
Text Label 1200 4350 0    50   ~ 0
OSC
Text Label 1200 4150 0    50   ~ 0
ALE
Text Label 1200 4050 0    50   ~ 0
TC
Wire Wire Line
	1200 4350 1500 4350
Wire Wire Line
	1200 4150 1500 4150
Wire Wire Line
	1200 4050 1500 4050
Wire Wire Line
	1200 3950 1500 3950
Wire Wire Line
	1200 3850 1500 3850
Wire Wire Line
	1200 3750 1500 3750
Wire Wire Line
	1200 3650 1500 3650
Wire Wire Line
	1200 3550 1500 3550
Wire Wire Line
	1200 3450 1500 3450
Wire Wire Line
	1200 1550 1500 1550
Wire Wire Line
	1200 1750 1500 1750
Wire Wire Line
	1200 1850 1500 1850
Wire Wire Line
	1200 1950 1500 1950
Wire Wire Line
	1200 2050 1500 2050
Wire Wire Line
	1200 2150 1500 2150
Wire Wire Line
	1200 2250 1500 2250
Wire Wire Line
	1200 2450 1500 2450
Wire Wire Line
	1200 2550 1500 2550
Wire Wire Line
	1200 2650 1500 2650
Wire Wire Line
	1200 2750 1500 2750
Wire Wire Line
	1200 2850 1500 2850
Wire Wire Line
	1200 2950 1500 2950
Wire Wire Line
	1200 3050 1500 3050
Wire Wire Line
	1200 3150 1500 3150
Wire Wire Line
	1200 3250 1500 3250
Wire Wire Line
	1200 3350 1500 3350
$Comp
L power:+5V #PWR0103
U 1 1 6104343B
P 1100 1150
F 0 "#PWR0103" H 1100 1000 50  0001 C CNN
F 1 "+5V" H 1115 1323 50  0000 C CNN
F 2 "" H 1100 1150 50  0001 C CNN
F 3 "" H 1100 1150 50  0001 C CNN
	1    1100 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 61044187
P 900 1150
F 0 "#PWR0104" H 900 900 50  0001 C CNN
F 1 "GND" H 905 977 50  0000 C CNN
F 2 "" H 900 1150 50  0001 C CNN
F 3 "" H 900 1150 50  0001 C CNN
	1    900  1150
	-1   0    0    1   
$EndComp
Wire Wire Line
	900  1450 900  1150
Wire Wire Line
	900  1450 1500 1450
Wire Wire Line
	900  1450 900  2350
Wire Wire Line
	900  2350 1500 2350
Connection ~ 900  1450
Wire Wire Line
	900  2350 900  4450
Wire Wire Line
	900  4450 1500 4450
Connection ~ 900  2350
Wire Wire Line
	1100 4250 1100 1650
Wire Wire Line
	1100 4250 1500 4250
Wire Wire Line
	1100 1650 1500 1650
Connection ~ 1100 1650
Wire Wire Line
	1100 1650 1100 1150
$Comp
L power:+5V #PWR0105
U 1 1 6105D7C1
P 5050 1200
F 0 "#PWR0105" H 5050 1050 50  0001 C CNN
F 1 "+5V" H 5065 1373 50  0000 C CNN
F 2 "" H 5050 1200 50  0001 C CNN
F 3 "" H 5050 1200 50  0001 C CNN
	1    5050 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 6105E1F8
P 7300 1200
F 0 "#PWR0106" H 7300 1050 50  0001 C CNN
F 1 "+5V" H 7315 1373 50  0000 C CNN
F 2 "" H 7300 1200 50  0001 C CNN
F 3 "" H 7300 1200 50  0001 C CNN
	1    7300 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1300 5050 1250
$Comp
L power:GND #PWR0107
U 1 1 61068FB9
P 7300 3750
F 0 "#PWR0107" H 7300 3500 50  0001 C CNN
F 1 "GND" H 7305 3577 50  0000 C CNN
F 2 "" H 7300 3750 50  0001 C CNN
F 3 "" H 7300 3750 50  0001 C CNN
	1    7300 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 61069A5A
P 5050 3850
F 0 "#PWR0108" H 5050 3600 50  0001 C CNN
F 1 "GND" H 5055 3677 50  0000 C CNN
F 2 "" H 5050 3850 50  0001 C CNN
F 3 "" H 5050 3850 50  0001 C CNN
	1    5050 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3600 7300 3750
Wire Wire Line
	5050 3700 5050 3750
Wire Wire Line
	5050 3750 4150 3750
Wire Wire Line
	4150 3750 4150 3400
Wire Wire Line
	4150 3400 4550 3400
Connection ~ 5050 3750
Wire Wire Line
	5050 3750 5050 3850
Wire Wire Line
	4550 3200 4150 3200
Wire Wire Line
	4150 3200 4150 3400
Connection ~ 4150 3400
Wire Wire Line
	4150 3200 4150 3100
Wire Wire Line
	4150 3100 4550 3100
Connection ~ 4150 3200
Wire Wire Line
	4550 3000 4150 3000
Wire Wire Line
	4150 3000 4150 3100
Connection ~ 4150 3100
Wire Wire Line
	4550 2300 4150 2300
Wire Wire Line
	4150 2300 4150 3000
Connection ~ 4150 3000
Wire Wire Line
	4550 2200 4150 2200
Wire Wire Line
	4150 2200 4150 2300
Connection ~ 4150 2300
Wire Wire Line
	4550 2100 4150 2100
Wire Wire Line
	4150 2100 4150 2200
Connection ~ 4150 2200
Wire Wire Line
	4550 2000 4150 2000
Wire Wire Line
	4150 2000 4150 1250
Wire Wire Line
	4150 1250 5050 1250
Connection ~ 5050 1250
Wire Wire Line
	5050 1250 5050 1200
Text Label 4250 2500 0    50   ~ 0
ADR15
Text Label 4250 2600 0    50   ~ 0
ADR16
Text Label 4250 2700 0    50   ~ 0
ADR17
Text Label 4250 2800 0    50   ~ 0
ADR18
Text Label 4250 2900 0    50   ~ 0
ADR19
Wire Wire Line
	4250 2500 4550 2500
Wire Wire Line
	4250 2600 4550 2600
Wire Wire Line
	4250 2700 4550 2700
Wire Wire Line
	4250 2800 4550 2800
Wire Wire Line
	4250 2900 4550 2900
Text Label 6650 3400 0    50   ~ 0
MEMR
Text Label 6600 1600 0    50   ~ 0
ADR00
Text Label 6600 1700 0    50   ~ 0
ADR01
Text Label 6600 1800 0    50   ~ 0
ADR02
Text Label 6600 1900 0    50   ~ 0
ADR03
Text Label 6600 2000 0    50   ~ 0
ADR04
Text Label 6600 2100 0    50   ~ 0
ADR05
Text Label 6600 2200 0    50   ~ 0
ADR06
Text Label 6600 2300 0    50   ~ 0
ADR07
Text Label 6600 2400 0    50   ~ 0
ADR08
Text Label 6600 2500 0    50   ~ 0
ADR09
Text Label 6600 2600 0    50   ~ 0
ADR10
Text Label 6600 2700 0    50   ~ 0
ADR11
Text Label 6600 2800 0    50   ~ 0
ADR12
Text Label 6600 2900 0    50   ~ 0
ADR13
Text Label 6600 3000 0    50   ~ 0
ADR14
Text Label 7850 1600 0    50   ~ 0
DATA0
Text Label 7850 1700 0    50   ~ 0
DATA1
Text Label 7850 1800 0    50   ~ 0
DATA2
Text Label 7850 1900 0    50   ~ 0
DATA3
Text Label 7850 2000 0    50   ~ 0
DATA4
Text Label 7850 2100 0    50   ~ 0
DATA5
Text Label 7850 2200 0    50   ~ 0
DATA6
Text Label 7850 2300 0    50   ~ 0
DATA7
Wire Wire Line
	6900 3200 6450 3200
Wire Wire Line
	6600 1600 6900 1600
Wire Wire Line
	6600 1700 6900 1700
Wire Wire Line
	6600 1800 6900 1800
Wire Wire Line
	6600 1900 6900 1900
Wire Wire Line
	6600 2000 6900 2000
Wire Wire Line
	6600 2100 6900 2100
Wire Wire Line
	6600 2200 6900 2200
Wire Wire Line
	6600 2300 6900 2300
Wire Wire Line
	6600 2400 6900 2400
Wire Wire Line
	6600 2500 6900 2500
Wire Wire Line
	6600 2600 6900 2600
Wire Wire Line
	6600 2700 6900 2700
Wire Wire Line
	6600 2800 6900 2800
Wire Wire Line
	6600 2900 6900 2900
Wire Wire Line
	6600 3000 6900 3000
Wire Wire Line
	6650 3400 6900 3400
Wire Wire Line
	7700 2300 7850 2300
Wire Wire Line
	7700 2200 7850 2200
Wire Wire Line
	7700 2100 7850 2100
Wire Wire Line
	7700 2000 7850 2000
Wire Wire Line
	7700 1900 7850 1900
Wire Wire Line
	7700 1800 7850 1800
Wire Wire Line
	7700 1700 7850 1700
Wire Wire Line
	7700 1600 7850 1600
Wire Wire Line
	7300 1400 7300 1250
Wire Wire Line
	6450 1250 7300 1250
Wire Wire Line
	6450 1250 6450 3200
Connection ~ 7300 1250
Wire Wire Line
	7300 1250 7300 1200
Wire Notes Line
	4000 650  4000 4100
Wire Notes Line
	4000 4100 8350 4100
Wire Notes Line
	8350 4100 8350 650 
Wire Notes Line
	8350 650  4000 650 
Text Notes 5750 850  0    50   ~ 0
EPROM Wizardry
Wire Notes Line
	3650 650  3650 4750
Wire Notes Line
	3650 4750 700  4750
Wire Notes Line
	700  4750 700  650 
Wire Notes Line
	700  650  3650 650 
Text Notes 1950 850  0    50   ~ 0
ISA Slot
$Comp
L power:+5V #PWR0109
U 1 1 60F9C171
P 1650 5800
F 0 "#PWR0109" H 1650 5650 50  0001 C CNN
F 1 "+5V" V 1665 5928 50  0000 L CNN
F 2 "" H 1650 5800 50  0001 C CNN
F 3 "" H 1650 5800 50  0001 C CNN
	1    1650 5800
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 60F9E1E9
P 1850 5800
F 0 "C1" H 1942 5846 50  0000 L CNN
F 1 "100nF" H 1942 5755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 1850 5800 50  0001 C CNN
F 3 "~" H 1850 5800 50  0001 C CNN
	1    1850 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 60F9EE91
P 2300 5800
F 0 "C2" H 2392 5846 50  0000 L CNN
F 1 "100nF" H 2392 5755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 2300 5800 50  0001 C CNN
F 3 "~" H 2300 5800 50  0001 C CNN
	1    2300 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 60F9F21F
P 2750 5800
F 0 "#PWR0110" H 2750 5550 50  0001 C CNN
F 1 "GND" V 2755 5672 50  0000 R CNN
F 2 "" H 2750 5800 50  0001 C CNN
F 3 "" H 2750 5800 50  0001 C CNN
	1    2750 5800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1650 5800 1650 5700
Wire Wire Line
	1650 5700 1850 5700
Wire Wire Line
	1850 5700 2300 5700
Connection ~ 1850 5700
Wire Notes Line
	1150 5400 1150 6200
Wire Notes Line
	1150 6200 3250 6200
Wire Notes Line
	3250 6200 3250 5400
Wire Notes Line
	3250 5400 1150 5400
Text Notes 1900 5550 0    50   ~ 0
Stable Power FTW
Wire Wire Line
	1850 5900 2300 5900
Wire Wire Line
	2300 5900 2750 5900
Wire Wire Line
	2750 5900 2750 5800
Connection ~ 2300 5900
$EndSCHEMATC
