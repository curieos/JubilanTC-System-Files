; Parameters for the machine kinematics
if !exists(global.machine_params)
	; --- Do not modify the values here ---
	global machine_params = null
	global rapid_speed = 0
	global safe_speed = 0
	global tool_heater_timeout = 0
	global bed_heater_timeout = 0
    global dock_positions = {{0,0}, {0,0}, {0,0}, {0,0}}
	global dock_clearance = 0
	global dock_check_clearance = 0

; --- Modify values below here ---


set global.rapid_speed = 300 * 60
set global.safe_speed = 75 * 60

set global.tool_heater_timeout = 5 * 60
set	global.bed_heater_timeout = 600 * 60

set global.dock_positions = {{-157.0, 140.5}, {-67.0, 140.5}, {0,0}, {0,0}}

set global.dock_clearance = 50
set global.dock_check_clearance = 10
