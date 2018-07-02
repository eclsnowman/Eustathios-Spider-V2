; homex.g
; called to home the X axis

; Move quickly to X axis endstop and stop there (first pass)
G1 X-300 3000 S1

; Go back a few mm
G91
G1 X3 F3000
G90

; Move slowly to X axis endstop once more (second pass)
G1 X-4 F600 S1
