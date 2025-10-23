open_project md_grid_prj

add_files md.cpp
add_files -tb md.cpp 

set_top hls_top 

open_solution -reset solution
set_part "xqzu29dr-ffrf1760-1-i"
create_clock -period 10
csim_design
csynth_design
cosim_design

export_design -flow syn -format ip_catalog
exit
