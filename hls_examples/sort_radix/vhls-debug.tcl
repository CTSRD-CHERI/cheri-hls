open_project sort_radix_prj

set_top hls_top 

add_files sort.cpp
add_files -tb sort.cpp

set clock 10
set part "xqzu29dr-ffrf1760-1-i"


open_solution -reset solution
set_part $part
create_clock -period $clock

csim_design
 


exit
