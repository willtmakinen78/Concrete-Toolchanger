; stop.g
; called when M0 (Stop) is run (e.g. when a print from SD card is cancelled)

M83 ; back to relative extrusion

G92 E0
G92 E-15 F3600
G92 E0

G91
G1 Z0.65 F10000
G90

if (exists(global.printing))
	set global.printing = false