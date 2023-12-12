user=$(if $(shell id -u),$(shell id -u),9001)
group=$(if $(shell id -g),$(shell id -g),1000)
vhls=/home/jc2489/tools/Xilinx/2023.1

# Make sure the repo is up to date
sync:
	@git submodule sync
	@git submodule update --init --recursive

# Build Docker container
build-docker: 
	@docker build --build-arg UID=$(user) --build-arg GID=$(group) --build-arg VHLS_PATH=$(vhls) -f Docker/Dockerfile --tag chls-ubuntu2204 Docker

shell: build-docker
	@docker run -it --shm-size 256m --hostname chls-ubuntu2204 -u $(user) -w /workspace -v $(vhls):$(vhls) -v /home/$(shell whoami)/.gitconfig:/home/dev-user/.gitconfig -v /home/$(shell whoami)/.ssh:/home/dev-user/.ssh -v $(shell pwd):/workspace chls-ubuntu2204:latest /bin/bash

# This is a temporary solution because of an unexpected error on bar
bar: 
	sudo chown -R dev-user:dev-user /home/dev-user
	bash

build: build-cheri build-hls 

build-cheri:
	@bash scripts/build-cheri.sh
	@bash scripts/build-flute-nocap.sh
	@bash scripts/build-flute.sh

build-hls:
	@bash scripts/build-hls-extract.sh

test:
	@bash scripts/test-cheri-hls.sh

clean:
	@rm -rf cheri-tools
	@rm -rf cheri
	@rm -rf hls_extract/build
