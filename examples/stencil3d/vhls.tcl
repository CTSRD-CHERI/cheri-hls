open_project -reset stencil3d_baseline_prj
set_top hls_top 
add_files { stencil3d.c }
add_files -tb { stencil3d.c }
open_solution -reset "solution"
set_part {xqzu29dr-ffrf1760-1-i}
create_clock -period 4 -name default
config_bind -effort high
config_compile -pipeline_loops 1

csim_design 
csynth_design
cosim_design

export_design -flow syn -format ip_catalog
