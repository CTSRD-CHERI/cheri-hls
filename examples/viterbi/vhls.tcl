open_project viterbi_prj

add_files viterbi.c
add_files -tb viterbi.c 

set_top hls_top 

open_solution -reset solution
set_part "xqzu29dr-ffrf1760-1-i"
create_clock -period 10

csim_design
csynth_design
cosim_design 

exit
