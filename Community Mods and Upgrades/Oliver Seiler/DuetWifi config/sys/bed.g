; bed.g
; called to perform automatic bed compensation via G32

; Clear any bed transform
M561

; Probe the bed at 4 points
G30 P0 X15 Y15 H0 Z-99999
G30 P1 X15 Y260 H0 Z-99999
G30 P2 X260 Y260 H0 Z-99999
G30 P3 X260 Y15 H0 Z-99999 S

