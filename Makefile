user=$(if $(shell id -u),$(shell id -u),9001)
group=$(if $(shell id -g),$(shell id -g),1000)

# Make sure the repo is up to date
sync:
	git submodule sync
	git submodule update --init --recursive

# Build Docker container
build-docker: 
	(cd Docker; docker build --build-arg UID=$(user) --build-arg GID=$(group) --build-arg VHLS_PATH=$(vhls) . --tag cheri-hls-ubuntu2204)

shell: build-docker
	docker run -it --shm-size 256m --hostname cheri-hls-ubuntu2204 -u $(user) -v $(vhls):$(vhls) -v $(shell pwd):/workspace cheri-hls-ubuntu2204:latest /bin/bash 

# build:

# clean:
