# Capability-Enabled High-Level Synthesis using CHERI

## Getting Started

First, make sure the repo is up to date:
```sh
make sync
```
Check your Xilinx Vitis directory `${YOUR_VITIS_DIR}`, you should see the following when run:
```
$ ls ${YOUR_VITIS_DIR}
DocNav  Model_Composer  Vitis  Vitis_HLS  Vivado  xic
```
Start with the docker container by running the following command under the repo:
```sh
make shell vhls=${YOUR_VITIS_DIR}
```

It may take long time to build the docker container for the first time. Once done, you should enter the docker container. To build the tool, run the following command:
```sh
cd /workspace
make build 
```
This should also take long time to finish. To test:
```sh
cd /workspace
make test 
```
