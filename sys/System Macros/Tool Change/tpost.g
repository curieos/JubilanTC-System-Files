;
M98 R0

M703 ; load filament config

;heatup
M116 P{state.currentTool}

; restore print cooling fan speed
M106 R1
