	.text
	.globl  main
	.type  main, @function

pjpeg_need_bytes_callback:
	addi	sp,sp,-16
	sw	s1,4(sp)
	lui	s1,0x101
	lw	a5,-1780(s1) # 10090c <jpeg_off>
	sw	s0,8(sp)
	li	s0,570
	sw	s2,0(sp)
	sw	ra,12(sp)
	sub	s0,s0,a5
	mv	s2,a2
	bgeu	a1,s0,lab0
	mv	s0,a1
lab0: 	lui	a1,0x101
	addi	a1,a1,-1680 # 100970 <jpeg_data>
	mv	a2,s0
	add	a1,a1,a5
	jal	ra,memcpy
	sb	s0,0(s2)
	lw	a5,-1780(s1)
	lw	ra,12(sp)
	lw	s2,0(sp)
	add	a5,a5,s0
	lw	s0,8(sp)
	sw	a5,-1780(s1)
	li	a0,0
	lw	s1,4(sp)
	addi	sp,sp,16
	ret
benchmark_body.constprop.0:
	addi	sp,sp,-32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	ra,28(sp)
	li	s1,6
	lui	s4,0x101
	lui	s3,0x100
	li	s0,1
lab2: 	li	a3,0
	li	a2,0
	li	a1,716
	mv	a0,s3
	sw	zero,-1780(s4) # 10090c <jpeg_off>
	jal	ra,pjpeg_decode_init
lab1: 	jal	ra,pjpeg_decode_mcu
	bne	a0,s0,lab1
	addi	s1,s1,-1
	bnez	s1,lab2
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	lw	s2,16(sp)
	lw	s3,12(sp)
	lw	s4,8(sp)
	li	a0,0
	addi	sp,sp,32
	ret
benchmark_body.isra.0:
	blez	a0,lab3
	addi	sp,sp,-32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	sw	ra,28(sp)
	mv	s2,a0
	li	s1,0
	lui	s5,0x101
	lui	s4,0x100
	li	s0,1
lab5: 	li	a3,0
	li	a2,0
	li	a1,716
	mv	a0,s4
	sw	zero,-1780(s5) # 10090c <jpeg_off>
	jal	ra,pjpeg_decode_init
lab4: 	jal	ra,pjpeg_decode_mcu
	bne	a0,s0,lab4
	addi	s1,s1,1
	bne	s1,s2,lab5
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	lw	s2,16(sp)
	lw	s3,12(sp)
	lw	s4,8(sp)
	lw	s5,4(sp)
	addi	sp,sp,32
	ret
lab3: 	ret
verify_benchmark:
	addi	sp,sp,-16
	sw	s2,0(sp)
	lui	s2,0x100
	mv	s2,s2
	sw	s1,4(sp)
	lw	a0,32(s2) # 100020 <pInfo+0x20>
	lui	s1,0x101
	addi	s1,s1,-1680 # 100970 <jpeg_data>
	li	a2,64
	addi	a1,s1,572
	sw	s0,8(sp)
	sw	ra,12(sp)
	jal	ra,memcmp
	li	s0,0
	bnez	a0,lab6
	mv	s0,a0
	lw	a0,36(s2)
	li	a2,64
	addi	a1,s1,636
	jal	ra,memcmp
	bnez	a0,lab6
	lw	a0,40(s2)
	li	a2,64
	addi	a1,s1,700
	jal	ra,memcmp
	seqz	s0,a0
lab6: 	lw	ra,12(sp)
	mv	a0,s0
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
main:
	addi	sp,sp,-32
	sw	ra,28(sp)
	jal	ra,initialise_board
	jal	ra,initialise_benchmark
	li	a0,0
	jal	ra,warm_caches
	jal	ra,start_trigger
	jal	ra,benchmark
	sw	a0,12(sp)
	jal	ra,stop_trigger
	lw	a0,12(sp)
	jal	ra,verify_benchmark
	lw	ra,28(sp)
	seqz	a0,a0
	addi	sp,sp,32
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
upsampleCb:
	lui	t1,0x100
	addi	t1,t1,44 # 10002c <gCoeffBuf>
	slli	t6,a0,0x1
	addi	sp,sp,-16
	add	t6,t1,t6
	addi	t5,t1,128
	addi	t1,t1,384
	add	t5,t5,a1
	add	t1,t1,a1
	addi	a6,t6,8
	sw	s0,12(sp)
	sw	s1,8(sp)
	sw	s2,4(sp)
	addi	t6,t6,72
	li	t4,88
	li	a1,255
	li	t3,198
	li	t0,255
	li	a7,-1
lab22: 	addi	a0,a6,-8
	mv	a3,t1
	mv	a4,t5
lab21: 	lh	s0,0(a0)
	lbu	a2,0(a4)
	lbu	s1,1(a4)
	zext.b	a5,s0
	mul	t2,a5,t4
	addi	a0,a0,2
	srli	t2,t2,0x8
	addi	t2,t2,-44
	slli	t2,t2,0x10
	srli	t2,t2,0x10
	sub	a2,a2,t2
	sub	s1,s1,t2
	slli	a2,a2,0x10
	slli	s1,s1,0x10
	srli	a2,a2,0x10
	srli	s1,s1,0x10
	bgeu	a1,a2,lab7
	slli	s2,a2,0x10
	srai	s2,s2,0x10
	li	a2,0
	bgez	s2,lab8
lab30: 	sb	a2,0(a4)
	bgeu	a1,s1,lab9
	slli	a2,s1,0x10
	srai	a2,a2,0x10
	li	s1,0
	bgez	a2,lab10
lab29: 	lbu	a2,8(a4)
	sb	s1,1(a4)
	sub	a2,a2,t2
	slli	a2,a2,0x10
	srli	a2,a2,0x10
	bgeu	a1,a2,lab11
	slli	a2,a2,0x10
	srai	a2,a2,0x10
	li	s1,0
	bgez	a2,lab12
lab28: 	lbu	a2,9(a4)
	sb	s1,8(a4)
	sub	a2,a2,t2
	slli	a2,a2,0x10
	srli	a2,a2,0x10
	bgeu	a1,a2,lab13
	not	a2,a2
	slli	a2,a2,0x10
	srai	a2,a2,0x1f
	zext.b	s1,a2
lab27: 	mul	a5,a5,t3
	zext.b	s0,s0
	addi	s0,s0,-227
	lbu	a2,0(a3)
	lbu	t2,1(a3)
	sb	s1,9(a4)
	srli	a5,a5,0x8
	add	a5,a5,s0
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	add	a2,a5,a2
	add	t2,a5,t2
	slli	a2,a2,0x10
	slli	t2,t2,0x10
	srli	a2,a2,0x10
	srli	t2,t2,0x10
	bgeu	a1,a2,lab14
	slli	s0,a2,0x10
	srai	s0,s0,0x10
	li	a2,0
	bgez	s0,lab15
lab26: 	sb	a2,0(a3)
	bgeu	a1,t2,lab16
	slli	a2,t2,0x10
	srai	a2,a2,0x10
	li	t2,0
	bgez	a2,lab17
lab25: 	lbu	a2,8(a3)
	sb	t2,1(a3)
	add	a2,a5,a2
	slli	a2,a2,0x10
	srli	a2,a2,0x10
	bgeu	a1,a2,lab18
	slli	t2,a2,0x10
	srai	t2,t2,0x10
	li	a2,0
	bgez	t2,lab19
lab24: 	lbu	t2,9(a3)
	sb	a2,8(a3)
	add	a5,a5,t2
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	bgeu	a1,a5,lab20
	not	a5,a5
	slli	a5,a5,0x10
	srai	a5,a5,0x1f
	zext.b	a2,a5
lab23: 	sb	a2,9(a3)
	addi	a4,a4,2
	addi	a3,a3,2
	bne	a0,a6,lab21
	addi	a6,a0,16
	addi	t5,t5,16
	addi	t1,t1,16
	bne	t6,a6,lab22
	lw	s0,12(sp)
	lw	s1,8(sp)
	lw	s2,4(sp)
	addi	sp,sp,16
	ret
lab15: 	sb	a7,0(a3)
	bgeu	t0,t2,lab16
lab17: 	lbu	a2,8(a3)
	sb	a7,1(a3)
	add	a2,a5,a2
	slli	a2,a2,0x10
	srli	a2,a2,0x10
	bgeu	a1,a2,lab18
lab19: 	lbu	t2,9(a3)
	sb	a7,8(a3)
	li	a2,255
	add	a5,a5,t2
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	bltu	a1,a5,lab23
lab20: 	zext.b	a2,a5
	j	lab23
lab18: 	zext.b	a2,a2
	j	lab24
lab16: 	zext.b	t2,t2
	j	lab25
lab14: 	zext.b	a2,a2
	j	lab26
lab8: 	sb	a7,0(a4)
	bgeu	a1,s1,lab9
lab10: 	lbu	a2,8(a4)
	sb	a7,1(a4)
	sub	a2,a2,t2
	slli	a2,a2,0x10
	srli	a2,a2,0x10
	bgeu	a1,a2,lab11
lab12: 	lbu	a2,9(a4)
	sb	a7,8(a4)
	li	s1,255
	sub	a2,a2,t2
	slli	a2,a2,0x10
	srli	a2,a2,0x10
	bltu	a1,a2,lab27
lab13: 	zext.b	s1,a2
	j	lab27
lab11: 	zext.b	s1,a2
	j	lab28
lab9: 	zext.b	s1,s1
	j	lab29
lab7: 	zext.b	a2,a2
	j	lab30
upsampleCbH:
	lui	a4,0x100
	addi	a4,a4,44 # 10002c <gCoeffBuf>
	addi	a5,a4,384
	add	a5,a5,a1
	slli	a0,a0,0x1
	addi	a3,a4,128
	add	a3,a3,a1
	add	a0,a4,a0
	addi	t1,a5,64
	li	a6,88
	li	a2,255
	li	a7,-1
	li	a1,198
lab55: 	lh	a4,0(a0)
	lbu	t5,0(a3)
	lbu	t3,1(a3)
	zext.b	t6,a4
	mul	t4,t6,a6
	srli	t4,t4,0x8
	addi	t4,t4,-44
	slli	t4,t4,0x10
	srli	t4,t4,0x10
	sub	t5,t5,t4
	sub	t3,t3,t4
	slli	t4,t5,0x10
	srli	t4,t4,0x10
	slli	t3,t3,0x10
	srli	t3,t3,0x10
	zext.b	t5,t4
	bgeu	a2,t4,lab31
	slli	t4,t4,0x10
	srai	t4,t4,0x10
	li	t5,0
	bgez	t4,lab32
lab31: 	sb	t5,0(a3)
	bgeu	a2,t3,lab33
	not	t3,t3
	slli	t3,t3,0x10
	srai	t3,t3,0x1f
lab33: 	zext.b	t4,t3
lab56: 	mul	t6,t6,a1
	zext.b	a4,a4
	addi	a4,a4,-227
	lbu	t3,0(a5)
	lbu	t5,1(a5)
	sb	t4,1(a3)
	srli	t6,t6,0x8
	add	a4,a4,t6
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	add	t3,a4,t3
	slli	t3,t3,0x10
	add	a4,a4,t5
	srli	t3,t3,0x10
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	zext.b	t4,t3
	bgeu	a2,t3,lab34
	slli	t3,t3,0x10
	srai	t3,t3,0x10
	li	t4,0
	bgez	t3,lab35
lab34: 	sb	t4,0(a5)
	bgeu	a2,a4,lab36
	not	a4,a4
	slli	a4,a4,0x10
	srai	a4,a4,0x1f
lab36: 	zext.b	t0,a4
lab57: 	lh	a4,2(a0)
	lbu	t5,2(a3)
	lbu	t3,3(a3)
	zext.b	t6,a4
	mul	t4,t6,a6
	sb	t0,1(a5)
	srli	t4,t4,0x8
	addi	t4,t4,-44
	slli	t4,t4,0x10
	srli	t4,t4,0x10
	sub	t5,t5,t4
	sub	t3,t3,t4
	slli	t4,t5,0x10
	srli	t4,t4,0x10
	slli	t3,t3,0x10
	srli	t3,t3,0x10
	zext.b	t5,t4
	bgeu	a2,t4,lab37
	slli	t4,t4,0x10
	srai	t4,t4,0x10
	li	t5,0
	bgez	t4,lab38
lab37: 	sb	t5,2(a3)
	bgeu	a2,t3,lab39
	not	t3,t3
	slli	t3,t3,0x10
	srai	t3,t3,0x1f
lab39: 	zext.b	t4,t3
lab58: 	mul	t6,t6,a1
	zext.b	a4,a4
	addi	a4,a4,-227
	lbu	t3,2(a5)
	lbu	t5,3(a5)
	sb	t4,3(a3)
	srli	t6,t6,0x8
	add	a4,a4,t6
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	add	t3,a4,t3
	slli	t3,t3,0x10
	add	a4,a4,t5
	srli	t3,t3,0x10
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	zext.b	t4,t3
	bgeu	a2,t3,lab40
	slli	t3,t3,0x10
	srai	t3,t3,0x10
	li	t4,0
	bgez	t3,lab41
lab40: 	sb	t4,2(a5)
	bgeu	a2,a4,lab42
	not	a4,a4
	slli	a4,a4,0x10
	srai	a4,a4,0x1f
lab42: 	zext.b	t0,a4
lab59: 	lh	a4,4(a0)
	lbu	t5,4(a3)
	lbu	t3,5(a3)
	zext.b	t6,a4
	mul	t4,t6,a6
	sb	t0,3(a5)
	srli	t4,t4,0x8
	addi	t4,t4,-44
	slli	t4,t4,0x10
	srli	t4,t4,0x10
	sub	t5,t5,t4
	sub	t3,t3,t4
	slli	t4,t5,0x10
	srli	t4,t4,0x10
	slli	t3,t3,0x10
	srli	t3,t3,0x10
	zext.b	t5,t4
	bgeu	a2,t4,lab43
	slli	t4,t4,0x10
	srai	t4,t4,0x10
	li	t5,0
	bgez	t4,lab44
lab43: 	sb	t5,4(a3)
	bgeu	a2,t3,lab45
	not	t3,t3
	slli	t3,t3,0x10
	srai	t3,t3,0x1f
lab45: 	zext.b	t4,t3
lab60: 	mul	t6,t6,a1
	zext.b	a4,a4
	addi	a4,a4,-227
	lbu	t3,4(a5)
	lbu	t5,5(a5)
	sb	t4,5(a3)
	srli	t6,t6,0x8
	add	a4,a4,t6
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	add	t3,a4,t3
	slli	t3,t3,0x10
	add	a4,a4,t5
	srli	t3,t3,0x10
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	zext.b	t4,t3
	bgeu	a2,t3,lab46
	slli	t3,t3,0x10
	srai	t3,t3,0x10
	li	t4,0
	bgez	t3,lab47
lab46: 	sb	t4,4(a5)
	bgeu	a2,a4,lab48
	not	a4,a4
	slli	a4,a4,0x10
	srai	a4,a4,0x1f
lab48: 	zext.b	t0,a4
lab61: 	lh	t6,6(a0)
	lbu	t5,6(a3)
	lbu	t3,7(a3)
	zext.b	a4,t6
	mul	t4,a4,a6
	sb	t0,5(a5)
	srli	t4,t4,0x8
	addi	t4,t4,-44
	slli	t4,t4,0x10
	srli	t4,t4,0x10
	sub	t5,t5,t4
	sub	t3,t3,t4
	slli	t4,t5,0x10
	srli	t4,t4,0x10
	slli	t3,t3,0x10
	srli	t3,t3,0x10
	zext.b	t5,t4
	bgeu	a2,t4,lab49
	slli	t4,t4,0x10
	srai	t4,t4,0x10
	li	t5,0
	bgez	t4,lab50
lab49: 	sb	t5,6(a3)
	bgeu	a2,t3,lab51
	not	t3,t3
	slli	t3,t3,0x10
	srai	t3,t3,0x1f
lab51: 	zext.b	t4,t3
lab62: 	mul	a4,a4,a1
	zext.b	t6,t6
	addi	t6,t6,-227
	lbu	t3,6(a5)
	lbu	t5,7(a5)
	sb	t4,7(a3)
	srli	a4,a4,0x8
	add	a4,a4,t6
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	add	t3,a4,t3
	slli	t3,t3,0x10
	add	a4,a4,t5
	srli	t3,t3,0x10
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	zext.b	t4,t3
	bgeu	a2,t3,lab52
	slli	t3,t3,0x10
	srai	t3,t3,0x10
	li	t4,0
	bgez	t3,lab53
lab52: 	sb	t4,6(a5)
	bgeu	a2,a4,lab54
	not	a4,a4
	slli	a4,a4,0x10
	srai	a4,a4,0x1f
lab54: 	zext.b	t3,a4
lab63: 	sb	t3,7(a5)
	addi	a5,a5,8
	addi	a3,a3,8
	addi	a0,a0,16
	bne	a5,t1,lab55
	ret
lab32: 	sb	a7,0(a3)
	li	t4,255
	bltu	a2,t3,lab56
	j	lab33
lab35: 	sb	a7,0(a5)
	li	t0,255
	bltu	a2,a4,lab57
	j	lab36
lab38: 	sb	a7,2(a3)
	li	t4,255
	bltu	a2,t3,lab58
	j	lab39
lab41: 	sb	a7,2(a5)
	li	t0,255
	bltu	a2,a4,lab59
	j	lab42
lab44: 	sb	a7,4(a3)
	li	t4,255
	bltu	a2,t3,lab60
	j	lab45
lab47: 	sb	a7,4(a5)
	li	t0,255
	bltu	a2,a4,lab61
	j	lab48
lab50: 	sb	a7,6(a3)
	li	t4,255
	bltu	a2,t3,lab62
	j	lab51
lab53: 	sb	a7,6(a5)
	li	t3,255
	bltu	a2,a4,lab63
	j	lab54
upsampleCbV:
	lui	a6,0x100
	addi	a6,a6,44 # 10002c <gCoeffBuf>
	addi	t3,a6,128
	slli	a0,a0,0x1
	addi	t5,a6,384
	addi	a0,a0,16
	addi	sp,sp,-16
	add	t3,t3,a1
	add	a6,a6,a0
	sw	s0,12(sp)
	add	t5,t5,a1
	addi	t6,t3,64
	li	t1,88
	li	a0,255
	li	t4,-1
	li	a7,198
lab75: 	addi	a1,a6,-16
	mv	a2,t5
	mv	a3,t3
	j	lab64
lab71: 	slli	t2,t0,0x10
	srai	t2,t2,0x10
	li	t0,0
	bgez	t2,lab65
	sb	t0,0(a3)
	bgeu	a0,a4,lab66
lab72: 	not	a4,a4
	slli	a4,a4,0x10
	srai	a4,a4,0x1f
	zext.b	t0,a4
lab73: 	mul	s0,s0,a7
	zext.b	a5,a5
	addi	a5,a5,-227
	lbu	a4,0(a2)
	lbu	t2,8(a2)
	sb	t0,8(a3)
	srli	s0,s0,0x8
	add	a5,a5,s0
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	add	a4,a5,a4
	slli	a4,a4,0x10
	add	a5,a5,t2
	slli	a5,a5,0x10
	srli	a4,a4,0x10
	srli	a5,a5,0x10
	bgeu	a0,a4,lab67
	slli	t0,a4,0x10
	srai	t0,t0,0x10
	li	a4,0
	bgez	t0,lab68
lab76: 	sb	a4,0(a2)
	bgeu	a0,a5,lab69
	not	a5,a5
	slli	a5,a5,0x10
	srai	a5,a5,0x1f
	zext.b	a4,a5
lab74: 	sb	a4,8(a2)
	addi	a3,a3,1
	addi	a2,a2,1
	beq	a1,a6,lab70
lab64: 	lh	a5,0(a1)
	lbu	t2,0(a3)
	lbu	a4,8(a3)
	zext.b	s0,a5
	mul	t0,s0,t1
	addi	a1,a1,2
	srli	t0,t0,0x8
	addi	t0,t0,-44
	slli	t0,t0,0x10
	srli	t0,t0,0x10
	sub	t2,t2,t0
	sub	a4,a4,t0
	slli	t0,t2,0x10
	slli	a4,a4,0x10
	srli	t0,t0,0x10
	srli	a4,a4,0x10
	bltu	a0,t0,lab71
	zext.b	t0,t0
	sb	t0,0(a3)
	bltu	a0,a4,lab72
lab66: 	zext.b	t0,a4
	j	lab73
lab68: 	sb	t4,0(a2)
	li	a4,255
	bltu	a0,a5,lab74
lab69: 	zext.b	a4,a5
	sb	a4,8(a2)
	addi	a3,a3,1
	addi	a2,a2,1
	bne	a1,a6,lab64
lab70: 	addi	t3,t3,16
	addi	t5,t5,16
	addi	a6,a1,16
	bne	t3,t6,lab75
	lw	s0,12(sp)
	addi	sp,sp,16
	ret
lab67: 	zext.b	a4,a4
	j	lab76
lab65: 	sb	t4,0(a3)
	li	t0,255
	bltu	a0,a4,lab73
	zext.b	t0,a4
	j	lab73
upsampleCr:
	lui	t1,0x100
	addi	t1,t1,44 # 10002c <gCoeffBuf>
	slli	t6,a0,0x1
	add	t6,t1,t6
	addi	sp,sp,-16
	addi	t5,t1,640
	addi	t1,t1,128
	add	t5,t5,a1
	add	t1,t1,a1
	addi	a6,t6,8
	sw	s0,12(sp)
	sw	s1,8(sp)
	addi	t6,t6,72
	li	t4,103
	li	a1,255
	li	t3,183
	li	t0,255
	li	a7,-1
lab92: 	addi	a0,a6,-8
	mv	a3,t1
	mv	a4,t5
lab91: 	lh	s1,0(a0)
	lbu	t2,0(a4)
	lbu	s0,1(a4)
	zext.b	a2,s1
	mul	a5,a2,t4
	zext.b	s1,s1
	addi	s1,s1,-179
	addi	a0,a0,2
	srli	a5,a5,0x8
	add	a5,a5,s1
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	add	t2,a5,t2
	add	s0,a5,s0
	slli	t2,t2,0x10
	slli	s0,s0,0x10
	srli	t2,t2,0x10
	srli	s0,s0,0x10
	bgeu	a1,t2,lab77
	slli	s1,t2,0x10
	srai	s1,s1,0x10
	li	t2,0
	bgez	s1,lab78
lab100: 	sb	t2,0(a4)
	bgeu	a1,s0,lab79
	slli	t2,s0,0x10
	srai	t2,t2,0x10
	li	s0,0
	bgez	t2,lab80
lab99: 	lbu	t2,8(a4)
	sb	s0,1(a4)
	add	t2,a5,t2
	slli	t2,t2,0x10
	srli	t2,t2,0x10
	bgeu	a1,t2,lab81
	slli	s0,t2,0x10
	srai	s0,s0,0x10
	li	t2,0
	bgez	s0,lab82
lab98: 	lbu	s0,9(a4)
	sb	t2,8(a4)
	add	a5,a5,s0
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	bgeu	a1,a5,lab83
	not	a5,a5
	slli	a5,a5,0x10
	srai	a5,a5,0x1f
	zext.b	s0,a5
lab97: 	mul	a5,a2,t3
	lbu	a2,0(a3)
	lbu	t2,1(a3)
	sb	s0,9(a4)
	srli	a5,a5,0x8
	addi	a5,a5,-91
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sub	a2,a2,a5
	sub	t2,t2,a5
	slli	a2,a2,0x10
	slli	t2,t2,0x10
	srli	a2,a2,0x10
	srli	t2,t2,0x10
	bgeu	a1,a2,lab84
	slli	s0,a2,0x10
	srai	s0,s0,0x10
	li	a2,0
	bgez	s0,lab85
lab96: 	sb	a2,0(a3)
	bgeu	a1,t2,lab86
	slli	a2,t2,0x10
	srai	a2,a2,0x10
	li	t2,0
	bgez	a2,lab87
lab95: 	lbu	a2,8(a3)
	sb	t2,1(a3)
	sub	a2,a2,a5
	slli	a2,a2,0x10
	srli	a2,a2,0x10
	bgeu	a1,a2,lab88
	slli	a2,a2,0x10
	srai	a2,a2,0x10
	li	t2,0
	bgez	a2,lab89
lab94: 	lbu	a2,9(a3)
	sb	t2,8(a3)
	sub	a5,a2,a5
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	bgeu	a1,a5,lab90
	not	a5,a5
	slli	a5,a5,0x10
	srai	a5,a5,0x1f
	zext.b	t2,a5
lab93: 	sb	t2,9(a3)
	addi	a4,a4,2
	addi	a3,a3,2
	bne	a0,a6,lab91
	addi	a6,a0,16
	addi	t5,t5,16
	addi	t1,t1,16
	bne	t6,a6,lab92
	lw	s0,12(sp)
	lw	s1,8(sp)
	addi	sp,sp,16
	ret
lab85: 	sb	a7,0(a3)
	bgeu	t0,t2,lab86
lab87: 	lbu	a2,8(a3)
	sb	a7,1(a3)
	sub	a2,a2,a5
	slli	a2,a2,0x10
	srli	a2,a2,0x10
	bgeu	a1,a2,lab88
lab89: 	lbu	a2,9(a3)
	sb	a7,8(a3)
	li	t2,255
	sub	a5,a2,a5
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	bltu	a1,a5,lab93
lab90: 	zext.b	t2,a5
	j	lab93
lab88: 	zext.b	t2,a2
	j	lab94
lab86: 	zext.b	t2,t2
	j	lab95
lab84: 	zext.b	a2,a2
	j	lab96
lab78: 	sb	a7,0(a4)
	bgeu	a1,s0,lab79
lab80: 	lbu	t2,8(a4)
	sb	a7,1(a4)
	add	t2,a5,t2
	slli	t2,t2,0x10
	srli	t2,t2,0x10
	bgeu	a1,t2,lab81
lab82: 	lbu	t2,9(a4)
	sb	a7,8(a4)
	li	s0,255
	add	a5,a5,t2
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	bltu	a1,a5,lab97
lab83: 	zext.b	s0,a5
	j	lab97
lab81: 	zext.b	t2,t2
	j	lab98
lab79: 	zext.b	s0,s0
	j	lab99
lab77: 	zext.b	t2,t2
	j	lab100
upsampleCrH:
	lui	a4,0x100
	addi	a4,a4,44 # 10002c <gCoeffBuf>
	addi	a5,a4,128
	add	a5,a5,a1
	slli	a0,a0,0x1
	addi	a3,a4,640
	add	a3,a3,a1
	add	a0,a4,a0
	addi	t1,a5,64
	li	a6,103
	li	a2,255
	li	a7,-1
	li	a1,183
lab125: 	lh	a4,0(a0)
	lbu	t4,0(a3)
	lbu	t6,1(a3)
	zext.b	t3,a4
	mul	t5,t3,a6
	zext.b	a4,a4
	addi	a4,a4,-179
	srli	t5,t5,0x8
	add	a4,a4,t5
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	add	t4,a4,t4
	slli	t4,t4,0x10
	add	a4,a4,t6
	srli	t4,t4,0x10
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	zext.b	t5,t4
	bgeu	a2,t4,lab101
	slli	t4,t4,0x10
	srai	t4,t4,0x10
	li	t5,0
	bgez	t4,lab102
lab101: 	sb	t5,0(a3)
	bgeu	a2,a4,lab103
	not	a4,a4
	slli	a4,a4,0x10
	srai	a4,a4,0x1f
lab103: 	zext.b	t5,a4
lab126: 	mul	a4,t3,a1
	lbu	t4,0(a5)
	lbu	t3,1(a5)
	sb	t5,1(a3)
	srli	a4,a4,0x8
	addi	a4,a4,-91
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	sub	t4,t4,a4
	sub	a4,t3,a4
	slli	t3,t4,0x10
	srli	t3,t3,0x10
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	zext.b	t4,t3
	bgeu	a2,t3,lab104
	slli	t3,t3,0x10
	srai	t3,t3,0x10
	li	t4,0
	bgez	t3,lab105
lab104: 	sb	t4,0(a5)
	bgeu	a2,a4,lab106
	not	a4,a4
	slli	a4,a4,0x10
	srai	a4,a4,0x1f
lab106: 	zext.b	t6,a4
lab127: 	lh	a4,2(a0)
	lbu	t4,2(a3)
	lbu	t0,3(a3)
	zext.b	t3,a4
	mul	t5,t3,a6
	zext.b	a4,a4
	addi	a4,a4,-179
	sb	t6,1(a5)
	srli	t5,t5,0x8
	add	a4,a4,t5
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	add	t4,a4,t4
	slli	t4,t4,0x10
	add	a4,a4,t0
	srli	t4,t4,0x10
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	zext.b	t5,t4
	bgeu	a2,t4,lab107
	slli	t4,t4,0x10
	srai	t4,t4,0x10
	li	t5,0
	bgez	t4,lab108
lab107: 	sb	t5,2(a3)
	bgeu	a2,a4,lab109
	not	a4,a4
	slli	a4,a4,0x10
	srai	a4,a4,0x1f
lab109: 	zext.b	t5,a4
lab128: 	mul	a4,t3,a1
	lbu	t4,2(a5)
	lbu	t3,3(a5)
	sb	t5,3(a3)
	srli	a4,a4,0x8
	addi	a4,a4,-91
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	sub	t4,t4,a4
	sub	a4,t3,a4
	slli	t3,t4,0x10
	srli	t3,t3,0x10
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	zext.b	t4,t3
	bgeu	a2,t3,lab110
	slli	t3,t3,0x10
	srai	t3,t3,0x10
	li	t4,0
	bgez	t3,lab111
lab110: 	sb	t4,2(a5)
	bgeu	a2,a4,lab112
	not	a4,a4
	slli	a4,a4,0x10
	srai	a4,a4,0x1f
lab112: 	zext.b	t6,a4
lab129: 	lh	a4,4(a0)
	lbu	t4,4(a3)
	lbu	t0,5(a3)
	zext.b	t3,a4
	mul	t5,t3,a6
	zext.b	a4,a4
	addi	a4,a4,-179
	sb	t6,3(a5)
	srli	t5,t5,0x8
	add	a4,a4,t5
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	add	t4,a4,t4
	slli	t4,t4,0x10
	add	a4,a4,t0
	srli	t4,t4,0x10
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	zext.b	t5,t4
	bgeu	a2,t4,lab113
	slli	t4,t4,0x10
	srai	t4,t4,0x10
	li	t5,0
	bgez	t4,lab114
lab113: 	sb	t5,4(a3)
	bgeu	a2,a4,lab115
	not	a4,a4
	slli	a4,a4,0x10
	srai	a4,a4,0x1f
lab115: 	zext.b	t5,a4
lab130: 	mul	a4,t3,a1
	lbu	t4,4(a5)
	lbu	t3,5(a5)
	sb	t5,5(a3)
	srli	a4,a4,0x8
	addi	a4,a4,-91
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	sub	t4,t4,a4
	sub	a4,t3,a4
	slli	t3,t4,0x10
	srli	t3,t3,0x10
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	zext.b	t4,t3
	bgeu	a2,t3,lab116
	slli	t3,t3,0x10
	srai	t3,t3,0x10
	li	t4,0
	bgez	t3,lab117
lab116: 	sb	t4,4(a5)
	bgeu	a2,a4,lab118
	not	a4,a4
	slli	a4,a4,0x10
	srai	a4,a4,0x1f
lab118: 	zext.b	t6,a4
lab131: 	lh	t5,6(a0)
	lbu	t4,6(a3)
	lbu	t0,7(a3)
	zext.b	t3,t5
	mul	a4,t3,a6
	zext.b	t5,t5
	addi	t5,t5,-179
	sb	t6,5(a5)
	srli	a4,a4,0x8
	add	a4,a4,t5
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	add	t4,a4,t4
	slli	t4,t4,0x10
	add	a4,a4,t0
	srli	t4,t4,0x10
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	zext.b	t5,t4
	bgeu	a2,t4,lab119
	slli	t4,t4,0x10
	srai	t4,t4,0x10
	li	t5,0
	bgez	t4,lab120
lab119: 	sb	t5,6(a3)
	bgeu	a2,a4,lab121
	not	a4,a4
	slli	a4,a4,0x10
	srai	a4,a4,0x1f
lab121: 	zext.b	t5,a4
lab132: 	mul	a4,t3,a1
	lbu	t4,6(a5)
	lbu	t3,7(a5)
	sb	t5,7(a3)
	srli	a4,a4,0x8
	addi	a4,a4,-91
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	sub	t4,t4,a4
	sub	a4,t3,a4
	slli	t3,t4,0x10
	srli	t3,t3,0x10
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	zext.b	t4,t3
	bgeu	a2,t3,lab122
	slli	t3,t3,0x10
	srai	t3,t3,0x10
	li	t4,0
	bgez	t3,lab123
lab122: 	sb	t4,6(a5)
	bgeu	a2,a4,lab124
	not	a4,a4
	slli	a4,a4,0x10
	srai	a4,a4,0x1f
lab124: 	zext.b	t3,a4
lab133: 	sb	t3,7(a5)
	addi	a5,a5,8
	addi	a3,a3,8
	addi	a0,a0,16
	bne	a5,t1,lab125
	ret
lab102: 	sb	a7,0(a3)
	li	t5,255
	bltu	a2,a4,lab126
	j	lab103
lab105: 	sb	a7,0(a5)
	li	t6,255
	bltu	a2,a4,lab127
	j	lab106
lab108: 	sb	a7,2(a3)
	li	t5,255
	bltu	a2,a4,lab128
	j	lab109
lab111: 	sb	a7,2(a5)
	li	t6,255
	bltu	a2,a4,lab129
	j	lab112
lab114: 	sb	a7,4(a3)
	li	t5,255
	bltu	a2,a4,lab130
	j	lab115
lab117: 	sb	a7,4(a5)
	li	t6,255
	bltu	a2,a4,lab131
	j	lab118
lab120: 	sb	a7,6(a3)
	li	t5,255
	bltu	a2,a4,lab132
	j	lab121
lab123: 	sb	a7,6(a5)
	li	t3,255
	bltu	a2,a4,lab133
	j	lab124
upsampleCrV:
	lui	a6,0x100
	addi	a6,a6,44 # 10002c <gCoeffBuf>
	addi	t3,a6,640
	slli	a0,a0,0x1
	addi	t5,a6,128
	addi	a0,a0,16
	addi	sp,sp,-16
	add	t3,t3,a1
	add	a6,a6,a0
	sw	s0,12(sp)
	add	t5,t5,a1
	addi	t6,t3,64
	li	t1,103
	li	a0,255
	li	t4,-1
	li	a7,183
lab145: 	addi	a1,a6,-16
	mv	a2,t5
	mv	a3,t3
	j	lab134
lab141: 	slli	t2,t0,0x10
	srai	t2,t2,0x10
	li	t0,0
	bgez	t2,lab135
	sb	t0,0(a3)
	bgeu	a0,a5,lab136
lab142: 	not	a5,a5
	slli	a5,a5,0x10
	srai	a5,a5,0x1f
	zext.b	t2,a5
lab143: 	mul	a5,a4,a7
	lbu	t0,0(a2)
	lbu	a4,8(a2)
	sb	t2,8(a3)
	srli	a5,a5,0x8
	addi	a5,a5,-91
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sub	t0,t0,a5
	sub	a5,a4,a5
	slli	a4,t0,0x10
	slli	a5,a5,0x10
	srli	a4,a4,0x10
	srli	a5,a5,0x10
	bgeu	a0,a4,lab137
	slli	t0,a4,0x10
	srai	t0,t0,0x10
	li	a4,0
	bgez	t0,lab138
lab146: 	sb	a4,0(a2)
	bgeu	a0,a5,lab139
	not	a5,a5
	slli	a5,a5,0x10
	srai	a5,a5,0x1f
	zext.b	a4,a5
lab144: 	sb	a4,8(a2)
	addi	a3,a3,1
	addi	a2,a2,1
	beq	a1,a6,lab140
lab134: 	lh	a5,0(a1)
	lbu	t0,0(a3)
	lbu	s0,8(a3)
	zext.b	a4,a5
	mul	t2,a4,t1
	zext.b	a5,a5
	addi	a5,a5,-179
	addi	a1,a1,2
	srli	t2,t2,0x8
	add	a5,a5,t2
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	add	t0,a5,t0
	slli	t0,t0,0x10
	add	a5,a5,s0
	slli	a5,a5,0x10
	srli	t0,t0,0x10
	srli	a5,a5,0x10
	bltu	a0,t0,lab141
	zext.b	t0,t0
	sb	t0,0(a3)
	bltu	a0,a5,lab142
lab136: 	zext.b	t2,a5
	j	lab143
lab138: 	sb	t4,0(a2)
	li	a4,255
	bltu	a0,a5,lab144
lab139: 	zext.b	a4,a5
	sb	a4,8(a2)
	addi	a3,a3,1
	addi	a2,a2,1
	bne	a1,a6,lab134
lab140: 	addi	t3,t3,16
	addi	t5,t5,16
	addi	a6,a1,16
	bne	t3,t6,lab145
	lw	s0,12(sp)
	addi	sp,sp,16
	ret
lab137: 	zext.b	a4,a4
	j	lab146
lab135: 	sb	t4,0(a3)
	li	t2,255
	bltu	a0,a5,lab143
	zext.b	t2,a5
	j	lab143
getChar:
	addi	sp,sp,-16
	sw	s1,4(sp)
	lui	s1,0x101
	lbu	a5,-1696(s1) # 100960 <gInBufLeft>
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s2,0(sp)
	beqz	a5,lab147
	lui	s0,0x100
	lui	s2,0x101
	addi	s0,s0,44 # 10002c <gCoeffBuf>
lab149: 	lbu	a4,-1695(s2) # 100961 <gInBufOfs>
	lw	ra,12(sp)
	addi	a5,a5,-1
	add	s0,s0,a4
	lbu	a0,896(s0)
	lw	s0,8(sp)
	addi	a4,a4,1
	sb	a5,-1696(s1)
	sb	a4,-1695(s2)
	lw	s1,4(sp)
	lw	s2,0(sp)
	addi	sp,sp,16
	ret
lab147: 	lui	a4,0x101
	lui	a5,0x101
	lw	a3,-1768(a4) # 100918 <g_pCallback_data>
	lui	s0,0x100
	lw	a5,-1764(a5) # 10091c <g_pNeedBytesCallback>
	addi	s0,s0,44 # 10002c <gCoeffBuf>
	lui	s2,0x101
	li	a4,4
	addi	a2,s1,-1696
	li	a1,252
	addi	a0,s0,900
	sb	a4,-1695(s2) # 100961 <gInBufOfs>
	sb	zero,-1696(s1)
	jalr	a5
	beqz	a0,lab148
	lui	a5,0x101
	sb	a0,-1771(a5) # 100915 <gCallbackStatus>
lab148: 	lbu	a5,-1696(s1)
	bnez	a5,lab149
	lui	a4,0x101
	lbu	a5,-1694(a4) # 100962 <gTemFlag>
	lw	ra,12(sp)
	lw	s0,8(sp)
	not	a5,a5
	zext.b	a5,a5
	seqz	a0,a5
	neg	a0,a0
	andi	a0,a0,-38
	sb	a5,-1694(a4)
	lw	s1,4(sp)
	lw	s2,0(sp)
	addi	a0,a0,255
	addi	sp,sp,16
	ret
getBits.constprop.1:
	addi	sp,sp,-32
	sw	s2,16(sp)
	sw	s3,12(sp)
	lui	s2,0x101
	lui	s3,0x101
	lbu	a5,-1700(s3) # 10095c <gBitsLeft>
	sw	s0,24(sp)
	lhu	s0,-1698(s2) # 10095e <gBitBuf>
	sw	s1,20(sp)
	sw	ra,28(sp)
	sll	a5,s0,a5
	sh	a5,-1698(s2)
	jal	ra,getChar
	lhu	a5,-1698(s2)
	lbu	a4,-1700(s3)
	li	s1,8
	or	a5,a0,a5
	slli	a5,a5,0x10
	sub	a3,s1,a4
	srli	a5,a5,0x10
	sll	a5,a5,a3
	slli	a3,a5,0x10
	srli	a3,a3,0x10
	andi	s0,s0,-256
	srli	a3,a3,0x8
	li	a2,7
	or	s0,s0,a3
	bgeu	a2,a4,lab150
	lui	a3,0x1000
	slli	a5,a5,0x8
	addi	a3,a3,-256 # ffff00 <_stack+0xef7f00>
	and	a5,a5,a3
	addi	a4,a4,-8
	slli	a5,a5,0x10
	sb	a4,-1700(s3)
	srli	a5,a5,0x10
lab151: 	lw	ra,28(sp)
	mv	a0,s0
	lw	s0,24(sp)
	sh	a5,-1698(s2)
	lw	s1,20(sp)
	lw	s2,16(sp)
	lw	s3,12(sp)
	addi	sp,sp,32
	ret
lab150: 	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sll	a5,a5,a4
	sh	a5,-1698(s2)
	jal	ra,getChar
	lhu	a5,-1698(s2)
	lbu	a4,-1700(s3)
	or	a5,a0,a5
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sub	s1,s1,a4
	sll	a5,a5,s1
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	j	lab151
huffDecode:
	addi	sp,sp,-64
	sw	s4,40(sp)
	sw	s5,36(sp)
	lui	s4,0x101
	lui	s5,0x101
	lhu	a5,-1698(s4) # 10095e <gBitBuf>
	lbu	a4,-1700(s5) # 10095c <gBitsLeft>
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s6,32(sp)
	sw	s7,28(sp)
	sw	s8,24(sp)
	sw	s9,20(sp)
	sw	s10,16(sp)
	sw	s11,12(sp)
	mv	s1,a0
	mv	s2,a1
	srli	s3,a5,0xf
	beqz	a4,lab152
lab162: 	slli	a5,a5,0x1
	addi	a4,a4,-1
	slli	a5,a5,0x10
	zext.b	a4,a4
	srli	a5,a5,0x10
	lui	s11,0x10
	mv	a3,s3
	sb	a4,-1700(s5)
	sh	a5,-1698(s4)
	addi	s9,s1,32
	li	s8,0
	addi	s11,s11,-1 # ffff <__DTOR_END__+0x9c0f>
	li	s3,255
	li	s10,16
	j	lab153
lab157: 	slli	a5,a5,0x1
	addi	a4,a4,-1
	slli	a5,a5,0x10
	zext.b	a4,a4
	srli	a5,a5,0x10
	sb	a4,-1700(s5)
	sh	a5,-1698(s4)
	or	a3,s6,s7
	beq	s8,s10,lab154
lab153: 	lhu	a2,0(s9)
	slli	a1,a3,0x1
	addi	s9,s9,2
	bltu	a2,a3,lab155
	bne	a2,s11,lab156
lab155: 	slli	s7,a1,0x10
	addi	s8,s8,1
	srli	s6,a5,0xf
	srli	s7,s7,0x10
	bnez	a4,lab157
	jal	ra,getChar
	mv	s0,a0
	beq	a0,s3,lab158
lab159: 	lhu	a2,-1698(s4)
	lbu	a4,-1700(s5)
	or	a5,s0,a2
	addi	a4,a4,8
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	zext.b	a4,a4
	j	lab157
lab158: 	jal	ra,getChar
	lui	a5,0x100
	lui	a6,0x101
	lui	a2,0x101
	addi	a5,a5,44 # 10002c <gCoeffBuf>
	beqz	a0,lab159
	lbu	a4,-1695(a6) # 100961 <gInBufOfs>
	lbu	a1,-1696(a2) # 100960 <gInBufLeft>
	addi	a3,a4,-1
	zext.b	a3,a3
	addi	a4,a4,-2
	zext.b	a4,a4
	add	a3,a5,a3
	sb	a0,896(a3)
	add	a5,a5,a4
	addi	a3,a1,2
	sb	a4,-1695(a6)
	li	a4,-1
	sb	a4,896(a5)
	sb	a3,-1696(a2)
	j	lab159
lab154: 	li	a0,0
lab160: 	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	lw	s2,48(sp)
	lw	s3,44(sp)
	lw	s4,40(sp)
	lw	s5,36(sp)
	lw	s6,32(sp)
	lw	s7,28(sp)
	lw	s8,24(sp)
	lw	s9,20(sp)
	lw	s10,16(sp)
	lw	s11,12(sp)
	addi	sp,sp,64
	ret
lab156: 	add	a4,s1,s8
	slli	a5,s8,0x1
	add	s1,s1,a5
	lbu	a4,64(a4)
	lhu	a2,0(s1)
	add	a5,a4,a3
	sub	a5,a5,a2
	zext.b	a5,a5
	add	s2,s2,a5
	lbu	a0,0(s2)
	j	lab160
lab152: 	jal	ra,getChar
	li	a5,255
	mv	s0,a0
	beq	a0,a5,lab161
lab163: 	lhu	a5,-1698(s4)
	lbu	a4,-1700(s5)
	or	a5,s0,a5
	addi	a4,a4,8
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	zext.b	a4,a4
	j	lab162
lab161: 	jal	ra,getChar
	beqz	a0,lab163
	lui	a6,0x101
	lbu	a5,-1695(a6) # 100961 <gInBufOfs>
	lui	a1,0x101
	lbu	a2,-1696(a1) # 100960 <gInBufLeft>
	addi	a3,a5,-1
	lui	a4,0x100
	addi	a4,a4,44 # 10002c <gCoeffBuf>
	zext.b	a3,a3
	addi	a5,a5,-2
	zext.b	a5,a5
	add	a3,a4,a3
	sb	a0,896(a3)
	add	a4,a4,a5
	addi	a3,a2,2
	sb	a5,-1695(a6)
	li	a5,-1
	sb	a5,896(a4)
	sb	a3,-1696(a1)
	j	lab163
getOctet.part.0:
	addi	sp,sp,-16
	sw	s1,4(sp)
	lui	s1,0x101
	lbu	a5,-1696(s1) # 100960 <gInBufLeft>
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s2,0(sp)
	beqz	a5,lab164
	lui	s0,0x100
	lui	s2,0x101
	addi	s0,s0,44 # 10002c <gCoeffBuf>
lab167: 	lbu	a4,-1695(s2) # 100961 <gInBufOfs>
	addi	a5,a5,-1
	zext.b	a5,a5
	add	a2,s0,a4
	mv	a3,a4
	lbu	a2,896(a2)
	addi	a4,a4,1
	zext.b	a4,a4
	sb	a5,-1696(s1)
	sb	a4,-1695(s2)
	bnez	a2,lab165
	lw	ra,12(sp)
	lw	s0,8(sp)
	lw	s1,4(sp)
	lw	s2,0(sp)
	addi	sp,sp,16
	ret
lab164: 	lui	a4,0x101
	lui	a5,0x101
	lw	a3,-1768(a4) # 100918 <g_pCallback_data>
	lui	s0,0x100
	lw	a5,-1764(a5) # 10091c <g_pNeedBytesCallback>
	addi	s0,s0,44 # 10002c <gCoeffBuf>
	lui	s2,0x101
	li	a4,4
	addi	a2,s1,-1696
	li	a1,252
	addi	a0,s0,900
	sb	a4,-1695(s2) # 100961 <gInBufOfs>
	sb	zero,-1696(s1)
	jalr	a5
	beqz	a0,lab166
	lui	a5,0x101
	sb	a0,-1771(a5) # 100915 <gCallbackStatus>
lab166: 	lbu	a5,-1696(s1)
	bnez	a5,lab167
	lui	a1,0x101
	lbu	a5,-1694(a1) # 100962 <gTemFlag>
	lbu	a4,-1695(s2)
	li	a2,217
	not	a5,a5
	zext.b	a5,a5
	addi	a3,a4,-1
	sb	a5,-1694(a1)
	zext.b	a3,a3
	beqz	a5,lab165
	li	a5,0
	li	a2,255
lab165: 	addi	a4,a4,-2
	zext.b	a4,a4
	add	a3,s0,a3
	sb	a2,896(a3)
	add	s0,s0,a4
	sb	a4,-1695(s2)
	li	a4,-1
	sb	a4,896(s0)
	lw	ra,12(sp)
	lw	s0,8(sp)
	addi	a5,a5,2
	sb	a5,-1696(s1)
	lw	s2,0(sp)
	lw	s1,4(sp)
	addi	sp,sp,16
	ret
getBits.constprop.2:
	addi	sp,sp,-48
	sw	s5,24(sp)
	lui	s5,0x101
	sw	s1,40(sp)
	lhu	s1,-1698(s5) # 10095e <gBitBuf>
	sw	s2,36(sp)
	sw	s3,32(sp)
	sw	s4,28(sp)
	sw	ra,44(sp)
	lui	s4,0x101
	li	a3,8
	lbu	a4,-1700(s4) # 10095c <gBitsLeft>
	mv	s2,a0
	mv	a5,s1
	mv	s3,a0
	bltu	a3,a0,lab168
	bltu	a4,s3,lab169
lab171: 	sub	a4,a4,s3
	sll	a5,a5,s3
	sb	a4,-1700(s4)
	sh	a5,-1698(s5)
lab173: 	li	a5,16
	lw	ra,44(sp)
	sub	a5,a5,s2
	sra	a0,s1,a5
	slli	a0,a0,0x10
	lw	s1,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	lw	s4,28(sp)
	lw	s5,24(sp)
	srli	a0,a0,0x10
	addi	sp,sp,48
	ret
lab168: 	sll	a4,s1,a4
	addi	s3,a0,-8
	sh	a4,-1698(s5)
	jal	ra,getChar
	li	a5,255
	zext.b	s3,s3
	beq	a0,a5,lab170
lab174: 	lhu	a5,-1698(s5)
	lbu	a4,-1700(s4)
	li	a3,8
	or	a5,a0,a5
	slli	a5,a5,0x10
	sub	a3,a3,a4
	srli	a5,a5,0x10
	sll	a5,a5,a3
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	andi	s1,s1,-256
	srli	a3,a5,0x8
	or	s1,s1,a3
	bgeu	a4,s3,lab171
lab169: 	sll	a5,a5,a4
	sh	a5,-1698(s5)
	jal	ra,getChar
	li	a5,255
	beq	a0,a5,lab172
lab175: 	lhu	a4,-1698(s5)
	lbu	a5,-1700(s4)
	or	a0,a0,a4
	slli	a0,a0,0x10
	sub	a4,s3,a5
	srli	a0,a0,0x10
	addi	a5,a5,8
	sll	a0,a0,a4
	sub	a5,a5,s3
	sh	a0,-1698(s5)
	sb	a5,-1700(s4)
	j	lab173
lab170: 	sw	a0,12(sp)
	jal	ra,getOctet.part.0
	lw	a0,12(sp)
	j	lab174
lab172: 	sw	a0,12(sp)
	jal	ra,getOctet.part.0
	lw	a0,12(sp)
	j	lab175
processMarkers:
	addi	sp,sp,-160
	sw	s4,136(sp)
	lui	s4,0x101
	sw	s5,132(sp)
	sw	s6,128(sp)
	lhu	s5,-1698(s4) # 10095e <gBitBuf>
	lui	s6,0x101
	lui	a4,0x80
	lbu	a7,-1700(s6) # 10095c <gBitsLeft>
	addi	a5,a4,-2040 # 7f808 <__DTOR_END__+0x79418>
	sw	s7,124(sp)
	sw	s8,120(sp)
	sw	s9,116(sp)
	sw	s11,108(sp)
	sw	a5,84(sp)
	sw	ra,156(sp)
	sw	s0,152(sp)
	sw	s1,148(sp)
	sw	s2,144(sp)
	sw	s3,140(sp)
	sw	s10,112(sp)
	li	s7,7
	li	s11,255
	li	s9,8
	mv	a5,s5
	mv	s8,a0
lab177: 	mv	s0,a5
	bgeu	s7,a7,lab176
lab222: 	slli	a5,a5,0x8
	addi	a7,a7,-8
	slli	a5,a5,0x10
	zext.b	a7,a7
	srli	a5,a5,0x10
	sb	a7,-1700(s6)
	sh	a5,-1698(s4)
	srai	s0,s0,0x8
	bne	s0,s11,lab177
lab179: 	addi	a2,a7,-8
	slli	a3,a5,0x8
	mv	s0,a5
	srai	a4,a5,0x8
	bgeu	s7,a7,lab178
lab223: 	slli	a5,a3,0x10
	zext.b	a7,a2
	srli	a5,a5,0x10
	sb	a7,-1700(s6)
	sh	a5,-1698(s4)
	beq	a4,s11,lab179
	beqz	a4,lab177
lab224: 	zext.b	a4,a4
	li	a5,215
	bltu	a5,a4,lab180
	li	a5,196
	bltu	a5,a4,lab181
	bne	a4,a5,lab182
	jal	ra,getBits.constprop.1
	li	a4,1
	bgeu	a4,a0,lab183
	addi	a5,a0,-2
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sw	a5,16(sp)
	beqz	a5,lab183
	lui	a4,0x101
	addi	a4,a4,-828 # 100cc4 <CSWTCH.306>
	sw	a4,88(sp)
	lhu	a5,-1698(s4)
	lui	a4,0x10
	lbu	a7,-1700(s6)
	addi	a4,a4,-1 # ffff <__DTOR_END__+0x9c0f>
	li	s5,7
	sw	a4,8(sp)
	sw	s8,92(sp)
lab221: 	mv	s0,a5
	bgeu	s5,a7,lab184
lab236: 	addi	a7,a7,-8
	slli	a5,a5,0x8
	zext.b	a7,a7
	slli	a5,a5,0x10
	sb	a7,-1700(s6)
	srli	a5,a5,0x10
lab237: 	srli	a4,s0,0x8
	andi	a2,a4,14
	sh	a5,-1698(s4)
	sw	a2,20(sp)
	srai	a3,s0,0x8
	bnez	a2,lab185
	andi	a2,a4,240
	li	a1,16
	bltu	a1,a2,lab185
	srli	s0,a4,0x3
	lui	a1,0x101
	lbu	a4,-1692(a1) # 100964 <gValidHuffTables>
	andi	s0,s0,2
	andi	a3,a3,1
	or	a3,s0,a3
	li	a2,1
	sll	a2,a2,a3
	or	a4,a4,a2
	lw	a2,88(sp)
	sw	a3,12(sp)
	slli	a3,a3,0x2
	add	a3,a2,a3
	sb	a4,-1692(a1)
	lw	s0,0(a3)
	lw	s10,16(a3)
	bgeu	s5,a7,lab186
	addi	a3,a7,-8
	slli	s8,a5,0x8
	srai	a4,a5,0x8
	zext.b	a3,a3
	srli	a5,a5,0x8
	slli	s8,s8,0x10
	sb	a3,-1700(s6)
	sw	a4,36(sp)
	sw	a5,24(sp)
	srli	s8,s8,0x10
	bgeu	s5,a3,lab187
lab254: 	lw	a4,24(sp)
	slli	s3,s8,0x8
	addi	a5,a3,-8
	srai	s8,s8,0x8
	zext.b	a5,a5
	add	s1,a4,s8
	slli	s3,s3,0x10
	slli	s1,s1,0x10
	sb	a5,-1700(s6)
	srli	s3,s3,0x10
	srli	s1,s1,0x10
	bgeu	s5,a5,lab188
lab255: 	slli	s2,s3,0x8
	addi	a5,a5,-8
	srai	s3,s3,0x8
	zext.b	a5,a5
	add	s1,s1,s3
	slli	s2,s2,0x10
	slli	s1,s1,0x10
	sb	a5,-1700(s6)
	srli	s2,s2,0x10
	srli	s1,s1,0x10
	bgeu	s5,a5,lab189
lab256: 	srai	a4,s2,0x8
	addi	a5,a5,-8
	zext.b	a5,a5
	slli	a2,s2,0x8
	add	a3,s1,a4
	slli	a2,a2,0x10
	slli	s1,a3,0x10
	sb	a5,-1700(s6)
	sw	a4,28(sp)
	srli	a2,a2,0x10
	srli	s1,s1,0x10
	bgeu	s5,a5,lab190
lab257: 	srai	a4,a2,0x8
	addi	a5,a5,-8
	zext.b	a5,a5
	slli	a1,a2,0x8
	add	a3,s1,a4
	slli	s2,a1,0x10
	slli	s1,a3,0x10
	sb	a5,-1700(s6)
	sw	a4,40(sp)
	srli	s2,s2,0x10
	srli	s1,s1,0x10
	bgeu	s5,a5,lab191
lab258: 	srai	a4,s2,0x8
	addi	a5,a5,-8
	zext.b	a5,a5
	slli	a2,s2,0x8
	add	a3,s1,a4
	slli	a2,a2,0x10
	slli	s1,a3,0x10
	sb	a5,-1700(s6)
	sw	a4,44(sp)
	srli	a2,a2,0x10
	srli	s1,s1,0x10
	bgeu	s5,a5,lab192
lab259: 	srai	a4,a2,0x8
	addi	a5,a5,-8
	zext.b	a5,a5
	slli	a1,a2,0x8
	add	a3,s1,a4
	slli	s2,a1,0x10
	slli	s1,a3,0x10
	sb	a5,-1700(s6)
	sw	a4,48(sp)
	srli	s2,s2,0x10
	srli	s1,s1,0x10
	bgeu	s5,a5,lab193
lab260: 	srai	a4,s2,0x8
	addi	a5,a5,-8
	zext.b	a5,a5
	slli	a2,s2,0x8
	add	a3,s1,a4
	slli	a2,a2,0x10
	slli	s1,a3,0x10
	sb	a5,-1700(s6)
	sw	a4,52(sp)
	srli	a2,a2,0x10
	srli	s1,s1,0x10
	bgeu	s5,a5,lab194
lab261: 	srai	a4,a2,0x8
	addi	a5,a5,-8
	zext.b	a5,a5
	slli	a1,a2,0x8
	add	a3,s1,a4
	slli	s2,a1,0x10
	slli	s1,a3,0x10
	sb	a5,-1700(s6)
	sw	a4,56(sp)
	srli	s2,s2,0x10
	srli	s1,s1,0x10
	bgeu	s5,a5,lab195
lab262: 	srai	a4,s2,0x8
	addi	a5,a5,-8
	zext.b	a5,a5
	slli	a2,s2,0x8
	add	a3,s1,a4
	slli	a2,a2,0x10
	slli	s1,a3,0x10
	sb	a5,-1700(s6)
	sw	a4,60(sp)
	srli	a2,a2,0x10
	srli	s1,s1,0x10
	bgeu	s5,a5,lab196
lab263: 	srai	a4,a2,0x8
	addi	a5,a5,-8
	zext.b	a5,a5
	slli	a1,a2,0x8
	add	a3,s1,a4
	slli	s2,a1,0x10
	slli	s1,a3,0x10
	sb	a5,-1700(s6)
	sw	a4,64(sp)
	srli	s2,s2,0x10
	srli	s1,s1,0x10
	bgeu	s5,a5,lab197
lab264: 	srai	a4,s2,0x8
	addi	a5,a5,-8
	zext.b	a5,a5
	slli	a2,s2,0x8
	add	a3,s1,a4
	slli	a2,a2,0x10
	slli	s1,a3,0x10
	sb	a5,-1700(s6)
	sw	a4,68(sp)
	srli	a2,a2,0x10
	srli	s1,s1,0x10
	bgeu	s5,a5,lab198
lab265: 	srai	a4,a2,0x8
	addi	a5,a5,-8
	zext.b	a5,a5
	slli	a1,a2,0x8
	add	a3,s1,a4
	slli	s2,a1,0x10
	slli	s1,a3,0x10
	sb	a5,-1700(s6)
	sw	a4,72(sp)
	srli	s2,s2,0x10
	srli	s1,s1,0x10
	bgeu	s5,a5,lab199
lab266: 	srai	a4,s2,0x8
	addi	a5,a5,-8
	zext.b	a5,a5
	slli	a2,s2,0x8
	add	a3,s1,a4
	slli	a2,a2,0x10
	slli	s1,a3,0x10
	sb	a5,-1700(s6)
	sw	a4,76(sp)
	srli	a2,a2,0x10
	srli	s1,s1,0x10
	bgeu	s5,a5,lab200
lab267: 	addi	a5,a5,-8
	slli	a1,a2,0x8
	zext.b	a5,a5
	slli	s2,a1,0x10
	sb	a5,-1700(s6)
	srli	s2,s2,0x10
lab268: 	srai	a4,a2,0x8
	add	a3,s1,a4
	slli	s1,a3,0x10
	sw	a4,80(sp)
	srli	s1,s1,0x10
	bgeu	s5,a5,lab201
	addi	a5,a5,-8
	zext.b	a7,a5
	slli	a5,s2,0x8
	slli	a5,a5,0x10
	sb	a7,-1700(s6)
	srli	a5,a5,0x10
lab253: 	lw	a4,12(sp)
	li	a2,1
	sh	a5,-1698(s4)
	sltu	a2,a2,a4
	srai	a4,s2,0x8
	neg	a2,a2
	add	a3,s1,a4
	andi	a2,a2,243
	slli	s1,a3,0x10
	sw	a4,32(sp)
	srli	s1,s1,0x10
	addi	a2,a2,12
	bltu	a2,s1,lab185
	beqz	s1,lab202
	mv	a6,s0
	li	s2,0
	mv	s0,s10
lab204: 	addi	a0,a7,-8
	slli	a1,a5,0x8
	add	a3,s0,s2
	addi	a4,s2,1
	mv	s10,a5
	srai	a2,a5,0x8
	bgeu	s5,a7,lab203
	slli	a5,a1,0x10
	zext.b	a7,a0
	srli	a5,a5,0x10
	sb	a7,-1700(s6)
	sh	a5,-1698(s4)
	sb	a2,0(a3)
	zext.b	s2,a4
	bltu	s2,s1,lab204
lab235: 	mv	s0,a6
lab202: 	addi	a3,s1,17
	lw	a4,16(sp)
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	bltu	a4,a3,lab185
	sub	a3,a4,a3
	slli	a4,a3,0x10
	srli	a4,a4,0x10
	sw	a4,16(sp)
	lw	a4,36(sp)
	beqz	a4,lab205
	lw	a3,24(sp)
	zext.b	a2,a4
	addi	a1,a3,-1
	slli	a3,a3,0x1
	slli	a1,a1,0x10
	slli	a3,a3,0x10
	srli	a1,a1,0x10
	srli	a3,a3,0x10
lab252: 	sh	zero,0(s0)
	sh	a1,32(s0)
	sb	zero,64(s0)
	beqz	s8,lab206
	add	a0,a3,s8
	slli	a0,a0,0x10
	srli	a0,a0,0x10
	addi	a1,a0,-1
	add	s8,a2,s8
	slli	a1,a1,0x10
	mv	t1,a3
	mv	a6,a2
	srli	a1,a1,0x10
	mv	a3,a0
	zext.b	a2,s8
lab251: 	slli	a3,a3,0x1
	slli	a3,a3,0x10
	sh	t1,2(s0)
	sh	a1,34(s0)
	sb	a6,65(s0)
	srli	a3,a3,0x10
	beqz	s3,lab207
	add	a0,a3,s3
	slli	a0,a0,0x10
	srli	a0,a0,0x10
	addi	a1,a0,-1
	add	s3,a2,s3
	slli	a1,a1,0x10
	mv	t1,a3
	mv	a6,a2
	srli	a1,a1,0x10
	mv	a3,a0
	zext.b	a2,s3
lab250: 	lw	a4,28(sp)
	slli	a3,a3,0x1
	slli	a3,a3,0x10
	sh	t1,4(s0)
	sh	a1,36(s0)
	sb	a6,66(s0)
	srli	a3,a3,0x10
	beqz	a4,lab208
	add	a0,a3,a4
	slli	a0,a0,0x10
	srli	a0,a0,0x10
	addi	a1,a0,-1
	add	s2,a2,a4
	slli	a1,a1,0x10
	mv	t1,a3
	mv	a6,a2
	srli	a1,a1,0x10
	mv	a3,a0
	zext.b	a2,s2
lab249: 	lw	a4,40(sp)
	slli	a3,a3,0x1
	slli	a3,a3,0x10
	sh	t1,6(s0)
	sh	a1,38(s0)
	sb	a6,67(s0)
	srli	a3,a3,0x10
	beqz	a4,lab209
	add	a0,a3,a4
	slli	a0,a0,0x10
	srli	a0,a0,0x10
	addi	a1,a0,-1
	add	s1,a2,a4
	slli	a1,a1,0x10
	mv	t1,a3
	mv	a6,a2
	srli	a1,a1,0x10
	mv	a3,a0
	zext.b	a2,s1
lab248: 	lw	a4,44(sp)
	slli	a3,a3,0x1
	slli	a3,a3,0x10
	sh	t1,8(s0)
	sh	a1,40(s0)
	sb	a6,68(s0)
	srli	a3,a3,0x10
	beqz	a4,lab210
	add	a6,a3,a4
	slli	a6,a6,0x10
	srli	a6,a6,0x10
	addi	a0,a6,-1
	add	a1,a2,a4
	slli	a0,a0,0x10
	mv	t3,a3
	mv	t1,a2
	srli	a0,a0,0x10
	mv	a3,a6
	zext.b	a2,a1
lab247: 	lw	a4,48(sp)
	slli	a3,a3,0x1
	slli	a3,a3,0x10
	sh	t3,10(s0)
	sh	a0,42(s0)
	sb	t1,69(s0)
	srli	a3,a3,0x10
	beqz	a4,lab211
	add	a6,a3,a4
	slli	a6,a6,0x10
	srli	a6,a6,0x10
	addi	a0,a6,-1
	add	a1,a2,a4
	slli	a0,a0,0x10
	mv	t3,a3
	mv	t1,a2
	srli	a0,a0,0x10
	mv	a3,a6
	zext.b	a2,a1
lab246: 	lw	a4,52(sp)
	slli	a3,a3,0x1
	slli	a3,a3,0x10
	sh	t3,12(s0)
	sh	a0,44(s0)
	sb	t1,70(s0)
	srli	a3,a3,0x10
	beqz	a4,lab212
	add	a6,a3,a4
	slli	a6,a6,0x10
	srli	a6,a6,0x10
	addi	a0,a6,-1
	add	a1,a2,a4
	slli	a0,a0,0x10
	mv	t3,a3
	mv	t1,a2
	srli	a0,a0,0x10
	mv	a3,a6
	zext.b	a2,a1
lab245: 	lw	a4,56(sp)
	slli	a3,a3,0x1
	slli	a3,a3,0x10
	sh	t3,14(s0)
	sh	a0,46(s0)
	sb	t1,71(s0)
	srli	a3,a3,0x10
	beqz	a4,lab213
	add	a6,a3,a4
	slli	a6,a6,0x10
	srli	a6,a6,0x10
	addi	a0,a6,-1
	add	a1,a2,a4
	slli	a0,a0,0x10
	mv	t3,a3
	mv	t1,a2
	srli	a0,a0,0x10
	mv	a3,a6
	zext.b	a2,a1
lab244: 	lw	a4,60(sp)
	slli	a3,a3,0x1
	slli	a3,a3,0x10
	sh	t3,16(s0)
	sh	a0,48(s0)
	sb	t1,72(s0)
	srli	a3,a3,0x10
	beqz	a4,lab214
	add	a6,a3,a4
	slli	a6,a6,0x10
	srli	a6,a6,0x10
	addi	a0,a6,-1
	add	a1,a2,a4
	slli	a0,a0,0x10
	mv	t3,a3
	mv	t1,a2
	srli	a0,a0,0x10
	mv	a3,a6
	zext.b	a2,a1
lab243: 	lw	a4,64(sp)
	slli	a3,a3,0x1
	slli	a3,a3,0x10
	sh	t3,18(s0)
	sh	a0,50(s0)
	sb	t1,73(s0)
	srli	a3,a3,0x10
	beqz	a4,lab215
	add	a6,a3,a4
	slli	a6,a6,0x10
	srli	a6,a6,0x10
	addi	a0,a6,-1
	add	a1,a2,a4
	slli	a0,a0,0x10
	mv	t3,a3
	mv	t1,a2
	srli	a0,a0,0x10
	mv	a3,a6
	zext.b	a2,a1
lab242: 	lw	a4,68(sp)
	slli	a3,a3,0x1
	slli	a3,a3,0x10
	sh	t3,20(s0)
	sh	a0,52(s0)
	sb	t1,74(s0)
	srli	a3,a3,0x10
	beqz	a4,lab216
	add	a6,a3,a4
	slli	a6,a6,0x10
	srli	a6,a6,0x10
	addi	a0,a6,-1
	add	a1,a2,a4
	slli	a0,a0,0x10
	mv	t3,a3
	mv	t1,a2
	srli	a0,a0,0x10
	mv	a3,a6
	zext.b	a2,a1
lab241: 	lw	a4,72(sp)
	slli	a3,a3,0x1
	slli	a3,a3,0x10
	sh	t3,22(s0)
	sh	a0,54(s0)
	sb	t1,75(s0)
	srli	a3,a3,0x10
	beqz	a4,lab217
	add	a6,a3,a4
	slli	a6,a6,0x10
	srli	a6,a6,0x10
	addi	a0,a6,-1
	add	a1,a2,a4
	slli	a0,a0,0x10
	mv	t3,a3
	mv	t1,a2
	srli	a0,a0,0x10
	mv	a3,a6
	zext.b	a2,a1
lab240: 	lw	a4,76(sp)
	slli	a3,a3,0x1
	slli	a3,a3,0x10
	sh	t3,24(s0)
	sh	a0,56(s0)
	sb	t1,76(s0)
	srli	a3,a3,0x10
	beqz	a4,lab218
	add	a6,a3,a4
	slli	a6,a6,0x10
	srli	a6,a6,0x10
	addi	a0,a6,-1
	add	a1,a2,a4
	slli	a0,a0,0x10
	mv	t3,a3
	mv	t1,a2
	srli	a0,a0,0x10
	mv	a3,a6
	zext.b	a2,a1
lab239: 	lw	a4,80(sp)
	slli	a3,a3,0x1
	slli	a3,a3,0x10
	sh	t3,26(s0)
	sh	a0,58(s0)
	sb	t1,77(s0)
	srli	a3,a3,0x10
	beqz	a4,lab219
	add	a6,a3,a4
	slli	a6,a6,0x10
	srli	a6,a6,0x10
	addi	a0,a6,-1
	add	a1,a2,a4
	slli	a0,a0,0x10
	mv	t1,a3
	sw	a2,20(sp)
	srli	a0,a0,0x10
	mv	a3,a6
	zext.b	a2,a1
lab238: 	lw	a4,20(sp)
	sh	t1,28(s0)
	sh	a0,60(s0)
	sb	a4,78(s0)
	lw	a4,32(sp)
	beqz	a4,lab220
	slli	a3,a3,0x1
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	addi	a1,a4,-1
	lw	a4,16(sp)
	add	a1,a3,a1
	sh	a3,30(s0)
	sh	a1,62(s0)
	sb	a2,79(s0)
	bnez	a4,lab221
lab185: 	lw	s8,92(sp)
	mv	s0,a5
	bltu	s7,a7,lab222
lab176: 	sll	a5,a5,a7
	sh	a5,-1698(s4)
	jal	ra,getChar
	lhu	a5,-1698(s4)
	lbu	a7,-1700(s6)
	srai	s0,s0,0x8
	or	a5,a0,a5
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sub	a4,s9,a7
	sll	a5,a5,a4
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sh	a5,-1698(s4)
	bne	s0,s11,lab177
	addi	a2,a7,-8
	slli	a3,a5,0x8
	mv	s0,a5
	srai	a4,a5,0x8
	bltu	s7,a7,lab223
lab178: 	sll	a5,a5,a7
	sh	a5,-1698(s4)
	jal	ra,getChar
	lhu	a5,-1698(s4)
	lbu	a7,-1700(s6)
	srai	a4,s0,0x8
	or	a5,a0,a5
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sub	a3,s9,a7
	sll	a5,a5,a3
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sh	a5,-1698(s4)
	beq	a4,s11,lab179
	beqz	a4,lab177
	j	lab224
lab182: 	li	a5,1
	beq	a4,a5,lab225
	addi	a5,a4,64
	zext.b	a5,a5
	li	a3,3
	bgeu	a3,a5,lab226
lab233: 	jal	ra,getBits.constprop.1
	li	a4,1
	bgeu	a4,a0,lab183
	addi	a5,a0,-2
	slli	s0,a5,0x10
	srli	s0,s0,0x10
	beqz	s0,lab183
	lhu	a5,-1698(s4)
	lbu	a7,-1700(s6)
	li	s3,7
	li	s2,8
lab229: 	addi	a2,a7,-8
	slli	a3,a5,0x8
	addi	a4,s0,-1
	bgeu	s3,a7,lab227
lab228: 	slli	a5,a3,0x10
	zext.b	a7,a2
	srli	a5,a5,0x10
	slli	s0,a4,0x10
	sb	a7,-1700(s6)
	sh	a5,-1698(s4)
	srli	s0,s0,0x10
	beqz	s0,lab177
	addi	a2,a7,-8
	slli	a3,a5,0x8
	addi	a4,s0,-1
	bltu	s3,a7,lab228
lab227: 	sll	a5,a5,a7
	sh	a5,-1698(s4)
	jal	ra,getChar
	lhu	a5,-1698(s4)
	lbu	a7,-1700(s6)
	addi	s0,s0,-1
	or	a5,a0,a5
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sub	a4,s2,a7
	sll	a5,a5,a4
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	slli	s0,s0,0x10
	sh	a5,-1698(s4)
	srli	s0,s0,0x10
	bnez	s0,lab229
	j	lab177
lab181: 	addi	a3,a4,59
	li	a5,1
	sll	a5,a5,a3
	lw	a3,84(sp)
	and	a3,a5,a3
	bnez	a3,lab225
	andi	a5,a5,1911
	beqz	a5,lab230
lab226: 	sb	a4,0(s8)
	li	a0,0
lab231: 	lw	ra,156(sp)
	lw	s0,152(sp)
	lw	s1,148(sp)
	lw	s2,144(sp)
	lw	s3,140(sp)
	lw	s4,136(sp)
	lw	s5,132(sp)
	lw	s6,128(sp)
	lw	s7,124(sp)
	lw	s8,120(sp)
	lw	s9,116(sp)
	lw	s10,112(sp)
	lw	s11,108(sp)
	addi	sp,sp,160
	ret
lab225: 	li	a0,18
	j	lab231
lab180: 	li	a5,219
	beq	a4,a5,lab232
	bgeu	a5,a4,lab226
	li	a5,221
	bne	a4,a5,lab233
	jal	ra,getBits.constprop.1
	li	a5,4
	beq	a0,a5,lab234
lab183: 	lhu	a5,-1698(s4)
	lbu	a7,-1700(s6)
	j	lab177
lab203: 	sll	a5,a5,a7
	sw	a6,12(sp)
	sh	a5,-1698(s4)
	jal	ra,getChar
	lhu	a5,-1698(s4)
	lbu	a7,-1700(s6)
	li	a4,8
	or	a5,a0,a5
	slli	a5,a5,0x10
	sub	a4,a4,a7
	srli	a5,a5,0x10
	sll	a5,a5,a4
	slli	a5,a5,0x10
	add	a3,s0,s2
	srli	a5,a5,0x10
	srai	a4,s10,0x8
	addi	s2,s2,1
	sh	a5,-1698(s4)
	sb	a4,0(a3)
	zext.b	s2,s2
	lw	a6,12(sp)
	bltu	s2,s1,lab204
	j	lab235
lab220: 	lw	a4,16(sp)
	li	a3,-1
	sh	zero,30(s0)
	sh	a3,62(s0)
	sb	zero,79(s0)
	beqz	a4,lab185
	mv	s0,a5
	bltu	s5,a7,lab236
lab184: 	sll	a7,a5,a7
	sh	a7,-1698(s4)
	jal	ra,getChar
	lhu	a5,-1698(s4)
	lbu	a7,-1700(s6)
	li	a4,8
	or	a5,a0,a5
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sub	a4,a4,a7
	sll	a5,a5,a4
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	j	lab237
lab219: 	lw	a0,8(sp)
	li	t1,0
	j	lab238
