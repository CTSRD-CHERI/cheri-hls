open_project -reset vect_mult_prj
set_top vect_mult 
add_files { vect_mult.cpp }
add_files -tb { vect_mult.cpp }
open_solution -reset "solution1"
set_part {xcu250-figd2104-2L-e}
create_clock -period 4 -name default
config_bind -effort high
config_compile -pipeline_loops 1
csim_design
csynth_design
cosim_design
