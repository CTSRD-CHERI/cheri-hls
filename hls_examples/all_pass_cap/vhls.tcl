open_project -reset test_prj
set_top hls_top 
add_files { test.cpp }
add_files -tb { test.cpp }
open_solution -reset "solution"
set_part {xcu250-figd2104-2L-e}
create_clock -period 4 -name default
config_compile -pipeline_loops 1
csim_design

