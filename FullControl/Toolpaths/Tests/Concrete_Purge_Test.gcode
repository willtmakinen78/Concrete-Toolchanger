Toolchanger
; start START gcode
; Toolchanger
T-1

M104 S0
M140 S0

;G28
G29 S1

T2

;M109 S0
;M190 S0

;M98 P"prime.g"

M106 S0

G21 ; set units to millimeters
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion

; move over bucket and purge
G1 Y265 F3000
G1 E4 F15
; move back out
G1 Y200 F4000

; prime
;G1 X250 Y190 Z1.3 F3000
;G1 X100 E2.15 F600

; end START gcode
G0 F3000 X290.0 Y175.0 Z1.3
G1 F600 X30.0 E0.595951
G1 Y10.0 E0.378199
G1 X290.0 E0.595951
G1 Y175.0 E0.378199
G0 F3000 X288.0 Y173.0
G1 F600 X32.0 E0.586782
G1 Y12.0 E0.369031
G1 X288.0 E0.586782
G1 Y173.0 E0.369031
G0 F3000 X286.0 Y171.0
G1 F600 X34.0 E0.577614
G1 Y14.0 E0.359862
G1 X286.0 E0.577614
G1 Y171.0 E0.359862
G0 F3000 X284.0 Y169.0
G1 F600 X36.0 E0.568445
G1 Y16.0 E0.350694
G1 X284.0 E0.568445
G1 Y169.0 E0.350694

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

T0


M0

; end END gcode
