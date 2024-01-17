open_project aes_syn

add_files aes.c 
add_files -tb aes.c 

set_top aes 

open_solution -reset solution
set_part "xqzu29dr-ffrf1760-1-i"
create_clock -period 10
csim_design
csynth_design
cosim_design

exit
