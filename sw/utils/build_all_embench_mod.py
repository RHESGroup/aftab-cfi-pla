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
"wikisort",
]

for bench in benchmarks:
	os.chdir(prolepsis_path+"/risc-v-cfi-tool/riscv32-benchmarks-customtoolchain/src/"+bench)
	os.system("cp "+bench+"_mod.s "+aftab_path+"/sw/apps/embench_mod/"+bench+"_mod")
	os.system("cp "+bench+".list_config_mem_words.txt "+aftab_path+"/sw/apps/embench_mod/"+bench+"_mod")
	os.chdir(aftab_path+"/sw/build")
	os.system("make "+bench+"_mod")
	print(bench)
