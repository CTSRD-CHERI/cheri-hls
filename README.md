# Capability-Enabled High-Level Synthesis using CHERI

## Getting Started

First, check your Xilinx Vitis directory `${YOUR_VITIS_DIR}`, you should see the following when run:
```
$ ls ${YOUR_VITIS_DIR}
DocNav  Model_Composer  Vitis  Vitis_HLS  Vivado  xic
```
Here we use two version of Xilinx tools, 2023.1 for HLS and 2019.1 for Vivado (to be refactored in the future).

Start with the docker container by running the following command under the repo:
```sh
make shell vhls=${YOUR_VITIS_2023_DIR} vivado=${YOUR_VITIS_2019_DIR}
```

It may take long time to build the docker container for the first time. Once done, you should enter the docker container. To build the tool, run the following command:
```sh
cd /workspace
make build 
```
This should also take long time to finish. 


## Test bare metal examples

To test:
```sh
cd /workspace
cheri-hls.py -t vect_mult -s -d --to 1000s 
```

## Test examples with operating systems

TODO
