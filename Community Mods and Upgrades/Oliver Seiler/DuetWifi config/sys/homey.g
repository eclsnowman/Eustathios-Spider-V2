; homey.g
; called to home the Y axis

; Move quickly to Y axis endstop and stop there (first pass)
G1 Y-300 F3000 S1

; Go back a few mm
G91
G1 Y3 F3000
G90

; Move slowly to X axis endstop once more (second pass)
G1 Y-4 F600 S1
