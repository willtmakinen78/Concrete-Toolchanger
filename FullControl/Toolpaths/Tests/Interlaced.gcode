; start START gcode
; Toolchanger
T-1

M104 S220
M140 S65

G28
G29 S1

T0

M109 S220
M190 S65

M98 P"prime.g"

M106 S0

G21 ; set units to millimeters
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion

; end START gcode
 
G0 F40800 X15.0 Y75.0 Z0.55
G1 F1275 Y79.05 E1.509353
G1 X140.0 E46.584977
G1 Y80.4 E0.503118
G1 X15.0 E46.584977
G1 Y84.45 E1.509353
G1 X140.0 E46.584977
G1 Y85.8 E0.503118
G1 X15.0 E46.584977
G1 Y89.85 E1.509353
G1 X140.0 E46.584977
G1 Y91.2 E0.503118
G1 X15.0 E46.584977
G1 Y95.25 E1.509353
G1 X140.0 E46.584977
G1 Y96.6 E0.503118
G1 X15.0 E46.584977
G1 Y100.65 E1.509353
G1 X140.0 E46.584977
G1 Y102.0 E0.503118
G1 X15.0 E46.584977
G1 Y106.05 E1.509353
G1 X140.0 E46.584977
G1 Y107.4 E0.503118
G1 X15.0 E46.584977
G1 Y111.45 E1.509353
G1 X140.0 E46.584977
G1 Y112.8 E0.503118
G1 X15.0 E46.584977
G1 Y116.85 E1.509353
G1 X140.0 E46.584977
G1 Y118.2 E0.503118
G1 X15.0 E46.584977
G1 Y122.25 E1.509353
G1 X140.0 E46.584977
G1 Y123.6 E0.503118
G1 X15.0 E46.584977
G1 Y127.65 E1.509353
G1 X140.0 E46.584977
G1 Y129.0 E0.503118
G1 X15.0 E46.584977
M98 P"parkprep.g"
T1
M98 P"prime.g"
G0 F48000 X141.35 Y76.35 Z0.55
G1 F1500 X16.35 E56.126478
G1 Y77.7 E0.606166
G1 X141.35 E56.126478
G1 Y81.75 E1.818498
G1 X16.35 E56.126478
G1 Y83.1 E0.606166
G1 X141.35 E56.126478
G1 Y87.15 E1.818498
G1 X16.35 E56.126478
G1 Y88.5 E0.606166
G1 X141.35 E56.126478
G1 Y92.55 E1.818498
G1 X16.35 E56.126478
G1 Y93.9 E0.606166
G1 X141.35 E56.126478
G1 Y97.95 E1.818498
G1 X16.35 E56.126478
G1 Y99.3 E0.606166
G1 X141.35 E56.126478
G1 Y103.35 E1.818498
G1 X16.35 E56.126478
G1 Y104.7 E0.606166
G1 X141.35 E56.126478
G1 Y108.75 E1.818498
G1 X16.35 E56.126478
G1 Y110.1 E0.606166
G1 X141.35 E56.126478
G1 Y114.15 E1.818498
G1 X16.35 E56.126478
G1 Y115.5 E0.606166
G1 X141.35 E56.126478
G1 Y119.55 E1.818498
G1 X16.35 E56.126478
G1 Y120.9 E0.606166
G1 X141.35 E56.126478
G1 Y124.95 E1.818498
G1 X16.35 E56.126478
G1 Y126.3 E0.606166
G1 X141.35 E56.126478
G1 Y130.35 E1.818498
G1 F2100.0 E-1.25
G0 F10000.0 Z1.4501
G0 F48000 Y76.35 Z1.45
G1 F1500 X16.35 E56.126478
G1 Y77.7 E0.606166
G1 X141.35 E56.126478
G1 Y81.75 E1.818498
G1 X16.35 E56.126478
G1 Y83.1 E0.606166
G1 X141.35 E56.126478
G1 Y87.15 E1.818498
G1 X16.35 E56.126478
G1 Y88.5 E0.606166
G1 X141.35 E56.126478
G1 Y92.55 E1.818498
G1 X16.35 E56.126478
G1 Y93.9 E0.606166
G1 X141.35 E56.126478
G1 Y97.95 E1.818498
G1 X16.35 E56.126478
G1 Y99.3 E0.606166
G1 X141.35 E56.126478
G1 Y103.35 E1.818498
G1 X16.35 E56.126478
G1 Y104.7 E0.606166
G1 X141.35 E56.126478
G1 Y108.75 E1.818498
G1 X16.35 E56.126478
G1 Y110.1 E0.606166
G1 X141.35 E56.126478
G1 Y114.15 E1.818498
G1 X16.35 E56.126478
G1 Y115.5 E0.606166
G1 X141.35 E56.126478
G1 Y119.55 E1.818498
G1 X16.35 E56.126478
G1 Y120.9 E0.606166
G1 X141.35 E56.126478
G1 Y124.95 E1.818498
G1 X16.35 E56.126478
G1 Y126.3 E0.606166
G1 X141.35 E56.126478
G1 Y130.35 E1.818498
M98 P"parkprep.g"
T0
M98 P"prime.g"
G0 F48000 X15.0 Y75.0 Z1.45
G1 F1500 Y79.05 E1.818498
G1 X140.0 E56.126478
G1 Y80.4 E0.606166
G1 X15.0 E56.126478
G1 Y84.45 E1.818498
G1 X140.0 E56.126478
G1 Y85.8 E0.606166
G1 X15.0 E56.126478
G1 Y89.85 E1.818498
G1 X140.0 E56.126478
G1 Y91.2 E0.606166
G1 X15.0 E56.126478
G1 Y95.25 E1.818498
G1 X140.0 E56.126478
G1 Y96.6 E0.606166
G1 X15.0 E56.126478
G1 Y100.65 E1.818498
G1 X140.0 E56.126478
G1 Y102.0 E0.606166
G1 X15.0 E56.126478
G1 Y106.05 E1.818498
G1 X140.0 E56.126478
G1 Y107.4 E0.606166
G1 X15.0 E56.126478
G1 Y111.45 E1.818498
G1 X140.0 E56.126478
G1 Y112.8 E0.606166
G1 X15.0 E56.126478
G1 Y116.85 E1.818498
G1 X140.0 E56.126478
G1 Y118.2 E0.606166
G1 X15.0 E56.126478
G1 Y122.25 E1.818498
G1 X140.0 E56.126478
G1 Y123.6 E0.606166
G1 X15.0 E56.126478
G1 Y127.65 E1.818498
G1 X140.0 E56.126478
G1 Y129.0 E0.606166
G1 X15.0 E56.126478
G1 F2100.0 E-1.25
G0 F10000.0 Z2.35
G0 F48000 Y75.0 Z2.35
G1 F1500 Y79.05 E1.818498
G1 X140.0 E56.126478
G1 Y80.4 E0.606166
G1 X15.0 E56.126478
G1 Y84.45 E1.818498
G1 X140.0 E56.126478
G1 Y85.8 E0.606166
G1 X15.0 E56.126478
G1 Y89.85 E1.818498
G1 X140.0 E56.126478
G1 Y91.2 E0.606166
G1 X15.0 E56.126478
G1 Y95.25 E1.818498
G1 X140.0 E56.126478
G1 Y96.6 E0.606166
G1 X15.0 E56.126478
G1 Y100.65 E1.818498
G1 X140.0 E56.126478
G1 Y102.0 E0.606166
G1 X15.0 E56.126478
G1 Y106.05 E1.818498
G1 X140.0 E56.126478
G1 Y107.4 E0.606166
G1 X15.0 E56.126478
G1 Y111.45 E1.818498
G1 X140.0 E56.126478
G1 Y112.8 E0.606166
G1 X15.0 E56.126478
G1 Y116.85 E1.818498
G1 X140.0 E56.126478
G1 Y118.2 E0.606166
G1 X15.0 E56.126478
G1 Y122.25 E1.818498
G1 X140.0 E56.126478
G1 Y123.6 E0.606166
G1 X15.0 E56.126478
G1 Y127.65 E1.818498
G1 X140.0 E56.126478
G1 Y129.0 E0.606166
G1 X15.0 E56.126478
M98 P"parkprep.g"
T1
M98 P"prime.g"
G0 F48000 X141.35 Y76.35 Z2.35
G1 F1500 X16.35 E56.126478
G1 Y77.7 E0.606166
G1 X141.35 E56.126478
G1 Y81.75 E1.818498
G1 X16.35 E56.126478
G1 Y83.1 E0.606166
G1 X141.35 E56.126478
G1 Y87.15 E1.818498
G1 X16.35 E56.126478
G1 Y88.5 E0.606166
G1 X141.35 E56.126478
G1 Y92.55 E1.818498
G1 X16.35 E56.126478
G1 Y93.9 E0.606166
G1 X141.35 E56.126478
G1 Y97.95 E1.818498
G1 X16.35 E56.126478
G1 Y99.3 E0.606166
G1 X141.35 E56.126478
G1 Y103.35 E1.818498
G1 X16.35 E56.126478
G1 Y104.7 E0.606166
G1 X141.35 E56.126478
G1 Y108.75 E1.818498
G1 X16.35 E56.126478
G1 Y110.1 E0.606166
G1 X141.35 E56.126478
G1 Y114.15 E1.818498
G1 X16.35 E56.126478
G1 Y115.5 E0.606166
G1 X141.35 E56.126478
G1 Y119.55 E1.818498
G1 X16.35 E56.126478
G1 Y120.9 E0.606166
G1 X141.35 E56.126478
G1 Y124.95 E1.818498
G1 X16.35 E56.126478
G1 Y126.3 E0.606166
G1 X141.35 E56.126478
G1 Y130.35 E1.818498
G1 F2100.0 E-1.25
G0 F10000.0 Z3.2501
G0 F48000 Y76.35 Z3.25
G1 F1500 X16.35 E56.126478
G1 Y77.7 E0.606166
G1 X141.35 E56.126478
G1 Y81.75 E1.818498
G1 X16.35 E56.126478
G1 Y83.1 E0.606166
G1 X141.35 E56.126478
G1 Y87.15 E1.818498
G1 X16.35 E56.126478
G1 Y88.5 E0.606166
G1 X141.35 E56.126478
G1 Y92.55 E1.818498
G1 X16.35 E56.126478
G1 Y93.9 E0.606166
G1 X141.35 E56.126478
G1 Y97.95 E1.818498
G1 X16.35 E56.126478
G1 Y99.3 E0.606166
G1 X141.35 E56.126478
G1 Y103.35 E1.818498
G1 X16.35 E56.126478
G1 Y104.7 E0.606166
G1 X141.35 E56.126478
G1 Y108.75 E1.818498
G1 X16.35 E56.126478
G1 Y110.1 E0.606166
G1 X141.35 E56.126478
G1 Y114.15 E1.818498
G1 X16.35 E56.126478
G1 Y115.5 E0.606166
G1 X141.35 E56.126478
G1 Y119.55 E1.818498
G1 X16.35 E56.126478
G1 Y120.9 E0.606166
G1 X141.35 E56.126478
G1 Y124.95 E1.818498
G1 X16.35 E56.126478
G1 Y126.3 E0.606166
G1 X141.35 E56.126478
G1 Y130.35 E1.818498
M98 P"parkprep.g"
T0
M98 P"prime.g"
G0 F48000 X15.0 Y75.0 Z3.25
G1 F1500 Y79.05 E1.818498
G1 X140.0 E56.126478
G1 Y80.4 E0.606166
G1 X15.0 E56.126478
G1 Y84.45 E1.818498
G1 X140.0 E56.126478
G1 Y85.8 E0.606166
G1 X15.0 E56.126478
G1 Y89.85 E1.818498
G1 X140.0 E56.126478
G1 Y91.2 E0.606166
G1 X15.0 E56.126478
G1 Y95.25 E1.818498
G1 X140.0 E56.126478
G1 Y96.6 E0.606166
G1 X15.0 E56.126478
G1 Y100.65 E1.818498
G1 X140.0 E56.126478
G1 Y102.0 E0.606166
G1 X15.0 E56.126478
G1 Y106.05 E1.818498
G1 X140.0 E56.126478
G1 Y107.4 E0.606166
G1 X15.0 E56.126478
G1 Y111.45 E1.818498
G1 X140.0 E56.126478
G1 Y112.8 E0.606166
G1 X15.0 E56.126478
G1 Y116.85 E1.818498
G1 X140.0 E56.126478
G1 Y118.2 E0.606166
G1 X15.0 E56.126478
G1 Y122.25 E1.818498
G1 X140.0 E56.126478
G1 Y123.6 E0.606166
G1 X15.0 E56.126478
G1 Y127.65 E1.818498
G1 X140.0 E56.126478
G1 Y129.0 E0.606166
G1 X15.0 E56.126478
G1 F2100.0 E-1.25
G0 F10000.0 Z4.15
G0 F48000 Y75.0 Z4.15
G1 F1500 Y79.05 E1.818498
G1 X140.0 E56.126478
G1 Y80.4 E0.606166
G1 X15.0 E56.126478
G1 Y84.45 E1.818498
G1 X140.0 E56.126478
G1 Y85.8 E0.606166
G1 X15.0 E56.126478
G1 Y89.85 E1.818498
G1 X140.0 E56.126478
G1 Y91.2 E0.606166
G1 X15.0 E56.126478
G1 Y95.25 E1.818498
G1 X140.0 E56.126478
G1 Y96.6 E0.606166
G1 X15.0 E56.126478
G1 Y100.65 E1.818498
G1 X140.0 E56.126478
G1 Y102.0 E0.606166
G1 X15.0 E56.126478
G1 Y106.05 E1.818498
G1 X140.0 E56.126478
G1 Y107.4 E0.606166
G1 X15.0 E56.126478
G1 Y111.45 E1.818498
G1 X140.0 E56.126478
G1 Y112.8 E0.606166
G1 X15.0 E56.126478
G1 Y116.85 E1.818498
G1 X140.0 E56.126478
G1 Y118.2 E0.606166
G1 X15.0 E56.126478
G1 Y122.25 E1.818498
G1 X140.0 E56.126478
G1 Y123.6 E0.606166
G1 X15.0 E56.126478
G1 Y127.65 E1.818498
G1 X140.0 E56.126478
G1 Y129.0 E0.606166
G1 X15.0 E56.126478
M98 P"parkprep.g"
T1
M98 P"prime.g"
G0 F48000 X141.35 Y76.35 Z4.15
G1 F1500 X16.35 E56.126478
G1 Y77.7 E0.606166
G1 X141.35 E56.126478
G1 Y81.75 E1.818498
G1 X16.35 E56.126478
G1 Y83.1 E0.606166
G1 X141.35 E56.126478
G1 Y87.15 E1.818498
G1 X16.35 E56.126478
G1 Y88.5 E0.606166
G1 X141.35 E56.126478
G1 Y92.55 E1.818498
G1 X16.35 E56.126478
G1 Y93.9 E0.606166
G1 X141.35 E56.126478
G1 Y97.95 E1.818498
G1 X16.35 E56.126478
G1 Y99.3 E0.606166
G1 X141.35 E56.126478
G1 Y103.35 E1.818498
G1 X16.35 E56.126478
G1 Y104.7 E0.606166
G1 X141.35 E56.126478
G1 Y108.75 E1.818498
G1 X16.35 E56.126478
G1 Y110.1 E0.606166
G1 X141.35 E56.126478
G1 Y114.15 E1.818498
G1 X16.35 E56.126478
G1 Y115.5 E0.606166
G1 X141.35 E56.126478
G1 Y119.55 E1.818498
G1 X16.35 E56.126478
G1 Y120.9 E0.606166
G1 X141.35 E56.126478
G1 Y124.95 E1.818498
G1 X16.35 E56.126478
G1 Y126.3 E0.606166
G1 X141.35 E56.126478
G1 Y130.35 E1.818498
G1 F2100.0 E-1.25
G0 F10000.0 Z5.0501
G0 F48000 Y76.35 Z5.05
G1 F1500 X16.35 E56.126478
G1 Y77.7 E0.606166
G1 X141.35 E56.126478
G1 Y81.75 E1.818498
G1 X16.35 E56.126478
G1 Y83.1 E0.606166
G1 X141.35 E56.126478
G1 Y87.15 E1.818498
G1 X16.35 E56.126478
G1 Y88.5 E0.606166
G1 X141.35 E56.126478
G1 Y92.55 E1.818498
G1 X16.35 E56.126478
G1 Y93.9 E0.606166
G1 X141.35 E56.126478
G1 Y97.95 E1.818498
G1 X16.35 E56.126478
G1 Y99.3 E0.606166
G1 X141.35 E56.126478
G1 Y103.35 E1.818498
G1 X16.35 E56.126478
G1 Y104.7 E0.606166
G1 X141.35 E56.126478
G1 Y108.75 E1.818498
G1 X16.35 E56.126478
G1 Y110.1 E0.606166
G1 X141.35 E56.126478
G1 Y114.15 E1.818498
G1 X16.35 E56.126478
G1 Y115.5 E0.606166
G1 X141.35 E56.126478
G1 Y119.55 E1.818498
G1 X16.35 E56.126478
G1 Y120.9 E0.606166
G1 X141.35 E56.126478
G1 Y124.95 E1.818498
G1 X16.35 E56.126478
G1 Y126.3 E0.606166
G1 X141.35 E56.126478
G1 Y130.35 E1.818498
M98 P"parkprep.g"
T0
M98 P"prime.g"
G0 F48000 X15.0 Y75.0 Z5.05
G1 F1500 Y79.05 E1.818498
G1 X140.0 E56.126478
G1 Y80.4 E0.606166
G1 X15.0 E56.126478
G1 Y84.45 E1.818498
G1 X140.0 E56.126478
G1 Y85.8 E0.606166
G1 X15.0 E56.126478
G1 Y89.85 E1.818498
G1 X140.0 E56.126478
G1 Y91.2 E0.606166
G1 X15.0 E56.126478
G1 Y95.25 E1.818498
G1 X140.0 E56.126478
G1 Y96.6 E0.606166
G1 X15.0 E56.126478
G1 Y100.65 E1.818498
G1 X140.0 E56.126478
G1 Y102.0 E0.606166
G1 X15.0 E56.126478
G1 Y106.05 E1.818498
G1 X140.0 E56.126478
G1 Y107.4 E0.606166
G1 X15.0 E56.126478
G1 Y111.45 E1.818498
G1 X140.0 E56.126478
G1 Y112.8 E0.606166
G1 X15.0 E56.126478
G1 Y116.85 E1.818498
G1 X140.0 E56.126478
G1 Y118.2 E0.606166
G1 X15.0 E56.126478
G1 Y122.25 E1.818498
G1 X140.0 E56.126478
G1 Y123.6 E0.606166
G1 X15.0 E56.126478
G1 Y127.65 E1.818498
G1 X140.0 E56.126478
G1 Y129.0 E0.606166
G1 X15.0 E56.126478
G1 F2100.0 E-1.25
G0 F10000.0 Z5.95
G0 F48000 Y75.0 Z5.95
G1 F1500 Y79.05 E1.818498
G1 X140.0 E56.126478
G1 Y80.4 E0.606166
G1 X15.0 E56.126478
G1 Y84.45 E1.818498
G1 X140.0 E56.126478
G1 Y85.8 E0.606166
G1 X15.0 E56.126478
G1 Y89.85 E1.818498
G1 X140.0 E56.126478
G1 Y91.2 E0.606166
G1 X15.0 E56.126478
G1 Y95.25 E1.818498
G1 X140.0 E56.126478
G1 Y96.6 E0.606166
G1 X15.0 E56.126478
G1 Y100.65 E1.818498
G1 X140.0 E56.126478
G1 Y102.0 E0.606166
G1 X15.0 E56.126478
G1 Y106.05 E1.818498
G1 X140.0 E56.126478
G1 Y107.4 E0.606166
G1 X15.0 E56.126478
G1 Y111.45 E1.818498
G1 X140.0 E56.126478
G1 Y112.8 E0.606166
G1 X15.0 E56.126478
G1 Y116.85 E1.818498
G1 X140.0 E56.126478
G1 Y118.2 E0.606166
G1 X15.0 E56.126478
G1 Y122.25 E1.818498
G1 X140.0 E56.126478
G1 Y123.6 E0.606166
G1 X15.0 E56.126478
G1 Y127.65 E1.818498
G1 X140.0 E56.126478
G1 Y129.0 E0.606166
G1 X15.0 E56.126478
M98 P"parkprep.g"
T1
M98 P"prime.g"
G0 F48000 X141.35 Y76.35 Z5.95
G1 F1500 X16.35 E56.126478
G1 Y77.7 E0.606166
G1 X141.35 E56.126478
G1 Y81.75 E1.818498
G1 X16.35 E56.126478
G1 Y83.1 E0.606166
G1 X141.35 E56.126478
G1 Y87.15 E1.818498
G1 X16.35 E56.126478
G1 Y88.5 E0.606166
G1 X141.35 E56.126478
G1 Y92.55 E1.818498
G1 X16.35 E56.126478
G1 Y93.9 E0.606166
G1 X141.35 E56.126478
G1 Y97.95 E1.818498
G1 X16.35 E56.126478
G1 Y99.3 E0.606166
G1 X141.35 E56.126478
G1 Y103.35 E1.818498
G1 X16.35 E56.126478
G1 Y104.7 E0.606166
G1 X141.35 E56.126478
G1 Y108.75 E1.818498
G1 X16.35 E56.126478
G1 Y110.1 E0.606166
G1 X141.35 E56.126478
G1 Y114.15 E1.818498
G1 X16.35 E56.126478
G1 Y115.5 E0.606166
G1 X141.35 E56.126478
G1 Y119.55 E1.818498
G1 X16.35 E56.126478
G1 Y120.9 E0.606166
G1 X141.35 E56.126478
G1 Y124.95 E1.818498
G1 X16.35 E56.126478
G1 Y126.3 E0.606166
G1 X141.35 E56.126478
G1 Y130.35 E1.818498
G1 F2100.0 E-1.25
G0 F10000.0 Z6.8501
G0 F48000 Y76.35 Z6.85
G1 F1500 X16.35 E56.126478
G1 Y77.7 E0.606166
G1 X141.35 E56.126478
G1 Y81.75 E1.818498
G1 X16.35 E56.126478
G1 Y83.1 E0.606166
G1 X141.35 E56.126478
G1 Y87.15 E1.818498
G1 X16.35 E56.126478
G1 Y88.5 E0.606166
G1 X141.35 E56.126478
G1 Y92.55 E1.818498
G1 X16.35 E56.126478
G1 Y93.9 E0.606166
G1 X141.35 E56.126478
G1 Y97.95 E1.818498
G1 X16.35 E56.126478
G1 Y99.3 E0.606166
G1 X141.35 E56.126478
G1 Y103.35 E1.818498
G1 X16.35 E56.126478
G1 Y104.7 E0.606166
G1 X141.35 E56.126478
G1 Y108.75 E1.818498
G1 X16.35 E56.126478
G1 Y110.1 E0.606166
G1 X141.35 E56.126478
G1 Y114.15 E1.818498
G1 X16.35 E56.126478
G1 Y115.5 E0.606166
G1 X141.35 E56.126478
G1 Y119.55 E1.818498
G1 X16.35 E56.126478
G1 Y120.9 E0.606166
G1 X141.35 E56.126478
G1 Y124.95 E1.818498
G1 X16.35 E56.126478
G1 Y126.3 E0.606166
G1 X141.35 E56.126478
G1 Y130.35 E1.818498
M98 P"parkprep.g"
T0
M98 P"prime.g"
G0 F48000 X15.0 Y75.0 Z6.85
G1 F1500 Y79.05 E1.818498
G1 X140.0 E56.126478
G1 Y80.4 E0.606166
G1 X15.0 E56.126478
G1 Y84.45 E1.818498
G1 X140.0 E56.126478
G1 Y85.8 E0.606166
G1 X15.0 E56.126478
G1 Y89.85 E1.818498
G1 X140.0 E56.126478
G1 Y91.2 E0.606166
G1 X15.0 E56.126478
G1 Y95.25 E1.818498
G1 X140.0 E56.126478
G1 Y96.6 E0.606166
G1 X15.0 E56.126478
G1 Y100.65 E1.818498
G1 X140.0 E56.126478
G1 Y102.0 E0.606166
G1 X15.0 E56.126478
G1 Y106.05 E1.818498
G1 X140.0 E56.126478
G1 Y107.4 E0.606166
G1 X15.0 E56.126478
G1 Y111.45 E1.818498
G1 X140.0 E56.126478
G1 Y112.8 E0.606166
G1 X15.0 E56.126478
G1 Y116.85 E1.818498
G1 X140.0 E56.126478
G1 Y118.2 E0.606166
G1 X15.0 E56.126478
G1 Y122.25 E1.818498
G1 X140.0 E56.126478
G1 Y123.6 E0.606166
G1 X15.0 E56.126478
G1 Y127.65 E1.818498
G1 X140.0 E56.126478
G1 Y129.0 E0.606166
G1 X15.0 E56.126478
G1 F2100.0 E-1.25
G0 F10000.0 Z7.75
G0 F48000 Y75.0 Z7.75
G1 F1500 Y79.05 E1.818498
G1 X140.0 E56.126478
G1 Y80.4 E0.606166
G1 X15.0 E56.126478
G1 Y84.45 E1.818498
G1 X140.0 E56.126478
G1 Y85.8 E0.606166
G1 X15.0 E56.126478
G1 Y89.85 E1.818498
G1 X140.0 E56.126478
G1 Y91.2 E0.606166
G1 X15.0 E56.126478
G1 Y95.25 E1.818498
G1 X140.0 E56.126478
G1 Y96.6 E0.606166
G1 X15.0 E56.126478
G1 Y100.65 E1.818498
G1 X140.0 E56.126478
G1 Y102.0 E0.606166
G1 X15.0 E56.126478
G1 Y106.05 E1.818498
G1 X140.0 E56.126478
G1 Y107.4 E0.606166
G1 X15.0 E56.126478
G1 Y111.45 E1.818498
G1 X140.0 E56.126478
G1 Y112.8 E0.606166
G1 X15.0 E56.126478
G1 Y116.85 E1.818498
G1 X140.0 E56.126478
G1 Y118.2 E0.606166
G1 X15.0 E56.126478
G1 Y122.25 E1.818498
G1 X140.0 E56.126478
G1 Y123.6 E0.606166
G1 X15.0 E56.126478
G1 Y127.65 E1.818498
G1 X140.0 E56.126478
G1 Y129.0 E0.606166
G1 X15.0 E56.126478
M98 P"parkprep.g"
T1
M98 P"prime.g"
G0 F48000 X141.35 Y76.35 Z7.75
G1 F1500 X16.35 E56.126478
G1 Y77.7 E0.606166
G1 X141.35 E56.126478
G1 Y81.75 E1.818498
G1 X16.35 E56.126478
G1 Y83.1 E0.606166
G1 X141.35 E56.126478
G1 Y87.15 E1.818498
G1 X16.35 E56.126478
G1 Y88.5 E0.606166
G1 X141.35 E56.126478
G1 Y92.55 E1.818498
G1 X16.35 E56.126478
G1 Y93.9 E0.606166
G1 X141.35 E56.126478
G1 Y97.95 E1.818498
G1 X16.35 E56.126478
G1 Y99.3 E0.606166
G1 X141.35 E56.126478
G1 Y103.35 E1.818498
G1 X16.35 E56.126478
G1 Y104.7 E0.606166
G1 X141.35 E56.126478
G1 Y108.75 E1.818498
G1 X16.35 E56.126478
G1 Y110.1 E0.606166
G1 X141.35 E56.126478
G1 Y114.15 E1.818498
G1 X16.35 E56.126478
G1 Y115.5 E0.606166
G1 X141.35 E56.126478
G1 Y119.55 E1.818498
G1 X16.35 E56.126478
G1 Y120.9 E0.606166
G1 X141.35 E56.126478
G1 Y124.95 E1.818498
G1 X16.35 E56.126478
G1 Y126.3 E0.606166
G1 X141.35 E56.126478
G1 Y130.35 E1.818498
G1 F2100.0 E-1.25
G0 F10000.0 Z8.6501
G0 F48000 Y76.35 Z8.65
G1 F1500 X16.35 E56.126478
G1 Y77.7 E0.606166
G1 X141.35 E56.126478
G1 Y81.75 E1.818498
G1 X16.35 E56.126478
G1 Y83.1 E0.606166
G1 X141.35 E56.126478
G1 Y87.15 E1.818498
G1 X16.35 E56.126478
G1 Y88.5 E0.606166
G1 X141.35 E56.126478
G1 Y92.55 E1.818498
G1 X16.35 E56.126478
G1 Y93.9 E0.606166
G1 X141.35 E56.126478
G1 Y97.95 E1.818498
G1 X16.35 E56.126478
G1 Y99.3 E0.606166
G1 X141.35 E56.126478
G1 Y103.35 E1.818498
G1 X16.35 E56.126478
G1 Y104.7 E0.606166
G1 X141.35 E56.126478
G1 Y108.75 E1.818498
G1 X16.35 E56.126478
G1 Y110.1 E0.606166
G1 X141.35 E56.126478
G1 Y114.15 E1.818498
G1 X16.35 E56.126478
G1 Y115.5 E0.606166
G1 X141.35 E56.126478
G1 Y119.55 E1.818498
G1 X16.35 E56.126478
G1 Y120.9 E0.606166
G1 X141.35 E56.126478
G1 Y124.95 E1.818498
G1 X16.35 E56.126478
G1 Y126.3 E0.606166
G1 X141.35 E56.126478
G1 Y130.35 E1.818498
M98 P"parkprep.g"
T0
M98 P"prime.g"
G0 F48000 X15.0 Y75.0 Z8.65
G1 F1500 Y79.05 E1.818498
G1 X140.0 E56.126478
G1 Y80.4 E0.606166
G1 X15.0 E56.126478
G1 Y84.45 E1.818498
G1 X140.0 E56.126478
G1 Y85.8 E0.606166
G1 X15.0 E56.126478
G1 Y89.85 E1.818498
G1 X140.0 E56.126478
G1 Y91.2 E0.606166
G1 X15.0 E56.126478
G1 Y95.25 E1.818498
G1 X140.0 E56.126478
G1 Y96.6 E0.606166
G1 X15.0 E56.126478
G1 Y100.65 E1.818498
G1 X140.0 E56.126478
G1 Y102.0 E0.606166
G1 X15.0 E56.126478
G1 Y106.05 E1.818498
G1 X140.0 E56.126478
G1 Y107.4 E0.606166
G1 X15.0 E56.126478
G1 Y111.45 E1.818498
G1 X140.0 E56.126478
G1 Y112.8 E0.606166
G1 X15.0 E56.126478
G1 Y116.85 E1.818498
G1 X140.0 E56.126478
G1 Y118.2 E0.606166
G1 X15.0 E56.126478
G1 Y122.25 E1.818498
G1 X140.0 E56.126478
G1 Y123.6 E0.606166
G1 X15.0 E56.126478
G1 Y127.65 E1.818498
G1 X140.0 E56.126478
G1 Y129.0 E0.606166
G1 X15.0 E56.126478
G1 F2100.0 E-1.25
G0 F10000.0 Z9.55
G0 F48000 Y75.0 Z9.55
G1 F1500 Y79.05 E1.818498
G1 X140.0 E56.126478
G1 Y80.4 E0.606166
G1 X15.0 E56.126478
G1 Y84.45 E1.818498
G1 X140.0 E56.126478
G1 Y85.8 E0.606166
G1 X15.0 E56.126478
G1 Y89.85 E1.818498
G1 X140.0 E56.126478
G1 Y91.2 E0.606166
G1 X15.0 E56.126478
G1 Y95.25 E1.818498
G1 X140.0 E56.126478
G1 Y96.6 E0.606166
G1 X15.0 E56.126478
G1 Y100.65 E1.818498
G1 X140.0 E56.126478
G1 Y102.0 E0.606166
G1 X15.0 E56.126478
G1 Y106.05 E1.818498
G1 X140.0 E56.126478
G1 Y107.4 E0.606166
G1 X15.0 E56.126478
G1 Y111.45 E1.818498
G1 X140.0 E56.126478
G1 Y112.8 E0.606166
G1 X15.0 E56.126478
G1 Y116.85 E1.818498
G1 X140.0 E56.126478
G1 Y118.2 E0.606166
G1 X15.0 E56.126478
G1 Y122.25 E1.818498
G1 X140.0 E56.126478
G1 Y123.6 E0.606166
G1 X15.0 E56.126478
G1 Y127.65 E1.818498
G1 X140.0 E56.126478
G1 Y129.0 E0.606166
G1 X15.0 E56.126478
M98 P"parkprep.g"
T1
M98 P"prime.g"
G0 F48000 X141.35 Y76.35 Z9.55
G1 F1500 X16.35 E56.126478
G1 Y77.7 E0.606166
G1 X141.35 E56.126478
G1 Y81.75 E1.818498
G1 X16.35 E56.126478
G1 Y83.1 E0.606166
G1 X141.35 E56.126478
G1 Y87.15 E1.818498
G1 X16.35 E56.126478
G1 Y88.5 E0.606166
G1 X141.35 E56.126478
G1 Y92.55 E1.818498
G1 X16.35 E56.126478
G1 Y93.9 E0.606166
G1 X141.35 E56.126478
G1 Y97.95 E1.818498
G1 X16.35 E56.126478
G1 Y99.3 E0.606166
G1 X141.35 E56.126478
G1 Y103.35 E1.818498
G1 X16.35 E56.126478
G1 Y104.7 E0.606166
G1 X141.35 E56.126478
G1 Y108.75 E1.818498
G1 X16.35 E56.126478
G1 Y110.1 E0.606166
G1 X141.35 E56.126478
G1 Y114.15 E1.818498
G1 X16.35 E56.126478
G1 Y115.5 E0.606166
G1 X141.35 E56.126478
G1 Y119.55 E1.818498
G1 X16.35 E56.126478
G1 Y120.9 E0.606166
G1 X141.35 E56.126478
G1 Y124.95 E1.818498
G1 X16.35 E56.126478
G1 Y126.3 E0.606166
G1 X141.35 E56.126478
G1 Y130.35 E1.818498
G1 F2100.0 E-1.25
G0 F10000.0 Z10.4501
G0 F48000 Y76.35 Z10.45
G1 F1500 X16.35 E56.126478
G1 Y77.7 E0.606166
G1 X141.35 E56.126478
G1 Y81.75 E1.818498
G1 X16.35 E56.126478
G1 Y83.1 E0.606166
G1 X141.35 E56.126478
G1 Y87.15 E1.818498
G1 X16.35 E56.126478
G1 Y88.5 E0.606166
G1 X141.35 E56.126478
G1 Y92.55 E1.818498
G1 X16.35 E56.126478
G1 Y93.9 E0.606166
G1 X141.35 E56.126478
G1 Y97.95 E1.818498
G1 X16.35 E56.126478
G1 Y99.3 E0.606166
G1 X141.35 E56.126478
G1 Y103.35 E1.818498
G1 X16.35 E56.126478
G1 Y104.7 E0.606166
G1 X141.35 E56.126478
G1 Y108.75 E1.818498
G1 X16.35 E56.126478
G1 Y110.1 E0.606166
G1 X141.35 E56.126478
G1 Y114.15 E1.818498
G1 X16.35 E56.126478
G1 Y115.5 E0.606166
G1 X141.35 E56.126478
G1 Y119.55 E1.818498
G1 X16.35 E56.126478
G1 Y120.9 E0.606166
G1 X141.35 E56.126478
G1 Y124.95 E1.818498
G1 X16.35 E56.126478
G1 Y126.3 E0.606166
G1 X141.35 E56.126478
G1 Y130.35 E1.818498
M98 P"parkprep.g"
T0
M98 P"prime.g"
G0 F48000 X15.0 Y75.0 Z10.45
G1 F1500 Y79.05 E1.818498
G1 X140.0 E56.126478
G1 Y80.4 E0.606166
G1 X15.0 E56.126478
G1 Y84.45 E1.818498
G1 X140.0 E56.126478
G1 Y85.8 E0.606166
G1 X15.0 E56.126478
G1 Y89.85 E1.818498
G1 X140.0 E56.126478
G1 Y91.2 E0.606166
G1 X15.0 E56.126478
G1 Y95.25 E1.818498
G1 X140.0 E56.126478
G1 Y96.6 E0.606166
G1 X15.0 E56.126478
G1 Y100.65 E1.818498
G1 X140.0 E56.126478
G1 Y102.0 E0.606166
G1 X15.0 E56.126478
G1 Y106.05 E1.818498
G1 X140.0 E56.126478
G1 Y107.4 E0.606166
G1 X15.0 E56.126478
G1 Y111.45 E1.818498
G1 X140.0 E56.126478
G1 Y112.8 E0.606166
G1 X15.0 E56.126478
G1 Y116.85 E1.818498
G1 X140.0 E56.126478
G1 Y118.2 E0.606166
G1 X15.0 E56.126478
G1 Y122.25 E1.818498
G1 X140.0 E56.126478
G1 Y123.6 E0.606166
G1 X15.0 E56.126478
G1 Y127.65 E1.818498
G1 X140.0 E56.126478
G1 Y129.0 E0.606166
G1 X15.0 E56.126478
G1 F2100.0 E-1.25
G0 F10000.0 Z11.35
G0 F48000 Y75.0 Z11.35
G1 F1500 Y79.05 E1.818498
G1 X140.0 E56.126478
G1 Y80.4 E0.606166
G1 X15.0 E56.126478
G1 Y84.45 E1.818498
G1 X140.0 E56.126478
G1 Y85.8 E0.606166
G1 X15.0 E56.126478
G1 Y89.85 E1.818498
G1 X140.0 E56.126478
G1 Y91.2 E0.606166
G1 X15.0 E56.126478
G1 Y95.25 E1.818498
G1 X140.0 E56.126478
G1 Y96.6 E0.606166
G1 X15.0 E56.126478
G1 Y100.65 E1.818498
G1 X140.0 E56.126478
G1 Y102.0 E0.606166
G1 X15.0 E56.126478
G1 Y106.05 E1.818498
G1 X140.0 E56.126478
G1 Y107.4 E0.606166
G1 X15.0 E56.126478
G1 Y111.45 E1.818498
G1 X140.0 E56.126478
G1 Y112.8 E0.606166
G1 X15.0 E56.126478
G1 Y116.85 E1.818498
G1 X140.0 E56.126478
G1 Y118.2 E0.606166
G1 X15.0 E56.126478
G1 Y122.25 E1.818498
G1 X140.0 E56.126478
G1 Y123.6 E0.606166
G1 X15.0 E56.126478
G1 Y127.65 E1.818498
G1 X140.0 E56.126478
G1 Y129.0 E0.606166
G1 X15.0 E56.126478
M98 P"parkprep.g"
T1
M98 P"prime.g"
G0 F48000 X141.35 Y76.35 Z11.35
G1 F1500 X16.35 E56.126478
G1 Y77.7 E0.606166
G1 X141.35 E56.126478
G1 Y81.75 E1.818498
G1 X16.35 E56.126478
G1 Y83.1 E0.606166
G1 X141.35 E56.126478
G1 Y87.15 E1.818498
G1 X16.35 E56.126478
G1 Y88.5 E0.606166
G1 X141.35 E56.126478
G1 Y92.55 E1.818498
G1 X16.35 E56.126478
G1 Y93.9 E0.606166
G1 X141.35 E56.126478
G1 Y97.95 E1.818498
G1 X16.35 E56.126478
G1 Y99.3 E0.606166
G1 X141.35 E56.126478
G1 Y103.35 E1.818498
G1 X16.35 E56.126478
G1 Y104.7 E0.606166
G1 X141.35 E56.126478
G1 Y108.75 E1.818498
G1 X16.35 E56.126478
G1 Y110.1 E0.606166
G1 X141.35 E56.126478
G1 Y114.15 E1.818498
G1 X16.35 E56.126478
G1 Y115.5 E0.606166
G1 X141.35 E56.126478
G1 Y119.55 E1.818498
G1 X16.35 E56.126478
G1 Y120.9 E0.606166
G1 X141.35 E56.126478
G1 Y124.95 E1.818498
G1 X16.35 E56.126478
G1 Y126.3 E0.606166
G1 X141.35 E56.126478
G1 Y130.35 E1.818498
G1 F2100.0 E-1.25
G0 F10000.0 Z12.2501
G0 F48000 Y76.35 Z12.25
G1 F1500 X16.35 E56.126478
G1 Y77.7 E0.606166
G1 X141.35 E56.126478
G1 Y81.75 E1.818498
G1 X16.35 E56.126478
G1 Y83.1 E0.606166
G1 X141.35 E56.126478
G1 Y87.15 E1.818498
G1 X16.35 E56.126478
G1 Y88.5 E0.606166
G1 X141.35 E56.126478
G1 Y92.55 E1.818498
G1 X16.35 E56.126478
G1 Y93.9 E0.606166
G1 X141.35 E56.126478
G1 Y97.95 E1.818498
G1 X16.35 E56.126478
G1 Y99.3 E0.606166
G1 X141.35 E56.126478
G1 Y103.35 E1.818498
G1 X16.35 E56.126478
G1 Y104.7 E0.606166
G1 X141.35 E56.126478
G1 Y108.75 E1.818498
G1 X16.35 E56.126478
G1 Y110.1 E0.606166
G1 X141.35 E56.126478
G1 Y114.15 E1.818498
G1 X16.35 E56.126478
G1 Y115.5 E0.606166
G1 X141.35 E56.126478
G1 Y119.55 E1.818498
G1 X16.35 E56.126478
G1 Y120.9 E0.606166
G1 X141.35 E56.126478
G1 Y124.95 E1.818498
G1 X16.35 E56.126478
G1 Y126.3 E0.606166
G1 X141.35 E56.126478
G1 Y130.35 E1.818498
M98 P"parkprep.g"
T0
M98 P"prime.g"
G0 F48000 X15.0 Y75.0 Z12.25
G1 F1500 Y79.05 E1.818498
G1 X140.0 E56.126478
G1 Y80.4 E0.606166
G1 X15.0 E56.126478
G1 Y84.45 E1.818498
G1 X140.0 E56.126478
G1 Y85.8 E0.606166
G1 X15.0 E56.126478
G1 Y89.85 E1.818498
G1 X140.0 E56.126478
G1 Y91.2 E0.606166
G1 X15.0 E56.126478
G1 Y95.25 E1.818498
G1 X140.0 E56.126478
G1 Y96.6 E0.606166
G1 X15.0 E56.126478
G1 Y100.65 E1.818498
G1 X140.0 E56.126478
G1 Y102.0 E0.606166
G1 X15.0 E56.126478
G1 Y106.05 E1.818498
G1 X140.0 E56.126478
G1 Y107.4 E0.606166
G1 X15.0 E56.126478
G1 Y111.45 E1.818498
G1 X140.0 E56.126478
G1 Y112.8 E0.606166
G1 X15.0 E56.126478
G1 Y116.85 E1.818498
G1 X140.0 E56.126478
G1 Y118.2 E0.606166
G1 X15.0 E56.126478
G1 Y122.25 E1.818498
G1 X140.0 E56.126478
G1 Y123.6 E0.606166
G1 X15.0 E56.126478
G1 Y127.65 E1.818498
G1 X140.0 E56.126478
G1 Y129.0 E0.606166
G1 X15.0 E56.126478
G1 F2100.0 E-1.25
G0 F10000.0 Z13.15
G0 F48000 Y75.0 Z13.15
G1 F1500 Y79.05 E1.818498
G1 X140.0 E56.126478
G1 Y80.4 E0.606166
G1 X15.0 E56.126478
G1 Y84.45 E1.818498
G1 X140.0 E56.126478
G1 Y85.8 E0.606166
G1 X15.0 E56.126478
G1 Y89.85 E1.818498
G1 X140.0 E56.126478
G1 Y91.2 E0.606166
G1 X15.0 E56.126478
G1 Y95.25 E1.818498
G1 X140.0 E56.126478
G1 Y96.6 E0.606166
G1 X15.0 E56.126478
G1 Y100.65 E1.818498
G1 X140.0 E56.126478
G1 Y102.0 E0.606166
G1 X15.0 E56.126478
G1 Y106.05 E1.818498
G1 X140.0 E56.126478
G1 Y107.4 E0.606166
G1 X15.0 E56.126478
G1 Y111.45 E1.818498
G1 X140.0 E56.126478
G1 Y112.8 E0.606166
G1 X15.0 E56.126478
G1 Y116.85 E1.818498
G1 X140.0 E56.126478
G1 Y118.2 E0.606166
G1 X15.0 E56.126478
G1 Y122.25 E1.818498
G1 X140.0 E56.126478
G1 Y123.6 E0.606166
G1 X15.0 E56.126478
G1 Y127.65 E1.818498
G1 X140.0 E56.126478
G1 Y129.0 E0.606166
G1 X15.0 E56.126478
M98 P"parkprep.g"
T1
M98 P"prime.g"
G0 F48000 X141.35 Y76.35 Z13.15
G1 F1500 X16.35 E56.126478
G1 Y77.7 E0.606166
G1 X141.35 E56.126478
G1 Y81.75 E1.818498
G1 X16.35 E56.126478
G1 Y83.1 E0.606166
G1 X141.35 E56.126478
G1 Y87.15 E1.818498
G1 X16.35 E56.126478
G1 Y88.5 E0.606166
G1 X141.35 E56.126478
G1 Y92.55 E1.818498
G1 X16.35 E56.126478
G1 Y93.9 E0.606166
G1 X141.35 E56.126478
G1 Y97.95 E1.818498
G1 X16.35 E56.126478
G1 Y99.3 E0.606166
G1 X141.35 E56.126478
G1 Y103.35 E1.818498
G1 X16.35 E56.126478
G1 Y104.7 E0.606166
G1 X141.35 E56.126478
G1 Y108.75 E1.818498
G1 X16.35 E56.126478
G1 Y110.1 E0.606166
G1 X141.35 E56.126478
G1 Y114.15 E1.818498
G1 X16.35 E56.126478
G1 Y115.5 E0.606166
G1 X141.35 E56.126478
G1 Y119.55 E1.818498
G1 X16.35 E56.126478
G1 Y120.9 E0.606166
G1 X141.35 E56.126478
G1 Y124.95 E1.818498
G1 X16.35 E56.126478
G1 Y126.3 E0.606166
G1 X141.35 E56.126478
G1 Y130.35 E1.818498
G1 F2100.0 E-1.25
G0 F10000.0 Z14.0501
G0 F48000 Y76.35 Z14.05
G1 F1500 X16.35 E56.126478
G1 Y77.7 E0.606166
G1 X141.35 E56.126478
G1 Y81.75 E1.818498
G1 X16.35 E56.126478
G1 Y83.1 E0.606166
G1 X141.35 E56.126478
G1 Y87.15 E1.818498
G1 X16.35 E56.126478
G1 Y88.5 E0.606166
G1 X141.35 E56.126478
G1 Y92.55 E1.818498
G1 X16.35 E56.126478
G1 Y93.9 E0.606166
G1 X141.35 E56.126478
G1 Y97.95 E1.818498
G1 X16.35 E56.126478
G1 Y99.3 E0.606166
G1 X141.35 E56.126478
G1 Y103.35 E1.818498
G1 X16.35 E56.126478
G1 Y104.7 E0.606166
G1 X141.35 E56.126478
G1 Y108.75 E1.818498
G1 X16.35 E56.126478
G1 Y110.1 E0.606166
G1 X141.35 E56.126478
G1 Y114.15 E1.818498
G1 X16.35 E56.126478
G1 Y115.5 E0.606166
G1 X141.35 E56.126478
G1 Y119.55 E1.818498
G1 X16.35 E56.126478
G1 Y120.9 E0.606166
G1 X141.35 E56.126478
G1 Y124.95 E1.818498
G1 X16.35 E56.126478
G1 Y126.3 E0.606166
G1 X141.35 E56.126478
G1 Y130.35 E1.818498
M98 P"parkprep.g"
T0
M98 P"prime.g"
G0 F48000 X15.0 Y75.0 Z14.05
G1 F1500 Y79.05 E1.818498
G1 X140.0 E56.126478
G1 Y80.4 E0.606166
G1 X15.0 E56.126478
G1 Y84.45 E1.818498
G1 X140.0 E56.126478
G1 Y85.8 E0.606166
G1 X15.0 E56.126478
G1 Y89.85 E1.818498
G1 X140.0 E56.126478
G1 Y91.2 E0.606166
G1 X15.0 E56.126478
G1 Y95.25 E1.818498
G1 X140.0 E56.126478
G1 Y96.6 E0.606166
G1 X15.0 E56.126478
G1 Y100.65 E1.818498
G1 X140.0 E56.126478
G1 Y102.0 E0.606166
G1 X15.0 E56.126478
G1 Y106.05 E1.818498
G1 X140.0 E56.126478
G1 Y107.4 E0.606166
G1 X15.0 E56.126478
G1 Y111.45 E1.818498
G1 X140.0 E56.126478
G1 Y112.8 E0.606166
G1 X15.0 E56.126478
G1 Y116.85 E1.818498
G1 X140.0 E56.126478
G1 Y118.2 E0.606166
G1 X15.0 E56.126478
G1 Y122.25 E1.818498
G1 X140.0 E56.126478
G1 Y123.6 E0.606166
G1 X15.0 E56.126478
G1 Y127.65 E1.818498
G1 X140.0 E56.126478
G1 Y129.0 E0.606166
G1 X15.0 E56.126478
G1 F2100.0 E-1.25
G0 F10000.0 Z14.95
G0 F48000 Y75.0 Z14.95
G1 F1500 Y79.05 E1.818498
G1 X140.0 E56.126478
G1 Y80.4 E0.606166
G1 X15.0 E56.126478
G1 Y84.45 E1.818498
G1 X140.0 E56.126478
G1 Y85.8 E0.606166
G1 X15.0 E56.126478
G1 Y89.85 E1.818498
G1 X140.0 E56.126478
G1 Y91.2 E0.606166
G1 X15.0 E56.126478
G1 Y95.25 E1.818498
G1 X140.0 E56.126478
G1 Y96.6 E0.606166
G1 X15.0 E56.126478
G1 Y100.65 E1.818498
G1 X140.0 E56.126478
G1 Y102.0 E0.606166
G1 X15.0 E56.126478
G1 Y106.05 E1.818498
G1 X140.0 E56.126478
G1 Y107.4 E0.606166
G1 X15.0 E56.126478
G1 Y111.45 E1.818498
G1 X140.0 E56.126478
G1 Y112.8 E0.606166
G1 X15.0 E56.126478
G1 Y116.85 E1.818498
G1 X140.0 E56.126478
G1 Y118.2 E0.606166
G1 X15.0 E56.126478
G1 Y122.25 E1.818498
G1 X140.0 E56.126478
G1 Y123.6 E0.606166
G1 X15.0 E56.126478
G1 Y127.65 E1.818498
G1 X140.0 E56.126478
G1 Y129.0 E0.606166
G1 X15.0 E56.126478
M98 P"parkprep.g"
T1
M98 P"prime.g"
G0 F48000 X141.35 Y76.35 Z14.95
G1 F1500 X16.35 E56.126478
G1 Y77.7 E0.606166
G1 X141.35 E56.126478
G1 Y81.75 E1.818498
G1 X16.35 E56.126478
G1 Y83.1 E0.606166
G1 X141.35 E56.126478
G1 Y87.15 E1.818498
G1 X16.35 E56.126478
G1 Y88.5 E0.606166
G1 X141.35 E56.126478
G1 Y92.55 E1.818498
G1 X16.35 E56.126478
G1 Y93.9 E0.606166
G1 X141.35 E56.126478
G1 Y97.95 E1.818498
G1 X16.35 E56.126478
G1 Y99.3 E0.606166
G1 X141.35 E56.126478
G1 Y103.35 E1.818498
G1 X16.35 E56.126478
G1 Y104.7 E0.606166
G1 X141.35 E56.126478
G1 Y108.75 E1.818498
G1 X16.35 E56.126478
G1 Y110.1 E0.606166
G1 X141.35 E56.126478
G1 Y114.15 E1.818498
G1 X16.35 E56.126478
G1 Y115.5 E0.606166
G1 X141.35 E56.126478
G1 Y119.55 E1.818498
G1 X16.35 E56.126478
G1 Y120.9 E0.606166
G1 X141.35 E56.126478
G1 Y124.95 E1.818498
G1 X16.35 E56.126478
G1 Y126.3 E0.606166
G1 X141.35 E56.126478
G1 Y130.35 E1.818498
G1 F2100.0 E-1.25
G0 F10000.0 Z15.8501
G0 F48000 Y76.35 Z15.85
G1 F1500 X16.35 E56.126478
G1 Y77.7 E0.606166
G1 X141.35 E56.126478
G1 Y81.75 E1.818498
G1 X16.35 E56.126478
G1 Y83.1 E0.606166
G1 X141.35 E56.126478
G1 Y87.15 E1.818498
G1 X16.35 E56.126478
G1 Y88.5 E0.606166
G1 X141.35 E56.126478
G1 Y92.55 E1.818498
G1 X16.35 E56.126478
G1 Y93.9 E0.606166
G1 X141.35 E56.126478
G1 Y97.95 E1.818498
G1 X16.35 E56.126478
G1 Y99.3 E0.606166
G1 X141.35 E56.126478
G1 Y103.35 E1.818498
G1 X16.35 E56.126478
G1 Y104.7 E0.606166
G1 X141.35 E56.126478
G1 Y108.75 E1.818498
G1 X16.35 E56.126478
G1 Y110.1 E0.606166
G1 X141.35 E56.126478
G1 Y114.15 E1.818498
G1 X16.35 E56.126478
G1 Y115.5 E0.606166
G1 X141.35 E56.126478
G1 Y119.55 E1.818498
G1 X16.35 E56.126478
G1 Y120.9 E0.606166
G1 X141.35 E56.126478
G1 Y124.95 E1.818498
G1 X16.35 E56.126478
G1 Y126.3 E0.606166
G1 X141.35 E56.126478
G1 Y130.35 E1.818498
M98 P"parkprep.g"
T0
M98 P"prime.g"
G0 F48000 X15.0 Y75.0 Z15.85
G1 F1500 Y79.05 E1.818498
G1 X140.0 E56.126478
G1 Y80.4 E0.606166
G1 X15.0 E56.126478
G1 Y84.45 E1.818498
G1 X140.0 E56.126478
G1 Y85.8 E0.606166
G1 X15.0 E56.126478
G1 Y89.85 E1.818498
G1 X140.0 E56.126478
G1 Y91.2 E0.606166
G1 X15.0 E56.126478
G1 Y95.25 E1.818498
G1 X140.0 E56.126478
G1 Y96.6 E0.606166
G1 X15.0 E56.126478
G1 Y100.65 E1.818498
G1 X140.0 E56.126478
G1 Y102.0 E0.606166
G1 X15.0 E56.126478
G1 Y106.05 E1.818498
G1 X140.0 E56.126478
G1 Y107.4 E0.606166
G1 X15.0 E56.126478
G1 Y111.45 E1.818498
G1 X140.0 E56.126478
G1 Y112.8 E0.606166
G1 X15.0 E56.126478
G1 Y116.85 E1.818498
G1 X140.0 E56.126478
G1 Y118.2 E0.606166
G1 X15.0 E56.126478
G1 Y122.25 E1.818498
G1 X140.0 E56.126478
G1 Y123.6 E0.606166
G1 X15.0 E56.126478
G1 Y127.65 E1.818498
G1 X140.0 E56.126478
G1 Y129.0 E0.606166
G1 X15.0 E56.126478
G1 F2100.0 E-1.25
G0 F10000.0 Z16.75

; start END gcode

;Drop Bed
G91
G1 Z2 F1000
G90

; Drop off the tool
T-1

; Disable Mesh Compensation.
G29 S2

; Park
G1 X-20 Y200 F50000

M0

; end END gcode
