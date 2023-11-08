; prime.g

G91              				; relative positioning            
G1 Z3 F3000               	 	; Drop Z 3mm for safety
G90

; disable mesh
G29 S2

G1 Y156 F50000					; move Y first for safety			

; clear filament pebble
M42 P0 S0.8
G4 P250
M42 P0 S0.24

; move brush out of the way
G1 W28 F1200

; move to brush
G1 X319.7 Y156 F50000
M106 S0					; turn off fan

; move brush up
G1 W37.5 F1200

; brush in
G1 X326 Y152 F50000
G1 X314 Y148 F50000
G1 X326 Y144 F50000
G1 X314 Y140 F50000
G1 X326 Y136 F50000
G1 X319.7 Y132 F50000

; move brush up again close to nozzle
G1 W43.5 F1200

; purge
G92 E0
G1 E8 F480						; Initial Vertical Purge
G1 E16 F300	 					; Pebble Purge
M106 S255						; Cool it down
G92 E0
G1 E-0.75 F200						; retract
;G4 P5000						; Dwell

; move brush down
G1 W37.5 F1200
G4 P3500						; Dwell

G1 E-1.5 F200						; retract

; brush out
G1 Y160 F50000
G1 Y136 F50000
G1 Y160 F50000
G1 Y136 F50000
G1 Y160 F50000
G1 Y136 F50000
G1 Y160 F50000

; move brush out of the way
G1 W28 F1200

; turn fan off
M106 S0

; clear filament pebble
;M42 P0 S0.8
;G4 P250
;M42 P0 S0.24

G92 E0

; enable mesh
G29 S1