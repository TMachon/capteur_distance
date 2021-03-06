EESchema Schematic File Version 4
LIBS:PWM-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "PWM"
Date "2019-01-06"
Rev "Francis Dupin"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 3800 2000 0    63   Input ~ 0
3V3
Text GLabel 3800 2300 0    63   Input ~ 0
GND
Text Notes 3050 1900 0    50   ~ 0
CN6 alimente les composants
Text Notes 6000 900  2    236  ~ 47
PWM
$Comp
L lib_esiea:STM32_NUCLEO_L053R8 U?
U 1 1 5C2BF777
P 2850 1350
F 0 "U?" H 5125 1645 50  0000 C CNN
F 1 "nucleo_L053R8" H 5125 1539 70  0000 C CNN
F 2 "" H 5750 1200 50  0001 C CNN
F 3 "" H 5750 1200 50  0001 C CNN
	1    2850 1350
	1    0    0    -1  
$EndComp
Text GLabel 6200 2300 2    63   Input ~ 0
PA7
Wire Wire Line
	6000 2300 6200 2300
$Comp
L lib_esiea:R_POT RV?
U 1 1 5C326A92
P 3400 5000
F 0 "RV?" H 3330 5046 50  0000 R CNN
F 1 "100k" H 3330 4955 50  0000 R CNN
F 2 "" H 3400 5000 50  0001 C CNN
F 3 "~" H 3400 5000 50  0001 C CNN
	1    3400 5000
	1    0    0    -1  
$EndComp
Text GLabel 3400 4700 1    63   Input ~ 0
3V3
Text GLabel 3400 5300 3    63   Input ~ 0
GND
Text GLabel 3800 5000 2    63   Input ~ 0
PA7
Text GLabel 4500 5300 0    63   Input ~ 0
PA0
Wire Wire Line
	4500 5300 5150 5300
Wire Wire Line
	3800 5000 3550 5000
Wire Wire Line
	3400 4700 3400 4850
Wire Wire Line
	3400 5150 3400 5300
Wire Notes Line
	5350 5300 5350 5050
Wire Notes Line
	5350 5050 5500 5050
Wire Notes Line
	5500 5050 5500 5300
Wire Notes Line
	5500 5300 5950 5300
Wire Notes Line
	5950 5300 5950 5050
Wire Notes Line
	5950 5050 6100 5050
Wire Notes Line
	6100 5050 6100 5300
Wire Notes Line
	6100 5300 6300 5300
Wire Notes Line
	5350 5300 5250 5300
Text Notes 4450 4950 0    50   ~ 0
Sortie sur PA0 du signal PWM. Le rapport cyclique est fonction de PA7
Text GLabel 4500 5700 0    63   Input ~ 0
PA6
Wire Wire Line
	4500 5700 5150 5700
Text Notes 5400 5700 0    50   ~ 0
Sortie pour déboguage
Text GLabel 6200 2200 2    63   Input ~ 0
PA6
Wire Wire Line
	6200 2200 6000 2200
Text GLabel 3100 3150 2    63   Input ~ 0
PA0
Wire Wire Line
	3100 3150 2900 3150
Wire Wire Line
	3800 2300 4250 2300
Wire Wire Line
	3800 2000 4250 2000
Text Notes 3700 4700 0    50   ~ 0
PA7 : Entrée analogique reliée au convertisseur analogique->numérique
$EndSCHEMATC
