; homez.g
; called to home the Z axis

; Move quickly to X axis endstop and stop there (first pass)
G1 Z-280 F360 S1

; Go back a few mm
G91
G1 Z1.5 F360
G90

; Move slowly to Z axis endstop once more (second pass)
G1 Z-3 F50 S1