lab218: 	lw	a0,8(sp)
	li	t1,0
	li	t3,0
	j	lab239
lab217: 	lw	a0,8(sp)
	li	t1,0
	li	t3,0
	j	lab240
lab216: 	lw	a0,8(sp)
	li	t1,0
	li	t3,0
	j	lab241
lab215: 	lw	a0,8(sp)
	li	t1,0
	li	t3,0
	j	lab242
lab214: 	lw	a0,8(sp)
	li	t1,0
	li	t3,0
	j	lab243
lab213: 	lw	a0,8(sp)
	li	t1,0
	li	t3,0
	j	lab244
lab212: 	lw	a0,8(sp)
	li	t1,0
	li	t3,0
	j	lab245
lab211: 	lw	a0,8(sp)
	li	t1,0
	li	t3,0
	j	lab246
lab210: 	lw	a0,8(sp)
	li	t1,0
	li	t3,0
	j	lab247
lab209: 	lw	a1,8(sp)
	li	a6,0
	li	t1,0
	j	lab248
lab208: 	lw	a1,8(sp)
	li	a6,0
	li	t1,0
	j	lab249
lab207: 	lw	a1,8(sp)
	li	a6,0
	li	t1,0
	j	lab250
lab206: 	lw	a1,8(sp)
	li	a6,0
	li	t1,0
	j	lab251
lab205: 	lw	a1,8(sp)
	li	a2,0
	li	a3,0
	j	lab252
lab201: 	sll	a5,s2,a5
	sh	a5,-1698(s4)
	jal	ra,getChar
	lhu	a5,-1698(s4)
	lbu	a7,-1700(s6)
	li	a4,8
	or	a5,a0,a5
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sub	a2,a4,a7
	sll	a5,a5,a2
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	j	lab253
lab186: 	sll	a7,a5,a7
	sw	a5,24(sp)
	sh	a7,-1698(s4)
	jal	ra,getChar
	lhu	a2,-1698(s4)
	lbu	a3,-1700(s6)
	li	a5,8
	or	s8,a0,a2
	sub	a2,a5,a3
	lw	a5,24(sp)
	slli	s8,s8,0x10
	srli	s8,s8,0x10
	srai	a4,a5,0x8
	sll	s8,s8,a2
	srli	a5,a5,0x8
	slli	s8,s8,0x10
	sw	a4,36(sp)
	sw	a5,24(sp)
	srli	s8,s8,0x10
	bltu	s5,a3,lab254
lab187: 	sll	a3,s8,a3
	sh	a3,-1698(s4)
	jal	ra,getChar
	lhu	a3,-1698(s4)
	lbu	a5,-1700(s6)
	li	a4,8
	or	s3,a0,a3
	sub	a3,a4,a5
	lw	a4,24(sp)
	slli	s3,s3,0x10
	srli	s3,s3,0x10
	srai	s8,s8,0x8
	sll	s3,s3,a3
	add	s1,a4,s8
	slli	s3,s3,0x10
	slli	s1,s1,0x10
	srli	s3,s3,0x10
	srli	s1,s1,0x10
	bltu	s5,a5,lab255
lab188: 	sll	a5,s3,a5
	sh	a5,-1698(s4)
	jal	ra,getChar
	lhu	a3,-1698(s4)
	lbu	a5,-1700(s6)
	li	a4,8
	or	s2,a0,a3
	slli	s2,s2,0x10
	srli	s2,s2,0x10
	sub	a3,a4,a5
	srai	s3,s3,0x8
	sll	s2,s2,a3
	add	s1,s1,s3
	slli	s2,s2,0x10
	slli	s1,s1,0x10
	srli	s2,s2,0x10
	srli	s1,s1,0x10
	bltu	s5,a5,lab256
lab189: 	sll	a5,s2,a5
	sh	a5,-1698(s4)
	jal	ra,getChar
	lhu	a3,-1698(s4)
	lbu	a5,-1700(s6)
	li	a4,8
	or	a2,a0,a3
	slli	a2,a2,0x10
	sub	a3,a4,a5
	srli	a2,a2,0x10
	srai	a4,s2,0x8
	sll	a2,a2,a3
	add	a3,s1,a4
	slli	a2,a2,0x10
	slli	s1,a3,0x10
	sw	a4,28(sp)
	srli	a2,a2,0x10
	srli	s1,s1,0x10
	bltu	s5,a5,lab257
lab190: 	sll	a5,a2,a5
	sw	a2,32(sp)
	sh	a5,-1698(s4)
	jal	ra,getChar
	lhu	a1,-1698(s4)
	lbu	a5,-1700(s6)
	lw	a2,32(sp)
	or	a1,a0,a1
	li	a4,8
	slli	a1,a1,0x10
	sub	a0,a4,a5
	srli	a1,a1,0x10
	srai	a4,a2,0x8
	sll	a1,a1,a0
	add	a3,s1,a4
	slli	s2,a1,0x10
	slli	s1,a3,0x10
	sw	a4,40(sp)
	srli	s2,s2,0x10
	srli	s1,s1,0x10
	bltu	s5,a5,lab258
lab191: 	sll	a5,s2,a5
	sh	a5,-1698(s4)
	jal	ra,getChar
	lhu	a2,-1698(s4)
	lbu	a5,-1700(s6)
	li	a4,8
	or	a2,a0,a2
	slli	a2,a2,0x10
	sub	a0,a4,a5
	srli	a2,a2,0x10
	srai	a4,s2,0x8
	sll	a2,a2,a0
	add	a3,s1,a4
	slli	a2,a2,0x10
	slli	s1,a3,0x10
	sw	a4,44(sp)
	srli	a2,a2,0x10
	srli	s1,s1,0x10
	bltu	s5,a5,lab259
lab192: 	sll	a5,a2,a5
	sw	a2,32(sp)
	sh	a5,-1698(s4)
	jal	ra,getChar
	lhu	a1,-1698(s4)
	lbu	a5,-1700(s6)
	lw	a2,32(sp)
	or	a1,a0,a1
	li	a4,8
	slli	a1,a1,0x10
	sub	a0,a4,a5
	srli	a1,a1,0x10
	srai	a4,a2,0x8
	sll	a1,a1,a0
	add	a3,s1,a4
	slli	s2,a1,0x10
	slli	s1,a3,0x10
	sw	a4,48(sp)
	srli	s2,s2,0x10
	srli	s1,s1,0x10
	bltu	s5,a5,lab260
lab193: 	sll	a5,s2,a5
	sh	a5,-1698(s4)
	jal	ra,getChar
	lhu	a2,-1698(s4)
	lbu	a5,-1700(s6)
	li	a4,8
	or	a2,a0,a2
	slli	a2,a2,0x10
	sub	a0,a4,a5
	srli	a2,a2,0x10
	srai	a4,s2,0x8
	sll	a2,a2,a0
	add	a3,s1,a4
	slli	a2,a2,0x10
	slli	s1,a3,0x10
	sw	a4,52(sp)
	srli	a2,a2,0x10
	srli	s1,s1,0x10
	bltu	s5,a5,lab261
lab194: 	sll	a5,a2,a5
	sw	a2,32(sp)
	sh	a5,-1698(s4)
	jal	ra,getChar
	lhu	a1,-1698(s4)
	lbu	a5,-1700(s6)
	lw	a2,32(sp)
	or	a1,a0,a1
	li	a4,8
	slli	a1,a1,0x10
	sub	a0,a4,a5
	srli	a1,a1,0x10
	srai	a4,a2,0x8
	sll	a1,a1,a0
	add	a3,s1,a4
	slli	s2,a1,0x10
	slli	s1,a3,0x10
	sw	a4,56(sp)
	srli	s2,s2,0x10
	srli	s1,s1,0x10
	bltu	s5,a5,lab262
lab195: 	sll	a5,s2,a5
	sh	a5,-1698(s4)
	jal	ra,getChar
	lhu	a2,-1698(s4)
	lbu	a5,-1700(s6)
	li	a4,8
	or	a2,a0,a2
	slli	a2,a2,0x10
	sub	a0,a4,a5
	srli	a2,a2,0x10
	srai	a4,s2,0x8
	sll	a2,a2,a0
	add	a3,s1,a4
	slli	a2,a2,0x10
	slli	s1,a3,0x10
	sw	a4,60(sp)
	srli	a2,a2,0x10
	srli	s1,s1,0x10
	bltu	s5,a5,lab263
lab196: 	sll	a5,a2,a5
	sw	a2,32(sp)
	sh	a5,-1698(s4)
	jal	ra,getChar
	lhu	a1,-1698(s4)
	lbu	a5,-1700(s6)
	lw	a2,32(sp)
	or	a1,a0,a1
	li	a4,8
	slli	a1,a1,0x10
	sub	a0,a4,a5
	srli	a1,a1,0x10
	srai	a4,a2,0x8
	sll	a1,a1,a0
	add	a3,s1,a4
	slli	s2,a1,0x10
	slli	s1,a3,0x10
	sw	a4,64(sp)
	srli	s2,s2,0x10
	srli	s1,s1,0x10
	bltu	s5,a5,lab264
lab197: 	sll	a5,s2,a5
	sh	a5,-1698(s4)
	jal	ra,getChar
	lhu	a2,-1698(s4)
	lbu	a5,-1700(s6)
	li	a4,8
	or	a2,a0,a2
	slli	a2,a2,0x10
	sub	a0,a4,a5
	srli	a2,a2,0x10
	srai	a4,s2,0x8
	sll	a2,a2,a0
	add	a3,s1,a4
	slli	a2,a2,0x10
	slli	s1,a3,0x10
	sw	a4,68(sp)
	srli	a2,a2,0x10
	srli	s1,s1,0x10
	bltu	s5,a5,lab265
lab198: 	sll	a5,a2,a5
	sw	a2,32(sp)
	sh	a5,-1698(s4)
	jal	ra,getChar
	lhu	a1,-1698(s4)
	lbu	a5,-1700(s6)
	lw	a2,32(sp)
	or	a1,a0,a1
	li	a4,8
	slli	a1,a1,0x10
	sub	a0,a4,a5
	srli	a1,a1,0x10
	srai	a4,a2,0x8
	sll	a1,a1,a0
	add	a3,s1,a4
	slli	s2,a1,0x10
	slli	s1,a3,0x10
	sw	a4,72(sp)
	srli	s2,s2,0x10
	srli	s1,s1,0x10
	bltu	s5,a5,lab266
lab199: 	sll	a5,s2,a5
	sh	a5,-1698(s4)
	jal	ra,getChar
	lhu	a2,-1698(s4)
	lbu	a5,-1700(s6)
	li	a4,8
	or	a2,a0,a2
	slli	a2,a2,0x10
	sub	a0,a4,a5
	srli	a2,a2,0x10
	srai	a4,s2,0x8
	sll	a2,a2,a0
	add	a3,s1,a4
	slli	a2,a2,0x10
	slli	s1,a3,0x10
	sw	a4,76(sp)
	srli	a2,a2,0x10
	srli	s1,s1,0x10
	bltu	s5,a5,lab267
lab200: 	sll	a5,a2,a5
	sw	a2,32(sp)
	sh	a5,-1698(s4)
	jal	ra,getChar
	lhu	a1,-1698(s4)
	lbu	a5,-1700(s6)
	li	a4,8
	or	a1,a0,a1
	slli	a1,a1,0x10
	srli	a1,a1,0x10
	sub	a0,a4,a5
	sll	a1,a1,a0
	slli	s2,a1,0x10
	lw	a2,32(sp)
	srli	s2,s2,0x10
	j	lab268
lab232: 	jal	ra,getBits.constprop.1
	li	a4,1
	bgeu	a4,a0,lab183
	addi	a5,a0,-2
	slli	a6,a5,0x10
	srli	a6,a6,0x10
	beqz	a6,lab183
	lui	s10,0x101
	lui	a5,0x100
	addi	a5,a5,44 # 10002c <gCoeffBuf>
	addi	a4,s10,-828 # 100cc4 <CSWTCH.306>
	sw	a5,24(sp)
	sw	a4,20(sp)
	addi	s0,a5,1280
	addi	s10,a4,96
	sw	a6,16(sp)
	sw	s8,28(sp)
lab276: 	lbu	a5,-1700(s6)
	lhu	s1,-1698(s4)
	bgeu	s7,a5,lab269
	addi	a5,a5,-8
	zext.b	a7,a5
	slli	a5,s1,0x8
	slli	s8,a5,0x10
	sb	a7,-1700(s6)
	srli	s8,s8,0x10
lab282: 	srli	a4,s1,0x8
	srli	a5,s1,0xc
	andi	a3,a4,14
	sh	s8,-1698(s4)
	sw	a5,8(sp)
	andi	a4,a4,15
	bnez	a3,lab270
	beqz	a4,lab271
	lui	a3,0x101
	lbu	a4,-1693(a3) # 100963 <gValidQuantTables>
	ori	a4,a4,2
	sb	a4,-1693(a3)
	bnez	a5,lab272
	lw	a5,24(sp)
	mv	s5,s0
	li	s1,7
	addi	s2,a5,1408
lab274: 	addi	a1,a7,-8
	slli	a2,s8,0x8
	srai	a3,s8,0x8
	bgeu	s1,a7,lab273
	slli	s8,a2,0x10
	zext.b	a7,a1
	srli	s8,s8,0x10
	sh	a3,0(s5)
	sb	a7,-1700(s6)
	sh	s8,-1698(s4)
	addi	s5,s5,2
	bne	s5,s2,lab274
lab277: 	mv	a3,s0
lab281: 	lw	a5,20(sp)
	addi	a2,a5,32
lab275: 	lh	a1,0(a3)
	lbu	a4,0(a2)
	addi	a3,a3,2
	addi	a2,a2,1
	mul	a4,a4,a1
	addi	a4,a4,4
	srai	a4,a4,0x3
	sh	a4,-2(a3)
	bne	s10,a2,lab275
	lw	a5,8(sp)
	snez	a4,a5
	lw	a5,16(sp)
	slli	a4,a4,0x6
	addi	a4,a4,65
	bltu	a5,a4,lab270
	sub	a4,a5,a4
	slli	a5,a4,0x10
	srli	a5,a5,0x10
	sw	a5,16(sp)
	bnez	a5,lab276
lab270: 	mv	a5,s8
	lw	s8,28(sp)
	j	lab177
lab273: 	sll	a7,s8,a7
	sh	a7,-1698(s4)
	jal	ra,getChar
	lhu	a5,-1698(s4)
	lbu	a7,-1700(s6)
	li	a3,8
	or	a5,a0,a5
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sub	a3,a3,a7
	sll	a5,a5,a3
	srai	a4,s8,0x8
	slli	s8,a5,0x10
	srli	s8,s8,0x10
	sh	a4,0(s5)
	sh	s8,-1698(s4)
	addi	s5,s5,2
	bne	s2,s5,lab274
	j	lab277
lab271: 	lui	a5,0x101
	lbu	a4,-1693(a5) # 100963 <gValidQuantTables>
	ori	a4,a4,1
	sb	a4,-1693(a5)
	lw	a5,8(sp)
	bnez	a5,lab278
	lui	a5,0x100
	addi	s5,a5,1196 # 1004ac <gQuant0>
	li	s1,7
	li	s3,8
lab280: 	addi	a1,a7,-8
	slli	a2,s8,0x8
	srai	a3,s8,0x8
	bgeu	s1,a7,lab279
	slli	s8,a2,0x10
	zext.b	a7,a1
	srli	s8,s8,0x10
	sh	a3,0(s5)
	sb	a7,-1700(s6)
	sh	s8,-1698(s4)
	addi	s5,s5,2
	bne	s0,s5,lab280
lab285: 	lui	a5,0x100
	addi	a3,a5,1196 # 1004ac <gQuant0>
	j	lab281
lab279: 	sll	a7,s8,a7
	sh	a7,-1698(s4)
	jal	ra,getChar
	lhu	a5,-1698(s4)
	lbu	a7,-1700(s6)
	srai	a4,s8,0x8
	or	a5,a0,a5
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sub	a3,s3,a7
	sll	a5,a5,a3
	slli	s8,a5,0x10
	srli	s8,s8,0x10
	sh	a4,0(s5)
	sh	s8,-1698(s4)
	addi	s5,s5,2
	bne	s5,s0,lab280
	lui	a5,0x100
	addi	a3,a5,1196 # 1004ac <gQuant0>
	j	lab281
lab269: 	sll	a5,s1,a5
	sh	a5,-1698(s4)
	jal	ra,getChar
	lhu	a5,-1698(s4)
	lbu	a7,-1700(s6)
	li	a4,8
	or	a5,a0,a5
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sub	a4,a4,a7
	sll	a5,a5,a4
	slli	s8,a5,0x10
	srli	s8,s8,0x10
	j	lab282
lab278: 	lui	a5,0x100
	addi	s1,a5,1196 # 1004ac <gQuant0>
	li	s3,7
lab288: 	addi	a3,a7,-8
	zext.b	a3,a3
	slli	a4,s8,0x8
	bgeu	s3,a7,lab283
lab286: 	slli	s5,a4,0x10
	sb	a3,-1700(s6)
	srli	s5,s5,0x10
lab287: 	srai	a2,s8,0x8
	slli	a2,a2,0x8
	slli	a0,s5,0x8
	slli	s2,a2,0x10
	addi	a7,a3,-8
	srai	a1,s5,0x8
	slli	s8,a0,0x10
	srli	s2,s2,0x10
	zext.b	a7,a7
	srli	s8,s8,0x10
	add	a1,s2,a1
	bgeu	s3,a3,lab284
	sh	a1,0(s1)
	sb	a7,-1700(s6)
	sh	s8,-1698(s4)
	addi	s1,s1,2
	beq	s1,s0,lab285
	addi	a3,a7,-8
	zext.b	a3,a3
	slli	a4,s8,0x8
	bltu	s3,a7,lab286
lab283: 	sll	a7,s8,a7
	sh	a7,-1698(s4)
	jal	ra,getChar
	lhu	a4,-1698(s4)
	lbu	a3,-1700(s6)
	li	a5,8
	or	a4,a0,a4
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	sub	a2,a5,a3
	sll	a4,a4,a2
	slli	s5,a4,0x10
	srli	s5,s5,0x10
	j	lab287
lab284: 	sll	a3,s5,a3
	sh	a3,-1698(s4)
	jal	ra,getChar
	lhu	a5,-1698(s4)
	lbu	a7,-1700(s6)
	li	a3,8
	or	a5,a0,a5
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sub	a3,a3,a7
	sll	a5,a5,a3
	srai	a4,s5,0x8
	slli	s8,a5,0x10
	srli	s8,s8,0x10
	add	a2,s2,a4
	sh	a2,0(s1)
	sh	s8,-1698(s4)
	addi	s1,s1,2
	bne	s0,s1,lab288
	lui	a5,0x100
	addi	a3,a5,1196 # 1004ac <gQuant0>
	j	lab281
lab272: 	lw	a5,24(sp)
	mv	s3,s0
	li	s1,7
	addi	s2,a5,1408
	j	lab289
lab291: 	slli	a4,a4,0x10
	srli	a4,a4,0x10
	sb	a3,-1700(s6)
lab292: 	srai	s5,s8,0x8
	slli	s5,s5,0x8
	slli	a0,a4,0x8
	slli	s5,s5,0x10
	addi	a7,a3,-8
	srai	a2,a4,0x8
	slli	s8,a0,0x10
	srli	s5,s5,0x10
	zext.b	a7,a7
	srli	s8,s8,0x10
	add	a2,s5,a2
	bgeu	s1,a3,lab290
	sh	a2,0(s3)
	sb	a7,-1700(s6)
	sh	s8,-1698(s4)
	addi	s3,s3,2
	beq	s2,s3,lab277
lab289: 	addi	a3,a7,-8
	zext.b	a3,a3
	slli	a4,s8,0x8
	bltu	s1,a7,lab291
	sll	a7,s8,a7
	sh	a7,-1698(s4)
	jal	ra,getChar
	lhu	a4,-1698(s4)
	lbu	a3,-1700(s6)
	li	a5,8
	or	a4,a0,a4
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	sub	a2,a5,a3
	sll	a4,a4,a2
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	j	lab292
lab290: 	sll	a3,a4,a3
	sw	a4,12(sp)
	sh	a3,-1698(s4)
	jal	ra,getChar
	lhu	a5,-1698(s4)
	lbu	a7,-1700(s6)
	lw	a4,12(sp)
	or	a5,a0,a5
	slli	a5,a5,0x10
	li	a3,8
	srli	a5,a5,0x10
	sub	a3,a3,a7
	sll	a5,a5,a3
	srai	a4,a4,0x8
	slli	s8,a5,0x10
	srli	s8,s8,0x10
	add	s5,s5,a4
	sh	s5,0(s3)
	sh	s8,-1698(s4)
	addi	s3,s3,2
	bne	s3,s2,lab289
	j	lab277
lab234: 	jal	ra,getBits.constprop.1
	lui	a4,0x101
	lhu	a5,-1698(s4)
	lbu	a7,-1700(s6)
	sh	a0,-1724(a4) # 100944 <gRestartInterval>
	j	lab177
lab230: 	li	a5,204
	bne	a4,a5,lab233
	li	a0,17
	j	lab231
getBits.constprop.0:
	addi	sp,sp,-32
	sw	s3,12(sp)
	lui	s3,0x101
	lbu	a5,-1700(s3) # 10095c <gBitsLeft>
	sw	s0,24(sp)
	sw	s2,16(sp)
	lui	s0,0x101
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	sw	s6,0(sp)
	li	a4,7
	lhu	s2,-1698(s0) # 10095e <gBitBuf>
	bgeu	a4,a5,lab293
	addi	a4,a5,-8
	slli	a5,s2,0x8
	slli	a5,a5,0x10
	sb	a4,-1700(s3)
	srli	a5,a5,0x10
lab300: 	lw	ra,28(sp)
	sh	a5,-1698(s0)
	lw	s0,24(sp)
	lw	s1,20(sp)
	lw	s3,12(sp)
	lw	s4,8(sp)
	lw	s5,4(sp)
	lw	s6,0(sp)
	srli	a0,s2,0x8
	lw	s2,16(sp)
	addi	sp,sp,32
	ret
lab293: 	lui	s5,0x101
	lbu	a4,-1696(s5) # 100960 <gInBufLeft>
	sll	a5,s2,a5
	sh	a5,-1698(s0)
	mv	s1,a0
	bnez	a4,lab294
	lui	a4,0x101
	lui	a5,0x101
	lw	a3,-1768(a4) # 100918 <g_pCallback_data>
	lui	s4,0x100
	lw	a5,-1764(a5) # 10091c <g_pNeedBytesCallback>
	addi	s4,s4,44 # 10002c <gCoeffBuf>
	lui	s6,0x101
	li	a4,4
	addi	a2,s5,-1696
	li	a1,252
	addi	a0,s4,900
	sb	a4,-1695(s6) # 100961 <gInBufOfs>
	sb	zero,-1696(s5)
	jalr	a5
	beqz	a0,lab295
	lui	a5,0x101
	sb	a0,-1771(a5) # 100915 <gCallbackStatus>
lab295: 	lbu	a4,-1696(s5)
	bnez	a4,lab296
	lui	a3,0x101
	lbu	a4,-1694(a3) # 100962 <gTemFlag>
	li	a5,217
	not	a4,a4
	zext.b	a4,a4
	sb	a4,-1694(a3)
	beqz	a4,lab297
	beqz	s1,lab298
lab299: 	jal	ra,getChar
	beqz	a0,lab298
	lbu	a5,-1695(s6)
	lbu	a3,-1696(s5)
	addi	a4,a5,-1
	zext.b	a4,a4
	addi	a5,a5,-2
	zext.b	a5,a5
	add	a4,s4,a4
	sb	a0,896(a4)
	add	s4,s4,a5
	addi	a4,a3,2
	sb	a5,-1695(s6)
	li	a5,-1
	sb	a5,896(s4)
	sb	a4,-1696(s5)
lab298: 	li	a5,255
	j	lab297
lab294: 	lui	s4,0x100
	lui	s6,0x101
	addi	s4,s4,44 # 10002c <gCoeffBuf>
lab296: 	lbu	a5,-1695(s6) # 100961 <gInBufOfs>
	addi	a4,a4,-1
	sb	a4,-1696(s5)
	addi	a4,a5,1
	sb	a4,-1695(s6)
	add	a5,s4,a5
	lbu	a5,896(a5)
	beqz	s1,lab297
	li	a4,255
	beq	a5,a4,lab299
lab297: 	lhu	a4,-1698(s0)
	lbu	a3,-1700(s3)
	or	a5,a5,a4
	li	a4,8
	sub	a4,a4,a3
	sll	a5,a5,a4
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	j	lab300
pjpeg_decode_mcu:
	addi	sp,sp,-112
	lui	a5,0x101
	sw	s0,104(sp)
	lbu	s0,-1771(a5) # 100915 <gCallbackStatus>
	sw	ra,108(sp)
	sw	s1,100(sp)
	sw	s2,96(sp)
	sw	s3,92(sp)
	sw	s4,88(sp)
	sw	s5,84(sp)
	sw	s6,80(sp)
	sw	s7,76(sp)
	sw	s8,72(sp)
	sw	s9,68(sp)
	sw	s10,64(sp)
	sw	s11,60(sp)
	bnez	s0,lab301
	lui	a5,0x101
	lhu	a5,-1754(a5) # 100926 <gNumMCUSRemaining>
	bnez	a5,lab302
	li	s0,1
