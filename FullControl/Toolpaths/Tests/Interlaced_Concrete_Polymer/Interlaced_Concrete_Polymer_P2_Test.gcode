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
G1 X250 Y190 Z1 F3000
G1 X100 E2.15 F600

; end START gcode
G0 F3000 X227.0 Y163.6 Z1.0
G1 F600 X102.0 E0.286515
G1 Y161.6 E0.004584
G1 X227.0 E0.286515
G1 Y156.9 E0.010773
G1 X102.0 E0.286515
G1 Y154.9 E0.004584
G1 X227.0 E0.286515
G1 Y150.2 E0.010773
G1 X102.0 E0.286515
G1 Y148.2 E0.004584
G1 X227.0 E0.286515
G1 Y143.5 E0.010773
G1 X102.0 E0.286515
G1 Y141.5 E0.004584
G1 X227.0 E0.286515
G1 Y136.8 E0.010773
G1 X102.0 E0.286515
G1 Y134.8 E0.004584
G1 X227.0 E0.286515
G1 Y130.1 E0.010773
G1 X102.0 E0.286515
G1 Y128.1 E0.004584
G1 X227.0 E0.286515
G1 Y123.4 E0.010773
G1 F0.0 E0.0
G0 F10000.0 Z2.3
G0 F3000 Z2.3
G1 F600 Y128.1 E0.010773
G1 X102.0 E0.286515
G1 Y130.1 E0.004584
G1 X227.0 E0.286515
G1 Y134.8 E0.010773
G1 X102.0 E0.286515
G1 Y136.8 E0.004584
G1 X227.0 E0.286515
G1 Y141.5 E0.010773
G1 X102.0 E0.286515
G1 Y143.5 E0.004584
G1 X227.0 E0.286515
G1 Y148.2 E0.010773
G1 X102.0 E0.286515
G1 Y150.2 E0.004584
G1 X227.0 E0.286515
G1 Y154.9 E0.010773
G1 X102.0 E0.286515
G1 Y156.9 E0.004584
G1 X227.0 E0.286515
G1 Y161.6 E0.010773
G1 X102.0 E0.286515
G1 Y163.6 E0.004584
G1 X227.0 E0.286515
G1 F0.0 E0.0
G0 F10000.0 Z3.6
G0 F3000 Z3.6
G1 F600 X102.0 E0.286515
G1 Y161.6 E0.004584
G1 X227.0 E0.286515
G1 Y156.9 E0.010773
G1 X102.0 E0.286515
G1 Y154.9 E0.004584
G1 X227.0 E0.286515
G1 Y150.2 E0.010773
G1 X102.0 E0.286515
G1 Y148.2 E0.004584
G1 X227.0 E0.286515
G1 Y143.5 E0.010773
G1 X102.0 E0.286515
G1 Y141.5 E0.004584
G1 X227.0 E0.286515
G1 Y136.8 E0.010773
G1 X102.0 E0.286515
G1 Y134.8 E0.004584
G1 X227.0 E0.286515
G1 Y130.1 E0.010773
G1 X102.0 E0.286515
G1 Y128.1 E0.004584
G1 X227.0 E0.286515
G1 Y123.4 E0.010773
G1 F0.0 E0.0
G0 F10000.0 Z4.9
G0 F3000 Z4.9
G1 F600 Y128.1 E0.010773
G1 X102.0 E0.286515
G1 Y130.1 E0.004584
G1 X227.0 E0.286515
G1 Y134.8 E0.010773
G1 X102.0 E0.286515
G1 Y136.8 E0.004584
G1 X227.0 E0.286515
G1 Y141.5 E0.010773
G1 X102.0 E0.286515
G1 Y143.5 E0.004584
G1 X227.0 E0.286515
G1 Y148.2 E0.010773
G1 X102.0 E0.286515
G1 Y150.2 E0.004584
G1 X227.0 E0.286515
G1 Y154.9 E0.010773
G1 X102.0 E0.286515
G1 Y156.9 E0.004584
G1 X227.0 E0.286515
G1 Y161.6 E0.010773
G1 X102.0 E0.286515
G1 Y163.6 E0.004584
G1 X227.0 E0.286515
G1 F0.0 E0.0
G0 F10000.0 Z6.2

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




M0

; end END gcode
