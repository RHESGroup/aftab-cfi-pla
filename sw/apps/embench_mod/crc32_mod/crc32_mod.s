	.text
	.globl  main
	.type  main, @function

benchmark_body.isra.0:
	blez	a0,lab0
	addi	sp,sp,-16
	sw	s1,4(sp)
	sw	s2,0(sp)
	sw	ra,12(sp)
	sw	s0,8(sp)
	mv	s2,a0
	li	s1,0
lab2: 	jal	ra,srand_beebs
	li	s0,1024
lab1: 	jal	ra,rand_beebs
	bnez	s0,lab1
	addi	s1,s1,1
	bne	s1,s2,lab2
	lw	ra,12(sp)
	lw	s0,8(sp)
	lw	s1,4(sp)
	lw	s2,0(sp)
	addi	sp,sp,16
	cfes 0xb2b58
	ret
lab0:	cfes 0x34a37
 	ret
benchmark_body.constprop.0:
	addi	sp,sp,-32
	sw	s2,16(sp)
	lui	s2,0x100
	sw	s3,12(sp)
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	li	s3,170
	addi	s2,s2,16 # 100010 <crc_32_tab>
lab4: 	jal	ra,srand_beebs
	li	s1,1024
	li	s0,-1
lab3: 	xor	a5,s0,a0
	zext.b	a5,a5
	slli	a5,a5,0x2
	add	a5,s2,a5
	lw	a5,0(a5)
	srli	s0,s0,0x8
	addi	s1,s1,-1
	xor	s0,a5,s0
	bnez	s1,lab3
	addi	s3,s3,-1
	bnez	s3,lab4
	lw	ra,28(sp)
	not	a0,s0
	lw	s0,24(sp)
	slli	a0,a0,0x11
	lw	s1,20(sp)
	lw	s2,16(sp)
	lw	s3,12(sp)
	srli	a0,a0,0x11
	addi	sp,sp,32
	cfes 0xf76d5
	ret
crc32pseudo:
	addi	sp,sp,-16
	sw	s2,0(sp)
	lui	s2,0x100
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	li	s1,1024
	li	s0,-1
	addi	s2,s2,16 # 100010 <crc_32_tab>
lab5: 	xor	a5,s0,a0
	zext.b	a5,a5
	slli	a5,a5,0x2
	add	a5,s2,a5
	lw	a5,0(a5)
	srli	s0,s0,0x8
	addi	s1,s1,-1
	xor	s0,a5,s0
	bnez	s1,lab5
	lw	ra,12(sp)
	not	a0,s0
	lw	s0,8(sp)
	lw	s1,4(sp)
	lw	s2,0(sp)
	addi	sp,sp,16
	ret
initialise_benchmark:
	ret
warm_caches:
	j	benchmark_body.isra.0
benchmark:
	j	benchmark_body.constprop.0
verify_benchmark:
	lui	a5,0xffffd
	addi	a5,a5,855 # ffffd357 <_stack+0xffef5357>
	add	a0,a0,a5
	seqz	a0,a0
	ret
main:
	addi	sp,sp,-32
	sw	ra,28(sp)
	jal	ra,initialise_board
	jal	ra,initialise_benchmark
	li	a0,0
	jal	ra,warm_caches
	cfed 0x46e4f
	cfed 0x46e4f
	jal	ra,start_trigger
	jal	ra,benchmark
	cfed 0x041b1
	sw	a0,12(sp)
	jal	ra,stop_trigger
	lw	a0,12(sp)
	jal	ra,verify_benchmark
	lw	ra,28(sp)
	seqz	a0,a0
	addi	sp,sp,32
	ret
rand_beebs:
	lui	a4,0x100
	lw	a0,12(a4) # 10000c <seed>
	lui	a5,0x41c65
	addi	a5,a5,-403 # 41c64e6d <_stack+0x41b5ce6d>
	mul	a0,a0,a5
	lui	a5,0x3
	addi	a5,a5,57 # 3039 <__DTOR_END__+0x267d>
	add	a0,a0,a5
	slli	a0,a0,0x1
	srli	a0,a0,0x1
	sw	a0,12(a4)
	srli	a0,a0,0x10
	ret