lab301: 	lw	ra,108(sp)
	mv	a0,s0
	lw	s0,104(sp)
	lw	s1,100(sp)
	lw	s2,96(sp)
	lw	s3,92(sp)
	lw	s4,88(sp)
	lw	s5,84(sp)
	lw	s6,80(sp)
	lw	s7,76(sp)
	lw	s8,72(sp)
	lw	s9,68(sp)
	lw	s10,64(sp)
	lw	s11,60(sp)
	addi	sp,sp,112
	ret
lab302: 	lui	s4,0x101
	lhu	a5,-1724(s4) # 100944 <gRestartInterval>
	bnez	a5,lab303
	lui	a6,0x101
	lbu	a5,-1746(a6) # 10092e <gMaxBlocksPerMCU>
	beqz	a5,lab304
lab318: 	lui	a5,0x101
	addi	ra,a5,-1688 # 100968 <gLastDC>
	lui	a5,0x101
	addi	a5,a5,-1760 # 100920 <gMCUOrg>
	sw	a5,24(sp)
	lui	a5,0x101
	addi	a5,a5,-1736 # 100938 <gCompDCTab>
	sw	a5,16(sp)
	lui	a5,0x101
	addi	a5,a5,-1720 # 100948 <gCompQuant>
	lui	a3,0x101
	sw	a5,12(sp)
	lui	a5,0x100
	addi	s11,a5,44 # 10002c <gCoeffBuf>
	addi	a5,a3,-1740 # 100934 <gCompACTab>
	lui	a3,0x101
	lui	a4,0x101
	sw	a5,20(sp)
	lui	s1,0x100
	addi	a5,a3,44 # 10102c <ZAG+0x2c8>
	lui	s7,0x100
	addi	s10,a4,-828 # 100cc4 <CSWTCH.306>
	li	s6,0
	sw	a5,32(sp)
	addi	s1,s1,172 # 1000ac <gMCUBufG>
	addi	s7,s7,60 # 10003c <gCoeffBuf+0x10>
	sw	s0,44(sp)
	sw	a6,36(sp)
	sw	ra,28(sp)
lab325: 	lw	a5,24(sp)
	addi	s4,s11,1152
	add	a5,a5,s6
	lbu	s2,0(a5)
	lw	a5,12(sp)
	add	a5,a5,s2
	lbu	a3,0(a5)
	lw	a5,16(sp)
	add	a5,a5,s2
	lbu	a5,0(a5)
	beqz	a3,lab305
	addi	s4,s11,1280
lab305: 	beqz	a5,lab306
	addi	a0,s11,1408
	addi	a1,s11,1488
	jal	ra,huffDecode
	mv	s0,a0
	andi	a0,a0,15
	li	a3,0
	bnez	a0,lab307
lab336: 	addi	s0,s0,-1
	zext.b	s0,s0
	li	a5,14
	bltu	a5,s0,lab308
	slli	a5,s0,0x1
	add	a5,s10,a5
	lhu	a2,96(a5)
	bgeu	a3,a2,lab308
	lhu	a5,128(a5)
	add	a3,a3,a5
	slli	a3,a3,0x10
	srli	a3,a3,0x10
lab308: 	lw	a5,28(sp)
	slli	a2,s2,0x1
	lhu	a1,0(s4)
	add	a2,a5,a2
	lhu	a5,0(a2)
	lui	a4,0x101
	lbu	a0,-1772(a4) # 100914 <gReduce>
	add	a3,a3,a5
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	mul	a1,a3,a1
	lw	a5,20(sp)
	sh	a3,0(a2)
	add	a5,a5,s2
	lbu	a5,0(a5)
	sh	a1,0(s11)
	beqz	a0,lab309
	beqz	a5,lab310
	lw	a5,32(sp)
	addi	s2,s11,1600
	addi	s3,a5,-1984
lab375: 	li	s8,1
	li	s4,15
	li	s5,48
	li	s0,63
lab314: 	mv	a1,s2
	mv	a0,s3
	jal	ra,huffDecode
	mv	s9,a0
	andi	a0,a0,15
	bnez	a0,lab311
	srli	s9,s9,0x4
	zext.b	s9,s9
	bne	s9,s4,lab312
	bltu	s5,s8,lab313
	addi	s8,s8,15
lab335: 	zext.b	s8,s8
lab334: 	addi	s8,s8,1
	zext.b	s8,s8
	bgeu	s0,s8,lab314
lab312: 	lh	a5,0(s11)
	li	a3,255
	addi	a5,a5,64
	srli	a5,a5,0x7
	addi	a5,a5,128
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	bgeu	a3,a5,lab315
	not	a5,a5
	slli	a5,a5,0x10
	srai	a5,a5,0x1f
	zext.b	a5,a5
lab378: 	lui	a4,0x101
	lw	a3,-1744(a4) # 100930 <gScanType>
	li	a2,4
	bltu	a2,a3,lab316
	lui	a2,0x101
	slli	a3,a3,0x2
	addi	a2,a2,-916 # 100c6c <b_ref.0+0x40>
	add	a3,a3,a2
	lw	a3,0(a3)
	jr	a3
lab303: 	lui	s2,0x101
	lhu	a5,-1728(s2) # 100940 <gRestartsLeft>
	beqz	a5,lab317
lab384: 	lui	a6,0x101
	lbu	a4,-1746(a6) # 10092e <gMaxBlocksPerMCU>
	addi	a5,a5,-1
	sh	a5,-1728(s2)
	bnez	a4,lab318
lab326: 	lui	a5,0x101
	lbu	a5,-1771(a5) # 100915 <gCallbackStatus>
	bnez	a5,lab319
lab304: 	lui	a4,0x101
	lhu	a5,-1754(a4) # 100926 <gNumMCUSRemaining>
	addi	a5,a5,-1
	sh	a5,-1754(a4)
	j	lab301
	li	a3,2
	bne	s6,a3,lab320
	j	lab321
lab320: 	bgeu	a3,s6,lab322
	j	lab323
lab322: 	beqz	s6,lab324
	sb	a5,768(s11)
	sb	a5,256(s11)
	sb	a5,512(s11)
	j	lab316
	sb	a5,640(s11)
lab316: 	lw	a5,36(sp)
	addi	s6,s6,1
	zext.b	s6,s6
	lbu	a5,-1746(a5)
	bltu	s6,a5,lab325
	lw	s0,44(sp)
	j	lab326
	li	a3,2
	bne	s6,a3,lab327
	j	lab328
lab327: 	bgeu	a3,s6,lab329
	j	lab330
lab329: 	beqz	s6,lab324
	sb	a5,704(s11)
	sb	a5,192(s11)
	sb	a5,448(s11)
	j	lab316
	li	a3,1
	bne	s6,a3,lab331
	j	lab332
lab331: 	li	a3,2
	beq	s6,a3,lab333
	bnez	s6,lab316
lab324: 	sb	a5,640(s11)
	sb	a5,128(s11)
lab395: 	sb	a5,384(s11)
	j	lab316
	li	a3,5
	bltu	a3,s6,lab316
	lui	a2,0x101
	slli	a3,s6,0x2
	addi	a2,a2,-896 # 100c80 <b_ref.0+0x54>
	add	a3,a3,a2
	lw	a3,0(a3)
	jr	a3
lab311: 	srli	s9,s9,0x4
	zext.b	s9,s9
	jal	ra,getBits.constprop.2
	beqz	s9,lab334
	add	s8,s8,s9
	bge	s0,s8,lab335
lab313: 	li	s0,28
lab456: 	lui	a5,0x101
	lbu	a5,-1771(a5) # 100915 <gCallbackStatus>
	beqz	a5,lab301
lab319: 	mv	s0,a5
	j	lab301
lab306: 	addi	a0,s11,1504
	addi	a1,s11,1584
	jal	ra,huffDecode
	mv	s0,a0
	andi	a0,a0,15
	li	a3,0
	beqz	a0,lab336
lab307: 	jal	ra,getBits.constprop.2
	mv	a3,a0
	j	lab336
lab309: 	beqz	a5,lab337
	lw	a5,32(sp)
	addi	s2,s11,1600
	addi	s3,a5,-1984
lab374: 	sw	s6,40(sp)
	li	s9,1
	li	s5,15
	li	s0,63
	mv	s6,s11
	j	lab338
lab341: 	srli	s8,a0,0x4
	zext.b	s8,s8
	bne	s8,s5,lab339
	li	a5,48
	bltu	a5,s9,lab313
	addi	a3,s9,1
	add	a2,s10,s9
	addi	a5,s9,2
	zext.b	a3,a3
	lb	a7,160(a2)
	addi	a0,s9,3
	add	a3,s10,a3
	zext.b	a5,a5
	lb	a6,160(a3)
	addi	a1,s9,4
	add	a5,s10,a5
	zext.b	a0,a0
	addi	a2,s9,5
	lb	a5,160(a5)
	add	a0,s10,a0
	zext.b	a1,a1
	addi	a3,s9,6
	lb	a0,160(a0)
	slli	a7,a7,0x1
	add	a1,s10,a1
	zext.b	a2,a2
	addi	t1,s9,7
	add	a7,s6,a7
	lb	a1,160(a1)
	slli	a6,a6,0x1
	add	a2,s10,a2
	zext.b	a3,a3
	sh	zero,0(a7)
	add	a6,s6,a6
	addi	a7,s9,8
	lb	a2,160(a2)
	slli	a5,a5,0x1
	add	a3,s10,a3
	zext.b	t1,t1
	sh	zero,0(a6)
	add	a5,s6,a5
	addi	a6,s9,9
	lb	a3,160(a3)
	slli	a0,a0,0x1
	add	t1,s10,t1
	zext.b	a7,a7
	sh	zero,0(a5)
	add	a0,s6,a0
	addi	a5,s9,10
	lb	t1,160(t1)
	slli	a1,a1,0x1
	add	a7,s10,a7
	zext.b	a6,a6
	sh	zero,0(a0)
	add	a1,s6,a1
	addi	a0,s9,11
	lb	a7,160(a7)
	slli	a2,a2,0x1
	add	a6,s10,a6
	zext.b	a5,a5
	sh	zero,0(a1)
	add	a2,s6,a2
	addi	a1,s9,12
	lb	a6,160(a6)
	slli	a3,a3,0x1
	add	a5,s10,a5
	zext.b	a0,a0
	sh	zero,0(a2)
	add	a3,s6,a3
	addi	a2,s9,13
	lb	a5,160(a5)
	slli	t1,t1,0x1
	add	a0,s10,a0
	zext.b	a1,a1
	sh	zero,0(a3)
	lb	a0,160(a0)
	addi	a3,s9,14
	add	t1,s6,t1
	slli	a7,a7,0x1
	add	a1,s10,a1
	zext.b	a2,a2
	sh	zero,0(t1)
	lb	a1,160(a1)
	add	a7,s6,a7
	slli	a6,a6,0x1
	zext.b	a3,a3
	add	a2,s10,a2
	addi	s9,s9,15
	sh	zero,0(a7)
	add	a6,s6,a6
	zext.b	s9,s9
	lb	a2,160(a2)
	slli	a5,a5,0x1
	add	a3,s10,a3
	sh	zero,0(a6)
	add	a5,s6,a5
	add	a6,s10,s9
	lb	a3,160(a3)
	slli	a0,a0,0x1
	sh	zero,0(a5)
	add	a0,s6,a0
	lb	a5,160(a6)
	slli	a1,a1,0x1
	sh	zero,0(a0)
	add	a1,s6,a1
	slli	a2,a2,0x1
	sh	zero,0(a1)
	add	a2,s6,a2
	slli	a3,a3,0x1
	sh	zero,0(a2)
	add	a3,s6,a3
	slli	a5,a5,0x1
	sh	zero,0(a3)
	add	a5,s6,a5
	addi	s9,s9,1
	sh	zero,0(a5)
	zext.b	s9,s9
	bltu	s0,s9,lab340
lab338: 	mv	a1,s2
	mv	a0,s3
	jal	ra,huffDecode
	andi	s11,a0,15
	mv	s8,a0
	beqz	s11,lab341
	srli	s8,s8,0x4
	mv	a0,s11
	zext.b	s8,s8
	jal	ra,getBits.constprop.2
	bnez	s8,lab342
lab360: 	addi	a5,s11,-1
	zext.b	a5,a5
	slli	a5,a5,0x1
	add	a5,s10,a5
	lhu	a3,96(a5)
	bgeu	a0,a3,lab343
	lhu	a5,128(a5)
	add	a5,a0,a5
	slli	a0,a5,0x10
	srli	a0,a0,0x10
lab343: 	slli	a5,s9,0x1
	add	a5,s4,a5
	lhu	a3,0(a5)
	add	a5,s10,s9
	lb	a5,160(a5)
	mul	a0,a0,a3
	addi	s9,s9,1
	slli	a5,a5,0x1
	add	a5,s6,a5
	zext.b	s9,s9
	sh	a0,0(a5)
	bgeu	s0,s9,lab338
lab340: 	mv	s11,s6
	lw	s6,40(sp)
lab377: 	mv	a5,s11
	li	a7,196
	li	a6,277
	li	a0,669
	li	a1,362
lab345: 	lh	a2,2(a5)
	lh	t3,4(a5)
	lh	t6,6(a5)
	lh	t4,8(a5)
	lh	t0,10(a5)
	or	a4,a2,t3
	lh	t5,12(a5)
	or	a4,t6,a4
	lh	t1,14(a5)
	or	a4,t4,a4
	or	a4,t0,a4
	or	a4,t5,a4
	or	a4,t1,a4
	lh	a3,0(a5)
	beqz	a4,lab344
	slli	a2,a2,0x10
	slli	t1,t1,0x10
	srli	t1,t1,0x10
	srli	a2,a2,0x10
	slli	t0,t0,0x10
	slli	t6,t6,0x10
	srli	t6,t6,0x10
	sub	s0,a2,t1
	srli	t0,t0,0x10
	sub	a4,t0,t6
	slli	s0,s0,0x10
	slli	s2,a4,0x10
	srai	s0,s0,0x10
	srli	s2,s2,0x10
	mul	s0,s0,a6
	sub	a4,s2,a2
	add	a4,t1,a4
	add	t0,t0,t6
	slli	t6,a4,0x10
	add	a2,a2,t1
	srai	t6,t6,0x10
	slli	t2,t3,0x10
	slli	s3,t5,0x10
	slli	t0,t0,0x10
	mul	t6,t6,a7
	slli	a2,a2,0x10
	srli	t0,t0,0x10
	srli	a2,a2,0x10
	srli	t2,t2,0x10
	srli	s3,s3,0x10
	sub	t3,a2,t0
	sub	s4,t2,s3
	slli	t3,t3,0x10
	slli	s4,s4,0x10
	srai	t3,t3,0x10
	srai	s4,s4,0x10
	slli	a4,s2,0x10
	addi	t1,s0,128
	mul	t3,t3,a1
	slli	s0,a3,0x10
	srai	a4,a4,0x10
	add	a2,t0,a2
	srai	t1,t1,0x8
	addi	t6,t6,128
	slli	a2,a2,0x10
	slli	t1,t1,0x10
	srai	t6,t6,0x8
	srli	a2,a2,0x10
	mul	a3,s4,a1
	srli	t1,t1,0x10
	slli	t6,t6,0x10
	srli	t6,t6,0x10
	sub	t5,a2,t1
	slli	t4,t4,0x10
	srli	t4,t4,0x10
	srli	s0,s0,0x10
	add	t5,t6,t5
	sub	t0,s0,t4
	mul	a4,a4,a0
	add	t2,t2,s3
	addi	t3,t3,128
	slli	t5,t5,0x10
	addi	a3,a3,128
	srli	t5,t5,0x10
	slli	t2,t2,0x10
	slli	t0,t0,0x10
	srai	t3,t3,0x8
	srai	a3,a3,0x8
	srli	t2,t2,0x10
	add	s0,s0,t4
	srli	t0,t0,0x10
	add	t3,t5,t3
	slli	a3,a3,0x10
	addi	a4,a4,128
	sub	t4,t0,t2
	srli	a3,a3,0x10
	slli	s2,s0,0x10
	slli	t3,t3,0x10
	srai	a4,a4,0x8
	srli	t3,t3,0x10
	srli	s2,s2,0x10
	add	t4,a3,t4
	add	t0,t0,t2
	sub	a4,t6,a4
	add	s0,s2,t2
	sub	t0,t0,a3
	sub	t2,s2,t2
	slli	t4,t4,0x10
	add	a4,t3,a4
	sub	a3,t1,a2
	srli	t4,t4,0x10
	slli	t1,t0,0x10
	slli	a4,a4,0x10
	slli	s0,s0,0x10
	slli	t2,t2,0x10
	srli	a4,a4,0x10
	srli	s0,s0,0x10
	srli	t2,t2,0x10
	srli	t1,t1,0x10
	add	a3,t4,a3
	add	t0,a2,s0
	sub	a3,a3,t6
	add	s2,t3,t1
	sub	t6,t2,a4
	sub	t1,t1,t3
	add	a4,a4,t2
	add	t5,t5,t4
	sub	a2,s0,a2
	sh	t0,0(a5)
	sh	a3,2(a5)
	sh	s2,4(a5)
	sh	t6,6(a5)
	sh	a4,8(a5)
	sh	t1,10(a5)
	sh	t5,12(a5)
	sh	a2,14(a5)
	addi	a5,a5,16
	bne	a5,s1,lab345
lab361: 	mv	a3,s11
	li	t1,196
	li	a7,277
	li	a6,669
	li	a0,362
	li	a1,255
	j	lab346
lab349: 	addi	a5,a5,64
	srli	a5,a5,0x7
	addi	a5,a5,128
	slli	a4,a5,0x10
	srli	a4,a4,0x10
	zext.b	a5,a5
	bgeu	a1,a4,lab347
	not	a5,a4
	slli	a5,a5,0x10
	srai	a5,a5,0x1f
	zext.b	a5,a5
lab347: 	slli	a5,a5,0x10
	srai	a5,a5,0x10
	mv	t0,a5
	mv	t6,a5
	mv	t5,a5
	mv	t4,a5
	mv	a4,a5
	mv	a2,a5
	mv	t3,a5
lab358: 	sh	t0,0(a3)
	sh	t6,16(a3)
	sh	t5,32(a3)
	sh	t4,48(a3)
	sh	a4,64(a3)
	sh	a2,80(a3)
	sh	t3,96(a3)
	sh	a5,112(a3)
	addi	a3,a3,2
	beq	a3,s7,lab348
lab346: 	lh	t3,16(a3)
	lh	t2,32(a3)
	lh	t5,48(a3)
	lh	t0,64(a3)
	lh	a2,80(a3)
	or	a4,t2,t3
	lh	t6,96(a3)
	or	a4,t5,a4
	lh	t4,112(a3)
	or	a4,t0,a4
	or	a4,a2,a4
	or	a4,t6,a4
	or	a4,t4,a4
	lh	a5,0(a3)
	beqz	a4,lab349
	slli	a4,t5,0x10
	slli	a2,a2,0x10
	srli	a2,a2,0x10
	srli	a4,a4,0x10
	slli	t3,t3,0x10
	slli	t4,t4,0x10
	srli	t3,t3,0x10
	srli	t4,t4,0x10
	sub	t5,a2,a4
	add	s5,t4,t3
	add	a4,a4,a2
	slli	t5,t5,0x10
	sub	s0,t3,t4
	srli	t5,t5,0x10
	slli	s2,a4,0x10
	slli	s5,s5,0x10
	sub	a2,t5,t3
	srli	s2,s2,0x10
	srli	s5,s5,0x10
	slli	s0,s0,0x10
	slli	t2,t2,0x10
	slli	t6,t6,0x10
	sub	a4,s5,s2
	srli	t2,t2,0x10
	add	t4,t4,a2
	srli	t6,t6,0x10
	srai	s0,s0,0x10
	slli	a2,a4,0x10
	mul	s0,s0,a7
	slli	a4,t4,0x10
	sub	t4,t2,t6
	srai	a2,a2,0x10
	srai	a4,a4,0x10
	slli	t4,t4,0x10
	slli	t5,t5,0x10
	srai	t4,t4,0x10
	srai	t5,t5,0x10
	slli	s4,a5,0x10
	mul	a2,a2,a0
	slli	t0,t0,0x10
	srli	t0,t0,0x10
	srli	s4,s4,0x10
	add	s3,t0,s4
	add	t6,t6,t2
	add	t3,s5,s2
	slli	t6,t6,0x10
	slli	s3,s3,0x10
	srli	t6,t6,0x10
	mul	a4,a4,t1
	srli	s3,s3,0x10
	slli	t3,t3,0x10
	srli	t3,t3,0x10
	add	a5,t6,s3
	addi	s0,s0,128
	slli	t2,t3,0x10
	srai	s0,s0,0x8
	slli	a5,a5,0x10
	srai	a5,a5,0x10
	mul	t4,t4,a0
	addi	a2,a2,128
	srai	t2,t2,0x10
	slli	s0,s0,0x10
	addi	a4,a4,128
	srli	s0,s0,0x10
	add	s2,t2,a5
	sub	s4,s4,t0
	srai	a2,a2,0x8
	srai	a4,a4,0x8
	mul	t5,t5,a6
	addi	t4,t4,128
	sub	a2,a2,s0
	addi	t0,s2,64
	slli	s4,s4,0x10
	slli	a4,a4,0x10
	srai	t4,t4,0x8
	srli	a4,a4,0x10
	add	s2,t3,a2
	srli	s4,s4,0x10
	addi	t5,t5,128
	srli	t0,t0,0x7
	srai	t5,t5,0x8
	slli	t4,t4,0x10
	add	s2,a4,s2
	addi	t0,t0,128
	sub	s0,s0,t3
	srli	t4,t4,0x10
	sub	t3,s4,t6
	sub	t5,a4,t5
	add	s4,t6,s4
	sub	s0,s0,a4
	sub	s3,s3,t6
	add	a4,s2,t5
	slli	t6,t0,0x10
	add	t3,t4,t3
	sub	a2,s4,t4
	slli	s0,s0,0x10
	slli	s2,s2,0x10
	slli	a4,a4,0x10
	slli	s3,s3,0x10
	slli	t3,t3,0x10
	slli	a2,a2,0x10
	srli	t6,t6,0x10
	srai	s0,s0,0x10
	srai	s2,s2,0x10
	srai	a4,a4,0x10
	srai	s3,s3,0x10
	srai	t3,t3,0x10
	srai	a2,a2,0x10
	zext.b	t0,t0
	bgeu	a1,t6,lab350
	not	t4,t6
	slli	t4,t4,0x10
	srai	t4,t4,0x1f
	zext.b	t0,t4
lab350: 	add	t6,s0,t3
	addi	t6,t6,64
	srli	t6,t6,0x7
	addi	t6,t6,128
	slli	t4,t6,0x10
	slli	t0,t0,0x10
	srli	t4,t4,0x10
	srai	t0,t0,0x10
	zext.b	t6,t6
	bgeu	a1,t4,lab351
	not	t4,t4
	slli	t4,t4,0x10
	srai	t4,t4,0x1f
	zext.b	t6,t4
lab351: 	add	t5,s2,a2
	addi	t5,t5,64
	srli	t5,t5,0x7
	addi	t5,t5,128
	slli	t4,t5,0x10
	slli	t6,t6,0x10
	srli	t4,t4,0x10
	srai	t6,t6,0x10
	zext.b	t5,t5
	bgeu	a1,t4,lab352
	not	t4,t4
	slli	t4,t4,0x10
	srai	t4,t4,0x1f
	zext.b	t5,t4
lab352: 	sub	t4,s3,a4
	addi	t4,t4,64
	srli	t4,t4,0x7
	addi	t4,t4,128
	slli	s4,t4,0x10
	slli	t5,t5,0x10
	srli	s4,s4,0x10
	srai	t5,t5,0x10
	zext.b	t4,t4
	bgeu	a1,s4,lab353
	not	t4,s4
	slli	t4,t4,0x10
	srai	t4,t4,0x1f
	zext.b	t4,t4
lab353: 	add	a4,a4,s3
	addi	a4,a4,64
	srli	a4,a4,0x7
	addi	a4,a4,128
	slli	s3,a4,0x10
	slli	t4,t4,0x10
	srli	s3,s3,0x10
	srai	t4,t4,0x10
	zext.b	a4,a4
	bgeu	a1,s3,lab354
	not	a4,s3
	slli	a4,a4,0x10
	srai	a4,a4,0x1f
	zext.b	a4,a4
lab354: 	sub	a2,a2,s2
	addi	a2,a2,64
	srli	a2,a2,0x7
	addi	a2,a2,128
	slli	s2,a2,0x10
	slli	a4,a4,0x10
	srli	s2,s2,0x10
	srai	a4,a4,0x10
	zext.b	a2,a2
	bgeu	a1,s2,lab355
	not	a2,s2
	slli	a2,a2,0x10
	srai	a2,a2,0x1f
	zext.b	a2,a2
lab355: 	sub	t3,t3,s0
	addi	t3,t3,64
	srli	t3,t3,0x7
	addi	t3,t3,128
	slli	s0,t3,0x10
	slli	a2,a2,0x10
	srli	s0,s0,0x10
	srai	a2,a2,0x10
	zext.b	t3,t3
	bgeu	a1,s0,lab356
	not	t3,s0
	slli	t3,t3,0x10
	srai	t3,t3,0x1f
	zext.b	t3,t3
