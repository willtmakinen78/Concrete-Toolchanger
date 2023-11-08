; tpost3.g
; called after tool 3 has been selected

; turn down acceleration for concrete printing
M201 X1000 Y1000 Z200

; purge if tool is being selected during printing
if (exists(global.printing))
	if (global.printing)
		G1 E0.55 F15
		G1 E-0.35 F80

;WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING!
;if you are using non-standard length hotends ensure the bed is lowered enough BEFORE undocking the tool!
G91
G1 Z60 F1000
G90

;Move Out
G1 X300 Y125 F4000
G1 X260 Y125
G1 X125 Y150

; unretract after purge if printing
if (exists(global.printing))
	if (global.printing)
		G1 E0.55 F80

; enable mesh
G29 S1