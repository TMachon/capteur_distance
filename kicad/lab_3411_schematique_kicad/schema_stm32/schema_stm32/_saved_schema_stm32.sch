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
L lib_esiea:LED D?
U 1 1 5CCE84C5
P 3000 4000
F 0 "D?" H 3077 3992 45  0000 L CNN
F 1 "LED" H 3077 3908 45  0000 L CNN
F 2 "lib_esiea_U57X32" H 3030 4150 20  0001 C CNN
F 3 "" H 3000 4000 50  0001 C CNN
	1    3000 4000
	1    0    0    -1  
$EndComp
$Comp
L lib_esiea:LED D?
U 1 1 5CCE8F19
P 3350 4000
F 0 "D?" H 3427 3992 45  0000 L CNN
F 1 "LED" H 3427 3908 45  0000 L CNN
F 2 "lib_esiea_U57X32" H 3380 4150 20  0001 C CNN
F 3 "" H 3350 4000 50  0001 C CNN
	1    3350 4000
	1    0    0    -1  
$EndComp
$Comp
L lib_esiea:LED D?
U 1 1 5CCE9B25
P 3700 4000
F 0 "D?" H 3777 3992 45  0000 L CNN
F 1 "LED" H 3777 3908 45  0000 L CNN
F 2 "lib_esiea_U57X32" H 3730 4150 20  0001 C CNN
F 3 "" H 3700 4000 50  0001 C CNN
	1    3700 4000
	1    0    0    -1  
$EndComp
$Comp
L lib_esiea:LED D?
U 1 1 5CCEA74A
P 4050 4000
F 0 "D?" H 4127 3992 45  0000 L CNN
F 1 "LED" H 4127 3908 45  0000 L CNN
F 2 "lib_esiea_U57X32" H 4080 4150 20  0001 C CNN
F 3 "" H 4050 4000 50  0001 C CNN
	1    4050 4000
	1    0    0    -1  
$EndComp
$Comp
L lib_esiea:LED D?
U 1 1 5CCEB1A9
P 4400 4000
F 0 "D?" H 4477 3992 45  0000 L CNN
F 1 "LED" H 4477 3908 45  0000 L CNN
F 2 "lib_esiea_U57X32" H 4430 4150 20  0001 C CNN
F 3 "" H 4400 4000 50  0001 C CNN
	1    4400 4000
	1    0    0    -1  
$EndComp
$Comp
L lib_esiea:LED D?
U 1 1 5CCEB9F5
P 4750 4000
F 0 "D?" H 4827 3992 45  0000 L CNN
F 1 "LED" H 4827 3908 45  0000 L CNN
F 2 "lib_esiea_U57X32" H 4780 4150 20  0001 C CNN
F 3 "" H 4750 4000 50  0001 C CNN
	1    4750 4000
	1    0    0    -1  
$EndComp
$Comp
L lib_esiea:LED D?
U 1 1 5CCECE8E
P 5100 4000
F 0 "D?" H 5177 3992 45  0000 L CNN
F 1 "LED" H 5177 3908 45  0000 L CNN
F 2 "lib_esiea_U57X32" H 5130 4150 20  0001 C CNN
F 3 "" H 5100 4000 50  0001 C CNN
	1    5100 4000
	1    0    0    -1  
$EndComp
$Comp
L lib_esiea:LED D?
U 1 1 5CCED66A
P 5450 4000
F 0 "D?" H 5527 3992 45  0000 L CNN
F 1 "LED" H 5527 3908 45  0000 L CNN
F 2 "lib_esiea_U57X32" H 5480 4150 20  0001 C CNN
F 3 "" H 5450 4000 50  0001 C CNN
	1    5450 4000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
