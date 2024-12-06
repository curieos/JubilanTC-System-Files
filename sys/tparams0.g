; Dock offsets, etc here
; x -4.6 y -31
; x -23.5 y -75.4

var dock_offsets = {3.2,-23.6}

if param.N == 0
    M593 P"none"
    M98 P{directories.system^"/System Macros/Tool Change/tfree.g"} D0 X{var.dock_offsets[0]} Y{var.dock_offsets[1]}
elif param.N == 1
    M98 P{directories.system^"/System Macros/Tool Change/tpre.g"} D0 X{var.dock_offsets[0]} Y{var.dock_offsets[1]}
elif param.N == 2
    M98 P{directories.system^"/System Macros/Tool Change/tpost.g"} D0 X{var.dock_offsets[0]} Y{var.dock_offsets[1]}
    M593 P"zvd" F39.0 S0.1
