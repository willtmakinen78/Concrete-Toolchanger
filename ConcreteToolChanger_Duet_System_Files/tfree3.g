; tfree3.g
; called when tool 3 is freed

;Drop the bed
G91
G1 Z15 F1000
G90

; disable mesh
G29 S2

;Purge nozzle
;M98 P"purge.g"

;Move In
G1 X260 Y125 F5000
G53 G1 X300 Y135 F5000
G53 G1 X300 Y200 F5000
G53 G1 X300 Y221.5 F5000

;Open Coupler
M98 P"/macros/Coupler - Unlock"

; turn acceleratio back up
M201 X6000 Y6000 Z400 

;Move Out
G53 G1 X300 Y150 F50000

; enable mesh
G29 S1


