EESchema Schematic File Version 4
LIBS:KICAD-CN-BAS2-03-03-cache
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
L OOMP-kicad:HEAD-I01-X-PI02-01 J1
U 1 1 60F08B81
P 3700 2550
F 0 "J1" V 3790 2422 50  0000 R CNN
F 1 "HEAD-I01-X-PI02-01" V 3699 2422 50  0000 R CNN
F 2 "OOMP:OOMP-HEAD-I01-X-03PI-RA-ES" H 3700 2550 50  0001 C CNN
F 3 "" H 3700 2550 50  0000 C CNN
	1    3700 2550
	0    -1   -1   0   
$EndComp
$Comp
L OOMP-kicad:HEAD-I01-X-PI02-01 J3
U 1 1 60F08BCF
P 4950 2550
F 0 "J3" V 5040 2422 50  0000 R CNN
F 1 "HEAD-I01-X-PI02-01" V 4949 2422 50  0000 R CNN
F 2 "OOMP:OOMP-HEAD-I01-X-03PI-RA-ES" H 4950 2550 50  0001 C CNN
F 3 "" H 4950 2550 50  0000 C CNN
	1    4950 2550
	0    -1   -1   0   
$EndComp
$Comp
L OOMP-kicad:BUTA-06-X-STAN-01 S1
U 1 1 60F08C3B
P 3650 3250
F 0 "S1" V 3604 3338 50  0000 L CNN
F 1 "BUTA-06-X-STAN-01" V 3695 3338 50  0000 L CNN
F 2 "OOMP:OOMP-BUTA-06-X-STAN-01" H 3650 3250 50  0001 C CNN
F 3 "" H 3650 3250 50  0000 C CNN
	1    3650 3250
	0    1    1    0   
$EndComp
$Comp
L OOMP-kicad:BUTA-06-X-STAN-01 S2
U 1 1 60F08C93
P 4900 3300
F 0 "S2" V 4854 3388 50  0000 L CNN
F 1 "BUTA-06-X-STAN-01" V 4945 3388 50  0000 L CNN
F 2 "OOMP:OOMP-BUTA-06-X-STAN-01" H 4900 3300 50  0001 C CNN
F 3 "" H 4900 3300 50  0000 C CNN
	1    4900 3300
	0    1    1    0   
$EndComp
$Comp
L OOMP-kicad:DCJP-21D-X-THTH-01 J2
U 1 1 60F08D13
P 3750 4600
F 0 "J2" V 3852 4412 50  0000 R CNN
F 1 "DCJP-21D-X-THTH-01" V 3761 4412 50  0000 R CNN
F 2 "OOMP:OOMP-DCJP-21D-X-THTH-01" H 3800 4560 50  0001 C CNN
F 3 "" H 3800 4560 50  0001 C CNN
	1    3750 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3650 2700 3650 2850
Wire Wire Line
	4900 2700 4900 2900
Wire Wire Line
	3650 3650 3650 3850
Wire Wire Line
	3650 3850 4900 3850
Wire Wire Line
	4900 3850 4900 3700
Wire Wire Line
	3650 4300 3650 3850
Connection ~ 3650 3850
Wire Wire Line
	3750 2700 3750 2800
Wire Wire Line
	3750 2800 4000 2800
Wire Wire Line
	5000 2800 5000 2700
Wire Wire Line
	4000 2800 4000 4150
Wire Wire Line
	4000 4150 3850 4150
Wire Wire Line
	3850 4150 3850 4300
Connection ~ 4000 2800
Wire Wire Line
	4000 2800 5000 2800
$EndSCHEMATC
