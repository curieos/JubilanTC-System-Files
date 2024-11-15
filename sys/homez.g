; homez.g
; called to home the Z axis

G29 S2                        ; disable heightmap transform
;M98 P{directories.system^"/System Macros/Change Settings/apply_babysteps.g"}

G91                           ; Relative mode
G1 H2 Z5 F5000                ; Lower the bed
G90                           ; back to absolute positioning

G0 X0 Y0 F{global.rapid_speed} ; move to probe position
G30                           ; probe the bed and set Z height

; Uncomment the following lines to lift Z after probing
G91                           ; relative positioning
G1 Z5 F100                    ; lift Z relative to current position
G90                           ; absolute positioning
