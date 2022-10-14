# CNL_RISC-V - AFTAB (with Control-Flow Integrity security extensions)
## 32-bit RV32IM RISC-V core 

AFTAB is an implementation for the RV32IM RISC-V ISA and it is the first microprocessor 
architecture implementation inside the CNL_RISC-V project, which links together the 
CINI Cybersecurity National Laboratory and the University of Tehran.

AFTAB is an in-order, single-issue core with sequential stages and it has
full support for the base integer instruction set (RV32I) and multiplication instruction set
extension (RV32M). 
It implements a subset of the 1.9 privileged specification.

This version contains modification with respect to the original release ( at https://github.com/RHESGroup/aftab ). Modifications were done in order to support the CFI protection framework PROLEPSIS™ ( https://github.com/RHESGroup/prolepsis ). Applications have been added from the Embench IoT project ( https://github.com/embench/embench-iot ), and have been used for benchmarking the protection offered by the framework. 

All the experimental data are reported under the folder `/doc`.

## Documentation and Requirements

All the detailed documentation, as well as requirements for installing software toolchain and 
simulate AFTAB is in the manual, under the folder /doc.

## Running simulations

The software is built using CMake.
Create a build folder somewhere, e.g. in the `/sw` folder:

    mkdir build

Copy the `cmake-configure.aftab.gcc.sh` bash script to the build folder.
This script can be found in the `/sw` subfolder of the repository.

Modify the `cmake-configure.aftab.gcc.sh` script to your needs and execute it inside the build folder.
This will setup everything to perform simulations using ModelSim.

Inside the build folder, execute

    make vcompile

to compile the RTL libraries using ModelSim.

To run a simulation in the ModelSim GUI, use

    make helloworld.vsim

To run simulations in the ModelSim console, use

    make helloworld.vsimc

Replace `helloworld` with the test/application you want to run.

## Disclaimer and Copyright

All code and material is released under LGPL v3.0 ( https://www.gnu.org/licenses/lgpl-3.0.txt ). Copyright (C) 2022 RHES Group Torino.