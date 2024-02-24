open_project spmv_crs_prj

add_files spmv.c
add_files -tb spmv.c

set_top hls_top 

open_solution -reset solution
set_part "xqzu29dr-ffrf1760-1-i"
create_clock -period 10
csim_design
csynth_design
cosim_design 

exit