lab356: 	sub	a5,a5,t2
	addi	a5,a5,64
	srli	a5,a5,0x7
	addi	a5,a5,128
	slli	t2,a5,0x10
	slli	t3,t3,0x10
	srli	t2,t2,0x10
	srai	t3,t3,0x10
	zext.b	a5,a5
	bgeu	a1,t2,lab357
	not	a5,t2
	slli	a5,a5,0x10
	srai	a5,a5,0x1f
	zext.b	a5,a5
lab357: 	slli	a5,a5,0x10
	srai	a5,a5,0x10
	j	lab358
lab342: 	add	a2,s8,s9
	blt	s0,a2,lab313
	add	a5,s10,s9
	lb	a5,160(a5)
	addi	a3,s9,1
	zext.b	a3,a3
	slli	a5,a5,0x1
	add	a5,s6,a5
	sh	zero,0(a5)
	li	a5,1
	beq	s8,a5,lab359
	add	a3,s10,a3
	lb	a5,160(a3)
	addi	a3,s9,2
	zext.b	a3,a3
	slli	a5,a5,0x1
	add	a5,s6,a5
	sh	zero,0(a5)
	li	a5,2
	beq	s8,a5,lab359
	add	a3,s10,a3
	lb	a5,160(a3)
	addi	a3,s9,3
	zext.b	a3,a3
	slli	a5,a5,0x1
	add	a5,s6,a5
	sh	zero,0(a5)
	li	a5,3
	beq	s8,a5,lab359
	add	a3,s10,a3
	lb	a3,160(a3)
	addi	a5,s9,4
	li	a1,4
	slli	a3,a3,0x1
	add	a3,s6,a3
	sh	zero,0(a3)
	zext.b	a5,a5
	beq	s8,a1,lab359
	add	a5,s10,a5
	lb	a3,160(a5)
	li	a1,5
	addi	a5,s9,5
	slli	a3,a3,0x1
	add	a3,s6,a3
	sh	zero,0(a3)
	zext.b	a5,a5
	beq	s8,a1,lab359
	add	a5,s10,a5
	lb	a3,160(a5)
	li	a1,6
	addi	a5,s9,6
	slli	a3,a3,0x1
	add	a3,s6,a3
	sh	zero,0(a3)
	zext.b	a5,a5
	beq	s8,a1,lab359
	add	a5,s10,a5
	lb	a3,160(a5)
	li	a1,7
	addi	a5,s9,7
	slli	a3,a3,0x1
	add	a3,s6,a3
	sh	zero,0(a3)
	zext.b	a5,a5
	beq	s8,a1,lab359
	add	a5,s10,a5
	lb	a3,160(a5)
	li	a1,8
	addi	a5,s9,8
	slli	a3,a3,0x1
	add	a3,s6,a3
	sh	zero,0(a3)
	zext.b	a5,a5
	beq	s8,a1,lab359
	add	a5,s10,a5
	lb	a3,160(a5)
	li	a1,9
	addi	a5,s9,9
	slli	a3,a3,0x1
	add	a3,s6,a3
	sh	zero,0(a3)
	zext.b	a5,a5
	beq	s8,a1,lab359
	add	a5,s10,a5
	lb	a3,160(a5)
	li	a1,10
	addi	a5,s9,10
	slli	a3,a3,0x1
	add	a3,s6,a3
	sh	zero,0(a3)
	zext.b	a5,a5
	beq	s8,a1,lab359
	add	a5,s10,a5
	lb	a3,160(a5)
	li	a1,11
	addi	a5,s9,11
	slli	a3,a3,0x1
	add	a3,s6,a3
	sh	zero,0(a3)
	zext.b	a5,a5
	beq	s8,a1,lab359
	add	a5,s10,a5
	lb	a3,160(a5)
	li	a1,12
	addi	a5,s9,12
	slli	a3,a3,0x1
	add	a3,s6,a3
	sh	zero,0(a3)
	zext.b	a5,a5
	beq	s8,a1,lab359
	add	a5,s10,a5
	lb	a3,160(a5)
	li	a1,13
	addi	a5,s9,13
	slli	a3,a3,0x1
	add	a3,s6,a3
	sh	zero,0(a3)
	zext.b	a5,a5
	beq	s8,a1,lab359
	add	a5,s10,a5
	lb	a5,160(a5)
	addi	s9,s9,14
	li	a3,14
	slli	a5,a5,0x1
	add	a5,s6,a5
	sh	zero,0(a5)
	zext.b	s9,s9
	beq	s8,a3,lab359
	add	s9,s10,s9
	lb	a5,160(s9)
	slli	a5,a5,0x1
	add	a5,s6,a5
	sh	zero,0(a5)
lab359: 	zext.b	s9,a2
	j	lab360
lab344: 	sh	a3,2(a5)
	sh	a3,4(a5)
	sh	a3,6(a5)
	sh	a3,8(a5)
	sh	a3,10(a5)
	sh	a3,12(a5)
	sh	a3,14(a5)
	addi	a5,a5,16
	bne	a5,s1,lab345
	j	lab361
lab348: 	lui	a5,0x101
	lw	a5,-1744(a5) # 100930 <gScanType>
	li	a3,4
	bltu	a3,a5,lab316
	lui	a3,0x101
	slli	a5,a5,0x2
	addi	a3,a3,-872 # 100c98 <b_ref.0+0x6c>
	add	a5,a5,a3
	lw	a5,0(a5)
	jr	a5
	lui	a5,0x100
	addi	a0,s11,384
	addi	a1,s11,640
	mv	a2,s1
	addi	s11,a5,44 # 10002c <gCoeffBuf>
	addi	a5,a5,44
lab362: 	lbu	a4,0(a5)
	addi	a5,a5,2
	addi	a1,a1,1
	sb	a4,0(a2)
	sb	a4,0(a0)
	sb	a4,-1(a1)
	addi	a2,a2,1
	addi	a0,a0,1
	bne	a5,s1,lab362
	j	lab316
	li	a5,5
	bltu	a5,s6,lab316
	lui	a3,0x101
	slli	a5,s6,0x2
	addi	a3,a3,-852 # 100cac <b_ref.0+0x80>
	add	a5,a5,a3
	lw	a5,0(a5)
	jr	a5
	li	a5,2
	beq	s6,a5,lab363
	bltu	a5,s6,lab364
	beqz	s6,lab365
	lui	a4,0x100
	addi	a0,s11,512
	addi	a1,s11,256
	addi	a2,s11,768
	addi	a5,a4,44 # 10002c <gCoeffBuf>
	addi	s11,a4,44
lab366: 	lbu	a4,0(a5)
	addi	a5,a5,2
	addi	a2,a2,1
	sb	a4,0(a1)
	sb	a4,0(a0)
	sb	a4,-1(a2)
	addi	a1,a1,1
	addi	a0,a0,1
	bne	a5,s1,lab366
	j	lab316
	li	a5,2
	beq	s6,a5,lab367
	bltu	a5,s6,lab368
	beqz	s6,lab369
	lui	a4,0x100
	addi	a0,s11,448
	addi	a1,s11,192
	addi	a2,s11,704
	addi	a5,a4,44 # 10002c <gCoeffBuf>
	addi	s11,a4,44
lab370: 	lbu	a4,0(a5)
	addi	a5,a5,2
	addi	a2,a2,1
	sb	a4,0(a1)
	sb	a4,0(a0)
	sb	a4,-1(a2)
	addi	a1,a1,1
	addi	a0,a0,1
	bne	a5,s1,lab370
	j	lab316
	li	a5,1
	beq	s6,a5,lab371
	li	a5,2
	beq	s6,a5,lab372
	bnez	s6,lab316
	lui	a4,0x100
	addi	a5,s11,384
	addi	a0,s11,640
	addi	s11,a4,44 # 10002c <gCoeffBuf>
	mv	a1,s1
	addi	a2,a4,44
	addi	a6,s11,448
lab373: 	lbu	a4,0(a2)
	addi	a5,a5,1
	addi	a2,a2,2
	sb	a4,0(a0)
	sb	a4,0(a1)
	sb	a4,-1(a5)
	addi	a0,a0,1
	addi	a1,a1,1
	bne	a5,a6,lab373
	j	lab316
lab337: 	lw	a5,32(sp)
	addi	s2,s11,1856
	addi	s3,a5,-1904
	j	lab374
lab310: 	lw	a5,32(sp)
	addi	s2,s11,1856
	addi	s3,a5,-1904
	j	lab375
lab339: 	li	a3,63
	mv	s11,s6
	addi	a2,s10,161
	sub	a3,a3,s9
	lui	a5,0x101
	lw	s6,40(sp)
	add	a2,a2,s9
	zext.b	a3,a3
	addi	a5,a5,-668 # 100d64 <ZAG>
	add	a5,a5,s9
	add	a2,a2,a3
lab376: 	lb	a4,0(a5)
	addi	a5,a5,1
	slli	a4,a4,0x1
	add	a4,s11,a4
	sh	zero,0(a4)
	bne	a5,a2,lab376
	j	lab377
lab315: 	zext.b	a5,a5
	j	lab378
lab317: 	li	s1,1536
	li	s3,255
	j	lab379
lab381: 	addi	s1,s1,-1
	slli	s1,s1,0x10
	srli	s1,s1,0x10
	beqz	s1,lab380
lab379: 	jal	ra,getChar
	bne	a0,s3,lab381
	li	s3,255
	j	lab382
lab383: 	addi	s1,s1,-1
	slli	s1,s1,0x10
	srli	s1,s1,0x10
	beqz	s1,lab380
lab382: 	jal	ra,getChar
	beq	a0,s3,lab383
	lui	a3,0x101
	lhu	a4,-1726(a3) # 100942 <gNextRestartNum>
	addi	a5,a4,208
	bne	a0,a5,lab380
	lhu	a2,-1724(s4)
	lui	a5,0x101
	addi	a4,a4,1
	addi	ra,a5,-1688 # 100968 <gLastDC>
	andi	a4,a4,7
	sh	a4,-1726(a3)
	sw	zero,-1688(a5)
	li	a4,8
	lui	a5,0x101
	sh	zero,4(ra)
	li	a0,1
	sb	a4,-1700(a5) # 10095c <gBitsLeft>
	sh	a2,-1728(s2)
	jal	ra,getBits.constprop.0
	li	a0,1
	jal	ra,getBits.constprop.0
	lhu	a5,-1728(s2)
	j	lab384
lab372: 	lui	a5,0x100
	addi	a1,s11,640
	addi	s11,a5,44 # 10002c <gCoeffBuf>
	mv	a2,s1
	addi	a0,a5,44
	li	t4,103
	li	a6,255
	li	t3,183
	li	t1,91
	addi	a7,s11,192
lab387: 	lh	a4,0(a0)
	lbu	t5,0(a1)
	addi	a0,a0,2
	zext.b	a5,a4
	mul	a3,a5,t4
	zext.b	a4,a4
	addi	a4,a4,-179
	srli	a3,a3,0x8
	add	a4,a4,a3
	add	a4,a4,t5
	slli	a3,a4,0x10
	srli	a3,a3,0x10
	zext.b	a4,a4
	bgeu	a6,a3,lab385
	not	a4,a3
	slli	a4,a4,0x10
	srai	a4,a4,0x1f
	zext.b	a4,a4
lab385: 	mul	a5,a5,t3
	lbu	a3,0(a2)
	sb	a4,0(a1)
	addi	a1,a1,1
	srli	a5,a5,0x8
	sub	a5,t1,a5
	add	a5,a5,a3
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	bgeu	a6,a5,lab386
	not	a5,a5
	slli	a5,a5,0x10
	srai	a5,a5,0x1f
	sb	a5,0(a2)
	addi	a2,a2,1
	bne	a2,a7,lab387
	j	lab316
lab333: 	li	a2,103
	mul	a2,a5,a2
	lbu	a3,640(s11)
	li	a1,255
	addi	a3,a3,-179
	add	a3,a5,a3
	srli	a2,a2,0x8
	add	a3,a3,a2
	slli	a2,a3,0x10
	srli	a2,a2,0x10
	zext.b	a3,a3
	bgeu	a1,a2,lab388
	not	a3,a2
	slli	a3,a3,0x10
	srai	a3,a3,0x1f
	zext.b	a3,a3
lab388: 	li	a2,183
	mul	a2,a5,a2
	lbu	a5,128(s11)
	sb	a3,640(s11)
	li	a1,255
	addi	a5,a5,91
	srli	a3,a2,0x8
	sub	a5,a5,a3
	slli	a3,a5,0x10
	srli	a3,a3,0x10
	zext.b	a5,a5
	bgeu	a1,a3,lab389
	not	a5,a3
	slli	a5,a5,0x10
	srai	a5,a5,0x1f
	zext.b	a5,a5
lab389: 	sb	a5,128(s11)
	j	lab316
lab371: 	lui	a5,0x100
	addi	a1,s11,384
	addi	s11,a5,44 # 10002c <gCoeffBuf>
	mv	a2,s1
	addi	a0,a5,44
	li	t4,88
	li	t3,44
	li	a6,255
	li	t1,198
	addi	a7,s11,192
lab392: 	lh	a5,0(a0)
	lbu	t5,0(a2)
	addi	a0,a0,2
	zext.b	a3,a5
	mul	a4,a3,t4
	srli	a4,a4,0x8
	sub	a4,t3,a4
	add	a4,a4,t5
	slli	t5,a4,0x10
	srli	t5,t5,0x10
	zext.b	a4,a4
	bgeu	a6,t5,lab390
	not	a4,t5
	slli	a4,a4,0x10
	srai	a4,a4,0x1f
	zext.b	a4,a4
lab390: 	mul	a3,a3,t1
	lbu	t5,0(a1)
	zext.b	a5,a5
	addi	a5,a5,-227
	sb	a4,0(a2)
	addi	a2,a2,1
	srli	a3,a3,0x8
	add	a5,a5,a3
	add	a5,a5,t5
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	bgeu	a6,a5,lab391
	not	a5,a5
	slli	a5,a5,0x10
	srai	a5,a5,0x1f
	sb	a5,0(a1)
	addi	a1,a1,1
	bne	a2,a7,lab392
	j	lab316
lab332: 	li	a3,88
	mul	a3,a5,a3
	lbu	a2,128(s11)
	li	a1,255
	addi	a2,a2,44
	srli	a3,a3,0x8
	sub	a2,a2,a3
	slli	a3,a2,0x10
	srli	a3,a3,0x10
	zext.b	a2,a2
	bgeu	a1,a3,lab393
	not	a3,a3
	slli	a3,a3,0x10
	srai	a3,a3,0x1f
	zext.b	a2,a3
lab393: 	li	a3,198
	mul	a1,a5,a3
	lbu	a3,384(s11)
	sb	a2,128(s11)
	li	a2,255
	addi	a3,a3,-227
	add	a5,a5,a3
	srli	a3,a1,0x8
	add	a5,a5,a3
	slli	a3,a5,0x10
	srli	a3,a3,0x10
	zext.b	a5,a5
	bltu	a2,a3,lab394
	j	lab395
lab394: 	not	a5,a3
	slli	a5,a5,0x10
	srai	a5,a5,0x1f
	zext.b	a5,a5
	sb	a5,384(s11)
	j	lab316
lab367: 	li	a1,0
	li	a0,0
	jal	ra,upsampleCbH
	li	a1,64
	li	a0,4
	jal	ra,upsampleCbH
	j	lab316
lab328: 	li	a1,88
	mul	a1,a5,a1
	lbu	a2,128(s11)
	lbu	a3,192(s11)
	li	a0,255
	srli	a1,a1,0x8
	addi	a1,a1,-44
	slli	a1,a1,0x10
	srli	a1,a1,0x10
	sub	a2,a2,a1
	sub	a3,a3,a1
	slli	a2,a2,0x10
	slli	a3,a3,0x10
	srli	a2,a2,0x10
	srli	a3,a3,0x10
	bgeu	a0,a2,lab396
	slli	a1,a2,0x10
	srai	a1,a1,0x10
	li	a2,0
	bgez	a1,lab397
lab466: 	sb	a2,128(s11)
	li	a2,255
	bgeu	a2,a3,lab398
	not	a3,a3
	slli	a3,a3,0x10
	srai	a3,a3,0x1f
	zext.b	a1,a3
lab465: 	li	a3,198
	mul	a3,a5,a3
	addi	a6,a5,-227
	lbu	a2,384(s11)
	lbu	a0,448(s11)
	sb	a1,192(s11)
	li	a1,255
	srli	a5,a3,0x8
	add	a5,a5,a6
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	add	a3,a5,a2
	slli	a3,a3,0x10
	add	a5,a5,a0
	slli	a5,a5,0x10
	srli	a3,a3,0x10
	srli	a5,a5,0x10
	bgeu	a1,a3,lab399
	slli	a2,a3,0x10
	srai	a2,a2,0x10
	li	a3,0
	bgez	a2,lab400
lab464: 	sb	a3,384(s11)
	li	a3,255
	bgeu	a3,a5,lab401
	not	a5,a5
	slli	a5,a5,0x10
	srai	a5,a5,0x1f
	zext.b	a3,a5
lab463: 	sb	a3,448(s11)
	j	lab316
lab363: 	li	a1,0
	li	a0,0
	jal	ra,upsampleCbV
	li	a1,128
	li	a0,32
	jal	ra,upsampleCbV
	j	lab316
lab321: 	li	a1,88
	mul	a1,a5,a1
	lbu	a2,128(s11)
	lbu	a3,256(s11)
	li	a0,255
	srli	a1,a1,0x8
	addi	a1,a1,-44
	slli	a1,a1,0x10
	srli	a1,a1,0x10
	sub	a2,a2,a1
	sub	a3,a3,a1
	slli	a2,a2,0x10
	slli	a3,a3,0x10
	srli	a2,a2,0x10
	srli	a3,a3,0x10
	bgeu	a0,a2,lab402
	slli	a1,a2,0x10
	srai	a1,a1,0x10
	li	a2,0
	bgez	a1,lab403
lab472: 	sb	a2,128(s11)
	li	a2,255
	bgeu	a2,a3,lab404
	not	a3,a3
	slli	a3,a3,0x10
	srai	a3,a3,0x1f
	zext.b	a1,a3
lab471: 	li	a3,198
	mul	a3,a5,a3
	addi	a6,a5,-227
	lbu	a2,384(s11)
	lbu	a0,512(s11)
	sb	a1,256(s11)
	li	a1,255
	srli	a5,a3,0x8
	add	a5,a5,a6
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	add	a3,a5,a2
	slli	a3,a3,0x10
	add	a5,a5,a0
	slli	a5,a5,0x10
	srli	a3,a3,0x10
	srli	a5,a5,0x10
	bgeu	a1,a3,lab405
	slli	a2,a3,0x10
	srai	a2,a2,0x10
	li	a3,0
	bgez	a2,lab406
lab470: 	sb	a3,384(s11)
	li	a3,255
	bgeu	a3,a5,lab407
	not	a5,a5
	slli	a5,a5,0x10
	srai	a5,a5,0x1f
	zext.b	a3,a5
lab482: 	sb	a3,512(s11)
	j	lab316
	li	a3,103
	mul	a3,a5,a3
	addi	a0,a5,-179
	lbu	a1,640(s11)
	lbu	a2,704(s11)
	li	a6,255
	srli	a3,a3,0x8
	add	a3,a3,a0
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	add	a1,a3,a1
	add	a2,a3,a2
	slli	a1,a1,0x10
	slli	a2,a2,0x10
	srli	a1,a1,0x10
	srli	a2,a2,0x10
	bgeu	a6,a1,lab408
	slli	a0,a1,0x10
	srai	a0,a0,0x10
	li	a1,0
	bgez	a0,lab409
lab481: 	sb	a1,640(s11)
	li	a1,255
	bgeu	a1,a2,lab410
	slli	a2,a2,0x10
	srai	a2,a2,0x10
	li	a1,0
	bgez	a2,lab411
lab480: 	lbu	a2,768(s11)
	sb	a1,704(s11)
	li	a1,255
	add	a2,a3,a2
	slli	a2,a2,0x10
	srli	a2,a2,0x10
	bgeu	a1,a2,lab412
	slli	a1,a2,0x10
	srai	a1,a1,0x10
	li	a2,0
	bgez	a1,lab413
lab479: 	lbu	a1,832(s11)
	sb	a2,768(s11)
	li	a2,255
	add	a3,a3,a1
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	bgeu	a2,a3,lab414
	not	a3,a3
	slli	a3,a3,0x10
	srai	a3,a3,0x1f
	zext.b	a1,a3
lab478: 	li	a3,183
	mul	a5,a5,a3
	lbu	a2,128(s11)
	lbu	a3,192(s11)
	sb	a1,832(s11)
	li	a1,255
	srli	a5,a5,0x8
	addi	a5,a5,-91
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sub	a2,a2,a5
	sub	a3,a3,a5
	slli	a2,a2,0x10
	slli	a3,a3,0x10
	srli	a2,a2,0x10
	srli	a3,a3,0x10
	bgeu	a1,a2,lab415
	slli	a0,a2,0x10
	srai	a0,a0,0x10
	li	a2,0
	bgez	a0,lab416
lab477: 	sb	a2,128(s11)
	li	a2,255
	bgeu	a2,a3,lab417
	slli	a3,a3,0x10
	srai	a3,a3,0x10
	li	a2,0
	bgez	a3,lab418
lab476: 	lbu	a3,256(s11)
	sb	a2,192(s11)
	li	a2,255
	sub	a3,a3,a5
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	bgeu	a2,a3,lab419
	slli	a3,a3,0x10
	srai	a3,a3,0x10
	li	a2,0
	bgez	a3,lab420
lab475: 	lbu	a3,320(s11)
	sb	a2,256(s11)
	li	a2,255
	sub	a5,a3,a5
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	bgeu	a2,a5,lab421
	not	a5,a5
	slli	a5,a5,0x10
	srai	a5,a5,0x1f
	zext.b	a3,a5
lab474: 	sb	a3,320(s11)
	j	lab316
	li	a1,0
	li	a0,0
	jal	ra,upsampleCr
	li	a1,64
	li	a0,4
	jal	ra,upsampleCr
	li	a1,128
	li	a0,32
	jal	ra,upsampleCr
	li	a1,192
	li	a0,36
	jal	ra,upsampleCr
	j	lab316
	li	a1,88
	mul	a1,a5,a1
	lbu	a2,128(s11)
	lbu	a3,192(s11)
	li	a0,255
	srli	a1,a1,0x8
	addi	a1,a1,-44
	slli	a1,a1,0x10
	srli	a1,a1,0x10
	sub	a2,a2,a1
	sub	a3,a3,a1
	slli	a2,a2,0x10
	slli	a3,a3,0x10
	srli	a2,a2,0x10
	srli	a3,a3,0x10
	bgeu	a0,a2,lab422
	slli	a6,a2,0x10
	srai	a6,a6,0x10
	li	a2,0
	bgez	a6,lab423
lab490: 	sb	a2,128(s11)
	li	a2,255
	bgeu	a2,a3,lab424
	slli	a3,a3,0x10
	srai	a3,a3,0x10
	li	a2,0
	bgez	a3,lab425
lab489: 	lbu	a3,256(s11)
	sb	a2,192(s11)
	li	a2,255
	sub	a3,a3,a1
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	bgeu	a2,a3,lab426
	slli	a3,a3,0x10
	srai	a3,a3,0x10
	li	a2,0
	bgez	a3,lab427
lab488: 	lbu	a3,320(s11)
	sb	a2,256(s11)
	li	a2,255
	sub	a3,a3,a1
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	bgeu	a2,a3,lab428
	not	a3,a3
	slli	a3,a3,0x10
	srai	a3,a3,0x1f
	zext.b	a0,a3
lab487: 	li	a1,198
	mul	a1,a5,a1
	addi	a6,a5,-227
	lbu	a2,384(s11)
	lbu	a3,448(s11)
	sb	a0,320(s11)
	li	a0,255
	srli	a5,a1,0x8
	add	a5,a5,a6
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	add	a2,a5,a2
	add	a3,a5,a3
	slli	a2,a2,0x10
	slli	a3,a3,0x10
	srli	a2,a2,0x10
	srli	a3,a3,0x10
	bgeu	a0,a2,lab429
	slli	a1,a2,0x10
	srai	a1,a1,0x10
	li	a2,0
	bgez	a1,lab430
lab486: 	sb	a2,384(s11)
	li	a2,255
	bgeu	a2,a3,lab431
	slli	a3,a3,0x10
	srai	a3,a3,0x10
	li	a2,0
	bgez	a3,lab432
lab485: 	lbu	a3,512(s11)
	sb	a2,448(s11)
	li	a2,255
	add	a3,a5,a3
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	bgeu	a2,a3,lab433
	slli	a2,a3,0x10
	srai	a2,a2,0x10
	li	a3,0
	bgez	a2,lab434
lab484: 	lbu	a2,576(s11)
	sb	a3,512(s11)
	li	a3,255
	add	a5,a5,a2
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	bgeu	a3,a5,lab435
	not	a5,a5
	slli	a5,a5,0x10
	srai	a5,a5,0x1f
	zext.b	a3,a5
lab483: 	sb	a3,576(s11)
	j	lab316
	sb	a5,832(s11)
	sb	a5,320(s11)
	sb	a5,576(s11)
	j	lab316
	lui	a4,0x100
	addi	a0,s11,576
	addi	a1,s11,320
	addi	a2,s11,832
	addi	a5,a4,44 # 10002c <gCoeffBuf>
	addi	s11,a4,44
