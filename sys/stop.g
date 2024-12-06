; stop.g
; called when M0 (Stop) is run (e.g. when a print from SD card is cancelled)

; Lower the bed for accessiblity
G91
G0 Z15 F3000
G90

; Deselect the active tool
T-1

; Turn off all tools
M568 P0 A0
M568 P1 A0

; Disable Mesh Compensation.
G29 S2


