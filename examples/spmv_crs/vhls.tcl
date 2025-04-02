open_project -reset spmv_crs_baseline_prj
set_top hls_top 
add_files { spmv_crs.c }
add_files -tb { spmv_crs.c }
open_solution -reset "solution"
set_part {xcu250-figd2104-2L-e}
create_clock -period 4 -name default
config_bind -effort high
config_compile -pipeline_loops 1

csim_design 
csynth_design
cosim_design

export_design -flow syn -format ip_catalog
