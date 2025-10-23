open_project backprop_prj

add_files backprop.cpp
add_files -tb backprop.cpp


set_top hls_top 
open_solution -reset solution

set_part "xqzu29dr-ffrf1760-1-i"
create_clock -period 10

csim_design
csynth_design
cosim_design

export_design -flow syn -format ip_catalog
exit
