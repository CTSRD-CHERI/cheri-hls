open_project sort_merge_prj

add_files sort.cpp
add_files -tb sort.cpp

set_top hls_top 

open_solution -reset solution
set_part "xqzu29dr-ffrf1760-1-i"
create_clock -period 10
csim_design
csynth_design
cosim_design

exit
