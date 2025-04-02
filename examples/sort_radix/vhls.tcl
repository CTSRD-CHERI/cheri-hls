open_project -reset sort_radix_baseline_prj
set_top hls_top 
add_files { sort_radix.c }
add_files -tb { sort_radix.c }
open_solution -reset "solution"
set_part {xcu250-figd2104-2L-e}
create_clock -period 4 -name default
config_bind -effort high
config_compile -pipeline_loops 1

csim_design 
csynth_design
cosim_design

export_design -flow syn -format ip_catalog
