; homez.g
; called to home the Z axis

G29 S2                        ; disable heightmap transform
;M98 P{directories.system^"/System Macros/Change Settings/apply_babysteps.g"}

if sensors.gpIn[0].value == 1
    if state.currentTool >= 0
        T-1
    else
        M18 C
        M291 P"Please manually dock the tool." R"Unknown tool picked up!" S2 T0

G91                           ; Relative mode
G1 H2 Z5 F3000                ; Lower the bed
G90                           ; back to absolute positioning

G0 X0 Y0 F{global.rapid_speed} ; move to probe position
G30                           ; probe the bed and set Z height

G91                           ; relative positioning
G1 Z10 F3000                    ; lift Z relative to current position
G90                           ; absolute positioning
