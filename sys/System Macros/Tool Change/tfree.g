;
M98 R0

M568 P{state.currentTool} A1	; set tool to standby temp
M106 S0							; turn off our print cooling fan

M98 P{directories.system^"/System Macros/Tool Change/dock.g"} D{param.D} X{param.X} Y{param.Y}
