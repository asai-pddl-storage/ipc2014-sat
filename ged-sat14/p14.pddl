; from /home/guicho/repos/ipc2014-clean/ged-sat14/d-12-5.pddl
;; original sequence 1: (1 8 2 3 4 5 29 30 31 32 33 34 35 36 -56 -55 -54 -53 -52 -51 -50 -28 -27 -26 9 -49 -48 -47 -46 -45 41 42 43 44 37 38 39 40 16 17 18 19 20 21 22 23 24 25 10 11 12 13 14 15 57 58 59 6 7 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 -105 -104 -103 -102 -101 -100 -99 -98 -97)
;; original sequence 2: (1 2 3 4 9 10 11 12 13 14 15 -76 -75 -74 -73 -72 -71 -70 -69 -68 -67 -66 -65 -64 -63 -62 -61 -60 -59 -58 -57 -56 -27 -26 -44 -43 -42 -41 45 46 47 48 -36 -35 -25 -24 -23 -22 -21 -20 -19 -18 -17 -16 -90 -89 -88 -87 -86 -85 -84 77 78 79 80 81 82 83 91 92 93 94 95 96 5 6 7 8 -55 -54 -53 -105 -104 -103 -102 -101 -100 -99 -98 28 29 30 31 32 33 34 -40 -39 -38 -37 49 50 51 52 -97)
;; simplified sequence 1: (1 8 117 5 114 122 -56 116 119 -28 121 9 -49 109 115 107 113 118 120 106 110 111 112 108 -97)
;; simplified sequence 2: (1 117 9 113 -106 -118 -56 121 -109 -122 -107 -111 110 112 5 120 8 116 108 28 114 -115 49 -119 -97)
;; common subsequences: (((60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76) . 106) ((16 17 18 19 20 21 22 23 24 25) . 107) ((-105 -104 -103 -102 -101 -100 -99 -98) . 108) ((-48 -47 -46 -45 41 42 43 44) . 109) ((77 78 79 80 81 82 83) . 110) ((84 85 86 87 88 89 90) . 111) ((91 92 93 94 95 96) . 112) ((10 11 12 13 14 15) . 113) ((29 30 31 32 33 34) . 114) ((37 38 39 40) . 115) ((-55 -54 -53) . 116) ((2 3 4) . 117) ((57 58 59) . 118) ((-52 -51 -50) . 119) ((6 7) . 120) ((-27 -26) . 121) ((35 36) . 122))
;; #safe insertions/deletions: 0
;; sequence 1 (names): ((NORMAL G1) (NORMAL G8) (NORMAL SUB12) (NORMAL G5) (NORMAL SUB9) (NORMAL SUB17) (INVERTED G56) (NORMAL SUB11) (NORMAL SUB14) (INVERTED G28) (NORMAL SUB16) (NORMAL G9) (INVERTED G49) (NORMAL SUB4) (NORMAL SUB10) (NORMAL SUB2) (NORMAL SUB8) (NORMAL SUB13) (NORMAL SUB15) (NORMAL SUB1) (NORMAL SUB5) (NORMAL SUB6) (NORMAL SUB7) (NORMAL SUB3) (INVERTED G97))
;; sequence 2 (names): ((NORMAL G1) (NORMAL SUB12) (NORMAL G9) (NORMAL SUB8) (INVERTED SUB1) (INVERTED SUB13) (INVERTED G56) (NORMAL SUB16) (INVERTED SUB4) (INVERTED SUB17) (INVERTED SUB2) (INVERTED SUB6) (NORMAL SUB5) (NORMAL SUB7) (NORMAL G5) (NORMAL SUB15) (NORMAL G8) (NORMAL SUB11) (NORMAL SUB3) (NORMAL G28) (NORMAL SUB9) (INVERTED SUB10) (NORMAL G49) (INVERTED SUB14) (INVERTED G97))

