; tpost0.g
; called after tool 0 has been selected

; turn acceleration up
M201 X6000 Y6000 Z400 

;prime and heat up nozzle
if (exists(global.printing))
	if (global.printing)
		;heatup
		M116 P0
		M98 P"prime.g"

M106 R1	; restore print cooling fan speed

; turn acceleration up
M201 X6000 Y6000 Z400 

; enable mesh
G29 S1