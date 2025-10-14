open_project fft_transpose_prj

set_top hls_top 

add_files fft.c
add_files -tb fft.c

set clock 10
set part "xqzu29dr-ffrf1760-1-i"

open_solution -reset solution
set_part $part
create_clock -period $clock
csim_design
csynth_design
cosim_design
exit
