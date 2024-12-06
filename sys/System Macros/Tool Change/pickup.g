; D: Dock Index
; X: Dock X Offset
; Y: Dock Y Offset

M98 R0

var dock_x = global.dock_positions[param.D][0] + param.X
var dock_y = global.dock_positions[param.D][1] + param.Y

; global.dock_check_clearance
; global.dock_clearance

; move in front of dock
G90
G53 G1 X{var.dock_x} Y{var.dock_y - global.dock_clearance} F{global.rapid_speed}
M400

; move to pickup position
G53 G1 Y{var.dock_y - global.dock_check_clearance} F{50*60}
G53 G1 Y{var.dock_y} F{20*60}
M400

; check pickup switch
if sensors.gpIn[0].value == 0
    echo "tool not on"

; engage tool lock
M98 P{directories.system^"/System Macros/Tool Change/tool_lock.g"}

; based on tool offsets, lower bed
G91
G1 Z{-tools[state.nextTool].offsets[2]}
G90

; back off dock
G53 G1 Y{var.dock_y - global.dock_check_clearance} F{20*60}
M400

; check pickup switch
if sensors.gpIn[0].value == 0
    echo "tool not on"

; check docking switch when that's a thing

; fully backoff with tool
G53 G1 Y{var.dock_y - global.dock_clearance - tools[state.nextTool].offsets[1]} F{50*60}

; check pickup switch again?

