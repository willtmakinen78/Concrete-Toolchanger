; start START gcode
; Toolchanger
T-1

M104 S0
M140 S0

G28
G29 S1

; set printing variable for tool changing
if (exists(global.printing))
    set global.printing = true
else
    global printing = true

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
G1 X275 Y160 Z1.9 F3000
G1 X225 E0.75 F600

; end START gcode
G0 F3000 X250.0 Y145.0 Z1.9
G1 F600 X100.0 E0.41331
G1 Y95.0 E0.13777
G1 X250.0 E0.41331
G1 Y145.0 E0.13777
G0 F3000 X246.8 Y141.8
G1 F600 X103.2 E0.395675
G1 Y98.2 E0.120135
G1 X246.8 E0.395675
G1 Y141.8 E0.120135
G0 F3000 X243.6 Y138.6
G1 F600 X106.4 E0.378041
G1 Y101.4 E0.102501
G1 X243.6 E0.378041
G1 Y138.6 E0.102501

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
set global.printing = false
; end END gcode
