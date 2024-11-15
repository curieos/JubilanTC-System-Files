G90 ; Try to lock tool in case we have on on
G92 C0
G1 C6 H2 F5000
G1 C120 H1 F5000
M400

if sensors.gpIn[0].value == 1
    M18 C
    M291 R"Intervention Required" P"Tool on toolhead. Please return it to its post and restore the twist lock position." S3
    
T-1 P0

G91
G1 C-360 F9000 H1
G1 C6 F600
G1 C-15 F600 H1
G90
