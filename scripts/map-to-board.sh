# Temporary script to record commands to map bistream on the board:

BLUESPEC 

cd src_ssTIH -j2
./setup_soc
./build.sh
./get_ppa




python3 vcu118-run.py \
  --bitfile /home/jc2489/design_1.bit \
  --ltxfile /home/jc2489/design_1.ltx \
  --bios /home/jc2489/bbl-gfe-riscv64-purecap \
  --kernel /home/jc2489/kernel-riscv64-purecap.CHERI-NOCAPREVOKE-GFE.full \
  --openocd ~pdr32/bin/openocd \
  --gdb ~pdr32/bin/criscv-gdb

# Maybe want to add ssh key to authorized_keys under /root/.ssh

# back to cat
# scp jc2489@128.232.81.162:/home/jc2489/work/cheri-hls/a.out .
# ssh root@192.168.143.19