srand_beebs:
	lui	a5,0x100
	sw	a0,12(a5) # 10000c <seed>
	ret
init_heap_beebs:
	andi	a5,a1,3
	bnez	a5,lab6
	lui	a5,0x100
	add	a1,a0,a1
	sw	a0,8(a5) # 100008 <heap_ptr>
	lui	a5,0x100
	sw	a1,4(a5) # 100004 <heap_end>
	lui	a5,0x100
	sw	zero,0(a5) # 100000 <heap_requested>
	ret
lab6: 	lui	a3,0x100
	lui	a2,0x100
	lui	a0,0x100
	addi	sp,sp,-16
	addi	a3,a3,1096 # 100448 <__func__.0+0x10>
	addi	a2,a2,1080 # 100438 <__func__.0>
	li	a1,65
	addi	a0,a0,1128 # 100468 <__func__.0+0x30>
	sw	ra,12(sp)
	jal	ra,__assert_func
check_heap_beebs:
	lui	a5,0x100
	lw	a4,0(a5) # 100000 <heap_requested>
	lui	a5,0x100
	lw	a5,4(a5) # 100004 <heap_end>
	add	a0,a0,a4
	sltu	a0,a5,a0
	xori	a0,a0,1
	ret
malloc_beebs:
	mv	a5,a0
	beqz	a0,lab7
	lui	a2,0x100
	lw	a0,8(a2) # 100008 <heap_ptr>
	lui	a3,0x100
	lw	a1,0(a3) # 100000 <heap_requested>
	add	a4,a0,a5
	andi	a6,a4,3
	add	a5,a5,a1
	bnez	a6,lab8
	sw	a5,0(a3)
	lui	a5,0x100
	lw	a5,4(a5) # 100004 <heap_end>
	bltu	a5,a4,lab7
lab9: 	ret
lab8: 	li	a1,4
	sub	a1,a1,a6
	add	a5,a5,a1
	sw	a5,0(a3)
	lui	a5,0x100
	lw	a5,4(a5) # 100004 <heap_end>
	add	a4,a4,a1
	bgeu	a5,a4,lab9
lab7: 	li	a0,0
	ret
calloc_beebs:
	mul	a2,a0,a1
	beqz	a2,lab10
	lui	a0,0x100
	lw	a5,8(a0) # 100008 <heap_ptr>
	lui	a1,0x100
	lw	a4,0(a1) # 100000 <heap_requested>
	add	a3,a5,a2
	andi	a7,a3,3
	add	a4,a2,a4
	bnez	a7,lab11
	sw	a4,0(a1)
	lui	a4,0x100
	lw	a4,4(a4) # 100004 <heap_end>
	bltu	a4,a3,lab10
lab13: 	beqz	a5,lab12
	addi	sp,sp,-16
	li	a1,0
	mv	a0,a5
	sw	ra,12(sp)
	jal	ra,memset
	lw	ra,12(sp)
	addi	sp,sp,16
	ret
lab11: 	li	a6,4
	sub	a6,a6,a7
	add	a4,a4,a6
	sw	a4,0(a1)
	lui	a4,0x100
	lw	a4,4(a4) # 100004 <heap_end>
	add	a3,a3,a6
	bgeu	a4,a3,lab13
lab10: 	li	a5,0
lab12: 	mv	a0,a5
	ret
realloc_beebs:
	mv	a5,a0
	beqz	a0,lab14
	beqz	a1,lab14
	lui	a6,0x100
	lw	a0,8(a6) # 100008 <heap_ptr>
	lui	a2,0x100
	lw	a4,0(a2) # 100000 <heap_requested>
	add	a3,a0,a1
	andi	a7,a3,3
	add	a4,a1,a4
	bnez	a7,lab15
	sw	a4,0(a2)
	lui	a4,0x100
	lw	a4,4(a4) # 100004 <heap_end>
	bltu	a4,a3,lab14
