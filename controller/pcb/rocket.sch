EESchema Schematic File Version 2
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:actel
LIBS:adc-dac
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:cmos4000
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:diode
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic_symbols
LIBS:hc11
LIBS:infineon
LIBS:intel
LIBS:interface
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:LEM
LIBS:linear
LIBS:logic_programmable
LIBS:maxim
LIBS:mechanical
LIBS:memory
LIBS:microchip
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:microcontrollers
LIBS:modules
LIBS:motor_drivers
LIBS:motorola
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:philips
LIBS:power
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:RFSolutions
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:xilinx
LIBS:zetex
LIBS:Zilog
LIBS:rocket-cache
EELAYER 25 0
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
L MCU_Microchip_ATtiny:ATtiny84A-PU U0
U 1 1 5BA8D085
P 4600 4450
F 0 "U0" H 4050 4900 50  0000 R CNN
F 1 "ATtiny84A-PU" V 4050 4400 50  0000 R CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 4600 4450 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8183.pdf" H 4600 4450 50  0001 C CNN
	1    4600 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C_dec1
U 1 1 5BA8D162
P 3650 4400
F 0 "C_dec1" H 3765 4446 50  0000 L CNN
F 1 "10 nF" H 3765 4355 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D7.5mm_W5.0mm_P5.00mm" H 3688 4250 50  0001 C CNN
F 3 "~" H 3650 4400 50  0001 C CNN
	1    3650 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_TRIM POT_right1
U 1 1 5BA8D55A
P 6250 3000
F 0 "POT_right1" H 6180 3046 50  0000 R CNN
F 1 "10 kR" H 6180 2955 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6250 3000 50  0001 C CNN
F 3 "~" H 6250 3000 50  0001 C CNN
	1    6250 3000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_POT_TRIM Pot_left1
U 1 1 5BA8D662
P 5500 3000
F 0 "Pot_left1" H 5430 3046 50  0000 R CNN
F 1 "10 kR" H 5430 2955 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 5500 3000 50  0001 C CNN
F 3 "~" H 5500 3000 50  0001 C CNN
	1    5500 3000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4600 3550 3150 3550
Wire Wire Line
	3650 3550 3650 4250
Wire Wire Line
	3650 4550 3650 5350
Wire Wire Line
	3150 5350 4600 5350
$Comp
L power:GND #PWR01
U 1 1 5BA9049C
P 4600 5450
F 0 "#PWR01" H 4600 5200 50  0001 C CNN
F 1 "GND" H 4605 5277 50  0000 C CNN
F 2 "" H 4600 5450 50  0001 C CNN
F 3 "" H 4600 5450 50  0001 C CNN
	1    4600 5450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female Switch_input1
U 1 1 5BA91576
P 4600 2350
F 0 "Switch_input1" V 4540 2162 50  0000 R CNN
F 1 "Conn_01x03_Female" V 4449 2162 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 4600 2350 50  0001 C CNN
F 3 "~" H 4600 2350 50  0001 C CNN
	1    4600 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 2550 4600 3550
Connection ~ 4600 3550
Wire Wire Line
	4600 5350 4600 5450
Connection ~ 4600 5350
Wire Wire Line
	4700 2550 8050 2550
$Comp
L power:GND #PWR02
U 1 1 5BA9188A
P 7450 4050
F 0 "#PWR02" H 7450 3800 50  0001 C CNN
F 1 "GND" H 7455 3877 50  0000 C CNN
F 2 "" H 7450 4050 50  0001 C CNN
F 3 "" H 7450 4050 50  0001 C CNN
	1    7450 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2550 8050 4450
Wire Wire Line
	5200 4450 6800 4450
Wire Wire Line
	5200 5050 6750 5050
Wire Wire Line
	6750 5050 6750 4250
Wire Wire Line
	6750 4250 6800 4250
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 5BA92875
P 7000 4250
F 0 "J1" H 7050 3825 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 7050 3916 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 7000 4250 50  0001 C CNN
F 3 "~" H 7000 4250 50  0001 C CNN
	1    7000 4250
	1    0    0    1   
$EndComp
Wire Wire Line
	7300 4050 7450 4050
Wire Wire Line
	8050 4450 7300 4450
Wire Wire Line
	5200 4250 6700 4250
Wire Wire Line
	6700 4250 6700 4150
Wire Wire Line
	6700 4150 6800 4150
