; tfree0.g
; called when tool 0 is freed

;Drop the bed
G91
G1 Z15 F1000
G90

; disable mesh
G29 S2

;Purge nozzle
;M98 P"purge.g"

;Move In
G53 G1 X-14.6 Y150 F50000
G53 G1 X-14.6 Y200 F50000
G53 G1 X-14.6 Y227 F5000

;Open Coupler
M98 P"/macros/Coupler - Unlock"

;fan off
M106 P2 S0

;Move Out
G53 G1 X-14.6 Y150 F50000

; enable mesh
G29 S1
