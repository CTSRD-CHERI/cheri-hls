vhls=/home/jc2489/tools/Xilinx/2023.1
vivado=/home/jc2489/tools/Xilinx/2019.1
# To avoid disk space limit
extra_ssd=/local/sata

# Build Docker container
build-docker: 
	@docker build \
        --build-arg HLS_PATH=$(vhls) \
        --build-arg VIVADO_PATH=$(vivado) \
        -f Docker/Dockerfile \
        --tag chls-ubuntu2204 Docker

shell: 
	@docker run \
        -it --shm-size 256m \
        --hostname chls-ubuntu2204 \
        -w /workspace \
        -v $(vhls):$(vhls) \
        -v $(vivado):$(vivado) \
        -v /home/$(shell whoami)/.gitconfig:/root/.gitconfig \
        -v /home/$(shell whoami)/.ssh:/root/.ssh \
        -v $(extra_ssd):$(extra_ssd) \
        -v $(shell pwd):/workspace \
        chls-ubuntu2204:latest /bin/bash

# Make sure the repo is up to date
sync:
	@git submodule sync
	@git submodule update --init --recursive

# Build CHERI HLS 
build: build-cheri build-hls 

build-cheri:
	@bash scripts/build-cheri.sh
	@bash scripts/get-flute.sh

build-hls:
	@bash scripts/build-hls-extract.sh

# Run regression test 
test:
	@bash scripts/test-cheri-hls.sh

clean:
	@rm -rf cheri-tools
	@rm -rf cheri
	@rm -rf cheri-qemu-tools
	@rm -rf cheri-qemu
	@rm -rf hls_extract/build
	@rm -rf BESSPIN-GFE
