; Dock offsets, etc here
; x -4.6 y -31
; x -23.5 y -75.4

var dock_offsets = {3.2,-23.6}

if param.N == 0
    M98 P{directories.system^"/System Macros/Tool Change/tfree.g"} D1 X{var.dock_offsets[0]} Y{var.dock_offsets[1]}
elif param.N == 1
    M98 P{directories.system^"/System Macros/Tool Change/tpre.g"} D1 X{var.dock_offsets[0]} Y{var.dock_offsets[1]}
elif param.N == 2
    M98 P{directories.system^"/System Macros/Tool Change/tpost.g"} D1 X{var.dock_offsets[0]} Y{var.dock_offsets[1]}
