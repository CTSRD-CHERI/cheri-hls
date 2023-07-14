user=$(if $(shell id -u),$(shell id -u),9001)
group=$(if $(shell id -g),$(shell id -g),1000)

# Make sure the repo is up to date
sync:
	git submodule sync
	git submodule update --init --recursive

# Build Docker container
build-docker: 
	 (cd docker; docker build --build-arg UID=$(USER) --build-arg GID=$(GROUP) . --tag chls-ubuntu2204)

shell: build-docker
	docker run -it --shm-size 256m --hostname chls-ubuntu2204 -u $(USER) -v /home/$(shell whoami)/.ssh:/home/dev-user/.ssh  -v $(shell pwd):/workspace chls-ubuntu2204:latest /bin/bash

# build:

# clean:
