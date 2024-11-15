; D: Dock Index
; X: Dock X Offset
; Y: Dock Y Offset

M98 R0

var dock_x = global.dock_positions[param.D][0] + param.X
var dock_y = global.dock_positions[param.D][1] + param.Y

echo var.dock_x, var.dock_y

; move in front of dock
G90
G53 G1 X{var.dock_x} Y{var.dock_y - global.dock_clearance} F{global.rapid_speed}
M400

; move to docking position position
G53 G1 Y{var.dock_y - global.dock_check_clearance} F{50*60}
G53 G1 Y{var.dock_y} F{20*60}
M400

; disengage tool lock
M98 P{directories.system^"/System Macros/Tool Change/tool_unlock.g"}

; check docking switch when that's a thing

; back off dock
G53 G1 Y{var.dock_y - global.dock_check_clearance} F{20*60}
M400

; check pickup switch
if sensors.gpIn[0].value == 1
    echo "tool still on"
; check docking switch when that's a thing

; fully backoff from tool
G53 G1 Y{var.dock_y - global.dock_clearance} F{50*60}
