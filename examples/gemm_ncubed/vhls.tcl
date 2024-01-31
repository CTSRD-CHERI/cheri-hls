open_project gemm_ncubed_prj

add_files gemm.c
add_files -tb gemm.c

set_top hls_top

open_solution -reset solution
set_part "xqzu29dr-ffrf1760-1-i"
create_clock -period 10
csim_design
csynth_design
cosim_design

exit
