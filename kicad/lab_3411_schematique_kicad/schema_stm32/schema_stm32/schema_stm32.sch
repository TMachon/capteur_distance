EESchema Schematic File Version 4
LIBS:schema_stm32-cache
EELAYER 29 0
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
L lib_esiea:STM32_NUCLEO_L053R8 U?
U 1 1 5C3E026E
P 2700 1200
F 0 "U?" H 5000 1495 50  0000 C CNN
F 1 "STM32_NUCLEO_L053R8" H 5000 1389 70  0000 C CNN
F 2 "" H 5600 1050 50  0001 C CNN
F 3 "" H 5600 1050 50  0001 C CNN
	1    2700 1200
	1    0    0    -1  
$EndComp
$Comp
L lib_esiea:ALIM_LABO X?
U 1 1 5C90B2AF
P 9700 2500
F 0 "X?" H 10328 2915 50  0000 L CNN
F 1 "ALIM_LABO" H 10328 2824 50  0000 L CNN
F 2 "" H 10200 3350 50  0001 C CNN
F 3 "" H 10200 3350 50  0001 C CNN
	1    9700 2500
	1    0    0    -1  
$EndComp
Text Notes 3650 2050 0    197  ~ 0
{
Text Notes 3072 2031 0    50   ~ 0
Pour alimenter \nles composants
$Comp
L lib_esiea:AFFICHEUR_LCD_16x2 U?
U 1 1 5CCDD7D9
P 3350 5650
F 0 "U?" H 3350 6631 50  0000 C CNN
F 1 "AFFICHEUR_LCD_16x2" H 3350 6540 50  0000 C CNN
F 2 "Display:RC1602A" H 3350 4750 50  0001 C CIN
F 3 "http://www.raystar-optronics.com/down.php?ProID=18" H 2850 6350 50  0001 C CNN
	1    3350 5650
	1    0    0    -1  
$EndComp
$Comp
L lib_esiea:CAPTEUR_ULTRASONS_HC-SR04 M?
U 1 1 5CCDE754
P 7750 4200
F 0 "M?" H 8478 3342 45  0000 L CNN
F 1 "CAPTEUR_ULTRASONS_HC-SR04" H 8478 3258 45  0000 L CNN
F 2 "HC-SR04" H 7780 4350 20  0001 C CNN
F 3 "" H 7750 4200 50  0001 C CNN
	1    7750 4200
	1    0    0    -1  
$EndComp
$Comp
L lib_esiea:LED D?
U 1 1 5CCDF1FB
P 5600 4650
F 0 "D?" H 5677 4642 45  0000 L CNN
F 1 "LED" H 5677 4558 45  0000 L CNN
F 2 "lib_esiea_U57X32" H 5630 4800 20  0001 C CNN
F 3 "" H 5600 4650 50  0001 C CNN
	1    5600 4650
	1    0    0    -1  
$EndComp
$Comp
L lib_esiea:LED D?
U 1 1 5CCDFBAE
P 5250 4700
F 0 "D?" H 5327 4692 45  0000 L CNN
F 1 "LED" H 5327 4608 45  0000 L CNN
F 2 "lib_esiea_U57X32" H 5280 4850 20  0001 C CNN
F 3 "" H 5250 4700 50  0001 C CNN
	1    5250 4700
	1    0    0    -1  
$EndComp
$Comp
L lib_esiea:LED D?
U 1 1 5CCE0E59
P 4900 4500
F 0 "D?" H 4977 4492 45  0000 L CNN
F 1 "LED" H 4977 4408 45  0000 L CNN
F 2 "lib_esiea_U57X32" H 4930 4650 20  0001 C CNN
F 3 "" H 4900 4500 50  0001 C CNN
	1    4900 4500
	1    0    0    -1  
$EndComp
$Comp
L lib_esiea:LED D?
U 1 1 5CCE144D
P 5950 4400
F 0 "D?" H 6027 4392 45  0000 L CNN
F 1 "LED" H 6027 4308 45  0000 L CNN
F 2 "lib_esiea_U57X32" H 5980 4550 20  0001 C CNN
F 3 "" H 5950 4400 50  0001 C CNN
	1    5950 4400
	1    0    0    -1  
$EndComp
$Comp
L lib_esiea:LED D?
U 1 1 5CCE1A93
P 5500 5150
F 0 "D?" H 5577 5142 45  0000 L CNN
F 1 "LED" H 5577 5058 45  0000 L CNN
F 2 "lib_esiea_U57X32" H 5530 5300 20  0001 C CNN
F 3 "" H 5500 5150 50  0001 C CNN
	1    5500 5150
	1    0    0    -1  
$EndComp
$Comp
L lib_esiea:LED D?
U 1 1 5CCE1DD7
P 5950 5000
F 0 "D?" H 6027 4992 45  0000 L CNN
F 1 "LED" H 6027 4908 45  0000 L CNN
F 2 "lib_esiea_U57X32" H 5980 5150 20  0001 C CNN
F 3 "" H 5950 5000 50  0001 C CNN
	1    5950 5000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
