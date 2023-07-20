# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
x_rowptr { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
x_colind { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
x_data { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
y_rowptr { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
y_colind { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
y_data { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
z_rowptr { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 88
	offset_end 99
}
z_colind { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 100
	offset_end 111
}
z_data { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 112
	offset_end 123
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
}
dict set axilite_register_dict control $port_control


