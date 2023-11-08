; tpre1.g
; called before tool 1 is selected

; disable mesh
G29 S2

;Unlock Coupler
M98 P"/macros/Coupler - Unlock"

;Move to location
G1 X76 Y200 F50000

;Move in
G1 X76 Y210 F50000

;Collect
G1 X76 Y227 F2500

;Close Coupler
M98 P"/macros/Coupler - Lock"

;WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING!
;if you are using non-standard length hotends ensure the bed is lowered enough BEFORE undocking the tool!
G91
G1 Z20 F1000
G90

;Move Out
G1 X76 Y150 F4000
