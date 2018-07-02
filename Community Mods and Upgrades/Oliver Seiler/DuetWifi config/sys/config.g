; Configuration file for Duet WiFi (firmware version 1.21)
; executed by the firmware on start-up

; General preferences
M111 S0 ; Debugging off
G21 ; Work in millimetres
G90 ; Send absolute coordinates...
M83 ; ...but relative extruder moves
M555 P2 ; Set firmware compatibility to look like Marlin
M208 X0 Y0 Z0 S1 ; Set axis minima
M208 X285 Y285 Z250 S0 ; Set axis maxima

; Endstops
M574 X1 Y1 Z1 S0 ; Define active low and unused microswitches
M558 P1 X0 Y0 Z0 H3 F120 T12000 ; Set Z probe type to unmodulated, the axes for which it is used and the probe + travel speeds
G31 P500 X0 Y0 Z0.84 ; Set Z probe trigger value, offset and trigger height
M557 X15:260 Y15:260 S20 ; Define mesh grid

; Drives
M569 P0 S1 ; Drive 0 goes forwards
M569 P1 S0 ; Drive 1 goes backwards
M569 P2 S0 ; Drive 2 goes backwards
M569 P3 S1 ; Drive 3 goes forwards
M569 P4 S1 ; Drive 4 goes forwards
M92 X100 Y100 Z800 E476:803 ; Set steps per mm
M350 X16 Y16 Z16 E16:16 I1 ; Configure microstepping with interpolation
M566 X500 Y500 Z60 E300:300 ; Set maximum instantaneous speed changes (mm/min)
M203 X12000 Y12000 Z1200 E3900:3600 ; Set maximum speeds (mm/min)
M201 X1500 Y1500 Z100 E1000:500 ; Set accelerations (mm/s^2)
M906 X1000 Y1000 Z800 E800:800 I30 ; Set motor currents (mA) and motor idle factor in per cent
M84 S300 ; Set idle timeout

; Heaters
M143 S280 ; Set maximum heater temperature to 280C
M305 P0 T100000 B3974 C0 R4700 ; Set thermistor + ADC parameters for heater 0
M305 P1 T100000 B4388 C0 R4700 ; Set thermistor + ADC parameters for heater 1
M305 P2 T100000 B4388 C0 R4700 ; Set thermistor + ADC parameters for heater 2

; Heater control
M307 H0 A90.0 C700.0 D10.0 S1.00 B1

; Allow cold extrusion
M302 P1

; Fans
M106 P0 S255 I0 F500 H1:2 T50 ; Set fan 0 (hotend cooling) value, PWM signal inversion and frequency. Thermostatic control for Heater 1 (and 2 :2)
M106 P1 S0 I0 F500 H-1 ; Set fan 1 (part cooling) value, PWM signal inversion and frequency. Thermostatic control is turned off
M106 P2 S0 I0 F500 H-1 ; Set fan 2 value, PWM signal inversion and frequency. Thermostatic control is turned off

; Tools
M563 P0 D0 H1 F1; Define tool 0
G10 P0 X0 Y0 Z0 ; Set tool 0 axis offsets
G10 P0 R0 S0 ; Set initial tool 0 active and standby temperatures to 0C
M563 P1 D1 H2 F1; Define tool 1
G10 P1 X-0.1 Y17.8 Z0 ; Set tool 1 axis offsets
G10 P1 R0 S0 ; Set initial tool 1 active and standby temperatures to 0C
M563 P2 D1 H1 F1; Define tool 2 - used for direct drive carriage with second extruder on first hotend (you probably do not want this)

; Network
M550 PEustathios Spider V2 ; Set machine name
M552 S1 ; Enable network
; Access point is configured manually via M587 by the user
M586 P0 S1 ; Enable HTTP
M586 P1 S0 ; Disable FTP
M586 P2 S0 ; Disable Telnet

; Custom settings are not configured

M929 S1 ;enable logging
M915 P0:1 S8 F1 H400 R3 ; log stall detection, S8 seems a good value.
M572 D0 S0 ;enable linear advance on E0
M572 D1 S0 ;enable linear advance on E1

; overwrite to 300x300 build size - use if needed.
;M208 X300 Y300 Z250 S0

; Heater PIDs
M307 H0 A90.0 C700.0 D10.0 S1.00 B1
M307 H1 A340.0 C140.0 D5.5 S1.00 B0
M307 H2 A708.6 C233.9 D9.0 S1.00 B0

M501 ; load config-overrige.g
 
; Miscellaneous
T0 ; Select first tool
M564 H0 ;allow movement without homing

; power loss auto save
M911 S20.0 R40.0 P"M913 X0 Y0 G91 M83 G1 Z3 E-5 F1000"