lab19: 	beqz	a0,lab14
	addi	a4,a5,1
	sub	a4,a0,a4
	or	a3,a5,a0
	sltiu	a4,a4,3
	andi	a3,a3,3
	xori	a4,a4,1
	seqz	a3,a3
	and	a4,a4,a3
	beqz	a4,lab16
	addi	a4,a1,-1
	sltiu	a4,a4,7
	bnez	a4,lab16
	andi	a6,a1,-4
	mv	a4,a5
	mv	a3,a0
	add	a6,a6,a5
lab17: 	addi	a4,a4,4
	addi	a3,a3,4
	sw	a2,-4(a3)
	bne	a4,a6,lab17
	andi	a4,a1,-4
	beq	a1,a4,lab18
	add	a3,a5,a4
	lbu	a6,0(a3)
	add	a2,a0,a4
	addi	a3,a4,1
	sb	a6,0(a2)
	bgeu	a3,a1,lab18
	add	a2,a5,a3
	lbu	a2,0(a2)
	add	a3,a0,a3
	addi	a4,a4,2
	sb	a2,0(a3)
	bgeu	a4,a1,lab18
	add	a5,a5,a4
	lbu	a5,0(a5)
	add	a4,a0,a4
	sb	a5,0(a4)
	ret
lab15: 	li	t1,4
	sub	a7,t1,a7
	add	a4,a4,a7
	sw	a4,0(a2)
	lui	a4,0x100
	lw	a4,4(a4) # 100004 <heap_end>
	add	a3,a3,a7
	bgeu	a4,a3,lab19
lab14: 	li	a0,0
lab18: 	ret
lab16: 	mv	a4,a0
	add	a1,a5,a1
lab20: 	addi	a5,a5,1
	addi	a4,a4,1
	sb	a3,-1(a4)
	bne	a5,a1,lab20
	ret
free_beebs:
	ret
initialise_board:
	li	a0,0
	ret
start_trigger:
	li	a0,0
	ret
stop_trigger:
	li	a0,0
	ret
memcpy:
	li	a0,0
	ret
memmove:
	li	a0,0
	ret
memset:
	li	a0,0
	ret
memcmp:
	li	a0,0
	ret
rand:
	li	a0,0
	ret
srand:
	ret
calloc:
	li	a0,0
	ret
malloc:
	li	a0,0
	ret
free:
	ret
__assert_func:
	j	__assert_func
strlen:
	li	a0,0
	ret
strcpy:
	li	a0,0
	ret
strchr:
	li	a0,0
	ret
strtol:
	li	a0,0
	ret
strcmp:
	li	a0,0
	ret
strncmp:
	li	a0,0
	ret
strcat:
	li	a0,0
	ret
printf:
	addi	sp,sp,-32
	sw	a1,4(sp)
	sw	a2,8(sp)
	sw	a3,12(sp)
	sw	a4,16(sp)
	sw	a5,20(sp)
	sw	a6,24(sp)
	sw	a7,28(sp)
	li	a0,0
	addi	sp,sp,32
	ret
fprintf:
	addi	sp,sp,-32
	sw	a2,8(sp)
	sw	a3,12(sp)
	sw	a4,16(sp)
	sw	a5,20(sp)
	sw	a6,24(sp)
	sw	a7,28(sp)
	li	a0,0
	addi	sp,sp,32
	ret
sprintf:
	addi	sp,sp,-32
	sw	a2,8(sp)
	sw	a3,12(sp)
	sw	a4,16(sp)
	sw	a5,20(sp)
	sw	a6,24(sp)
	sw	a7,28(sp)
	li	a0,0
	addi	sp,sp,32
	ret
putchar:
	li	a0,0
	ret
puts:
	li	a0,0
	ret
clock:
	li	a0,0
	ret
atoi:
	li	a0,0
	ret
atof:
	li	a0,0
	li	a1,0
	ret
fopen:
	li	a0,0
	ret
fflush:
	li	a0,0
	ret
ferror:
	li	a0,0
	ret
fileno:
	li	a0,0
	ret
fscanf:
	addi	sp,sp,-32
	sw	a2,8(sp)
	sw	a3,12(sp)
	sw	a4,16(sp)
	sw	a5,20(sp)
	sw	a6,24(sp)
	sw	a7,28(sp)
	li	a0,0
	addi	sp,sp,32
	ret
sscanf:
	addi	sp,sp,-32
	sw	a2,8(sp)
	sw	a3,12(sp)
	sw	a4,16(sp)
	sw	a5,20(sp)
	sw	a6,24(sp)
	sw	a7,28(sp)
	li	a0,0
	addi	sp,sp,32
	ret
qsort:
	ret
fgetc:
	li	a0,0
	ret
getc:
	li	a0,0
	ret
ungetc:
	li	a0,0
	ret
fputc:
	li	a0,0
	ret
putc:
	li	a0,0
	ret
fgets:
	li	a0,0
	ret
fclose:
	li	a0,0
	ret
fwrite:
	li	a0,0
	ret
fputs:
	li	a0,0
	ret
fread:
	li	a0,0
	ret
exit:
	j	exit
getenv:
	li	a0,0
	ret
memchr:
	li	a0,0
	ret
__ctype_b_loc:
	li	a0,0
	ret
__ctype_tolower_loc:
	li	a0,0
	ret
tolower:
	li	a0,0
	ret
__CTOR_LIST__:
	unimp
	unimp
	unimp
	unimp
__CTOR_END__:
	unimp
	unimp
	unimp
	unimp


	.bss

heap_requested:
	.4byte	0x0000
	.4byte	0x0000
heap_end:
	.4byte	0x0000
	.4byte	0x0000
heap_ptr:
	.4byte	0x0000
	.4byte	0x0000
seed:
	.4byte	0x0000
	.4byte	0x0000


	.section .rodata

