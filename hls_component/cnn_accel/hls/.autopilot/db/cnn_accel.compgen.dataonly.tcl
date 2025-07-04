# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
img_in { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
weights1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
bias1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
weights2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
bias2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
FC1_W { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
FC1_B { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 88
	offset_end 99
}
FC2_W { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 100
	offset_end 111
}
FC2_B { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 112
	offset_end 123
}
flag_out { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 124
	offset_end 135
}
ctrl { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 136
	offset_end 143
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


