open_project spmv_crs_prj

add_files spmv.cpp
add_files -tb spmv.cpp

set_top hls_top 

open_solution -reset solution
set_part "xqzu29dr-ffrf1760-1-i"
create_clock -period 10
csim_design

 

exit
