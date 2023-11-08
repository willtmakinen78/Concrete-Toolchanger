; tpost2.g
; called after tool 2 has been selected

;prime nozzle
;M98 P"prime.g"

; turn down acceleration for concrete printing
M201 X1000 Y1000 Z200

; purge if tool is being selected during printing
if (exists(global.printing))
	if (global.printing)
		;G1 E0.65 F2.5
		G1 E1.2 F2.5
		;G1 E-0.25 F60

;WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING!
;if you are using non-standard length hotends ensure the bed is lowered enough BEFORE undocking the tool!
G91
G1 Z30 F10000
G90

;Move Out
G1 X224 Y150 F11000
G1 X100 Y160

; unretract after purge if printing
if (exists(global.printing))
	if (global.printing)
		;G1 E0.3 F60
		G1 E0.5 F60

; enable mesh
G29 S1