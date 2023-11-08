; start START gcode
; Toolchanger
T-1

M104 S0
M140 S0

G28
G29 S1

T3

M109 S0
M190 S0

;M98 P"prime.g"

M106 S0

G21 ; set units to millimeters
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion

; move over bucket and purge
;G1 Y265 F3000
;G1 E4 F15
; move back out
;G1 Y150 F4000

; prime
G1 X275 Y175 Z1.9 F3000
G1 X225 E0.75 F600

; end START gcode
G0 F3000 X225.0 Y160.0 Z1.9
G1 F600 Y85.0 E0.206655
G1 F60.0 E-0.35
G0 F3000.0 Z6.9
G0 Z6.9
G0 X200.0 Z1.9
G1 F600 Y160.0 E0.206655
G1 F60.0 E-0.35
G0 F3000.0 Z6.9

; start END gcode

;Drop Bed
G91
G1 Z2 F1000
G90

; Drop off the tool
T-1

;M201 X6000 Y6000 Z400 ; turn acceleration back up

; Disable Mesh Compensation.
G29 S2

; Park
G1 X-20 Y200 F50000

M0

; end END gcode
