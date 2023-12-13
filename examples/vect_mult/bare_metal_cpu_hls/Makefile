RV_ABI=l64pc128
RV_ARCH=rv64imaxcheri

base:
	riscv64-unknown-freebsd-cc -g -O0 -nostdlib -mno-relax -Tlink.ld -mcmodel=medany init_nocap.S main.c xvect_mult.c xvect_mult_linux.c xvect_mult_sinit.c
	riscv64-unknown-freebsd-objdump -d --mattr=+m,+a,+f,+d,+c,+xcheri a.out  > a.dump
	../../../Flute/Tests/elf_to_hex/elf_to_hex a.out ../../../Flute/builds/RV64ACIMUxCHERI_Flute_verilator_nocap/Mem.hex
	(cd ../../../Flute/builds/RV64ACIMUxCHERI_Flute_verilator_nocap/ && ./exe_HW_sim +v1) | tee sim.log

cheri:
	riscv64-unknown-freebsd-cc -nostdlib -mno-relax -Tlink.ld -mcmodel=medany -mabi=$(RV_ABI) -march=$(RV_ARCH) init.S main.c xvect_mult.c xvect_mult_linux.c xvect_mult_sinit.c -DCAP
	riscv64-unknown-freebsd-objdump -d --mattr=+m,+a,+f,+d,+c,+xcheri a.out  > a.dump
	../../../Flute/Tests/elf_to_hex/elf_to_hex a.out ../../../Flute/builds/RV64ACIMUxCHERI_Flute_verilator_nocap/Mem.hex
	(cd ../../../Flute/builds/RV64ACIMUxCHERI_Flute_verilator_nocap/ && ./exe_HW_sim +v2) | tee sim.log

capchecker:
	@riscv64-unknown-freebsd-cc -g -O0 -nostdlib -mno-relax -Tlink.ld -mcmodel=medany -mabi=$(RV_ABI) -march=$(RV_ARCH) init.S main.c xvect_mult.c xvect_mult_linux.c xvect_mult_sinit.c -DCAP -DCAPCHECKER
	@riscv64-unknown-freebsd-objdump -d --mattr=+m,+a,+f,+d,+c,+xcheri a.out  > a.dump
	@../../../Flute/Tests/elf_to_hex/elf_to_hex a.out ../../../Flute/builds/RV64ACIMUxCHERI_Flute_verilator_cap/Mem.hex
	@(cd ../../../Flute/builds/RV64ACIMUxCHERI_Flute_verilator_cap/ && timeout 4s ./exe_HW_sim +v2) | tee sim.log
	@grep -rnw sim.log -e instret > instret.log
	@grep -rn instret.log -e "800000f4" || (echo "\n-----------------------------\nProgram execution failed\n-----------------------------\n"&& exit 1) 
	@echo "-----------------------------"	
	@echo "Program executed successfully"	
	@echo "-----------------------------"	

cc: capchecker
	@echo "Simulation finished"	

clean:
	rm *.log *.dump