lab436: 	lbu	a4,0(a5)
	addi	a5,a5,2
	addi	a2,a2,1
	sb	a4,0(a1)
	sb	a4,0(a0)
	sb	a4,-1(a2)
	addi	a1,a1,1
	addi	a0,a0,1
	bne	a5,s1,lab436
	j	lab316
	lui	a4,0x100
	addi	a0,s11,512
	addi	a1,s11,256
	addi	a2,s11,768
	addi	a5,a4,44 # 10002c <gCoeffBuf>
	addi	s11,a4,44
lab437: 	lbu	a4,0(a5)
	addi	a5,a5,2
	addi	a2,a2,1
	sb	a4,0(a1)
	sb	a4,0(a0)
	sb	a4,-1(a2)
	addi	a1,a1,1
	addi	a0,a0,1
	bne	a5,s1,lab437
	j	lab316
	lui	a4,0x100
	addi	a0,s11,448
	addi	a1,s11,192
	addi	a2,s11,704
	addi	a5,a4,44 # 10002c <gCoeffBuf>
	addi	s11,a4,44
lab438: 	lbu	a4,0(a5)
	addi	a5,a5,2
	addi	a2,a2,1
	sb	a4,0(a1)
	sb	a4,0(a0)
	sb	a4,-1(a2)
	addi	a1,a1,1
	addi	a0,a0,1
	bne	a5,s1,lab438
	j	lab316
	lui	a5,0x100
	addi	a0,s11,384
	addi	a1,s11,640
	mv	a2,s1
	addi	s11,a5,44 # 10002c <gCoeffBuf>
	addi	a5,a5,44
lab439: 	lbu	a4,0(a5)
	addi	a5,a5,2
	addi	a1,a1,1
	sb	a4,0(a2)
	sb	a4,0(a0)
	sb	a4,-1(a1)
	addi	a2,a2,1
	addi	a0,a0,1
	bne	a5,s1,lab439
	j	lab316
	li	a1,0
	li	a0,0
	jal	ra,upsampleCb
	li	a1,64
	li	a0,4
	jal	ra,upsampleCb
	li	a1,128
	li	a0,32
	jal	ra,upsampleCb
	li	a1,192
	li	a0,36
	jal	ra,upsampleCb
	j	lab316
lab386: 	sb	a5,0(a2)
	addi	a2,a2,1
	bne	a2,a7,lab387
	j	lab316
lab391: 	sb	a5,0(a1)
	addi	a1,a1,1
	bne	a2,a7,lab392
	j	lab316
lab364: 	li	a5,3
	beq	s6,a5,lab440
	j	lab316
lab440: 	li	a1,0
	li	a0,0
	jal	ra,upsampleCrV
	li	a1,128
	li	a0,32
	jal	ra,upsampleCrV
	j	lab316
lab368: 	li	a5,3
	beq	s6,a5,lab441
	j	lab316
lab441: 	li	a1,0
	li	a0,0
	jal	ra,upsampleCrH
	li	a1,64
	li	a0,4
	jal	ra,upsampleCrH
	j	lab316
lab323: 	li	a3,3
	beq	s6,a3,lab442
	j	lab316
lab442: 	li	a3,103
	mul	a3,a5,a3
	addi	a1,a5,-179
	lbu	a2,640(s11)
	lbu	a6,768(s11)
	li	a0,255
	srli	a3,a3,0x8
	add	a3,a3,a1
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	add	a2,a3,a2
	slli	a2,a2,0x10
	add	a3,a3,a6
	slli	a3,a3,0x10
	srli	a2,a2,0x10
	srli	a3,a3,0x10
	bgeu	a0,a2,lab443
	slli	a1,a2,0x10
	srai	a1,a1,0x10
	li	a2,0
	bgez	a1,lab444
lab469: 	sb	a2,640(s11)
	li	a2,255
	bgeu	a2,a3,lab445
	not	a3,a3
	slli	a3,a3,0x10
	srai	a3,a3,0x1f
	zext.b	a1,a3
lab468: 	li	a2,183
	mul	a2,a5,a2
	lbu	a3,128(s11)
	lbu	a5,256(s11)
	sb	a1,768(s11)
	li	a1,255
	srli	a2,a2,0x8
	addi	a2,a2,-91
	slli	a2,a2,0x10
	srli	a2,a2,0x10
	sub	a3,a3,a2
	sub	a5,a5,a2
	slli	a3,a3,0x10
	slli	a5,a5,0x10
	srli	a3,a3,0x10
	srli	a5,a5,0x10
	bgeu	a1,a3,lab446
	slli	a2,a3,0x10
	srai	a2,a2,0x10
	li	a3,0
	bgez	a2,lab447
lab467: 	sb	a3,128(s11)
	li	a3,255
	bgeu	a3,a5,lab448
	not	a5,a5
	slli	a5,a5,0x10
	srai	a5,a5,0x1f
	zext.b	a3,a5
lab473: 	sb	a3,256(s11)
	j	lab316
lab330: 	li	a3,3
	beq	s6,a3,lab449
	j	lab316
lab449: 	li	a3,103
	mul	a3,a5,a3
	addi	a1,a5,-179
	lbu	a2,640(s11)
	lbu	a6,704(s11)
	li	a0,255
	srli	a3,a3,0x8
	add	a3,a3,a1
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	add	a2,a3,a2
	slli	a2,a2,0x10
	add	a3,a3,a6
	slli	a3,a3,0x10
	srli	a2,a2,0x10
	srli	a3,a3,0x10
	bgeu	a0,a2,lab450
	slli	a1,a2,0x10
	srai	a1,a1,0x10
	li	a2,0
	bgez	a1,lab451
lab460: 	sb	a2,640(s11)
	li	a2,255
	bgeu	a2,a3,lab452
	not	a3,a3
	slli	a3,a3,0x10
	srai	a3,a3,0x1f
	zext.b	a1,a3
lab461: 	li	a2,183
	mul	a2,a5,a2
	lbu	a3,128(s11)
	lbu	a5,192(s11)
	sb	a1,704(s11)
	li	a1,255
	srli	a2,a2,0x8
	addi	a2,a2,-91
	slli	a2,a2,0x10
	srli	a2,a2,0x10
	sub	a3,a3,a2
	sub	a5,a5,a2
	slli	a3,a3,0x10
	slli	a5,a5,0x10
	srli	a3,a3,0x10
	srli	a5,a5,0x10
	bgeu	a1,a3,lab453
	slli	a2,a3,0x10
	srai	a2,a2,0x10
	li	a3,0
	bgez	a2,lab454
lab462: 	sb	a3,128(s11)
	li	a3,255
	bgeu	a3,a5,lab455
	not	a5,a5
	slli	a5,a5,0x10
	srai	a5,a5,0x1f
	zext.b	a3,a5
lab459: 	sb	a3,192(s11)
	j	lab316
lab380: 	li	s0,29
	j	lab456
lab369: 	lui	a5,0x100
	addi	a0,s11,384
	addi	a1,s11,640
	mv	a2,s1
	addi	s11,a5,44 # 10002c <gCoeffBuf>
	addi	a5,a5,44
lab457: 	lbu	a4,0(a5)
	addi	a5,a5,2
	addi	a1,a1,1
	sb	a4,0(a2)
	sb	a4,0(a0)
	sb	a4,-1(a1)
	addi	a2,a2,1
	addi	a0,a0,1
	bne	a5,s1,lab457
	j	lab316
lab365: 	lui	a4,0x100
	addi	a0,s11,384
	addi	a5,s11,640
	addi	s11,a4,44 # 10002c <gCoeffBuf>
	mv	a1,s1
	addi	a2,a4,44
	addi	a6,s11,704
lab458: 	lbu	a4,0(a2)
	addi	a5,a5,1
	addi	a2,a2,2
	sb	a4,0(a1)
	sb	a4,0(a0)
	sb	a4,-1(a5)
	addi	a1,a1,1
	addi	a0,a0,1
	bne	a5,a6,lab458
	j	lab316
lab454: 	li	a3,-1
	sb	a3,128(s11)
	li	a3,255
	bltu	a3,a5,lab459
lab455: 	zext.b	a3,a5
	sb	a3,192(s11)
	j	lab316
lab450: 	zext.b	a2,a2
	j	lab460
lab451: 	li	a2,-1
	sb	a2,640(s11)
	li	a1,255
	bltu	a1,a3,lab461
lab452: 	zext.b	a1,a3
	j	lab461
lab453: 	zext.b	a3,a3
	j	lab462
lab400: 	li	a3,-1
	sb	a3,384(s11)
	li	a3,255
	bltu	a3,a5,lab463
lab401: 	zext.b	a3,a5
	sb	a3,448(s11)
	j	lab316
lab399: 	zext.b	a3,a3
	j	lab464
lab397: 	li	a2,-1
	sb	a2,128(s11)
	li	a1,255
	bltu	a1,a3,lab465
lab398: 	zext.b	a1,a3
	j	lab465
lab396: 	zext.b	a2,a2
	j	lab466
lab446: 	zext.b	a3,a3
	j	lab467
lab444: 	li	a2,-1
	sb	a2,640(s11)
	li	a1,255
	bltu	a1,a3,lab468
lab445: 	zext.b	a1,a3
	j	lab468
lab443: 	zext.b	a2,a2
	j	lab469
lab405: 	zext.b	a3,a3
	j	lab470
lab403: 	li	a2,-1
	sb	a2,128(s11)
	li	a1,255
	bltu	a1,a3,lab471
lab404: 	zext.b	a1,a3
	j	lab471
lab402: 	zext.b	a2,a2
	j	lab472
lab447: 	li	a3,-1
	sb	a3,128(s11)
	li	a3,255
	bltu	a3,a5,lab473
lab448: 	zext.b	a3,a5
	sb	a3,256(s11)
	j	lab316
lab416: 	li	a2,-1
	sb	a2,128(s11)
	bgeu	a1,a3,lab417
lab418: 	lbu	a3,256(s11)
	li	a2,-1
	sb	a2,192(s11)
	sub	a3,a3,a5
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	li	a2,255
	bgeu	a2,a3,lab419
lab420: 	lbu	a3,320(s11)
	li	a2,-1
	sb	a2,256(s11)
	sub	a5,a3,a5
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	li	a3,255
	bltu	a3,a5,lab474
lab421: 	zext.b	a3,a5
	sb	a3,320(s11)
	j	lab316
lab419: 	zext.b	a2,a3
	j	lab475
lab417: 	zext.b	a2,a3
	j	lab476
lab415: 	zext.b	a2,a2
	j	lab477
lab409: 	li	a1,-1
	sb	a1,640(s11)
	bgeu	a6,a2,lab410
lab411: 	lbu	a2,768(s11)
	li	a1,-1
	sb	a1,704(s11)
	add	a2,a3,a2
	slli	a2,a2,0x10
	srli	a2,a2,0x10
	li	a1,255
	bgeu	a1,a2,lab412
lab413: 	lbu	a2,832(s11)
	li	a1,-1
	sb	a1,768(s11)
	add	a3,a3,a2
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	li	a1,255
	bltu	a1,a3,lab478
lab414: 	zext.b	a1,a3
	j	lab478
lab412: 	zext.b	a2,a2
	j	lab479
lab410: 	zext.b	a1,a2
	j	lab480
lab408: 	zext.b	a1,a1
	j	lab481
lab406: 	li	a3,-1
	sb	a3,384(s11)
	li	a3,255
	bltu	a3,a5,lab482
lab407: 	zext.b	a3,a5
	sb	a3,512(s11)
	j	lab316
lab430: 	li	a2,-1
	sb	a2,384(s11)
	bgeu	a0,a3,lab431
lab432: 	lbu	a3,512(s11)
	li	a2,-1
	sb	a2,448(s11)
	add	a3,a5,a3
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	li	a2,255
	bgeu	a2,a3,lab433
lab434: 	lbu	a3,576(s11)
	li	a2,-1
	sb	a2,512(s11)
	add	a5,a5,a3
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	li	a3,255
	bltu	a3,a5,lab483
lab435: 	zext.b	a3,a5
	sb	a3,576(s11)
	j	lab316
lab433: 	zext.b	a3,a3
	j	lab484
lab431: 	zext.b	a2,a3
	j	lab485
lab429: 	zext.b	a2,a2
	j	lab486
lab423: 	li	a2,-1
	sb	a2,128(s11)
	bgeu	a0,a3,lab424
lab425: 	lbu	a3,256(s11)
	li	a2,-1
	sb	a2,192(s11)
	sub	a3,a3,a1
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	li	a2,255
	bgeu	a2,a3,lab426
lab427: 	lbu	a3,320(s11)
	li	a2,-1
	sb	a2,256(s11)
	sub	a3,a3,a1
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	li	a0,255
	bltu	a0,a3,lab487
lab428: 	zext.b	a0,a3
	j	lab487
lab426: 	zext.b	a2,a3
	j	lab488
lab424: 	zext.b	a2,a3
	j	lab489
lab422: 	zext.b	a2,a2
	j	lab490
pjpeg_decode_init:
	lui	a5,0x101
	sw	a1,-1764(a5) # 10091c <g_pNeedBytesCallback>
	lui	a5,0x101
	sw	a2,-1768(a5) # 100918 <g_pCallback_data>
	lui	a5,0x101
	addi	sp,sp,-112
	sb	a3,-1772(a5) # 100914 <gReduce>
	lui	a5,0x101
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s1,100(sp)
	sw	s3,92(sp)
	sw	s4,88(sp)
	sw	s9,68(sp)
	sw	s2,96(sp)
	sw	s5,84(sp)
	sw	s6,80(sp)
	sw	s7,76(sp)
	sw	s8,72(sp)
	sw	s10,64(sp)
	sw	s11,60(sp)
	lui	s0,0x101
	sh	zero,-1702(a5) # 10095a <gImageXSize>
	lui	s1,0x101
	lui	a5,0x101
	sw	zero,0(a0)
	sw	zero,4(a0)
	sw	zero,8(a0)
	sw	zero,12(a0)
	sw	zero,16(a0)
	sw	zero,20(a0)
	sw	zero,24(a0)
	sw	zero,28(a0)
	sw	zero,32(a0)
	sw	zero,36(a0)
	sw	zero,40(a0)
	sw	a0,12(sp)
	sh	zero,-1704(a5) # 100958 <gImageYSize>
	sb	zero,-1771(s0) # 100915 <gCallbackStatus>
	lui	a5,0x101
	sb	zero,-1705(s1) # 100957 <gCompsInFrame>
	sh	zero,-1724(a5) # 100944 <gRestartInterval>
	lui	a5,0x101
	sb	zero,-1729(a5) # 10093f <gCompsInScan>
	lui	a5,0x101
	sb	zero,-1692(a5) # 100964 <gValidHuffTables>
	lui	a5,0x101
	sb	zero,-1693(a5) # 100963 <gValidQuantTables>
	lui	a5,0x101
	sb	zero,-1694(a5) # 100962 <gTemFlag>
	lui	a5,0x101
	sb	zero,-1695(a5) # 100961 <gInBufOfs>
	lui	a5,0x101
	sb	zero,-1696(a5) # 100960 <gInBufLeft>
	lui	s3,0x101
	li	a5,8
	lui	s4,0x101
	li	a0,0
	sb	a5,-1700(s4) # 10095c <gBitsLeft>
	sh	zero,-1698(s3) # 10095e <gBitBuf>
	jal	ra,getBits.constprop.0
	li	a0,0
	jal	ra,getBits.constprop.0
	lbu	s9,-1771(s0)
	beqz	s9,lab491
lab499: 	lw	ra,108(sp)
	lw	s0,104(sp)
	lw	s1,100(sp)
	lw	s2,96(sp)
	lw	s3,92(sp)
	lw	s4,88(sp)
	lw	s5,84(sp)
	lw	s6,80(sp)
	lw	s7,76(sp)
	lw	s8,72(sp)
	lw	s10,64(sp)
	lw	s11,60(sp)
	mv	a0,s9
	lw	s9,68(sp)
	addi	sp,sp,112
	ret
lab491: 	li	a0,0
	jal	ra,getBits.constprop.0
	mv	s6,a0
	li	a0,0
	jal	ra,getBits.constprop.0
	zext.b	s6,s6
	li	a5,255
	lw	a7,12(sp)
	zext.b	s10,a0
	beq	s6,a5,lab492
lab500: 	lhu	a5,-1698(s3)
	lbu	a3,-1700(s4)
	lui	s9,0x1
	li	s2,7
	sw	a7,12(sp)
	mv	s5,s10
	addi	s9,s9,-1 # fff <upsampleCr+0x1f>
	li	s7,8
	li	s11,255
	li	s6,216
	li	s8,217
	slli	a4,a5,0x8
	mv	s10,a5
	addi	a1,a3,-8
	bgeu	s2,a3,lab493
lab496: 	slli	a5,a4,0x10
	srli	a5,a5,0x10
	addi	s9,s9,-1
	slli	s9,s9,0x10
	sb	a1,-1700(s4)
	sh	a5,-1698(s3)
	srli	s9,s9,0x10
	srai	a3,s10,0x8
	srli	a4,s10,0x8
	beq	s5,s11,lab494
lab497: 	beqz	s9,lab495
	lbu	a3,-1700(s4)
	mv	s5,a4
	mv	s10,a5
	slli	a4,a5,0x8
	addi	a1,a3,-8
	bltu	s2,a3,lab496
lab493: 	sll	a5,a5,a3
	sh	a5,-1698(s3)
	jal	ra,getChar
	lhu	a5,-1698(s3)
	lbu	a4,-1700(s4)
	addi	s9,s9,-1
	or	a5,a0,a5
	slli	a5,a5,0x10
	sub	a4,s7,a4
	srli	a5,a5,0x10
	sll	a5,a5,a4
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	slli	s9,s9,0x10
	sh	a5,-1698(s3)
	srli	s9,s9,0x10
	srai	a3,s10,0x8
	srli	a4,s10,0x8
	bne	s5,s11,lab497
lab494: 	beq	a3,s6,lab498
	bne	a3,s8,lab497
lab495: 	li	s9,19
lab501: 	lbu	a4,-1771(s0)
	beqz	a4,lab499
	mv	s9,a4
	j	lab499
lab492: 	li	a5,216
	bne	s10,a5,lab500
lab505: 	addi	a0,sp,47
	sw	a7,12(sp)
	jal	ra,processMarkers
	lw	a7,12(sp)
	mv	s9,a0
	bnez	a0,lab501
	lbu	a4,47(sp)
	li	a3,194
	beq	a4,a3,lab502
	li	a3,201
	beq	a4,a3,lab503
	li	a3,192
	beq	a4,a3,lab504
	li	s9,20
	j	lab501
lab498: 	srli	a5,a5,0x8
	lw	a7,12(sp)
	beq	a5,s5,lab505
	j	lab495
lab503: 	li	s9,17
	j	lab501
lab504: 	sw	a7,16(sp)
	jal	ra,getBits.constprop.1
	mv	s6,a0
	li	a0,0
	jal	ra,getBits.constprop.0
	li	a4,8
	bne	a0,a4,lab506
	jal	ra,getBits.constprop.1
	addi	a3,a0,-1
	lui	a5,0x101
	slli	a4,a3,0x10
	sh	a0,-1704(a5) # 100958 <gImageYSize>
	srli	a4,a4,0x10
	lui	s7,0x4
	bgeu	a4,s7,lab507
	jal	ra,getBits.constprop.1
	addi	a3,a0,-1
	lui	a5,0x101
	slli	a4,a3,0x10
	sh	a0,-1702(a5) # 10095a <gImageXSize>
	srli	a4,a4,0x10
	bgeu	a4,s7,lab508
	li	a0,0
	jal	ra,getBits.constprop.0
	zext.b	a4,a0
	sb	a4,-1705(s1)
	li	a3,3
	bltu	a3,a4,lab509
	slli	a3,a4,0x1
	add	a3,a3,a4
	addi	a3,a3,8
	bne	s6,a3,lab510
	beqz	a4,lab511
	lui	a4,0x101
	lui	s8,0x101
	lui	s10,0x101
	addi	a5,a4,-1720 # 100948 <gCompQuant>
	addi	s6,s8,-1712 # 100950 <gCompHSamp>
	addi	s7,s10,-1716 # 10094c <gCompVSamp>
	sw	a5,12(sp)
	li	s5,4
	li	s11,1
	j	lab512
lab516: 	slli	s2,a3,0x4
	slli	s2,s2,0x10
	zext.b	a5,a5
	srli	s2,s2,0x10
lab517: 	add	a2,s6,s9
	srai	a3,a3,0xc
	sb	a3,0(a2)
	sb	a5,-1700(s4)
	li	a4,3
	addi	a2,a5,-4
	slli	a3,s2,0x4
	bgeu	a4,a5,lab513
	sb	a2,-1700(s4)
	sh	a3,-1698(s3)
lab518: 	add	a5,s7,s9
	srai	s2,s2,0xc
	sb	s2,0(a5)
	li	a0,0
	jal	ra,getBits.constprop.0
	lw	a5,12(sp)
	addi	a4,s9,1
	add	a3,a5,s9
	zext.b	a5,a0
	sb	a5,0(a3)
	zext.b	s9,a4
	bltu	s11,a5,lab514
	lbu	a3,-1705(s1)
	bgeu	s9,a3,lab515
lab512: 	li	a0,0
	jal	ra,getBits.constprop.0
	lui	a5,0x101
	lbu	a2,-1700(s4)
	addi	a5,a5,-1708 # 100954 <gCompIdent>
	add	a5,a5,s9
	sb	a0,0(a5)
	li	a4,3
	lhu	a3,-1698(s3)
	addi	a5,a2,-4
	bltu	a4,a2,lab516
	sll	a2,a3,a2
	sw	a3,20(sp)
	sh	a2,-1698(s3)
	jal	ra,getChar
	lhu	a2,-1698(s3)
	lbu	a5,-1700(s4)
	lw	a3,20(sp)
	or	s2,a0,a2
	slli	s2,s2,0x10
	sub	a2,s5,a5
	srli	s2,s2,0x10
	sll	s2,s2,a2
	addi	a5,a5,4
	slli	s2,s2,0x10
	srli	s2,s2,0x10
	zext.b	a5,a5
	j	lab517
lab502: 	li	s9,37
	j	lab501
lab506: 	li	s9,7
	j	lab501
lab513: 	sll	a5,s2,a5
	sh	a5,-1698(s3)
	jal	ra,getChar
	lhu	a2,-1698(s3)
	lbu	a3,-1700(s4)
	or	a5,a0,a2
	slli	a5,a5,0x10
	sub	a2,s5,a3
	srli	a5,a5,0x10
	sll	a5,a5,a2
	addi	a3,a3,4
	sh	a5,-1698(s3)
	sb	a3,-1700(s4)
	j	lab518
lab507: 	li	s9,8
	j	lab501
lab508: 	li	s9,9
	j	lab501
lab510: 	li	s9,11
	j	lab501
lab509: 	li	s9,10
	j	lab501
lab514: 	li	s9,36
	j	lab501
lab515: 	lbu	s9,-1771(s0)
	lw	a7,16(sp)
	bnez	s9,lab499
	beq	a3,s11,lab519
	li	a5,3
	bne	a3,a5,lab520
	lbu	a3,1(s6)
	li	s9,27
	bne	a3,s11,lab499
	lbu	a3,1(s7) # 4001 <_min_stack+0x1>
	bne	a3,s11,lab499
	lbu	a3,2(s6)
	bne	a3,s11,lab499
	lbu	a3,2(s7)
	bne	a3,s11,lab499
	lbu	a3,-1712(s8)
	beq	a3,s11,lab521
	li	a4,2
	li	s9,27
	bne	a3,a4,lab499
	lbu	a4,-1716(s10)
	li	a2,1
	beq	a4,a2,lab522
	bne	a4,a3,lab499
	lui	a5,0x101
	li	a3,4
	lui	s6,0x101
	addi	a4,a5,-1760 # 100920 <gMCUOrg>
	li	a2,6
	sw	a3,-1744(s6) # 100930 <gScanType>
	sw	zero,-1760(a5)
	lui	a3,0x101
	li	a5,513
	sb	a2,-1746(a3) # 10092e <gMaxBlocksPerMCU>
	sh	a5,4(a4)
	li	a2,15
	li	a5,16
lab545: 	lui	a4,0x101
	lhu	a3,-1702(a4) # 10095a <gImageXSize>
	lui	a1,0x101
	lui	a0,0x101
	li	a4,16
	sw	a1,20(sp)
	sb	a4,-1747(a1) # 10092d <gMaxMCUXSize>
	sw	a0,24(sp)
	sb	a5,-1748(a0) # 10092c <gMaxMCUYSize>
	addi	a3,a3,15
	li	a1,4
