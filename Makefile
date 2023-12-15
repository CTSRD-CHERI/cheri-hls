user=$(if $(shell id -u),$(shell id -u),9001)
group=$(if $(shell id -g),$(shell id -g),1000)
vhls=/home/jc2489/tools/Xilinx/2023.1
vivado=/home/jc2489/tools/Xilinx/2019.1

# Build Docker container
build-docker: 
	@docker build --build-arg UID=$(user) --build-arg GID=$(group) --build-arg HLS_PATH=$(vhls) --build-arg VIVADO_PATH=$(vivado) -f Docker/Dockerfile --tag chls-ubuntu2204 Docker

shell: build-docker
	@docker run -it --shm-size 256m --hostname chls-ubuntu2204 -u $(user) -w /workspace -v $(vhls):$(vhls) -v $(vivado):$(vivado) -v /home/$(shell whoami)/.gitconfig:/home/dev-user/.gitconfig -v /home/$(shell whoami)/.ssh:/home/dev-user/.ssh -v $(shell pwd):/workspace chls-ubuntu2204:latest /bin/bash


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
	@rm -rf hls_extract/build
	@rm -rf BESSPIN-GFE 
