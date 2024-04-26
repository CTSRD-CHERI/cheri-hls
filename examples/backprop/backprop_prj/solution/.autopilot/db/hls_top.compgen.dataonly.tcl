# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
sets { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
xweights1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 24
	offset_end 35
}
xweights2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 36
	offset_end 47
}
xweights3 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 48
	offset_end 59
}
xbiases1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 60
	offset_end 71
}
xbiases2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 72
	offset_end 83
}
xbiases3 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 84
	offset_end 95
}
xtraining_data { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 96
	offset_end 107
}
xtraining_targets { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 108
	offset_end 119
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