crc_32_tab:
	.4byte	0x0000
	.4byte	0x0000
	.2byte	0x3096
	.4byte	0x612c7707
	.2byte	0xee0e
	.2byte	0x51ba
	.2byte	0x9909
	.2byte	0xc419
	.2byte	0x76d
	.4byte	0x706af48f
	.2byte	0xa535
	.4byte	0x95a3e963
	.2byte	0x9e64
	.2byte	0x8832
	.4byte	0xb8a40edb
	.2byte	0x79dc
	.2byte	0xe91e
	.2byte	0xe0d5
	.2byte	0xd988
	.2byte	0x97d2
	.4byte	0x9b64c2b
	.2byte	0x7cbd
	.2byte	0x7eb1
	.4byte	0xe7b82d07
	.2byte	0x1d91
	.8byte	0x20f21db7106490bf
	.2byte	0x6ab0
	.2byte	0x7148
	.2byte	0xf3b9
	.2byte	0x41de
	.2byte	0x84be
	.2byte	0xd47d
	.2byte	0x1ada
	.4byte	0x6ddde4eb
	.2byte	0xb551
	.2byte	0xf4d4
	.4byte	0x83d385c7
	.2byte	0x9856
	.2byte	0x136c
	.2byte	0xa8c0
	.4byte	0xf97a646b
	.2byte	0xfd62
	.2byte	0xc9ec
	.2byte	0x8a65
	.4byte	0x14015c4f
	.2byte	0x6cd9
	.2byte	0x6306
	.4byte	0xfa0f3d63
	.2byte	0xdf5
	.2byte	0x8d08
	.2byte	0x20c8
	.2byte	0x3b6e
	.2byte	0x105e
	.2byte	0x4c69
	.2byte	0x41e4
	.2byte	0xd560
	.2byte	0x7172
	.4byte	0xe4d1a267
	.4byte	0xd4473c03
	.2byte	0x4b04
	.2byte	0x85fd
	.2byte	0xd20d
	.4byte	0xa50ab56b
	.2byte	0xa8fa
	.2byte	0x35b5
	.2byte	0x986c
	.2byte	0x42b2
	.2byte	0xc9d6
	.4byte	0xf940dbbb
	.2byte	0xacbc
	.4byte	0x32d86ce3
	.2byte	0x5c75
	.byte	0xdf, 0x45, 0xcf, 0x0d, 0xd6, 0xdc
	.2byte	0x3d59
	.2byte	0xabd1
	.2byte	0x30ac
	.2byte	0x26d9
	.2byte	0x3a
	.2byte	0x51de
	.2byte	0x5180
	.4byte	0x6116c8d7
	.2byte	0xbfd0
	.2byte	0xf4b5
	.2byte	0x21b4
	.4byte	0x56b3c423
	.2byte	0x9599
	.2byte	0xcfba
	.4byte	0xb8bda50f
	.2byte	0xb89e
	.2byte	0x2802
	.2byte	0x8808
	.2byte	0x5f05
	.2byte	0xd9b2
	.2byte	0xc60c
	.2byte	0xe924
	.4byte	0x7c87b10b
	.4byte	0x4c112f6f
	.2byte	0x5868
	.4byte	0xc1611dab
	.2byte	0x2d3d
	.2byte	0xb666
	.2byte	0x4190
	.2byte	0x76dc
	.2byte	0x7106
	.4byte	0x20bc01db
	.2byte	0x98d2
	.2byte	0x102a
	.2byte	0xefd5
	.2byte	0x8589
	.2byte	0x71b1
	.byte	0x1f, 0xb5, 0xb6, 0x06, 0xa5, 0xe4
	.8byte	0xc9a2e8b8d4339fbf
	.4byte	0xf9347807
	.2byte	0xf00
	.2byte	0xa88e
	.2byte	0x9609
	.2byte	0x9818
	.2byte	0xe10e
	.4byte	0x7f6a0dbb
	.2byte	0x3d2d
	.2byte	0x86d
	.4byte	0x91646c97
	.2byte	0x5c01
	.4byte	0x51f4e663
	.4byte	0x61626b6b
	.2byte	0x1c6c
	.2byte	0x30d8
	.2byte	0x8565
	.2byte	0x4e
	.2byte	0xf262
	.2byte	0x95ed
	.2byte	0x6c06
	.4byte	0x1b01a57b
	.2byte	0xf4c1
	.2byte	0x8208
	.4byte	0xf50fc457
	.2byte	0xd9c6
	.2byte	0x65b0
	.2byte	0xe950
	.4byte	0xb8ea12b7
	.2byte	0x8bbe
	.2byte	0x887c
	.2byte	0xfcb9
	.byte	0xdf, 0x1d, 0xdd, 0x62, 0x49, 0x2d
	.2byte	0x15da
	.4byte	0x8cd37cf3
	.2byte	0x4c65
	.2byte	0xfbd4
	.2byte	0x6158
	.2byte	0x4db2
	.2byte	0x51ce
	.2byte	0x3ab5
	.2byte	0x74
	.2byte	0xa3bc
	.2byte	0x30e2
	.4byte	0xa541d4bb
	.byte	0xdf, 0x4a, 0xd7, 0x95, 0xd8, 0x3d
	.2byte	0xc46d
	.2byte	0xa4d1
	.4byte	0xd3d6f4fb
	.2byte	0xe96a
	.2byte	0x4369
	.2byte	0xd9fc
	.2byte	0x346e
	.2byte	0x8846
	.4byte	0xb8d0ad67
	.2byte	0xda60
	.4byte	0x44042d73
	.2byte	0x1de5
	.4byte	0x4c5f3303
	.2byte	0xaa0a
	.2byte	0x7cc9
	.2byte	0xdd0d
	.2byte	0x713c
	.2byte	0x5005
	.2byte	0x41aa
	.2byte	0x2702
	.2byte	0x1010
	.4byte	0x2086be0b
	.2byte	0xc90c
	.2byte	0xb525
	.2byte	0x5768
	.4byte	0x206f85b3
	.2byte	0xd409
	.2byte	0xb966
	.byte	0x9f, 0xe4, 0x61, 0xce, 0x0e, 0xf9
	.2byte	0x5ede
	.2byte	0xc998
	.2byte	0x29d9
	.2byte	0x9822
	.2byte	0xb0d0
	.2byte	0xa8b4
	.4byte	0x3d17c7d7
	.4byte	0xd8159b3
	.2byte	0x2eb4
	.4byte	0xb7bd5c3b
	.2byte	0x6cad
	.2byte	0xc0ba
	.2byte	0x8320
	.2byte	0xedb8
	.2byte	0xb3b6
	.8byte	0xd29a03b6e20c9abf
	.2byte	0x74b1
	.2byte	0x4739
	.2byte	0xead5
	.4byte	0x9dd277af
	.2byte	0x2615
	.4byte	0x168304db
	.2byte	0x73dc
	.2byte	0xb12
	.4byte	0x3b84e363
	.2byte	0x9464
	.2byte	0x6a3e
	.2byte	0xd6d
	.2byte	0x5aa8
	.2byte	0x7a6a
	.4byte	0xe40ecf0b
	.2byte	0xff9d
	.2byte	0x9309
	.4byte	0xa00ae27
	.2byte	0x9eb1
	.4byte	0x93447d07
	.4byte	0xa3d2f00f
	.2byte	0x8708
	.2byte	0xf268
	.2byte	0x1e01
	.2byte	0xc2fe
	.2byte	0x6906
	.2byte	0x575d
	.2byte	0xf762
	.4byte	0x806567cb
	.2byte	0x3671
	.2byte	0x196c
	.4byte	0x6e6b06e7
	.2byte	0x1b76
	.2byte	0xfed4
	.2byte	0x2be0
	.4byte	0x7a5a89d3
	.2byte	0x10da
	.2byte	0x4acc
	.2byte	0x67dd
	.4byte	0xf9b9df6f
	.2byte	0xeff9
	.2byte	0x8ebe
	.4byte	0x17b7be43
	.2byte	0x8ed5
	.2byte	0x60b0
	.2byte	0xa3e8
	.2byte	0xd6d6
	.2byte	0x937e
	.2byte	0xa1d1
	.2byte	0xc2c4
	.2byte	0x38d8
	.2byte	0xf252
	.byte	0xdf, 0x4f, 0xf1, 0x67, 0xbb, 0xd1
	.4byte	0xa6bc5767
	.2byte	0x6dd
	.2byte	0x3fb5
	.4byte	0x48b2364b
	.2byte	0x2bda
	.2byte	0xd80d
	.2byte	0x1b4c
	.2byte	0xaf0a
	.2byte	0x4af6
	.4byte	0x7a603603
	.2byte	0x4104
	.4byte	0xdf60efc3
	.2byte	0xdf55
	.4byte	0x8eefa867
	.2byte	0x316e
	.2byte	0xbe79
	.2byte	0x4669
	.2byte	0xb38c
	.2byte	0xcb61
	.2byte	0x831a
	.2byte	0xbc66
	.2byte	0xd2a0
	.4byte	0xe236256f
	.2byte	0x5268
	.2byte	0x7795
	.2byte	0xcc0c
	.4byte	0xbb0b4703
	.2byte	0x16b9
	.2byte	0x2202
	.4byte	0x5505262f
	.2byte	0x3bbe
	.2byte	0xc5ba
	.2byte	0xb28
	.2byte	0xb2bd
	.2byte	0x5a92
	.2byte	0x2bb4
	.2byte	0x6a04
	.4byte	0xffa75cb3
	.4byte	0xcf31c2d7
	.2byte	0xb5d0
	.4byte	0x2cd99e8b
	.2byte	0xae1d
	.2byte	0x5bde
	.2byte	0xc2b0
	.2byte	0x9b64
	.2byte	0xf226
	.4byte	0xa39cec63
	.2byte	0x756a
	.2byte	0x930a
	.2byte	0x26d
	.2byte	0x6a9
	.2byte	0x9c09
	.8byte	0x72076785eb0e363f
	.4byte	0x5005713
	.2byte	0x4a82
	.8byte	0x2baee2b87a1495bf
	.2byte	0x7bb1
	.2byte	0x1b38
	.2byte	0xcb6
	.4byte	0x92d28e9b
	.2byte	0xbe0d
	.2byte	0xe5d5
	.4byte	0x7cdcefb7
	.2byte	0xdf21
	.4byte	0xd2d40bdb
	.4byte	0xe24286d3
	.2byte	0xf1d4
	.2byte	0xb3f8
	.2byte	0x68dd
	.2byte	0x836e
	.2byte	0x1fda
	.2byte	0x16cd
	.2byte	0x81be
	.4byte	0xf6b9265b
	.2byte	0x77e1
	.2byte	0x6fb0
	.4byte	0x18b74777
	.2byte	0x5ae6
	.2byte	0x8808
	.2byte	0x6a70
	.4byte	0x3bcaff0f
	.2byte	0x6606
	.2byte	0xb5c
	.2byte	0x1101
	.2byte	0x9eff
	.2byte	0x8f65
	.2byte	0xae69
	.2byte	0xf862
	.4byte	0x616bffd3
	.2byte	0xcf45
	.2byte	0x166c
	.2byte	0xe278
	.2byte	0xa00a
	.2byte	0xd2ee
	.2byte	0xd70d
	.2byte	0x8354
	.2byte	0x4e04
	.2byte	0xb3c2
	.4byte	0x26613903
	.4byte	0x16f7a767
	.2byte	0xd060
	.2byte	0x474d
	.2byte	0x4969
	.4byte	0x3e6e77db
	.2byte	0x6a4a
	.2byte	0xaed1
	.2byte	0x5adc
	.2byte	0xd9d6
	.2byte	0xb66
	.byte	0xdf, 0x40, 0xf0, 0x3b, 0xd8, 0x37
	.4byte	0xa9bcae53
	.2byte	0x9ec5
	.4byte	0xcf7fdebb
	.2byte	0x47b2
	.2byte	0xffe9
	.2byte	0x30b5
	.2byte	0xf21c
	.2byte	0xbdbd
	.2byte	0xc28a
	.2byte	0xcaba
	.2byte	0x9330
	.4byte	0xa3a653b3
	.2byte	0x24b4
	.2byte	0x3605
	.2byte	0xbad0
	.4byte	0xcdd70693
	.2byte	0x5729
	.2byte	0x54de
	.8byte	0xb3667a2e23d967bf
	.2byte	0x4ab8
	.2byte	0xc461
	.2byte	0x1b02
	.2byte	0x5d68
	.2byte	0x2b94
	.4byte	0xbe372a6f
	.4byte	0x8ea1b40b
	.2byte	0xc30c
	.4byte	0x5a05df1b
	.2byte	0xef8d
	.2byte	0x2d02
