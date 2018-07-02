; homeall.g
; called to home all axes

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

G1 Z-280 F360 S1

; Go back a few mm
G91
G1 Z1.5 F360
G90

; Move slowly to Z axis endstop once more (second pass)
G1 Z-3 F50 S1


; Absolute positioning
G90


