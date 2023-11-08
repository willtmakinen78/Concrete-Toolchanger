; homew.g
; called to home the wiper axis

G91 							; use relative positioning

M400 							; make sure everything has stopped before we change the motor currents
M913 W30     					; drop motor current to 30%
M915 H200 W S5 R0 F0 			; set W to sensitivity 5, do nothing when stall, unfiltered


G1 H1 W-65 F1200 				; move down 125mm, stopping at the endstop
G1 H1 W2 F500 					; move away from end
G90 							; back to absolute positioning
G92 W2

M400 							; make sure everything has stopped before we reset the motor currents
M913 W100 					; motor current back to 100%




