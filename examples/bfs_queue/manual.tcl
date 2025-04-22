open_project -reset bfs_queue_prj
set_top hls_top 
add_files { bfs_queue_baseline.cpp }
add_files -tb { bfs_queue_baseline.cpp }
open_solution -reset "solution"
set_part {xcu250-figd2104-2L-e}
create_clock -period 4 -name default
config_bind -effort high
config_compile -pipeline_loops 1

# Call GCC and see if it works in software, including the ap_int header file! 
csim_design 
# Comment the following two if I want to verify in software 
# Generate  Verilog for HLS code
# set ::LLVM_CUSTOM_CMD {$LLVM_CUSTOM_OPT -mem2reg $LLVM_CUSTOM_INPUT -o /home/jhyc3/test.bc; $LLVM_CUSTOM_OPT -no-warn /home/jhyc3/test.bc -o $LLVM_CUSTOM_OUTPUT}

#set ::LLVM_CUSTOM_CMD {$LLVM_CUSTOM_OPT ... -mem2reg /home/jhyc3/test.ll -o 
csynth_design
# Run h/w simulation and compare with the software (gcc) results
cosim_design

export_design -flow syn -format ip_catalog