config_mem_words:
	.2byte	0x101
	.2byte	0x101
	.2byte	0x202
	.2byte	0x202
	.4byte	0x03030303
	.2byte	0x404
	.2byte	0x404
	.2byte	0x505
	.2byte	0x505
	.2byte	0x606
	.2byte	0x606
	.4byte	0x7070707
	.2byte	0x808
	.2byte	0x808
	.2byte	0x909
	.2byte	0x909
	.2byte	0xa0a
	.2byte	0xa0a
__func__.0:
	.2byte	0x6e69
	.2byte	0x7469
	.byte	0x5f, 0x68, 0x65, 0x61, 0x70, 0x5f
	.2byte	0x6562
	.2byte	0x6265
	.4byte	0x65680073
	.2byte	0x7061
	.byte	0x5f, 0x73, 0x69, 0x7a, 0x65, 0x20
	.2byte	0x2025
	.4byte	0x657a6973
	.4byte	0x7628666f
	.4byte	0x2064696f
	.2byte	0x292a
	.2byte	0x3d20
	.2byte	0x203d
	.2byte	0x30
	.4byte	0x64656d2f
	.2byte	0x6169
	.4byte	0x5f66732f
	.4byte	0x72616853
	.2byte	0x6465
	.4byte	0x7466612f
	.2byte	0x6261
	.2byte	0x632d
	.2byte	0x6966
	.2byte	0x702d
	.2byte	0x616c
	.4byte	0x2f77732f
	.4byte	0x70707573
	.4byte	0x2f74726f
	.4byte	0x2f637273
	.2byte	0x6562
	.2byte	0x6265
	.4byte	0x632e6373
	.4byte	0x00
