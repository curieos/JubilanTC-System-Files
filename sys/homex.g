; homex.g
; called to home the X axis
;
; generated by RepRapFirmware Configuration Tool v3.3.16 on Tue Oct 24 2023 12:21:46 GMT-0500 (Central Daylight Time)
G91                 ; relative positioning
G1 H2 Z5 F3000      ; lift Z relative to current position
G1 H1 X-368.5 F1800 ; move quickly to X axis endstop and stop there (first pass)
G1 X5 F6000         ; go back a few mm
G1 H1 X-368.5 F360  ; move slowly to X axis endstop once more (second pass)
G1 H2 Z-5 F3000     ; lower Z again
G90                 ; absolute positioning

