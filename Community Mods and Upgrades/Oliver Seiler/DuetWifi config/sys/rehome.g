; Relative positioning
G91

; Lift Z
;G1 Z5 F12000

; Course home X and Y
G1 X-300 Y-300 F3000 S1

; Move away from the endstops
G1 X3 Y3 F3000

; Fine home X and Y
G1 X-4 Y-4 F600 S1

; Absolute positioning
G90


