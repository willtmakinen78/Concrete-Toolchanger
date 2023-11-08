; tpre3.g
; called before tool 3 is selected

; disable mesh
G29 S2			

;Unlock Coupler
M98 P"/macros/Coupler - Unlock"

;Move to location
G1 X300 Y175 F50000

;Move in
G1 X300 Y210 F5000

;Collect
G1 X300 Y221.5 F2500

;Close Coupler
M98 P"/macros/Coupler - Lock"

