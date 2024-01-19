open_project sort_prj

set_top hls_top 

add_files sort.c
add_files -tb sort.c

set clock 10
set part "xqzu29dr-ffrf1760-1-i"


open_solution solution
set_part $part
create_clock -period $clock

csim_design
csynth_design 
cosim_design

exit