lab539: 	lui	a4,0x101
	lhu	a4,-1704(a4) # 100958 <gImageYSize>
	addi	a5,a5,-8
	snez	a5,a5
	add	a4,a4,a2
	addi	a5,a5,3
	sra	a3,a3,a1
	sra	a5,a4,a5
	slli	a5,a5,0x10
	slli	a4,a3,0x10
	srli	a4,a4,0x10
	srli	a5,a5,0x10
	mul	a3,a4,a5
	lui	s5,0x101
	lui	a2,0x101
	sh	a5,-1752(s5) # 100928 <gMaxMCUSPerCol>
	addi	a0,sp,47
	lui	a5,0x101
	sw	a7,16(sp)
	sh	a4,-1750(a2) # 10092a <gMaxMCUSPerRow>
	sh	a3,-1754(a5) # 100926 <gNumMCUSRemaining>
	jal	ra,processMarkers
	mv	s9,a0
	bnez	a0,lab501
	lbu	a4,47(sp)
	li	a5,218
	lw	a7,16(sp)
	li	s9,18
	bne	a4,a5,lab501
	sw	a7,16(sp)
	jal	ra,getBits.constprop.1
	mv	s7,a0
	li	a0,0
	jal	ra,getBits.constprop.0
	zext.b	a5,a0
	addi	a3,s7,-3
	slli	a4,a5,0x1
	lui	a2,0x101
	slli	s11,a3,0x10
	sb	a5,-1729(a2) # 10093f <gCompsInScan>
	srli	s11,s11,0x10
	addi	a4,a4,3
	lw	a7,16(sp)
	bne	s11,a4,lab523
	addi	a5,a5,-1
	zext.b	a5,a5
	li	a4,2
	bltu	a4,a5,lab523
	lui	a5,0x101
	addi	s7,a5,-1732 # 10093c <gCompList>
	lui	a5,0x101
	addi	s9,a5,-1736 # 100938 <gCompDCTab>
	lui	a5,0x101
	li	s10,0
	addi	s8,a5,-1740 # 100934 <gCompACTab>
	mv	s2,s11
	sw	a7,16(sp)
lab528: 	li	a0,0
	jal	ra,getBits.constprop.0
	mv	s11,a0
	li	a0,0
	jal	ra,getBits.constprop.0
	lbu	a4,-1705(s1)
	addi	a3,s2,-2
	mv	t1,s2
	slli	s2,a3,0x10
	zext.b	s11,s11
	zext.b	a5,a0
	srli	s2,s2,0x10
	beqz	a4,lab524
	lui	a2,0x101
	lbu	a3,-1708(a2) # 100954 <gCompIdent>
	beq	a3,s11,lab525
	li	a3,1
	beq	a4,a3,lab524
	addi	a3,a2,-1708
	lbu	a3,1(a3)
	beq	a3,s11,lab526
	li	a3,2
	beq	a4,a3,lab524
	addi	a4,a2,-1708
	lbu	a4,2(a4)
	beq	a4,s11,lab527
lab524: 	li	s9,15
	j	lab501
lab527: 	li	a7,2
	li	a4,2
lab543: 	lui	a3,0x101
	lbu	a3,-1729(a3) # 10093f <gCompsInScan>
	add	a6,s7,s10
	add	a1,s9,a4
	srli	a0,a5,0x4
	add	a4,s8,a4
	andi	a5,a5,15
	addi	s10,s10,1
	sb	a7,0(a6)
	sb	a0,0(a1)
	sb	a5,0(a4)
	zext.b	s10,s10
	bltu	s10,a3,lab528
	li	a0,0
	mv	s2,t1
	jal	ra,getBits.constprop.0
	zext.b	a5,a0
	lui	a4,0x101
	li	a0,0
	sb	a5,-1773(a4) # 100913 <spectral_start>
	jal	ra,getBits.constprop.0
	lbu	a5,-1700(s4)
	zext.b	a4,a0
	lui	a3,0x101
	sb	a4,-1774(a3) # 100912 <spectral_end>
	li	a4,3
	lhu	a3,-1698(s3)
	lw	a7,16(sp)
	bgeu	a4,a5,lab529
	slli	a4,a3,0x4
	addi	a5,a5,-4
	slli	a4,a4,0x10
	zext.b	a5,a5
	srli	a4,a4,0x10
lab547: 	srli	a3,a3,0xc
	lui	a2,0x101
	sb	a3,-1775(a2) # 100911 <successive_high>
	sb	a5,-1700(s4)
	li	a3,3
	bgeu	a3,a5,lab530
	addi	a5,a5,-4
	slli	a3,a4,0x4
	sb	a5,-1700(s4)
	sh	a3,-1698(s3)
lab546: 	addi	a5,s2,-5
	srli	a4,a4,0xc
	lui	a3,0x101
	slli	a5,a5,0x10
	sb	a4,-1776(a3) # 100910 <successive_low>
	srli	a5,a5,0x10
	beqz	a5,lab531
	mv	s2,a5
	mv	s10,a7
lab532: 	addi	s2,s2,-1
	slli	s2,s2,0x10
	li	a0,0
	srli	s2,s2,0x10
	jal	ra,getBits.constprop.0
	bnez	s2,lab532
	mv	a7,s10
lab531: 	lui	a5,0x101
	lbu	a3,-1729(a5) # 10093f <gCompsInScan>
	beqz	a3,lab533
	lui	a5,0x101
	lbu	a2,-1732(a5) # 10093c <gCompList>
	lui	a4,0x101
	lbu	a1,-1692(a4) # 100964 <gValidHuffTables>
	add	a4,s8,a2
	lbu	a4,0(a4)
	add	a0,s9,a2
	lbu	a0,0(a0)
	li	a5,1
	addi	a4,a4,2
	sll	a0,a5,a0
	sll	a4,a5,a4
	or	a4,a4,a0
	and	a0,a1,a4
	bne	a0,a4,lab534
	beq	a3,a5,lab535
	lbu	a0,1(s7)
	add	a4,s8,a0
	lbu	a4,0(a4)
	add	a0,s9,a0
	lbu	a0,0(a0)
	addi	a4,a4,2
	sll	a4,a5,a4
	sll	a0,a5,a0
	or	a4,a4,a0
	and	a0,a4,a1
	bne	a0,a4,lab534
	li	a4,2
	beq	a3,a4,lab535
	lbu	a0,2(s7)
	add	s8,s8,a0
	lbu	a4,0(s8)
	add	s9,s9,a0
	lbu	a0,0(s9)
	addi	a4,a4,2
	sll	a4,a5,a4
	sll	a5,a5,a0
	or	a5,a4,a5
	and	a1,a1,a5
	bne	a1,a5,lab534
lab535: 	lw	a1,12(sp)
	lui	a4,0x101
	lbu	a4,-1693(a4) # 100963 <gValidQuantTables>
	add	a2,a1,a2
	lbu	a5,0(a2)
	snez	a5,a5
	addi	a5,a5,1
	and	a5,a4,a5
	beqz	a5,lab536
	li	a5,1
	beq	a3,a5,lab533
	lbu	a5,1(s7)
	add	a5,a1,a5
	lbu	a5,0(a5)
	snez	a5,a5
	addi	a5,a5,1
	and	a5,a4,a5
	beqz	a5,lab536
	li	a5,2
	beq	a3,a5,lab533
	lbu	a5,2(s7)
	add	a5,a1,a5
	lbu	a5,0(a5)
	snez	a5,a5
	addi	a5,a5,1
	and	a4,a4,a5
	beqz	a4,lab536
lab533: 	lui	a5,0x101
	lui	a4,0x101
	lhu	a5,-1724(a5) # 100944 <gRestartInterval>
	addi	a3,a4,-1688 # 100968 <gLastDC>
	sw	zero,-1688(a4)
	sh	zero,4(a3)
	beqz	a5,lab537
	lui	a4,0x101
	sh	a5,-1728(a4) # 100940 <gRestartsLeft>
	lui	a5,0x101
	sh	zero,-1726(a5) # 100942 <gNextRestartNum>
lab537: 	lbu	a2,-1700(s4)
	lui	a5,0x101
	lui	a4,0x101
	lhu	a3,-1698(s3)
	lbu	a5,-1695(a5) # 100961 <gInBufOfs>
	lbu	a4,-1696(a4) # 100960 <gInBufLeft>
	bnez	a2,lab538
	lui	s2,0x100
	addi	s2,s2,44 # 10002c <gCoeffBuf>
lab540: 	addi	a5,a5,-1
	zext.b	a5,a5
	lui	a1,0x101
	add	a2,s2,a5
	srli	a3,a3,0x8
	addi	a4,a4,1
	sb	a5,-1695(a1) # 100961 <gInBufOfs>
	lui	a5,0x101
	sb	a4,-1696(a5) # 100960 <gInBufLeft>
	sb	a3,896(a2)
	li	a5,8
	li	a0,1
	sw	a7,12(sp)
	sb	a5,-1700(s4)
	jal	ra,getBits.constprop.0
	li	a0,1
	jal	ra,getBits.constprop.0
	lbu	s9,-1771(s0)
	lw	a7,12(sp)
	bnez	s9,lab499
	lui	a5,0x101
	lhu	t5,-1702(a5) # 10095a <gImageXSize>
	lui	a5,0x101
	lhu	t4,-1704(a5) # 100958 <gImageYSize>
	lui	a5,0x101
	lhu	a6,-1750(a5) # 10092a <gMaxMCUSPerRow>
	lw	a5,20(sp)
	lbu	t3,-1705(s1)
	lw	t1,-1744(s6)
	lbu	a1,-1747(a5)
	lw	a5,24(sp)
	lhu	a0,-1752(s5)
	addi	a3,s2,640
	lbu	a2,-1748(a5)
	addi	a4,s2,128
	addi	s2,s2,384
	sw	t5,0(a7)
	sw	t4,4(a7)
	sw	t3,8(a7)
	sw	t1,20(a7)
	sw	a6,12(a7)
	sw	a0,16(a7)
	sw	a1,24(a7)
	sw	a2,28(a7)
	sw	a3,32(a7)
	sw	a4,36(a7)
	sw	s2,40(a7)
	j	lab499
lab519: 	lbu	a3,-1712(s8)
	li	s9,27
	bne	a3,s11,lab499
	lbu	a3,-1716(s10)
	bne	a3,s11,lab499
	lui	a5,0x101
	lui	s6,0x101
	sb	s11,-1746(a5) # 10092e <gMaxBlocksPerMCU>
	lui	a5,0x101
	sw	zero,-1744(s6) # 100930 <gScanType>
	sb	zero,-1760(a5) # 100920 <gMCUOrg>
lab544: 	li	a2,7
	li	a5,8
lab542: 	lui	a4,0x101
	lhu	a3,-1702(a4) # 10095a <gImageXSize>
	lui	a1,0x101
	lui	a0,0x101
	li	a4,8
	sw	a1,20(sp)
	sb	a4,-1747(a1) # 10092d <gMaxMCUXSize>
	sw	a0,24(sp)
	sb	a5,-1748(a0) # 10092c <gMaxMCUYSize>
	addi	a3,a3,7
	li	a1,3
	j	lab539
lab511: 	lbu	s9,-1771(s0)
	bnez	s9,lab499
lab520: 	li	s9,26
	j	lab499
lab523: 	li	s9,14
	j	lab501
lab538: 	addi	a5,a5,-1
	lui	s2,0x100
	zext.b	a5,a5
	addi	s2,s2,44 # 10002c <gCoeffBuf>
	addi	a4,a4,1
	add	a2,s2,a5
	zext.b	a4,a4
	sb	a3,896(a2)
	j	lab540
lab521: 	lbu	a4,-1716(s10)
	li	a5,1
	beq	a4,a5,lab541
	li	a3,2
	li	s9,27
	bne	a4,a3,lab499
	li	a5,3
	lui	s6,0x101
	li	a4,4
	sw	a5,-1744(s6) # 100930 <gScanType>
	lui	a5,0x101
	sb	a4,-1746(a5) # 10092e <gMaxBlocksPerMCU>
	lui	a5,0x101
	lui	a4,0x2010
	sw	a4,-1760(a5) # 100920 <gMCUOrg>
	li	a2,15
	li	a5,16
	j	lab542
lab526: 	li	a4,1
	li	a7,1
	j	lab543
lab525: 	li	a7,0
	li	a4,0
	j	lab543
lab541: 	lui	s6,0x101
	sw	a4,-1744(s6) # 100930 <gScanType>
	li	a2,3
	lui	a4,0x101
	lui	a5,0x101
	sb	a2,-1746(a4) # 10092e <gMaxBlocksPerMCU>
	li	a4,256
	addi	a3,a5,-1760 # 100920 <gMCUOrg>
	sh	a4,-1760(a5)
	li	a5,2
	sb	a5,2(a3)
	j	lab544
lab522: 	lui	a5,0x101
	li	a4,4
	sb	a4,-1746(a5) # 10092e <gMaxBlocksPerMCU>
	lui	s6,0x101
	lui	a5,0x101
	lui	a4,0x2010
	sw	a4,-1760(a5) # 100920 <gMCUOrg>
	sw	a3,-1744(s6) # 100930 <gScanType>
	li	a2,7
	li	a5,8
	j	lab545
lab530: 	sll	a5,a4,a5
	sw	a7,28(sp)
	sw	a4,16(sp)
	sh	a5,-1698(s3)
	jal	ra,getChar
	lhu	a2,-1698(s3)
	lbu	a3,-1700(s4)
	lw	a4,16(sp)
	or	a5,a0,a2
	slli	a5,a5,0x10
	li	a2,4
	sub	a2,a2,a3
	srli	a5,a5,0x10
	sll	a5,a5,a2
	addi	a3,a3,4
	lw	a7,28(sp)
	sh	a5,-1698(s3)
	sb	a3,-1700(s4)
	j	lab546
lab529: 	sll	a5,a3,a5
	sw	a7,28(sp)
	sw	a3,16(sp)
	sh	a5,-1698(s3)
	jal	ra,getChar
	lhu	a2,-1698(s3)
	lbu	a5,-1700(s4)
	lw	a3,16(sp)
	or	a4,a0,a2
	slli	a4,a4,0x10
	li	a2,4
	sub	a2,a2,a5
	srli	a4,a4,0x10
	sll	a4,a4,a2
	addi	a5,a5,4
	slli	a4,a4,0x10
	lw	a7,28(sp)
	srli	a4,a4,0x10
	zext.b	a5,a5
	j	lab547
lab534: 	li	s9,24
	j	lab501
lab536: 	li	s9,23
	j	lab501
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

_end_2:
	.4byte	0x0000


	.section .rodata

jpeg_data:
	.2byte	0xd8ff
	.2byte	0xe0ff
	.2byte	0x1000
	.2byte	0x464a
	.2byte	0x4649
	.2byte	0x100
	.2byte	0x101
	.2byte	0x4800
	.2byte	0x4800
	.4byte	0x0000
	.2byte	0xdbff
	.2byte	0x4300
	.2byte	0x5000
	.4byte	0x3c463c37
	.2byte	0x5032
	.2byte	0x4146
	.2byte	0x5a46
	.2byte	0x5055
	.byte	0x5f, 0x78, 0xc8, 0x82, 0x78, 0x6e
	.2byte	0x786e
	.2byte	0xaff5
	.2byte	0x91b9
	.2byte	0xffc8
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.4byte	0x14300db
	.2byte	0x5a55
	.2byte	0x785a
	.2byte	0x7869
	.4byte	0xeb8282eb
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xffff
	.2byte	0xc0ff
	.2byte	0x1100
	.2byte	0x8
	.2byte	0x40
	.4byte	0x11010333
	.2byte	0x200
	.2byte	0x111
	.4byte	0xff011103
	.2byte	0xc4
	.2byte	0x18
	.2byte	0x300
	.2byte	0x101
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.2byte	0x201
	.4byte	0xff040003
	.2byte	0xc4
	.2byte	0x1026
	.2byte	0x200
	.2byte	0x102
	.4byte	0x03040303
	.2byte	0x1
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.2byte	0x201
	.2byte	0x1100
	.4byte	0x31211203
	.2byte	0x6141
	.2byte	0x471
	.2byte	0x5322
	.2byte	0x1391
	.4byte	0xff625123
	.2byte	0xc4
	.2byte	0x115
	.2byte	0x101
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.2byte	0x100
	.2byte	0xc4ff
	.2byte	0x1400
	.2byte	0x111
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.2byte	0xdaff
	.2byte	0xc00
	.4byte	0x02000103
	.2byte	0x311
	.2byte	0x11
	.8byte	0x664d280b88c7003f
	.2byte	0x2e1
	.4byte	0x450558cf
	.2byte	0x88
	.2byte	0x10a9
	.2byte	0xe34
	.4byte	0x54686faf
	.4byte	0x61036433
	.2byte	0x6a02
	.2byte	0xdb49
	.2byte	0x8449
	.2byte	0x5059
	.2byte	0x5091
	.2byte	0x3da0
	.2byte	0x80a4
	.2byte	0x887c
	.2byte	0xd518
	.2byte	0x548
	.2byte	0x4309
	.4byte	0x2b00ffeb
	.2byte	0x2f5
	.2byte	0xd478
	.2byte	0xac1c
	.2byte	0x1048
	.2byte	0xb58e
	.2byte	0xa855
	.2byte	0xa50c
	.4byte	0x2a52db2f
	.2byte	0x5319
	.2byte	0x82f6
	.2byte	0xa104
	.2byte	0x450e
	.2byte	0x84f8
	.2byte	0xad0d
	.2byte	0x217e
	.2byte	0xd020
	.2byte	0x430
	.4byte	0x43995c93
	.2byte	0xc6e2
	.4byte	0xd7d42057
	.2byte	0x207d
	.2byte	0xe13a
	.2byte	0xf640
	.2byte	0xf149
	.2byte	0xa320
	.4byte	0x9c5178b
	.4byte	0x5352647
	.2byte	0x1eb5
	.2byte	0x7520
	.2byte	0x9502
	.2byte	0xfac0
	.2byte	0xcf81
	.2byte	0xc52
	.2byte	0xd6c
	.2byte	0x25a0
	.2byte	0xddbd
	.2byte	0xf3d1
	.2byte	0x282a
	.4byte	0xe04b043
	.2byte	0xdc3a
	.2byte	0xb229
	.4byte	0x116af813
	.2byte	0x5325
	.2byte	0xa922
	.2byte	0xe07d
	.2byte	0xa82e
	.2byte	0xc106
	.2byte	0xa0da
	.2byte	0x2129
	.2byte	0x304d
	.2byte	0x2a35
	.2byte	0xb928
	.4byte	0x15068517
	.2byte	0x9750
	.2byte	0xd88c
	.4byte	0x01e520ef
	.2byte	0xd3f9
	.2byte	0xa152
	.2byte	0xeb5
	.2byte	0x14b0
	.2byte	0x3990
	.2byte	0x2832
	.2byte	0x60e2
	.2byte	0x17d9
	.2byte	0xa2cc
	.2byte	0xb1d9
	.2byte	0x3502
	.2byte	0x1e58
	.2byte	0xc60
	.2byte	0x9558
	.2byte	0xa606
	.2byte	0xf820
	.2byte	0x3b90
	.4byte	0xb3b04167
	.2byte	0x4f02
	.2byte	0x559c
	.2byte	0x8e40
	.2byte	0xfeb5
	.2byte	0x5109
	.2byte	0xd712
	.2byte	0xfd01
	.4byte	0x7b99113b
	.2byte	0x5598
	.2byte	0x4b7d
	.4byte	0xec0064bb
	.2byte	0x4bd
	.2byte	0x4505
	.2byte	0x3662
	.2byte	0x3bb2
	.2byte	0x1b42
	.2byte	0x1c2a
	.2byte	0x7440
	.2byte	0x11b8
	.2byte	0x6
	.2byte	0x1fb8
	.2byte	0xd9ff
	.4byte	0x0000
r_ref.2:
	.2byte	0x2121
	.2byte	0x2121
	.2byte	0x2121
	.2byte	0x2121
	.2byte	0x2020
	.2byte	0x2020
	.2byte	0x2020
	.2byte	0x2020
	.2byte	0x1d1d
	.2byte	0x1d1d
	.2byte	0x1d1d
	.2byte	0x1d1d
	.2byte	0x1919
	.2byte	0x1919
	.2byte	0x1919
	.2byte	0x1919
	.2byte	0x1515
	.2byte	0x1515
	.2byte	0x1515
	.2byte	0x1515
	.2byte	0x1111
	.2byte	0x1111
	.2byte	0x1111
	.2byte	0x1111
	.2byte	0xe0e
	.2byte	0xe0e
	.2byte	0xe0e
	.2byte	0xe0e
	.2byte	0xd0d
	.2byte	0xd0d
	.2byte	0xd0d
	.2byte	0xd0d
g_ref.1:
	.2byte	0x3535
	.2byte	0x3535
	.2byte	0x3535
	.2byte	0x3535
	.2byte	0x3434
	.2byte	0x3434
	.2byte	0x3434
	.2byte	0x3434
	.2byte	0x3131
	.2byte	0x3131
	.2byte	0x3131
	.2byte	0x3131
	.2byte	0x2d2d
	.2byte	0x2d2d
	.2byte	0x2d2d
	.2byte	0x2d2d
	.2byte	0x2929
	.2byte	0x2929
	.2byte	0x2929
	.2byte	0x2929
	.2byte	0x2525
	.2byte	0x2525
	.2byte	0x2525
	.2byte	0x2525
	.2byte	0x2222
	.2byte	0x2222
	.2byte	0x2222
	.2byte	0x2222
	.2byte	0x2121
	.2byte	0x2121
	.2byte	0x2121
	.2byte	0x2121
b_ref.0:
	.4byte	0x43434343
	.4byte	0x43434343
	.2byte	0x4242
	.2byte	0x4242
	.2byte	0x4242
	.2byte	0x4242
	.8byte	0x3f3f3f3f3f3f3f3f
	.4byte	0x3b3b3b3b
	.4byte	0x3b3b3b3b
	.4byte	0x37373737
	.4byte	0x37373737
	.4byte	0x33333333
	.4byte	0x33333333
	.2byte	0x3030
	.2byte	0x3030
	.2byte	0x3030
	.2byte	0x3030
	.4byte	0x2f2f2f2f
	.4byte	0x2f2f2f2f
	.2byte	0x3a88
	.4byte	0x0000
	.2byte	0x3ad0
	.4byte	0x0000
	.2byte	0x3aa8
	.4byte	0x0000
	.2byte	0x3a60
	.4byte	0x0000
	.2byte	0x3af8
	.4byte	0x0000
	.2byte	0x3ae8
	.4byte	0x0000
	.2byte	0x3ac0
	.4byte	0x0000
	.2byte	0x3a78
	.4byte	0x0000
	.2byte	0x5108
	.4byte	0x0000
	.2byte	0x4f70
	.4byte	0x0000
	.2byte	0x4da4
	.4byte	0x0000
	.2byte	0x46bc
	.4byte	0x0000
	.2byte	0x47bc
	.4byte	0x0000
	.2byte	0x476c
	.4byte	0x0000
	.2byte	0x471c
	.4byte	0x0000
	.2byte	0x46fc
	.4byte	0x0000
	.2byte	0x51d8
	.4byte	0x0000
	.2byte	0x5198
	.4byte	0x0000
	.2byte	0x5158
	.4byte	0x0000
	.2byte	0x5118
	.4byte	0x0000
	.2byte	0x5218
	.4byte	0x0000
	.2byte	0x4f3c
	.4byte	0x0000
CSWTCH.306:
	.2byte	0x60c
	.2byte	0x10
	.2byte	0x5ac
	.2byte	0x10
	.2byte	0x8bc
	.2byte	0x10
	.2byte	0x86c
	.2byte	0x10
CSWTCH.308:
	.2byte	0x65c
	.2byte	0x10
	.2byte	0x5fc
	.2byte	0x10
	.2byte	0x76c
	.2byte	0x10
	.2byte	0x66c
	.2byte	0x10
gWinogradQuant:
	.2byte	0xb280
	.2byte	0xa7b2
	.2byte	0xa7f6
	.4byte	0x97e8e897
	.2byte	0xd180
	.4byte	0x6580d1db
	.2byte	0xc5b2
	.2byte	0xb2c5
	.2byte	0x4565
	.4byte	0xa7b1a78b
	.4byte	0x6023458b
	.4byte	0x83979783
	.2byte	0x2360
	.2byte	0x5b31
	.2byte	0x8076
	.2byte	0x5b76
	.2byte	0x2e31
	.2byte	0x6551
	.2byte	0x5165
	.2byte	0x2a2e
	.2byte	0x4f45
	.2byte	0x2a45
	.4byte	0x23363623
	.2byte	0x251c
	.2byte	0x131c
	.4byte	0x
CSWTCH.299:
	.2byte	0x1
	.2byte	0x2
	.2byte	0x4
	.2byte	0x8
	.2byte	0x10
	.2byte	0x20
	.2byte	0x40
	.2byte	0x80
	.2byte	0x100
	.2byte	0x200
	.2byte	0x400
	.2byte	0x800
	.2byte	0x1000
	.2byte	0x2000
	.2byte	0x4000
	.4byte	0x0000
CSWTCH.301:
	.2byte	0xffff
	.2byte	0xfffd
	.2byte	0xfff9
	.2byte	0xfff1
	.2byte	0xffe1
	.2byte	0xffc1
	.2byte	0xff81
	.2byte	0xff01
	.2byte	0xfe01
	.2byte	0xfc01
	.2byte	0xf801
	.2byte	0xf001
	.2byte	0xe001
	.2byte	0xc001
	.2byte	0x8001
	.4byte	0x0000
ZAG:
	.2byte	0x100
	.2byte	0x1008
	.2byte	0x209
	.4byte	0x18110a03
	.2byte	0x1920
	.2byte	0xb12
	.2byte	0x504
	.2byte	0x130c
	.2byte	0x211a
	.2byte	0x3028
	.2byte	0x2229
	.4byte	0x60d141b
	.4byte	0x1c150e07
	.4byte	0x38312a23
	.2byte	0x3239
	.4byte	0x161d242b
	.4byte	0x251e170f
	.2byte	0x332c
	.2byte	0x3b3a
	.2byte	0x2d34
	.2byte	0x1f26
	.4byte	0x3c352e27
	.2byte	0x363d
	.4byte	0x3f3e372f
