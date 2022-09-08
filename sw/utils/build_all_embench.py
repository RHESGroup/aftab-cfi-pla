import os
import sys

prolepsis_path = "/media/sf_Shared/prolepsis"
aftab_path = "/media/sf_Shared/aftab-cfi-pla"

benchmarks = [
"aha-mont64",
"crc32",
"cubic",
"edn",
"huffbench",
"matmult-int",
"md5sum",
"minver",
"nbody",
"nettle-aes",
"nettle-sha256",
"nsichneu",
"picojpeg",
"primecount",
"qrduino",
"sglib-combined",
"slre",
"st",
"statemate",
"tarfind",
"ud",
"wikisort"
]

os.system("rm -rf "+prolepsis_path+"/risc-v-cfi-tool/riscv32-benchmarks-customtoolchain")
os.system("mkdir "+prolepsis_path+"/risc-v-cfi-tool/riscv32-benchmarks-customtoolchain")
os.system("mkdir "+prolepsis_path+"/risc-v-cfi-tool/riscv32-benchmarks-customtoolchain/src")

for bench in benchmarks:
	os.chdir(aftab_path+"/sw/build")
	os.system("make "+bench)
	os.chdir("apps/embench/"+bench)
	os.system("cp "+bench+".elf "+bench)	
	os.system("mkdir "+prolepsis_path+"/risc-v-cfi-tool/riscv32-benchmarks-customtoolchain/src/"+bench)
	os.system("mv "+bench+" "+prolepsis_path+"/risc-v-cfi-tool/riscv32-benchmarks-customtoolchain/src/"+bench+"/")
	print(bench)
