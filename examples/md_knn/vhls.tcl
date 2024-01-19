open_project md_prj

add_files md.c
add_files -tb md.c

set_top hls_top 

open_solution -reset solution
set_part "xqzu29dr-ffrf1760-1-i"
create_clock -period 10
csim_design
csynth_design
cosim_design

exit
