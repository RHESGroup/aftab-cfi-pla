#!/bin/bash

#export PATH=/compilerpath/:${PATH}

OBJDUMP=`which riscv32-unknown-elf-objdump`
OBJCOPY=`which riscv32-unknown-elf-objcopy`

COMPILER=`which riscv32-unknown-elf-gcc`
RANLIB=`which riscv32-unknown-elf-ranlib`

DEFAULT_SIM_TIME_NS=1000000

VSIM=`which vsim`

TARGET_C_FLAGS="-O3 -nostartfiles"

# # if you want to have compressed instructions, set this to 1
# RVC=0

# # if you are using zero-riscy, set this to 1, otherwise it uses RISCY
# USE_ZERO_RISCY=1

# # set this to 1 if you are using the Floating Point extensions for riscy only
# RISCY_RV32F=0

# # zeroriscy with the multiplier
# ZERO_RV32M=1
# # zeroriscy with only 16 registers
# ZERO_RV32E=0

# GCC_MARCH="RV32IM"
GCC_MARCH="rv32im"
# #compile arduino lib
# ARDUINO_LIB=0

# PULP_GIT_DIRECTORY=../../
AFTAB_GIT_DIRECTORY=../../
# SIM_DIRECTORY="$PULP_GIT_DIRECTORY/vsim"
SIM_DIRECTORY="$AFTAB_GIT_DIRECTORY/vsim"
# #insert here your post-layout netlist if you are using IMPERIO
# PL_NETLIST=""

cmake "$AFTAB_GIT_DIRECTORY"/sw/ \
    -DAFTAB_MODELSIM_DIRECTORY="$SIM_DIRECTORY" \
    -DCMAKE_C_COMPILER="$COMPILER" \
    -DGCC_MARCH="$GCC_MARCH" \
    -DCMAKE_C_FLAGS="$TARGET_C_FLAGS" \
    -DCMAKE_OBJCOPY="$OBJCOPY" \
    -DCMAKE_OBJDUMP="$OBJDUMP" \
    -DSIM_TIME_NS:STRING="${1:-$DEFAULT_SIM_TIME_NS}"

# Add -G "Ninja" to the cmake call above to use ninja instead of make
