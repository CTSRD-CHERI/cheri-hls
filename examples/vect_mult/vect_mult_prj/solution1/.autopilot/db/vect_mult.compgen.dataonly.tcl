# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
size { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
a { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 24
	offset_end 35
}
b { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 36
	offset_end 47
}
c { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 48
	offset_end 59
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