Wire Wire Line
	6800 4050 6650 4050
Wire Wire Line
	6650 4050 6650 4350
Wire Wire Line
	6650 4350 5200 4350
Wire Wire Line
	4600 2800 6250 2800
Wire Wire Line
	5500 2800 5500 2850
Wire Wire Line
	6250 2800 6250 2850
Connection ~ 5500 2800
Connection ~ 4600 2800
$Comp
L power:GND #PWR03
U 1 1 5BA95F6B
P 5500 3200
F 0 "#PWR03" H 5500 2950 50  0001 C CNN
F 1 "GND" H 5505 3027 50  0000 C CNN
F 2 "" H 5500 3200 50  0001 C CNN
F 3 "" H 5500 3200 50  0001 C CNN
	1    5500 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5BA95FA2
P 6250 3200
F 0 "#PWR04" H 6250 2950 50  0001 C CNN
F 1 "GND" H 6255 3027 50  0000 C CNN
F 2 "" H 6250 3200 50  0001 C CNN
F 3 "" H 6250 3200 50  0001 C CNN
	1    6250 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3150 6250 3200
Wire Wire Line
	5500 3150 5500 3200
Wire Wire Line
	5200 3850 5250 3850
Wire Wire Line
	5250 3850 5250 3000
Wire Wire Line
	5250 3000 5350 3000
Wire Wire Line
	5200 3950 6000 3950
Wire Wire Line
	6000 3950 6000 3000
Wire Wire Line
	6000 3000 6100 3000
$Comp
L power:GND #PWR05
U 1 1 5BA97B65
P 7250 3550
F 0 "#PWR05" H 7250 3300 50  0001 C CNN
F 1 "GND" H 7255 3377 50  0000 C CNN
F 2 "" H 7250 3550 50  0001 C CNN
F 3 "" H 7250 3550 50  0001 C CNN
	1    7250 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3500 7300 3500
Wire Wire Line
	6600 4050 5200 4050
Wire Wire Line
	6600 3300 6600 4050
Wire Wire Line
	4600 3400 7300 3400
Wire Wire Line
	7250 3500 7250 3550
$Comp
L Connector:Conn_01x03_Female RF1
U 1 1 5BAA1789
P 7500 3400
F 0 "RF1" H 7527 3426 50  0000 L CNN
F 1 "Conn_01x03_Female" H 7527 3335 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 7500 3400 50  0001 C CNN
F 3 "~" H 7500 3400 50  0001 C CNN
	1    7500 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female LED1
U 1 1 5BAA25F8
P 2950 5000
F 0 "LED1" H 2844 4675 50  0000 C CNN
F 1 "Conn_01x02_Female" H 2844 4766 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 2950 5000 50  0001 C CNN
F 3 "~" H 2950 5000 50  0001 C CNN
	1    2950 5000
	-1   0    0    1   
$EndComp
Connection ~ 3650 3550
Wire Wire Line
	3150 5000 3150 5350
Connection ~ 3650 5350
Wire Wire Line
	6600 3300 7300 3300
$Comp
L R 1kR1
U 1 1 5BAE3F16
P 3150 4200
F 0 "1kR1" V 3230 4200 50  0000 C CNN
F 1 "R_led" V 3150 4200 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3080 4200 50  0001 C CNN
F 3 "" H 3150 4200 50  0001 C CNN
	1    3150 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 3550 3150 4050
Wire Wire Line
	3150 4350 3150 4900
$Comp
L Conn_01x02_Male Battery1
U 1 1 5BAE4376
P 4200 2350
F 0 "Battery1" H 4200 2450 50  0000 C CNN
F 1 "Conn_01x02_Male" H 4200 2150 50  0000 C CNN
F 2 "Connectors_Phoenix:PhoenixContact_MC-G_02x3.81mm_Angled" H 4200 2350 50  0001 C CNN
F 3 "" H 4200 2350 50  0001 C CNN
	1    4200 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 2550 4500 2550
$Comp
L GND #PWR06
U 1 1 5BAE44AC
P 4100 2600
F 0 "#PWR06" H 4100 2350 50  0001 C CNN
F 1 "GND" H 4100 2450 50  0000 C CNN
F 2 "" H 4100 2600 50  0001 C CNN
F 3 "" H 4100 2600 50  0001 C CNN
	1    4100 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2550 4100 2600
Connection ~ 4600 3400
$EndSCHEMATC
