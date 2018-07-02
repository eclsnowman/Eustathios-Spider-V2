; Pause macro file
G91					; relative moves
G1 Z5 F960			; raise nozzle 2mm
M83					; relative extruder moves
G1 E-4 F2500		; retract 4mm
G90					; absolute moves
G1 X10 Y10 F12000		; move head out of the way of the print