(DEFINE (PROBLEM PLATYCODON-TO-LEGOUSIA) (:DOMAIN GENOME-EDIT-DISTANCE)
        (:OBJECTS SUB17 SUB16 SUB15 SUB14 SUB13 SUB12 SUB11 SUB10 SUB9
            SUB8 SUB7 SUB6 SUB5 SUB4 SUB3 SUB2 SUB1 G97 G56 G49 G28 G9
            G8 G5 G1)
        (:INIT (NORMAL G1) (NORMAL G8) (NORMAL SUB12) (NORMAL G5)
               (NORMAL SUB9) (NORMAL SUB17) (INVERTED G56)
               (NORMAL SUB11) (NORMAL SUB14) (INVERTED G28)
               (NORMAL SUB16) (NORMAL G9) (INVERTED G49) (NORMAL SUB4)
               (NORMAL SUB10) (NORMAL SUB2) (NORMAL SUB8)
               (NORMAL SUB13) (NORMAL SUB15) (NORMAL SUB1)
               (NORMAL SUB5) (NORMAL SUB6) (NORMAL SUB7) (NORMAL SUB3)
               (INVERTED G97) (PRESENT G1) (PRESENT G8) (PRESENT SUB12)
               (PRESENT G5) (PRESENT SUB9) (PRESENT SUB17)
               (PRESENT G56) (PRESENT SUB11) (PRESENT SUB14)
               (PRESENT G28) (PRESENT SUB16) (PRESENT G9) (PRESENT G49)
               (PRESENT SUB4) (PRESENT SUB10) (PRESENT SUB2)
               (PRESENT SUB8) (PRESENT SUB13) (PRESENT SUB15)
               (PRESENT SUB1) (PRESENT SUB5) (PRESENT SUB6)
               (PRESENT SUB7) (PRESENT SUB3) (PRESENT G97) (CW G97 G1)
               (CW SUB3 G97) (CW SUB7 SUB3) (CW SUB6 SUB7)
               (CW SUB5 SUB6) (CW SUB1 SUB5) (CW SUB15 SUB1)
               (CW SUB13 SUB15) (CW SUB8 SUB13) (CW SUB2 SUB8)
               (CW SUB10 SUB2) (CW SUB4 SUB10) (CW G49 SUB4)
               (CW G9 G49) (CW SUB16 G9) (CW G28 SUB16) (CW SUB14 G28)
               (CW SUB11 SUB14) (CW G56 SUB11) (CW SUB17 G56)
               (CW SUB9 SUB17) (CW G5 SUB9) (CW SUB12 G5) (CW G8 SUB12)
               (CW G1 G8) (IDLE) (= (TOTAL-COST) 0))
        (:GOAL (AND (NORMAL G1) (NORMAL SUB12) (NORMAL G9)
                    (NORMAL SUB8) (INVERTED SUB1) (INVERTED SUB13)
                    (INVERTED G56) (NORMAL SUB16) (INVERTED SUB4)
                    (INVERTED SUB17) (INVERTED SUB2) (INVERTED SUB6)
                    (NORMAL SUB5) (NORMAL SUB7) (NORMAL G5)
                    (NORMAL SUB15) (NORMAL G8) (NORMAL SUB11)
                    (NORMAL SUB3) (NORMAL G28) (NORMAL SUB9)
                    (INVERTED SUB10) (NORMAL G49) (INVERTED SUB14)
                    (INVERTED G97) (CW G97 G1) (CW SUB14 G97)
                    (CW G49 SUB14) (CW SUB10 G49) (CW SUB9 SUB10)
                    (CW G28 SUB9) (CW SUB3 G28) (CW SUB11 SUB3)
                    (CW G8 SUB11) (CW SUB15 G8) (CW G5 SUB15)
                    (CW SUB7 G5) (CW SUB5 SUB7) (CW SUB6 SUB5)
                    (CW SUB2 SUB6) (CW SUB17 SUB2) (CW SUB4 SUB17)
                    (CW SUB16 SUB4) (CW G56 SUB16) (CW SUB13 G56)
                    (CW SUB1 SUB13) (CW SUB8 SUB1) (CW G9 SUB8)
                    (CW SUB12 G9) (CW G1 SUB12)))
        (:METRIC MINIMIZE (TOTAL-COST)))