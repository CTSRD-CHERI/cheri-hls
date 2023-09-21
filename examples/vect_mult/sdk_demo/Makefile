.PHONY: all
all:
	riscv64-unknown-freebsd-cc -nostdlib -mno-relax -Tlink.ld -mcmodel=medany init.S main.c xvect_mult.c xvect_mult_linux.c xvect_mult_sinit.c
	riscv64-unknown-elf-objdump -d a.out > a.dump
	../../../Flute/Tests/elf_to_hex/elf_to_hex a.out ../../../Flute/builds/RV64ACIMUxCHERI_Flute_verilator/Mem.hex
	(cd ../../../Flute/builds/RV64ACIMUxCHERI_Flute_verilator/ && ./exe_HW_sim +v1) | tee sim.log

check:
	grep -rnw sim.log -e instret > instret.log
	grep -rn instret.log -e "00513" 
