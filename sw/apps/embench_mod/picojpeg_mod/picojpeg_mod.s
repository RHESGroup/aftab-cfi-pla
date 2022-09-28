	.text
	.globl  main
	.type  main, @function

pjpeg_need_bytes_callback:
	addi	sp,sp,-16
	sw	s1,4(sp)
	lui	s1,0x101
	lw	a5,-704(s1) # 100d40 <jpeg_off>
	sw	s0,8(sp)
	li	s0,570
	sw	s2,0(sp)
	sw	ra,12(sp)
	sub	s0,s0,a5
	mv	s2,a2
	bgeu	a1,s0,lab0
	mv	s0,a1
lab0: 	lui	a1,0x100
	mv	a1,a1
	mv	a2,s0
	add	a1,a1,a5
	jal	ra,memcpy
	sb	s0,0(s2)
	lw	a5,-704(s1)
	lw	ra,12(sp)
	lw	s2,0(sp)
	add	a5,a5,s0
	lw	s0,8(sp)
	sw	a5,-704(s1)
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
	addi	a0,s3,1076 # 100434 <pInfo>
	sw	zero,-704(s4) # 100d40 <jpeg_off>
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
	addi	a0,s4,1076 # 100434 <pInfo>
	sw	zero,-704(s5) # 100d40 <jpeg_off>
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
	addi	s2,s2,1076 # 100434 <pInfo>
	sw	s1,4(sp)
	lw	a0,32(s2)
	lui	s1,0x100
	mv	s1,s1
	li	a2,64
	addi	a1,s1,572 # 10023c <r_ref.2>
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
	lui	a6,0x100
	addi	a6,a6,1120 # 100460 <gCoeffBuf>
	slli	a0,a0,0x1
	addi	sp,sp,-32
	add	a7,a6,a0
	addi	t4,a6,128
	lui	a2,0x8
	add	a6,a6,a1
	sw	s0,28(sp)
	sw	s1,24(sp)
	sw	s2,20(sp)
	sw	s3,16(sp)
	sw	s4,12(sp)
	sw	s5,8(sp)
	add	t4,t4,a1
	addi	a6,a6,392
	addi	t5,a7,64
	li	t3,88
	addi	a2,a2,-256 # 7f00 <__DTOR_END__+0x1d5c>
	li	t1,198
lab16: 	addi	a4,a6,-8
	mv	a3,t4
	mv	a0,a7
lab15: 	lh	t0,0(a0)
	lbu	a1,0(a3)
	lbu	t2,1(a3)
	zext.b	a5,t0
	mul	t6,a5,t3
	addi	a0,a0,2
	srli	t6,t6,0x8
	addi	t6,t6,-44
	slli	t6,t6,0x10
	srli	t6,t6,0x10
	sub	a1,a1,t6
	slli	s4,a1,0x10
	sub	t2,t2,t6
	srli	s4,s4,0x10
	slli	s0,a1,0x10
	slli	s3,t2,0x10
	addi	a1,s4,-256
	srai	s0,s0,0x10
	slli	a1,a1,0x10
	srli	s3,s3,0x10
	srli	a1,a1,0x10
	slti	s5,s0,256
	addi	s2,s3,-256
	sltu	a1,a1,a2
	xori	s1,s5,1
	slli	s2,s2,0x10
	srli	s2,s2,0x10
	slli	t2,t2,0x10
	and	s1,a1,s1
	srai	t2,t2,0x10
	sltu	s2,s2,a2
	beqz	s1,lab7
	li	a1,-1
lab26: 	slti	s4,t2,256
	xori	s1,s4,1
	and	s1,s2,s1
	zext.b	s0,a1
	li	a1,255
	bnez	s1,lab8
	li	a1,0
	bltz	t2,lab8
	and	s2,s2,s4
	sltiu	t2,s3,256
	or	t2,t2,s2
	beqz	t2,lab8
	zext.b	a1,s3
lab8: 	lbu	t2,8(a3)
	lbu	s2,9(a3)
	slli	a1,a1,0x8
	sub	t2,t2,t6
	slli	s4,t2,0x10
	sub	s2,s2,t6
	srli	s4,s4,0x10
	slli	s3,s2,0x10
	slli	t2,t2,0x10
	addi	t6,s4,-256
	srai	t2,t2,0x10
	slli	t6,t6,0x10
	srli	s3,s3,0x10
	srli	t6,t6,0x10
	slti	s5,t2,256
	addi	s1,s3,-256
	or	s0,s0,a1
	slli	s1,s1,0x10
	sltu	a1,t6,a2
	xori	t6,s5,1
	srli	s1,s1,0x10
	slli	s2,s2,0x10
	sh	s0,0(a3)
	and	t6,a1,t6
	srai	s2,s2,0x10
	sltu	s1,s1,a2
	beqz	t6,lab9
	li	a1,-1
lab23: 	slti	t2,s2,256
	xori	t6,t2,1
	and	t6,s1,t6
	zext.b	s0,a1
	li	a1,255
	bnez	t6,lab10
	li	a1,0
	bltz	s2,lab10
	and	s1,s1,t2
	sltiu	t6,s3,256
	or	t6,t6,s1
	beqz	t6,lab10
	zext.b	a1,s3
lab10: 	mul	a5,a5,t1
	zext.b	t0,t0
	addi	t0,t0,-227
	lbu	t6,0(a4)
	slli	a1,a1,0x8
	or	a1,s0,a1
	lbu	t2,1(a4)
	sh	a1,8(a3)
	srli	a5,a5,0x8
	add	a5,a5,t0
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	add	a1,a5,t6
	slli	s2,a1,0x10
	add	t0,a5,t2
	srli	s2,s2,0x10
	slli	s0,t0,0x10
	slli	a1,a1,0x10
	addi	t6,s2,-256
	srai	a1,a1,0x10
	slli	t6,t6,0x10
	srli	s0,s0,0x10
	srli	t6,t6,0x10
	slti	s3,a1,256
	addi	s1,s0,-256
	sltu	t6,t6,a2
	xori	t2,s3,1
	slli	s1,s1,0x10
	srli	s1,s1,0x10
	slli	t0,t0,0x10
	and	t2,t6,t2
	srai	t0,t0,0x10
	sltu	s1,s1,a2
	beqz	t2,lab11
	li	a1,-1
lab20: 	slti	t2,t0,256
	xori	t6,t2,1
	and	t6,s1,t6
	zext.b	s2,a1
	li	a1,255
	bnez	t6,lab12
	li	a1,0
	bltz	t0,lab12
	and	s1,s1,t2
	sltiu	t6,s0,256
	or	t6,t6,s1
	beqz	t6,lab12
	zext.b	a1,s0
lab12: 	lbu	t6,8(a4)
	lbu	t0,9(a4)
	slli	a1,a1,0x8
	add	t6,a5,t6
	slli	s1,t6,0x10
	add	a5,a5,t0
	srli	s1,s1,0x10
	slli	s3,t6,0x10
	slli	s0,a5,0x10
	addi	t6,s1,-256
	srai	s3,s3,0x10
	slli	t6,t6,0x10
	srli	s0,s0,0x10
	srli	t6,t6,0x10
	slti	s4,s3,256
	addi	t0,s0,-256
	or	s2,s2,a1
	xori	t2,s4,1
	sltu	a1,t6,a2
	slli	t0,t0,0x10
	slli	t6,a5,0x10
	srli	t0,t0,0x10
	sh	s2,0(a4)
	and	t2,a1,t2
	srai	t6,t6,0x10
	sltu	t0,t0,a2
	li	a5,255
	bnez	t2,lab13
	li	a5,0
	bltz	s3,lab13
	sltiu	a5,s1,256
	and	a1,a1,s4
	or	a1,a5,a1
	li	a5,0
	beqz	a1,lab13
	zext.b	a5,s1
lab13: 	slti	t2,t6,256
	xori	a1,t2,1
	and	a1,t0,a1
	beqz	a1,lab14
	li	a1,255
lab17: 	slli	a1,a1,0x8
	or	a5,a5,a1
	sh	a5,8(a4)
	addi	a4,a4,2
	addi	a3,a3,2
	bne	a4,a6,lab15
	addi	a7,a7,16
	addi	t4,t4,16
	addi	a6,a4,16
	bne	t5,a7,lab16
	lw	s0,28(sp)
	lw	s1,24(sp)
	lw	s2,20(sp)
	lw	s3,16(sp)
	lw	s4,12(sp)
	lw	s5,8(sp)
	addi	sp,sp,32
	ret
lab14: 	li	a1,0
	bltz	t6,lab17
	and	t0,t0,t2
	sltiu	t6,s0,256
	or	t6,t6,t0
	beqz	t6,lab17
	zext.b	a1,s0
	j	lab17
lab11: 	li	t2,0
	bltz	a1,lab18
	sltiu	a1,s2,256
	and	t6,t6,s3
	or	t6,a1,t6
	li	a1,0
	beqz	t6,lab19
	mv	a1,s2
lab19: 	mv	t2,a1
lab18: 	mv	a1,t2
	j	lab20
lab9: 	li	t6,0
	bltz	t2,lab21
	and	a1,a1,s5
	sltiu	t6,s4,256
	or	t6,t6,a1
	li	a1,0
	beqz	t6,lab22
	mv	a1,s4
lab22: 	mv	t6,a1
lab21: 	mv	a1,t6
	j	lab23
lab7: 	li	s1,0
	bltz	s0,lab24
	and	a1,a1,s5
	sltiu	s0,s4,256
	or	s0,s0,a1
	li	a1,0
	beqz	s0,lab25
	mv	a1,s4
lab25: 	mv	s1,a1
lab24: 	mv	a1,s1
	j	lab26
upsampleCbH:
	lui	a6,0x100
	addi	a6,a6,1120 # 100460 <gCoeffBuf>
	addi	t4,a6,128
	slli	a0,a0,0x1
	addi	sp,sp,-32
	add	a7,a6,a0
	add	t4,t4,a1
	add	a6,a6,a1
	lui	a1,0x8
	sw	s0,28(sp)
	sw	s1,24(sp)
	sw	s2,20(sp)
	sw	s3,16(sp)
	sw	s4,12(sp)
	addi	a6,a6,392
	addi	t5,a7,128
	li	t3,88
	addi	a1,a1,-256 # 7f00 <__DTOR_END__+0x1d5c>
	li	t1,198
lab32: 	addi	a3,a6,-8
	mv	a2,t4
	mv	a0,a7
lab31: 	lh	t0,0(a0)
	lbu	t6,0(a2)
	lbu	t2,1(a2)
	zext.b	a5,t0
	mul	a4,a5,t3
	addi	a0,a0,2
	srli	a4,a4,0x8
	addi	a4,a4,-44
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	sub	t6,t6,a4
	slli	s2,t6,0x10
	sub	t2,t2,a4
	srli	s2,s2,0x10
	slli	s1,t2,0x10
	slli	t6,t6,0x10
	addi	a4,s2,-256
	srai	t6,t6,0x10
	slli	a4,a4,0x10
	srli	s1,s1,0x10
	srli	a4,a4,0x10
	slti	s4,t6,256
	addi	s3,s1,-256
	sltu	a4,a4,a1
	xori	s0,s4,1
	slli	s3,s3,0x10
	srli	s3,s3,0x10
	slli	t2,t2,0x10
	and	s0,a4,s0
	srai	t2,t2,0x10
	sltu	s3,s3,a1
	beqz	s0,lab27
	li	a4,-1
lab39: 	slti	s2,t2,256
	xori	t6,s2,1
	and	t6,s3,t6
	zext.b	s0,a4
	li	a4,255
	bnez	t6,lab28
	li	a4,0
	bltz	t2,lab28
	and	s3,s3,s2
	sltiu	t6,s1,256
	or	t6,t6,s3
	beqz	t6,lab28
	zext.b	a4,s1
lab28: 	mul	a5,a5,t1
	zext.b	t0,t0
	addi	t0,t0,-227
	lbu	t6,0(a3)
	slli	a4,a4,0x8
	or	a4,s0,a4
	lbu	t2,1(a3)
	sh	a4,0(a2)
	srli	a5,a5,0x8
	add	a5,a5,t0
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	add	a4,a5,t6
	slli	s1,a4,0x10
	add	a5,a5,t2
	srli	s1,s1,0x10
	slli	t6,a4,0x10
	slli	s0,a5,0x10
	addi	t2,s1,-256
	srai	t6,t6,0x10
	slli	t2,t2,0x10
	srli	s0,s0,0x10
	srli	t2,t2,0x10
	slti	s2,t6,256
	addi	t0,s0,-256
	sltu	t2,t2,a1
	xori	a4,s2,1
	slli	t0,t0,0x10
	srli	t0,t0,0x10
	slli	a5,a5,0x10
	and	a4,t2,a4
	srai	a5,a5,0x10
	sltu	t0,t0,a1
	beqz	a4,lab29
	li	a4,255
lab36: 	slti	t2,a5,256
	xori	t6,t2,1
	and	t6,t0,t6
	beqz	t6,lab30
	li	a5,255
lab35: 	slli	a5,a5,0x8
	or	a5,a4,a5
	sh	a5,0(a3)
	addi	a3,a3,2
	addi	a2,a2,2
	bne	a3,a6,lab31
	addi	a7,a7,16
	addi	t4,t4,8
	addi	a6,a3,8
	bne	a7,t5,lab32
	lw	s0,28(sp)
	lw	s1,24(sp)
	lw	s2,20(sp)
	lw	s3,16(sp)
	lw	s4,12(sp)
	addi	sp,sp,32
	ret
lab30: 	li	t6,0
	bltz	a5,lab33
	and	t0,t0,t2
	sltiu	t6,s0,256
	or	t6,t6,t0
	li	a5,0
	beqz	t6,lab34
	mv	a5,s0
lab34: 	mv	t6,a5
lab33: 	zext.b	a5,t6
	j	lab35
lab29: 	li	a4,0
	bltz	t6,lab36
	and	t2,t2,s2
	sltiu	t6,s1,256
	or	t6,t6,t2
	beqz	t6,lab36
	zext.b	a4,s1
	j	lab36
lab27: 	li	s0,0
	bltz	t6,lab37
	and	a4,a4,s4
	sltiu	t6,s2,256
	or	t6,t6,a4
	li	a4,0
	beqz	t6,lab38
	mv	a4,s2
lab38: 	mv	s0,a4
lab37: 	mv	a4,s0
	j	lab39
upsampleCbV:
	lui	a7,0x100
	addi	a7,a7,1120 # 100460 <gCoeffBuf>
	addi	t4,a7,128
	slli	a0,a0,0x1
	addi	t5,a7,384
	addi	a0,a0,16
	addi	sp,sp,-16
	add	t4,t4,a1
	add	a7,a7,a0
	sw	s0,12(sp)
	add	t5,t5,a1
	addi	t6,t4,64
	li	t3,88
	li	a0,255
	li	t1,198
lab53: 	addi	a6,a7,-16
	mv	a1,t5
	mv	a2,t4
lab52: 	lh	t0,0(a6)
	lbu	a3,0(a2)
	addi	a6,a6,2
	zext.b	a5,t0
	mul	a4,a5,t3
	srli	a4,a4,0x8
	addi	a4,a4,-44
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	sub	a3,a3,a4
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	bgeu	a0,a3,lab40
	slli	s0,a3,0x10
	srai	s0,s0,0x10
	li	t2,0
	bltz	s0,lab41
	blt	a0,s0,lab42
lab40: 	zext.b	t2,a3
lab41: 	lbu	a3,8(a2)
	sb	t2,0(a2)
	sub	a4,a3,a4
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	bgeu	a0,a4,lab43
	slli	t2,a4,0x10
	srai	t2,t2,0x10
	li	a3,0
	bltz	t2,lab44
	blt	a0,t2,lab45
lab43: 	zext.b	a3,a4
lab44: 	mul	a5,a5,t1
	zext.b	t0,t0
	addi	t0,t0,-227
	lbu	a4,0(a1)
	sb	a3,8(a2)
	srli	a5,a5,0x8
	add	a5,a5,t0
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	add	a4,a5,a4
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	bgeu	a0,a4,lab46
	slli	t0,a4,0x10
	srai	t0,t0,0x10
	li	a3,0
	bltz	t0,lab47
	blt	a0,t0,lab48
lab46: 	zext.b	a3,a4
lab47: 	lbu	a4,8(a1)
	sb	a3,0(a1)
	add	a5,a5,a4
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	bgeu	a0,a5,lab49
	slli	a3,a5,0x10
	srai	a3,a3,0x10
	li	a4,0
	bltz	a3,lab50
	blt	a0,a3,lab51
lab49: 	zext.b	a4,a5
lab50: 	sb	a4,8(a1)
	addi	a2,a2,1
	addi	a1,a1,1
	bne	a6,a7,lab52
	addi	t4,t4,16
	addi	t5,t5,16
	addi	a7,a6,16
	bne	t4,t6,lab53
	lw	s0,12(sp)
	addi	sp,sp,16
	ret
lab51: 	li	a4,255
	j	lab50
lab45: 	li	a3,255
	j	lab44
lab48: 	li	a3,255
	j	lab47
lab42: 	li	t2,255
	j	lab41
upsampleCr:
	lui	a6,0x100
	addi	a6,a6,1120 # 100460 <gCoeffBuf>
	addi	t4,a6,640
	slli	a0,a0,0x1
	addi	sp,sp,-32
	add	a7,a6,a0
	add	t4,t4,a1
	add	a6,a6,a1
	lui	a1,0x8
	sw	s0,28(sp)
	sw	s1,24(sp)
	sw	s2,20(sp)
	sw	s3,16(sp)
	sw	s4,12(sp)
	sw	s5,8(sp)
	addi	a6,a6,136
	addi	t5,a7,64
	li	t3,103
	addi	a1,a1,-256 # 7f00 <__DTOR_END__+0x1d5c>
	li	t1,183
lab63: 	addi	a3,a6,-8
	mv	a2,t4
	mv	a0,a7
lab62: 	lh	a4,0(a0)
	lbu	t6,0(a2)
	lbu	t2,1(a2)
	zext.b	a5,a4
	mul	t0,a5,t3
	zext.b	a4,a4
	addi	a4,a4,-179
	addi	a0,a0,2
	srli	t0,t0,0x8
	add	a4,a4,t0
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	add	t6,a4,t6
	slli	s2,t6,0x10
	add	t2,a4,t2
	srli	s2,s2,0x10
	slli	s1,t2,0x10
	slli	t6,t6,0x10
	addi	t0,s2,-256
	srai	t6,t6,0x10
	slli	t0,t0,0x10
	srli	s1,s1,0x10
	srli	t0,t0,0x10
	slti	s5,t6,256
	addi	s3,s1,-256
	sltu	t0,t0,a1
	xori	s0,s5,1
	slli	s3,s3,0x10
	srli	s3,s3,0x10
	slli	t2,t2,0x10
	and	s0,t0,s0
	srai	t2,t2,0x10
	sltu	s4,s3,a1
	beqz	s0,lab54
	li	t6,-1
lab74: 	slti	s0,t2,256
	xori	t0,s0,1
	and	t0,s4,t0
	zext.b	s3,t6
	li	t6,255
	bnez	t0,lab55
	li	t6,0
	bltz	t2,lab55
	and	s4,s4,s0
	sltiu	t0,s1,256
	or	t0,t0,s4
	beqz	t0,lab55
	zext.b	t6,s1
lab55: 	lbu	t0,8(a2)
	lbu	t2,9(a2)
	add	t0,a4,t0
	slli	s1,t0,0x10
	srli	s1,s1,0x10
	add	t2,a4,t2
	slli	s0,t0,0x10
	addi	t0,s1,-256
	slli	a4,t6,0x8
	slli	t6,t0,0x10
	slli	t0,t2,0x10
	srai	s0,s0,0x10
	srli	t0,t0,0x10
	srli	t6,t6,0x10
	slti	s4,s0,256
	addi	s2,t0,-256
	or	s3,s3,a4
	slli	s2,s2,0x10
	sltu	a4,t6,a1
	xori	t6,s4,1
	srli	s2,s2,0x10
	sh	s3,0(a2)
	and	t6,a4,t6
	slli	s3,t2,0x10
	srai	s3,s3,0x10
	sltu	s2,s2,a1
	beqz	t6,lab56
	li	a4,-1
lab71: 	slti	s0,s3,256
	xori	t6,s0,1
	and	t6,s2,t6
	zext.b	t2,a4
	li	a4,255
	bnez	t6,lab57
	li	a4,0
	bltz	s3,lab57
	and	s2,s2,s0
	sltiu	t6,t0,256
	or	t6,t6,s2
	beqz	t6,lab57
	zext.b	a4,t0
lab57: 	mul	a5,a5,t1
	lbu	t6,0(a3)
	slli	a4,a4,0x8
	or	a4,t2,a4
	lbu	t0,1(a3)
	sh	a4,8(a2)
	srli	a5,a5,0x8
	addi	a5,a5,-91
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sub	a4,t6,a5
	slli	s2,a4,0x10
	sub	t0,t0,a5
	srli	s2,s2,0x10
	slli	s0,t0,0x10
	slli	a4,a4,0x10
	addi	t6,s2,-256
	srai	a4,a4,0x10
	slli	t6,t6,0x10
	srli	s0,s0,0x10
	srli	t6,t6,0x10
	slti	s3,a4,256
	addi	s1,s0,-256
	sltu	t6,t6,a1
	xori	t2,s3,1
	slli	s1,s1,0x10
	srli	s1,s1,0x10
	slli	t0,t0,0x10
	and	t2,t6,t2
	srai	t0,t0,0x10
	sltu	s1,s1,a1
	beqz	t2,lab58
	li	a4,-1
lab68: 	slti	t2,t0,256
	xori	t6,t2,1
	and	t6,s1,t6
	zext.b	s2,a4
	li	a4,255
	bnez	t6,lab59
	li	a4,0
	bltz	t0,lab59
	and	s1,s1,t2
	sltiu	t6,s0,256
	or	t6,t6,s1
	beqz	t6,lab59
	zext.b	a4,s0
lab59: 	lbu	t6,8(a3)
	lbu	t0,9(a3)
	sub	t6,t6,a5
	slli	s1,t6,0x10
	sub	t0,t0,a5
	srli	s1,s1,0x10
	slli	s3,t6,0x10
	slli	s0,t0,0x10
	addi	t6,s1,-256
	slli	a5,a4,0x8
	srai	s3,s3,0x10
	slli	a4,t6,0x10
	srli	s0,s0,0x10
	srli	a4,a4,0x10
	slti	t6,s3,256
	addi	t2,s0,-256
	or	s2,s2,a5
	sltu	a4,a4,a1
	xori	a5,t6,1
	slli	t2,t2,0x10
	srli	t2,t2,0x10
	slli	t0,t0,0x10
	sh	s2,0(a3)
	and	a5,a4,a5
	srai	t0,t0,0x10
	sltu	t2,t2,a1
	beqz	a5,lab60
	li	a5,255
lab65: 	slti	t6,t0,256
	xori	a4,t6,1
	and	a4,t2,a4
	beqz	a4,lab61
	li	a4,255
lab64: 	slli	a4,a4,0x8
	or	a5,a5,a4
	sh	a5,8(a3)
	addi	a3,a3,2
	addi	a2,a2,2
	bne	a3,a6,lab62
	addi	a7,a7,16
	addi	t4,t4,16
	addi	a6,a3,16
	bne	t5,a7,lab63
	lw	s0,28(sp)
	lw	s1,24(sp)
	lw	s2,20(sp)
	lw	s3,16(sp)
	lw	s4,12(sp)
	lw	s5,8(sp)
	addi	sp,sp,32
	ret
lab61: 	li	a4,0
	bltz	t0,lab64
	and	t2,t2,t6
	sltiu	t6,s0,256
	or	t6,t6,t2
	beqz	t6,lab64
	zext.b	a4,s0
	j	lab64
lab60: 	li	a5,0
	bltz	s3,lab65
	sltiu	a5,s1,256
	and	a4,a4,t6
	or	a4,a5,a4
	li	a5,0
	beqz	a4,lab65
	zext.b	a5,s1
	j	lab65
lab58: 	li	t2,0
	bltz	a4,lab66
	sltiu	a4,s2,256
	and	t6,t6,s3
	or	t6,a4,t6
	li	a4,0
	beqz	t6,lab67
	mv	a4,s2
lab67: 	mv	t2,a4
lab66: 	mv	a4,t2
	j	lab68
lab56: 	li	t6,0
	bltz	s0,lab69
	and	a4,a4,s4
	sltiu	t6,s1,256
	or	t6,t6,a4
	li	a4,0
	beqz	t6,lab70
	mv	a4,s1
lab70: 	mv	t6,a4
lab69: 	mv	a4,t6
	j	lab71
lab54: 	li	s0,0
	bltz	t6,lab72
	sltiu	t6,s2,256
	and	t0,t0,s5
	or	t0,t6,t0
	li	t6,0
	beqz	t0,lab73
	mv	t6,s2
lab73: 	mv	s0,t6
lab72: 	mv	t6,s0
	j	lab74
upsampleCrH:
	lui	a6,0x100
	addi	a6,a6,1120 # 100460 <gCoeffBuf>
	addi	t4,a6,640
	slli	a0,a0,0x1
	addi	sp,sp,-32
	add	a7,a6,a0
	add	t4,t4,a1
	add	a6,a6,a1
	lui	a1,0x8
	sw	s0,28(sp)
	sw	s1,24(sp)
	sw	s2,20(sp)
	sw	s3,16(sp)
	sw	s4,12(sp)
	addi	a6,a6,136
	addi	t5,a7,128
	li	t3,103
	addi	a1,a1,-256 # 7f00 <__DTOR_END__+0x1d5c>
	li	t1,183
lab80: 	addi	a3,a6,-8
	mv	a2,t4
	mv	a0,a7
lab79: 	lh	a5,0(a0)
	lbu	t6,0(a2)
	lbu	t2,1(a2)
	zext.b	a4,a5
	mul	t0,a4,t3
	zext.b	a5,a5
	addi	a5,a5,-179
	addi	a0,a0,2
	srli	t0,t0,0x8
	add	a5,a5,t0
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	add	t6,a5,t6
	slli	s2,t6,0x10
	add	a5,a5,t2
	srli	s2,s2,0x10
	slli	s1,a5,0x10
	slli	t6,t6,0x10
	addi	t0,s2,-256
	srai	t6,t6,0x10
	slli	t0,t0,0x10
	srli	s1,s1,0x10
	srli	t0,t0,0x10
	slti	s4,t6,256
	addi	s0,s1,-256
	sltu	t0,t0,a1
	xori	t2,s4,1
	slli	s0,s0,0x10
	srli	s0,s0,0x10
	slli	a5,a5,0x10
	and	t2,t0,t2
	srai	a5,a5,0x10
	sltu	s3,s0,a1
	beqz	t2,lab75
	li	t6,-1
lab84: 	slti	t2,a5,256
	xori	t0,t2,1
	and	t0,s3,t0
	zext.b	s0,t6
	li	t6,-1
	bnez	t0,lab76
	li	t6,0
	bltz	a5,lab76
	and	s3,s3,t2
	sltiu	a5,s1,256
	or	a5,a5,s3
	beqz	a5,lab76
	mv	t6,s1
lab76: 	mul	a5,a4,t1
	lbu	t0,0(a3)
	zext.b	a4,t6
	lbu	t2,1(a3)
	slli	a4,a4,0x8
	or	t6,s0,a4
	sh	t6,0(a2)
	srli	a5,a5,0x8
	addi	a5,a5,-91
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sub	a4,t0,a5
	slli	s1,a4,0x10
	sub	a5,t2,a5
	srli	s1,s1,0x10
	slli	s0,a5,0x10
	slli	a4,a4,0x10
	addi	t6,s1,-256
	srai	a4,a4,0x10
	slli	t6,t6,0x10
	srli	s0,s0,0x10
	srli	t6,t6,0x10
	slti	s3,a4,256
	addi	t2,s0,-256
	sltu	t6,t6,a1
	xori	t0,s3,1
	slli	t2,t2,0x10
	slli	s2,a5,0x10
	srli	t2,t2,0x10
	and	t0,t6,t0
	srai	s2,s2,0x10
	sltu	t2,t2,a1
	li	a5,255
	bnez	t0,lab77
	li	a5,0
	bltz	a4,lab77
	and	t6,t6,s3
	sltiu	a4,s1,256
	or	a4,a4,t6
	beqz	a4,lab77
	zext.b	a5,s1
lab77: 	slti	t6,s2,256
	xori	a4,t6,1
	and	a4,t2,a4
	beqz	a4,lab78
	li	a4,255
lab81: 	slli	a4,a4,0x8
	or	a5,a5,a4
	sh	a5,0(a3)
	addi	a3,a3,2
	addi	a2,a2,2
	bne	a3,a6,lab79
	addi	a7,a7,16
	addi	t4,t4,8
	addi	a6,a3,8
	bne	a7,t5,lab80
	lw	s0,28(sp)
	lw	s1,24(sp)
	lw	s2,20(sp)
	lw	s3,16(sp)
	lw	s4,12(sp)
	addi	sp,sp,32
	ret
lab78: 	li	a4,0
	bltz	s2,lab81
	and	t2,t2,t6
	sltiu	t6,s0,256
	or	t6,t6,t2
	beqz	t6,lab81
	zext.b	a4,s0
	j	lab81
lab75: 	li	t2,0
	bltz	t6,lab82
	sltiu	t6,s2,256
	and	t0,t0,s4
	or	t0,t6,t0
	li	t6,0
	beqz	t0,lab83
	mv	t6,s2
lab83: 	mv	t2,t6
lab82: 	mv	t6,t2
	j	lab84
upsampleCrV:
	lui	a6,0x100
	addi	a6,a6,1120 # 100460 <gCoeffBuf>
	addi	t3,a6,640
	slli	a0,a0,0x1
	add	t3,t3,a1
	addi	t4,a6,128
	addi	a0,a0,16
	add	t4,t4,a1
	add	a6,a6,a0
	addi	t5,t3,64
	li	t1,103
	li	a1,255
	li	a7,183
lab98: 	addi	a0,a6,-16
	mv	a2,t4
	mv	a3,t3
lab97: 	lh	t0,0(a0)
	lbu	t6,0(a3)
	addi	a0,a0,2
	zext.b	a4,t0
	mul	a5,a4,t1
	zext.b	t0,t0
	addi	t0,t0,-179
	srli	a5,a5,0x8
	add	a5,a5,t0
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	add	t6,a5,t6
	slli	t6,t6,0x10
	srli	t6,t6,0x10
	bgeu	a1,t6,lab85
	slli	t2,t6,0x10
	srai	t2,t2,0x10
	li	t0,0
	bltz	t2,lab86
	blt	a1,t2,lab87
lab85: 	zext.b	t0,t6
lab86: 	lbu	t6,8(a3)
	sb	t0,0(a3)
	add	a5,a5,t6
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	bgeu	a1,a5,lab88
	slli	t0,a5,0x10
	srai	t0,t0,0x10
	li	t6,0
	bltz	t0,lab89
	blt	a1,t0,lab90
lab88: 	zext.b	t6,a5
lab89: 	mul	a5,a4,a7
	lbu	a4,0(a2)
	sb	t6,8(a3)
	srli	a5,a5,0x8
	addi	a5,a5,-91
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sub	a4,a4,a5
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	bgeu	a1,a4,lab91
	slli	t0,a4,0x10
	srai	t0,t0,0x10
	li	t6,0
	bltz	t0,lab92
	blt	a1,t0,lab93
lab91: 	zext.b	t6,a4
lab92: 	lbu	a4,8(a2)
	sb	t6,0(a2)
	sub	a5,a4,a5
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	bgeu	a1,a5,lab94
	slli	t6,a5,0x10
	srai	t6,t6,0x10
	li	a4,0
	bltz	t6,lab95
	blt	a1,t6,lab96
lab94: 	zext.b	a4,a5
lab95: 	sb	a4,8(a2)
	addi	a3,a3,1
	addi	a2,a2,1
	bne	a0,a6,lab97
	addi	t3,t3,16
	addi	t4,t4,16
	addi	a6,a0,16
	bne	t3,t5,lab98
	ret
lab96: 	li	a4,255
	j	lab95
lab90: 	li	t6,255
	j	lab89
lab93: 	li	t6,255
	j	lab92
lab87: 	li	t0,255
	j	lab86
getChar:
	addi	sp,sp,-16
	sw	s1,4(sp)
	lui	s1,0x101
	lbu	a5,-600(s1) # 100da8 <gInBufLeft>
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s2,0(sp)
	beqz	a5,lab99
	lui	s0,0x100
	lui	s2,0x101
	addi	s0,s0,1120 # 100460 <gCoeffBuf>
lab101: 	lbu	a4,-599(s2) # 100da9 <gInBufOfs>
	lw	ra,12(sp)
	addi	a5,a5,-1
	add	s0,s0,a4
	lbu	a0,896(s0)
	lw	s0,8(sp)
	addi	a4,a4,1
	sb	a5,-600(s1)
	sb	a4,-599(s2)
	lw	s1,4(sp)
	lw	s2,0(sp)
	addi	sp,sp,16
	ret
lab99: 	lui	a4,0x101
	lui	a5,0x101
	lw	a3,-672(a4) # 100d60 <g_pCallback_data>
	lui	s0,0x100
	lw	a5,-668(a5) # 100d64 <g_pNeedBytesCallback>
	addi	s0,s0,1120 # 100460 <gCoeffBuf>
	lui	s2,0x101
	li	a4,4
	sb	zero,-600(s1)
	addi	a2,s1,-600
	li	a1,252
	addi	a0,s0,900
	sb	a4,-599(s2) # 100da9 <gInBufOfs>
	jalr	a5
	beqz	a0,lab100
	lui	a5,0x101
	sb	a0,-675(a5) # 100d5d <gCallbackStatus>
lab100: 	lbu	a5,-600(s1)
	bnez	a5,lab101
	lui	a4,0x101
	lbu	a5,-598(a4) # 100daa <gTemFlag>
	lw	ra,12(sp)
	lw	s0,8(sp)
	not	a5,a5
	zext.b	a5,a5
	snez	a0,a5
	neg	a0,a0
	andi	a0,a0,38
	sb	a5,-598(a4)
	lw	s1,4(sp)
	lw	s2,0(sp)
	addi	a0,a0,217
	addi	sp,sp,16
	ret
getBits.constprop.1:
	addi	sp,sp,-32
	sw	s2,16(sp)
	sw	s3,12(sp)
	lui	s2,0x101
	lui	s3,0x101
	lbu	a5,-604(s3) # 100da4 <gBitsLeft>
	sw	s0,24(sp)
	lhu	s0,-602(s2) # 100da6 <gBitBuf>
	sw	s1,20(sp)
	sw	ra,28(sp)
	sll	a5,s0,a5
	sh	a5,-602(s2)
	jal	ra,getChar
	lhu	a5,-602(s2)
	lbu	a4,-604(s3)
	li	s1,8
	or	a5,a5,a0
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
	bgeu	a2,a4,lab102
	lui	a3,0x1000
	slli	a5,a5,0x8
	addi	a3,a3,-256 # ffff00 <_stack+0xef7f00>
	and	a5,a5,a3
	addi	a4,a4,-8
	slli	a5,a5,0x10
	sb	a4,-604(s3)
	srli	a5,a5,0x10
lab103: 	lw	ra,28(sp)
	mv	a0,s0
	lw	s0,24(sp)
	sh	a5,-602(s2)
	lw	s1,20(sp)
	lw	s2,16(sp)
	lw	s3,12(sp)
	addi	sp,sp,32
	ret
lab102: 	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sll	a5,a5,a4
	sh	a5,-602(s2)
	jal	ra,getChar
	lhu	a5,-602(s2)
	lbu	a4,-604(s3)
	or	a5,a5,a0
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sub	s1,s1,a4
	sll	a5,a5,s1
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	j	lab103
getOctet.part.0:
	addi	sp,sp,-16
	sw	s1,4(sp)
	lui	s1,0x101
	lbu	a4,-600(s1) # 100da8 <gInBufLeft>
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s2,0(sp)
	beqz	a4,lab104
	lui	s0,0x100
	lui	s2,0x101
	addi	s0,s0,1120 # 100460 <gCoeffBuf>
lab107: 	lbu	a5,-599(s2) # 100da9 <gInBufOfs>
	addi	a4,a4,-1
	zext.b	a4,a4
	add	a2,s0,a5
	mv	a3,a5
	lbu	a2,896(a2)
	addi	a5,a5,1
	zext.b	a5,a5
	sb	a4,-600(s1)
	sb	a5,-599(s2)
	bnez	a2,lab105
	lw	ra,12(sp)
	lw	s0,8(sp)
	lw	s1,4(sp)
	lw	s2,0(sp)
	addi	sp,sp,16
	ret
lab104: 	lui	a4,0x101
	lui	a5,0x101
	lw	a3,-672(a4) # 100d60 <g_pCallback_data>
	lui	s0,0x100
	lw	a5,-668(a5) # 100d64 <g_pNeedBytesCallback>
	addi	s0,s0,1120 # 100460 <gCoeffBuf>
	lui	s2,0x101
	li	a4,4
	sb	zero,-600(s1)
	addi	a2,s1,-600
	li	a1,252
	addi	a0,s0,900
	sb	a4,-599(s2) # 100da9 <gInBufOfs>
	jalr	a5
	beqz	a0,lab106
	lui	a5,0x101
	sb	a0,-675(a5) # 100d5d <gCallbackStatus>
lab106: 	lbu	a4,-600(s1)
	bnez	a4,lab107
	lui	a0,0x101
	lbu	a1,-598(a0) # 100daa <gTemFlag>
	lbu	a5,-599(s2)
	not	a1,a1
	zext.b	a1,a1
	snez	a2,a1
	neg	a2,a2
	addi	a3,a5,-1
	andi	a2,a2,38
	sb	a1,-598(a0)
	zext.b	a3,a3
	addi	a2,a2,217
lab105: 	addi	a5,a5,-2
	zext.b	a5,a5
	add	a3,s0,a3
	sb	a2,896(a3)
	add	s0,s0,a5
	sb	a5,-599(s2)
	li	a5,-1
	sb	a5,896(s0)
	lw	ra,12(sp)
	lw	s0,8(sp)
	addi	a4,a4,2
	sb	a4,-600(s1)
	lw	s2,0(sp)
	lw	s1,4(sp)
	addi	sp,sp,16
	ret
huffDecode:
	addi	sp,sp,-80
	sw	s7,44(sp)
	sw	s8,40(sp)
	lui	s7,0x101
	lui	s8,0x101
	lhu	a5,-602(s7) # 100da6 <gBitBuf>
	lbu	a4,-604(s8) # 100da4 <gBitsLeft>
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	ra,76(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	s5,52(sp)
	sw	s6,48(sp)
	sw	s9,36(sp)
	sw	s10,32(sp)
	sw	s11,28(sp)
	sw	a1,8(sp)
	mv	s0,a0
	srli	s1,a5,0xf
	beqz	a4,lab108
lab118: 	slli	a5,a5,0x1
	addi	a4,a4,-1
	slli	a5,a5,0x10
	slli	a3,s1,0x10
	zext.b	a4,a4
	srli	a5,a5,0x10
	lui	a6,0x10
	lui	s3,0x100
	sb	a4,-604(s8)
	sh	a5,-602(s7)
	srli	a3,a3,0x10
	addi	s11,s0,32
	li	s10,0
	addi	s6,a6,-1 # ffff <__DTOR_END__+0x9e5b>
	li	s1,255
	lui	s5,0x101
	addi	s3,s3,1120 # 100460 <gCoeffBuf>
	lui	s4,0x101
	j	lab109
lab113: 	slli	a5,a5,0x1
	addi	a4,a4,-1
	slli	a5,a5,0x10
	zext.b	a4,a4
	srli	a5,a5,0x10
	sb	a4,-604(s8)
	sh	a5,-602(s7)
	li	a2,16
	or	a3,s9,s2
	beq	s10,a2,lab110
lab109: 	lhu	a2,0(s11)
	slli	a1,a3,0x1
	addi	s11,s11,2
	bltu	a2,a3,lab111
	bne	a2,s6,lab112
lab111: 	slli	s9,a1,0x10
	addi	s10,s10,1
	srli	s2,a5,0xf
	srli	s9,s9,0x10
	bnez	a4,lab113
	jal	ra,getChar
	mv	a2,a0
	beq	a0,s1,lab114
lab115: 	lhu	a5,-602(s7)
	lbu	a4,-604(s8)
	or	a5,a5,a2
	addi	a4,a4,8
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	zext.b	a4,a4
	j	lab113
lab114: 	sw	a0,12(sp)
	jal	ra,getChar
	lw	a2,12(sp)
	beqz	a0,lab115
	lbu	a5,-599(s5) # 100da9 <gInBufOfs>
	lbu	a1,-600(s4) # 100da8 <gInBufLeft>
	addi	a4,a5,-1
	zext.b	a4,a4
	addi	a5,a5,-2
	zext.b	a5,a5
	add	a4,s3,a4
	sb	a0,896(a4)
	sb	a5,-599(s5)
	add	a0,s3,a5
	addi	a4,a1,2
	li	a5,-1
	sb	a5,896(a0)
	sb	a4,-600(s4)
	j	lab115
lab110: 	li	a0,0
lab116: 	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s1,68(sp)
	lw	s2,64(sp)
	lw	s3,60(sp)
	lw	s4,56(sp)
	lw	s5,52(sp)
	lw	s6,48(sp)
	lw	s7,44(sp)
	lw	s8,40(sp)
	lw	s9,36(sp)
	lw	s10,32(sp)
	lw	s11,28(sp)
	addi	sp,sp,80
	ret
lab112: 	add	a5,s0,s10
	slli	s10,s10,0x1
	lbu	a5,64(a5)
	add	s0,s0,s10
	lhu	a4,0(s0)
	add	a5,a5,a3
	sub	a5,a5,a4
	lw	a4,8(sp)
	zext.b	a5,a5
	add	s2,a4,a5
	lbu	a0,0(s2)
	j	lab116
lab108: 	jal	ra,getChar
	li	a5,255
	mv	s3,a0
	beq	a0,a5,lab117
lab119: 	lhu	a5,-602(s7)
	lbu	a4,-604(s8)
	or	a5,a5,s3
	addi	a4,a4,8
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	zext.b	a4,a4
	j	lab118
lab117: 	jal	ra,getOctet.part.0
	j	lab119
getBits.constprop.2:
	addi	sp,sp,-48
	sw	s4,24(sp)
	lui	s4,0x101
	sw	s0,40(sp)
	lhu	s0,-602(s4) # 100da6 <gBitBuf>
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	ra,44(sp)
	lui	s3,0x101
	li	a3,8
	lbu	a4,-604(s3) # 100da4 <gBitsLeft>
	mv	s1,a0
	mv	a5,s0
	mv	s2,a0
	bltu	a3,a0,lab120
	bltu	a4,s2,lab121
lab123: 	sub	a4,a4,s2
	sll	a5,a5,s2
	sb	a4,-604(s3)
	sh	a5,-602(s4)
lab125: 	li	a5,16
	sub	a5,a5,s1
	lw	ra,44(sp)
	sra	a0,s0,a5
	lw	s0,40(sp)
	slli	a0,a0,0x10
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	srli	a0,a0,0x10
	addi	sp,sp,48
	ret
lab120: 	sll	a4,s0,a4
	addi	s2,a0,-8
	sh	a4,-602(s4)
	jal	ra,getChar
	li	a5,255
	zext.b	s2,s2
	beq	a0,a5,lab122
lab126: 	lhu	a5,-602(s4)
	lbu	a4,-604(s3)
	li	a3,8
	or	a5,a5,a0
	slli	a5,a5,0x10
	sub	a3,a3,a4
	srli	a5,a5,0x10
	sll	a5,a5,a3
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	andi	s0,s0,-256
	srli	a3,a5,0x8
	or	s0,s0,a3
	bgeu	a4,s2,lab123
lab121: 	sll	a5,a5,a4
	sh	a5,-602(s4)
	jal	ra,getChar
	li	a5,255
	beq	a0,a5,lab124
lab127: 	lhu	a5,-602(s4)
	lbu	a4,-604(s3)
	or	a5,a5,a0
	slli	a5,a5,0x10
	sub	a3,s2,a4
	srli	a5,a5,0x10
	addi	a4,a4,8
	sll	a5,a5,a3
	sub	a4,a4,s2
	sh	a5,-602(s4)
	sb	a4,-604(s3)
	j	lab125
lab122: 	sw	a0,12(sp)
	jal	ra,getOctet.part.0
	lw	a0,12(sp)
	j	lab126
lab124: 	sw	a0,12(sp)
	jal	ra,getOctet.part.0
	lw	a0,12(sp)
	j	lab127
processMarkers:
	lui	a5,0x100
	addi	sp,sp,-208
	addi	a5,a5,1120 # 100460 <gCoeffBuf>
	sw	s5,180(sp)
	sw	s9,164(sp)
	lui	s5,0x101
	lui	s9,0x101
	sw	a5,136(sp)
	lui	a5,0x100
	addi	a3,a5,852 # 100354 <CSWTCH.306>
	lbu	a4,-604(s9) # 100da4 <gBitsLeft>
	lhu	a5,-602(s5) # 100da6 <gBitBuf>
	sw	s10,160(sp)
	sw	ra,204(sp)
	sw	s0,200(sp)
	sw	s1,196(sp)
	sw	s2,192(sp)
	sw	s3,188(sp)
	sw	s4,184(sp)
	sw	s6,176(sp)
	sw	s7,172(sp)
	sw	s8,168(sp)
	sw	s11,156(sp)
	sw	a3,12(sp)
	sw	a0,140(sp)
	addi	s10,a3,96
lab137: 	li	s2,7
	li	s3,255
	li	s1,8
lab129: 	mv	s0,a5
	bgeu	s2,a4,lab128
	slli	a5,a5,0x8
	addi	a4,a4,-8
	slli	a5,a5,0x10
	zext.b	a4,a4
	srli	a5,a5,0x10
	sb	a4,-604(s9)
	sh	a5,-602(s5)
	srai	s0,s0,0x8
	bne	s0,s3,lab129
lab131: 	addi	a1,a4,-8
	slli	a2,a5,0x8
	mv	s0,a5
	srai	a3,a5,0x8
	bgeu	s2,a4,lab130
	slli	a5,a2,0x10
	zext.b	a4,a1
	srli	a5,a5,0x10
	sb	a4,-604(s9)
	sh	a5,-602(s5)
	beq	a3,s3,lab131
	zext.b	a1,a3
	beqz	a3,lab129
lab177: 	li	a5,215
	bltu	a5,a1,lab132
	li	a5,196
	bltu	a5,a1,lab133
	bne	a1,a5,lab134
	jal	ra,getBits.constprop.1
	li	a4,1
	bgeu	a4,a0,lab135
	addi	a5,a0,-2
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sw	a5,4(sp)
	beqz	a5,lab135
	lui	a3,0x10
	lhu	a5,-602(s5)
	lbu	a4,-604(s9)
	addi	a3,a3,-1 # ffff <__DTOR_END__+0x9e5b>
	li	s8,7
	li	s7,8
	sw	a3,0(sp)
lab188: 	mv	s0,a5
	bgeu	s8,a4,lab136
lab175: 	addi	a4,a4,-8
	slli	a5,a5,0x8
	zext.b	a4,a4
	slli	a5,a5,0x10
	sb	a4,-604(s9)
	srli	a5,a5,0x10
lab176: 	srli	a3,s0,0x8
	andi	a1,a3,14
	sh	a5,-602(s5)
	sw	a1,8(sp)
	srai	a2,s0,0x8
	bnez	a1,lab137
	andi	a1,a3,240
	li	a0,16
	bltu	a0,a1,lab137
	lui	a0,0x101
	srli	a3,a3,0x3
	lbu	a1,-596(a0) # 100dac <gValidHuffTables>
	andi	a3,a3,2
	andi	a2,a2,1
	or	s11,a3,a2
	li	a2,1
	sll	a2,a2,s11
	or	a2,a1,a2
	lw	a1,12(sp)
	slli	a3,s11,0x2
	sb	a2,-596(a0)
	add	a3,a1,a3
	lw	s6,0(a3)
	lw	s0,16(a3)
	bltu	s8,a4,lab138
	j	lab139
lab138: 	addi	a4,a4,-8
	slli	s4,a5,0x8
	zext.b	a4,a4
	slli	s4,s4,0x10
	sb	a4,-604(s9)
	srli	s4,s4,0x10
lab219: 	srai	a3,a5,0x8
	srli	s2,a5,0x8
	sw	a3,20(sp)
	mv	s1,s2
	bgeu	s8,a4,lab140
	addi	a5,a4,-8
	srai	a4,s4,0x8
	add	s2,s2,a4
	zext.b	a5,a5
	slli	s3,s4,0x8
	sw	a4,24(sp)
	srli	a4,s4,0x8
	slli	s3,s3,0x10
	sw	a4,84(sp)
	sb	a5,-604(s9)
	slli	a4,s2,0x10
	srli	s3,s3,0x10
	srli	a4,a4,0x10
	bgeu	s8,a5,lab141
lab210: 	slli	a3,s3,0x8
	addi	a5,a5,-8
	srai	s4,s3,0x8
	slli	s2,a3,0x10
	zext.b	a5,a5
	add	a4,a4,s4
	srli	a3,s3,0x8
	slli	a4,a4,0x10
	sb	a5,-604(s9)
	sw	a3,80(sp)
	srli	s2,s2,0x10
	srli	a4,a4,0x10
	bgeu	s8,a5,lab142
lab211: 	srai	a2,s2,0x8
	addi	a5,a5,-8
	add	a4,a4,a2
	zext.b	a5,a5
	slli	a3,s2,0x8
	sw	a2,28(sp)
	srli	a2,s2,0x8
	slli	a3,a3,0x10
	slli	a4,a4,0x10
	sb	a5,-604(s9)
	sw	a2,88(sp)
	srli	a3,a3,0x10
	srli	a4,a4,0x10
	bgeu	s8,a5,lab143
lab212: 	srai	a2,a3,0x8
	addi	a5,a5,-8
	slli	a6,a3,0x8
	zext.b	a5,a5
	add	a4,a4,a2
	srli	a3,a3,0x8
	slli	s2,a6,0x10
	slli	a4,a4,0x10
	sb	a5,-604(s9)
	sw	a2,32(sp)
	sw	a3,92(sp)
	srli	s2,s2,0x10
	srli	a4,a4,0x10
	bgeu	s8,a5,lab144
lab213: 	srai	a2,s2,0x8
	addi	a5,a5,-8
	add	a4,a4,a2
	zext.b	a5,a5
	slli	a3,s2,0x8
	sw	a2,36(sp)
	srli	a2,s2,0x8
	slli	a3,a3,0x10
	slli	a4,a4,0x10
	sb	a5,-604(s9)
	sw	a2,96(sp)
	srli	a3,a3,0x10
	srli	a4,a4,0x10
	bgeu	s8,a5,lab145
lab214: 	srai	a2,a3,0x8
	addi	a5,a5,-8
	slli	a6,a3,0x8
	zext.b	a5,a5
	add	a4,a4,a2
	srli	a3,a3,0x8
	slli	s2,a6,0x10
	slli	a4,a4,0x10
	sb	a5,-604(s9)
	sw	a2,40(sp)
	sw	a3,100(sp)
	srli	s2,s2,0x10
	srli	a4,a4,0x10
	bgeu	s8,a5,lab146
lab215: 	srai	a2,s2,0x8
	addi	a5,a5,-8
	add	a4,a4,a2
	zext.b	a5,a5
	slli	a3,s2,0x8
	sw	a2,44(sp)
	srli	a2,s2,0x8
	slli	a3,a3,0x10
	slli	a4,a4,0x10
	sb	a5,-604(s9)
	sw	a2,104(sp)
	srli	a3,a3,0x10
	srli	a4,a4,0x10
	bgeu	s8,a5,lab147
lab216: 	srai	a2,a3,0x8
	addi	a5,a5,-8
	slli	a6,a3,0x8
	zext.b	a5,a5
	add	a4,a4,a2
	srli	a3,a3,0x8
	slli	s2,a6,0x10
	slli	a4,a4,0x10
	sb	a5,-604(s9)
	sw	a2,48(sp)
	sw	a3,108(sp)
	srli	s2,s2,0x10
	srli	a4,a4,0x10
	bgeu	s8,a5,lab148
lab217: 	addi	a5,a5,-8
	slli	a3,s2,0x8
	zext.b	a5,a5
	slli	a3,a3,0x10
	sb	a5,-604(s9)
	srli	a3,a3,0x10
lab218: 	srai	a2,s2,0x8
	add	a4,a4,a2
	sw	a2,52(sp)
	srli	a2,s2,0x8
	slli	a4,a4,0x10
	sw	a2,112(sp)
	srli	a4,a4,0x10
	bgeu	s8,a5,lab149
	addi	a5,a5,-8
	slli	a6,a3,0x8
	zext.b	a5,a5
	slli	s2,a6,0x10
	sb	a5,-604(s9)
	srli	s2,s2,0x10
lab209: 	srai	a2,a3,0x8
	add	a4,a4,a2
	srli	a3,a3,0x8
	slli	a4,a4,0x10
	sw	a2,56(sp)
	sw	a3,116(sp)
	srli	a4,a4,0x10
	bgeu	s8,a5,lab150
	addi	a5,a5,-8
	slli	a3,s2,0x8
	zext.b	a5,a5
	slli	a3,a3,0x10
	sb	a5,-604(s9)
	srli	a3,a3,0x10
lab208: 	srai	a2,s2,0x8
	add	a4,a4,a2
	sw	a2,60(sp)
	srli	a2,s2,0x8
	slli	a4,a4,0x10
	sw	a2,120(sp)
	srli	a4,a4,0x10
	bgeu	s8,a5,lab151
	addi	a5,a5,-8
	slli	a6,a3,0x8
	zext.b	a5,a5
	slli	s2,a6,0x10
	sb	a5,-604(s9)
	srli	s2,s2,0x10
lab207: 	srai	a2,a3,0x8
	add	a4,a4,a2
	srli	a3,a3,0x8
	slli	a4,a4,0x10
	sw	a2,64(sp)
	sw	a3,124(sp)
	srli	a4,a4,0x10
	bgeu	s8,a5,lab152
	srai	a2,s2,0x8
	addi	a5,a5,-8
	add	a4,a4,a2
	zext.b	a5,a5
	slli	a3,s2,0x8
	sw	a2,68(sp)
	srli	a2,s2,0x8
	slli	a3,a3,0x10
	slli	a4,a4,0x10
	sb	a5,-604(s9)
	sw	a2,128(sp)
	srli	a3,a3,0x10
	srli	a4,a4,0x10
	bgeu	s8,a5,lab153
lab204: 	srai	a2,a3,0x8
	addi	a5,a5,-8
	slli	a7,a3,0x8
	zext.b	a5,a5
	srli	a3,a3,0x8
	add	a4,a4,a2
	slli	s2,a7,0x10
	sw	a3,132(sp)
	sb	a5,-604(s9)
	slli	a3,a4,0x10
	sw	a2,72(sp)
	srli	s2,s2,0x10
	srli	a3,a3,0x10
	bgeu	s8,a5,lab154
lab205: 	addi	a5,a5,-8
	zext.b	a4,a5
	slli	a5,s2,0x8
	slli	a5,a5,0x10
	sb	a4,-604(s9)
	srli	a5,a5,0x10
lab206: 	srai	a2,s2,0x8
	add	a3,a3,a2
	sw	a2,16(sp)
	srli	a2,s2,0x8
	sh	a5,-602(s5)
	slli	s2,a3,0x10
	li	a0,1
	sw	a2,76(sp)
	srli	s2,s2,0x10
	li	a3,12
	bge	a0,s11,lab155
	li	a3,255
lab155: 	bltu	a3,s2,lab137
	beqz	s2,lab156
	li	s11,0
lab158: 	addi	a2,s11,1
	addi	t1,a4,-8
	slli	a7,a5,0x8
	add	a0,s0,s11
	zext.b	a1,a2
	mv	s3,a5
	srai	a6,a5,0x8
	bgeu	s8,a4,lab157
	slli	a5,a7,0x10
	zext.b	a4,t1
	srli	a5,a5,0x10
	sb	a4,-604(s9)
	sh	a5,-602(s5)
	sb	a6,0(a0)
	zext.b	s11,a2
	bltu	a1,s2,lab158
lab156: 	addi	a3,s2,17
	lw	a2,4(sp)
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	bltu	a2,a3,lab137
	sub	a3,a2,a3
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	sw	a3,4(sp)
	lw	a3,20(sp)
	beqz	a3,lab159
	addi	a0,s1,-1
	slli	a0,a0,0x10
	srli	a0,a0,0x10
	slli	a3,s1,0x1
lab203: 	lw	a2,24(sp)
	sh	zero,0(s6)
	sh	a0,32(s6)
	sb	zero,64(s6)
	beqz	a2,lab160
	lw	a2,84(sp)
	mv	t3,a3
	mv	t1,s1
	add	a7,a3,a2
	slli	a7,a7,0x10
	srli	a7,a7,0x10
	addi	a0,a7,-1
	add	a6,s1,a2
	slli	a0,a0,0x10
	srli	a0,a0,0x10
	mv	a3,a7
	zext.b	s1,a6
lab202: 	slli	a3,a3,0x1
	slli	a3,a3,0x10
	sh	t3,2(s6)
	sh	a0,34(s6)
	sb	t1,65(s6)
	srli	a3,a3,0x10
	beqz	s4,lab161
	lw	a2,80(sp)
	mv	t3,a3
	mv	t1,s1
	add	a7,a3,a2
	slli	a7,a7,0x10
	srli	a7,a7,0x10
	addi	a0,a7,-1
	add	a6,s1,a2
	slli	a0,a0,0x10
	srli	a0,a0,0x10
	mv	a3,a7
	zext.b	s1,a6
lab201: 	lw	a2,28(sp)
	slli	a3,a3,0x1
	slli	a3,a3,0x10
	sh	t3,4(s6)
	sh	a0,36(s6)
	sb	t1,66(s6)
	srli	a3,a3,0x10
	beqz	a2,lab162
	lw	a2,88(sp)
	mv	t3,a3
	mv	t1,s1
	add	a7,a3,a2
	slli	a7,a7,0x10
	srli	a7,a7,0x10
	addi	a0,a7,-1
	add	a6,s1,a2
	slli	a0,a0,0x10
	srli	a0,a0,0x10
	mv	a3,a7
	zext.b	s1,a6
lab200: 	lw	a2,32(sp)
	slli	a3,a3,0x1
	slli	a3,a3,0x10
	sh	t3,6(s6)
	sh	a0,38(s6)
	sb	t1,67(s6)
	srli	a3,a3,0x10
	beqz	a2,lab163
	lw	a2,92(sp)
	mv	t3,a3
	mv	t1,s1
	add	a7,a3,a2
	slli	a7,a7,0x10
	srli	a7,a7,0x10
	addi	a0,a7,-1
	add	a6,s1,a2
	slli	a0,a0,0x10
	srli	a0,a0,0x10
	mv	a3,a7
	zext.b	s1,a6
lab199: 	lw	a2,36(sp)
	slli	a3,a3,0x1
	slli	a3,a3,0x10
	sh	t3,8(s6)
	sh	a0,40(s6)
	sb	t1,68(s6)
	srli	a3,a3,0x10
	beqz	a2,lab164
	lw	a2,96(sp)
	mv	t3,a3
	mv	t1,s1
	add	a7,a3,a2
	slli	a7,a7,0x10
	srli	a7,a7,0x10
	addi	a0,a7,-1
	add	a6,s1,a2
	slli	a0,a0,0x10
	srli	a0,a0,0x10
	mv	a3,a7
	zext.b	s1,a6
lab198: 	lw	a2,40(sp)
	slli	a3,a3,0x1
	slli	a3,a3,0x10
	sh	t3,10(s6)
	sh	a0,42(s6)
	sb	t1,69(s6)
	srli	a3,a3,0x10
	beqz	a2,lab165
	lw	a2,100(sp)
	mv	t3,a3
	mv	t1,s1
	add	a7,a3,a2
	slli	a7,a7,0x10
	srli	a7,a7,0x10
	addi	a0,a7,-1
	add	a6,s1,a2
	slli	a0,a0,0x10
	srli	a0,a0,0x10
	mv	a3,a7
	zext.b	s1,a6
lab197: 	lw	a2,44(sp)
	slli	a3,a3,0x1
	slli	a3,a3,0x10
	sh	t3,12(s6)
	sh	a0,44(s6)
	sb	t1,70(s6)
	srli	a3,a3,0x10
	beqz	a2,lab166
	lw	a2,104(sp)
	mv	t3,a3
	mv	t1,s1
	add	a7,a3,a2
	slli	a7,a7,0x10
	srli	a7,a7,0x10
	addi	a0,a7,-1
	add	a6,s1,a2
	slli	a0,a0,0x10
	srli	a0,a0,0x10
	mv	a3,a7
	zext.b	s1,a6
lab196: 	lw	a2,48(sp)
	slli	a3,a3,0x1
	slli	a3,a3,0x10
	sh	t3,14(s6)
	sh	a0,46(s6)
	sb	t1,71(s6)
	srli	a3,a3,0x10
	beqz	a2,lab167
	lw	a2,108(sp)
	mv	t3,a3
	mv	t1,s1
	add	a7,a3,a2
	slli	a7,a7,0x10
	srli	a7,a7,0x10
	addi	a0,a7,-1
	add	a6,s1,a2
	slli	a0,a0,0x10
	srli	a0,a0,0x10
	mv	a3,a7
	zext.b	s1,a6
lab195: 	lw	a2,52(sp)
	slli	a3,a3,0x1
	slli	a3,a3,0x10
	sh	t3,16(s6)
	sh	a0,48(s6)
	sb	t1,72(s6)
	srli	a3,a3,0x10
	beqz	a2,lab168
	lw	a2,112(sp)
	mv	t3,a3
	mv	t1,s1
	add	a7,a3,a2
	slli	a7,a7,0x10
	srli	a7,a7,0x10
	addi	a0,a7,-1
	add	a6,s1,a2
	slli	a0,a0,0x10
	srli	a0,a0,0x10
	mv	a3,a7
	zext.b	s1,a6
lab194: 	lw	a2,56(sp)
	slli	a3,a3,0x1
	slli	a3,a3,0x10
	sh	t3,18(s6)
	sh	a0,50(s6)
	sb	t1,73(s6)
	srli	a3,a3,0x10
	beqz	a2,lab169
	lw	a2,116(sp)
	mv	t3,a3
	mv	t1,s1
	add	a7,a3,a2
	slli	a7,a7,0x10
	srli	a7,a7,0x10
	addi	a0,a7,-1
	add	a6,s1,a2
	slli	a0,a0,0x10
	srli	a0,a0,0x10
	mv	a3,a7
	zext.b	s1,a6
lab193: 	lw	a2,60(sp)
	slli	a3,a3,0x1
	slli	a3,a3,0x10
	sh	t3,20(s6)
	sh	a0,52(s6)
	sb	t1,74(s6)
	srli	a3,a3,0x10
	beqz	a2,lab170
	lw	a2,120(sp)
	mv	t3,a3
	mv	t1,s1
	add	a7,a3,a2
	slli	a7,a7,0x10
	srli	a7,a7,0x10
	addi	a0,a7,-1
	add	a6,s1,a2
	slli	a0,a0,0x10
	srli	a0,a0,0x10
	mv	a3,a7
	zext.b	s1,a6
lab192: 	lw	a2,64(sp)
	slli	a3,a3,0x1
	slli	a3,a3,0x10
	sh	t3,22(s6)
	sh	a0,54(s6)
	sb	t1,75(s6)
	srli	a3,a3,0x10
	beqz	a2,lab171
	lw	a2,124(sp)
	mv	t3,a3
	mv	t1,s1
	add	a7,a3,a2
	slli	a7,a7,0x10
	srli	a7,a7,0x10
	addi	a0,a7,-1
	add	a6,s1,a2
	slli	a0,a0,0x10
	srli	a0,a0,0x10
	mv	a3,a7
	zext.b	s1,a6
lab191: 	lw	a2,68(sp)
	slli	a3,a3,0x1
	slli	a3,a3,0x10
	sh	t3,24(s6)
	sh	a0,56(s6)
	sb	t1,76(s6)
	srli	a3,a3,0x10
	beqz	a2,lab172
	lw	a2,128(sp)
	mv	t3,a3
	mv	t1,s1
	add	a7,a3,a2
	slli	a7,a7,0x10
	srli	a7,a7,0x10
	addi	a0,a7,-1
	add	a6,s1,a2
	slli	a0,a0,0x10
	srli	a0,a0,0x10
	mv	a3,a7
	zext.b	s1,a6
lab190: 	lw	a2,72(sp)
	slli	a3,a3,0x1
	slli	a3,a3,0x10
	sh	t3,26(s6)
	sh	a0,58(s6)
	sb	t1,77(s6)
	srli	a3,a3,0x10
	beqz	a2,lab173
	lw	a2,132(sp)
	mv	t1,a3
	sw	s1,8(sp)
	add	a7,a3,a2
	slli	a7,a7,0x10
	srli	a7,a7,0x10
	addi	a0,a7,-1
	add	a6,s1,a2
	slli	a0,a0,0x10
	srli	a0,a0,0x10
	mv	a3,a7
	zext.b	s1,a6
lab189: 	lw	a2,8(sp)
	sh	t1,28(s6)
	sh	a0,60(s6)
	sb	a2,78(s6)
	lw	a2,16(sp)
	beqz	a2,lab174
	lw	a2,76(sp)
	slli	a3,a3,0x1
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	addi	a0,a2,-1
	add	a0,a3,a0
	sh	a3,30(s6)
	lw	a3,4(sp)
	sh	a0,62(s6)
	sb	s1,79(s6)
	beqz	a3,lab137
	mv	s0,a5
	bltu	s8,a4,lab175
lab136: 	sll	a4,a5,a4
	sh	a4,-602(s5)
	jal	ra,getChar
	lhu	a5,-602(s5)
	lbu	a4,-604(s9)
	or	a5,a5,a0
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sub	a3,s7,a4
	sll	a5,a5,a3
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	j	lab176
lab130: 	sll	a5,a5,a4
	sh	a5,-602(s5)
	jal	ra,getChar
	lhu	a5,-602(s5)
	lbu	a4,-604(s9)
	srai	a3,s0,0x8
	or	a5,a5,a0
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sub	a2,s1,a4
	sll	a5,a5,a2
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sh	a5,-602(s5)
	beq	a3,s3,lab131
	zext.b	a1,a3
	beqz	a3,lab129
	j	lab177
lab128: 	sll	a5,a5,a4
	sh	a5,-602(s5)
	jal	ra,getChar
	lhu	a5,-602(s5)
	lbu	a4,-604(s9)
	srai	s0,s0,0x8
	or	a5,a5,a0
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sub	a3,s1,a4
	sll	a5,a5,a3
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sh	a5,-602(s5)
	bne	s0,s3,lab129
	j	lab131
lab134: 	li	a5,1
	beq	a1,a5,lab178
	addi	a5,a1,64
	zext.b	a5,a5
	li	a4,3
	bltu	a4,a5,lab179
lab180: 	lw	a5,140(sp)
	li	a0,0
	sb	a1,0(a5)
lab181: 	lw	ra,204(sp)
	lw	s0,200(sp)
	lw	s1,196(sp)
	lw	s2,192(sp)
	lw	s3,188(sp)
	lw	s4,184(sp)
	lw	s5,180(sp)
	lw	s6,176(sp)
	lw	s7,172(sp)
	lw	s8,168(sp)
	lw	s9,164(sp)
	lw	s10,160(sp)
	lw	s11,156(sp)
	addi	sp,sp,208
	ret
lab133: 	addi	a5,a1,59
	li	a4,1
	sll	a4,a4,a5
	lui	a5,0x80
	addi	a5,a5,-2040 # 7f808 <__DTOR_END__+0x79664>
	and	a5,a4,a5
	bnez	a5,lab178
	andi	a4,a4,1911
	bnez	a4,lab180
	li	a5,204
	bne	a1,a5,lab179
	li	a0,17
	j	lab181
lab132: 	li	a5,219
	beq	a1,a5,lab182
	bgeu	a5,a1,lab183
	li	a5,221
	bne	a1,a5,lab179
	jal	ra,getBits.constprop.1
	li	a5,4
	beq	a0,a5,lab184
lab135: 	lhu	a5,-602(s5)
	lbu	a4,-604(s9)
	j	lab137
lab183: 	bne	a1,a5,lab180
lab179: 	jal	ra,getBits.constprop.1
	li	a4,1
	bgeu	a4,a0,lab135
	addi	a5,a0,-2
	slli	s0,a5,0x10
	srli	s0,s0,0x10
	beqz	s0,lab135
	lhu	a5,-602(s5)
	lbu	a4,-604(s9)
	li	s2,7
	li	s1,8
lab187: 	addi	a1,a4,-8
	slli	a2,a5,0x8
	addi	a3,s0,-1
	bgeu	s2,a4,lab185
lab186: 	slli	a5,a2,0x10
	zext.b	a4,a1
	srli	a5,a5,0x10
	slli	s0,a3,0x10
	sb	a4,-604(s9)
	sh	a5,-602(s5)
	srli	s0,s0,0x10
	beqz	s0,lab137
	addi	a1,a4,-8
	slli	a2,a5,0x8
	addi	a3,s0,-1
	bltu	s2,a4,lab186
lab185: 	sll	a5,a5,a4
	sh	a5,-602(s5)
	jal	ra,getChar
	lhu	a5,-602(s5)
	lbu	a4,-604(s9)
	addi	s0,s0,-1
	or	a5,a5,a0
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sub	a3,s1,a4
	sll	a5,a5,a3
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	slli	s0,s0,0x10
	sh	a5,-602(s5)
	srli	s0,s0,0x10
	bnez	s0,lab187
	j	lab137
lab178: 	li	a0,18
	j	lab181
lab157: 	sll	a5,a5,a4
	sh	a5,-602(s5)
	jal	ra,getChar
	lhu	a5,-602(s5)
	lbu	a4,-604(s9)
	add	a2,s0,s11
	or	a5,a5,a0
	slli	a5,a5,0x10
	sub	a3,s7,a4
	srli	a5,a5,0x10
	sll	a5,a5,a3
	slli	a5,a5,0x10
	addi	s11,s11,1
	srai	a3,s3,0x8
	srli	a5,a5,0x10
	sb	a3,0(a2)
	sh	a5,-602(s5)
	zext.b	a3,s11
	mv	s11,a3
	bltu	a3,s2,lab158
	j	lab156
lab174: 	li	a3,-1
	sh	a3,62(s6)
	lw	a3,4(sp)
	sh	zero,30(s6)
	sb	zero,79(s6)
	bnez	a3,lab188
	j	lab137
lab173: 	lw	a0,0(sp)
	li	t1,0
	j	lab189
lab172: 	lw	a0,0(sp)
	li	t1,0
	li	t3,0
	j	lab190
lab171: 	lw	a0,0(sp)
	li	t1,0
	li	t3,0
	j	lab191
lab170: 	lw	a0,0(sp)
	li	t1,0
	li	t3,0
	j	lab192
lab169: 	lw	a0,0(sp)
	li	t1,0
	li	t3,0
	j	lab193
lab168: 	lw	a0,0(sp)
	li	t1,0
	li	t3,0
	j	lab194
lab167: 	lw	a0,0(sp)
	li	t1,0
	li	t3,0
	j	lab195
lab166: 	lw	a0,0(sp)
	li	t1,0
	li	t3,0
	j	lab196
lab165: 	lw	a0,0(sp)
	li	t1,0
	li	t3,0
	j	lab197
lab164: 	lw	a0,0(sp)
	li	t1,0
	li	t3,0
	j	lab198
lab163: 	lw	a0,0(sp)
	li	t1,0
	li	t3,0
	j	lab199
lab162: 	lw	a0,0(sp)
	li	t1,0
	li	t3,0
	j	lab200
lab161: 	lw	a0,0(sp)
	li	t1,0
	li	t3,0
	j	lab201
lab160: 	lw	a0,0(sp)
	li	t1,0
	li	t3,0
	j	lab202
lab159: 	lw	a0,0(sp)
	li	s1,0
	li	a3,0
	j	lab203
lab152: 	sll	a5,s2,a5
	sw	a4,16(sp)
	sh	a5,-602(s5)
	jal	ra,getChar
	lhu	a3,-602(s5)
	lbu	a5,-604(s9)
	lw	a4,16(sp)
	or	a3,a3,a0
	slli	a3,a3,0x10
	srai	a2,s2,0x8
	srli	a3,a3,0x10
	sub	a0,s7,a5
	add	a4,a4,a2
	sll	a3,a3,a0
	sw	a2,68(sp)
	srli	a2,s2,0x8
	slli	a3,a3,0x10
	slli	a4,a4,0x10
	sw	a2,128(sp)
	srli	a3,a3,0x10
	srli	a4,a4,0x10
	bltu	s8,a5,lab204
lab153: 	sll	a5,a3,a5
	sw	a4,72(sp)
	sw	a3,16(sp)
	sh	a5,-602(s5)
	jal	ra,getChar
	lhu	a6,-602(s5)
	lw	a3,16(sp)
	lbu	a5,-604(s9)
	lw	a4,72(sp)
	or	a7,a6,a0
	slli	a7,a7,0x10
	srai	a2,a3,0x8
	srli	a7,a7,0x10
	sub	a0,s7,a5
	srli	a3,a3,0x8
	sll	a7,a7,a0
	add	a4,a4,a2
	slli	s2,a7,0x10
	sw	a3,132(sp)
	sw	a2,72(sp)
	slli	a3,a4,0x10
	srli	s2,s2,0x10
	srli	a3,a3,0x10
	bltu	s8,a5,lab205
lab154: 	sll	a5,s2,a5
	sw	a3,16(sp)
	sh	a5,-602(s5)
	jal	ra,getChar
	lhu	a5,-602(s5)
	lbu	a4,-604(s9)
	lw	a3,16(sp)
	or	a5,a5,a0
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sub	a0,s7,a4
	sll	a5,a5,a0
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	j	lab206
lab151: 	sll	a5,a3,a5
	sw	a4,64(sp)
	sw	a3,16(sp)
	sh	a5,-602(s5)
	jal	ra,getChar
	lhu	a6,-602(s5)
	lbu	a5,-604(s9)
	lw	a4,64(sp)
	or	a6,a6,a0
	slli	a6,a6,0x10
	srli	a6,a6,0x10
	sub	a0,s7,a5
	sll	a6,a6,a0
	slli	s2,a6,0x10
	lw	a3,16(sp)
	srli	s2,s2,0x10
	j	lab207
lab150: 	sll	a5,s2,a5
	sw	a4,16(sp)
	sh	a5,-602(s5)
	jal	ra,getChar
	lhu	a3,-602(s5)
	lbu	a5,-604(s9)
	lw	a4,16(sp)
	or	a3,a3,a0
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	sub	a0,s7,a5
	sll	a3,a3,a0
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	j	lab208
lab149: 	sll	a5,a3,a5
	sw	a4,56(sp)
	sw	a3,16(sp)
	sh	a5,-602(s5)
	jal	ra,getChar
	lhu	a6,-602(s5)
	lbu	a5,-604(s9)
	lw	a4,56(sp)
	or	a6,a6,a0
	slli	a6,a6,0x10
	srli	a6,a6,0x10
	sub	a0,s7,a5
	sll	a6,a6,a0
	slli	s2,a6,0x10
	lw	a3,16(sp)
	srli	s2,s2,0x10
	j	lab209
lab140: 	sll	a4,s4,a4
	sh	a4,-602(s5)
	jal	ra,getChar
	lhu	a4,-602(s5)
	lbu	a5,-604(s9)
	or	s3,a4,a0
	slli	s3,s3,0x10
	sub	a4,s7,a5
	srli	s3,s3,0x10
	sll	s3,s3,a4
	srai	a4,s4,0x8
	add	s2,s2,a4
	sw	a4,24(sp)
	srli	a4,s4,0x8
	slli	s3,s3,0x10
	sw	a4,84(sp)
	slli	a4,s2,0x10
	srli	s3,s3,0x10
	srli	a4,a4,0x10
	bltu	s8,a5,lab210
lab141: 	sll	a5,s3,a5
	sw	a4,16(sp)
	sh	a5,-602(s5)
	jal	ra,getChar
	lhu	a3,-602(s5)
	lbu	a5,-604(s9)
	lw	a4,16(sp)
	or	a3,a3,a0
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	sub	a0,s7,a5
	sll	a3,a3,a0
	srai	s4,s3,0x8
	slli	s2,a3,0x10
	add	a4,a4,s4
	srli	a3,s3,0x8
	slli	a4,a4,0x10
	sw	a3,80(sp)
	srli	s2,s2,0x10
	srli	a4,a4,0x10
	bltu	s8,a5,lab211
lab142: 	sll	a5,s2,a5
	sw	a4,16(sp)
	sh	a5,-602(s5)
	jal	ra,getChar
	lhu	a3,-602(s5)
	lbu	a5,-604(s9)
	lw	a4,16(sp)
	or	a3,a3,a0
	slli	a3,a3,0x10
	srai	a2,s2,0x8
	srli	a3,a3,0x10
	sub	a0,s7,a5
	add	a4,a4,a2
	sll	a3,a3,a0
	sw	a2,28(sp)
	srli	a2,s2,0x8
	slli	a3,a3,0x10
	slli	a4,a4,0x10
	sw	a2,88(sp)
	srli	a3,a3,0x10
	srli	a4,a4,0x10
	bltu	s8,a5,lab212
lab143: 	sll	a5,a3,a5
	sw	a4,32(sp)
	sw	a3,16(sp)
	sh	a5,-602(s5)
	jal	ra,getChar
	lhu	a6,-602(s5)
	lw	a3,16(sp)
	lbu	a5,-604(s9)
	lw	a4,32(sp)
	or	a6,a6,a0
	slli	a6,a6,0x10
	srai	a2,a3,0x8
	srli	a6,a6,0x10
	sub	a0,s7,a5
	sll	a6,a6,a0
	add	a4,a4,a2
	srli	a3,a3,0x8
	slli	s2,a6,0x10
	slli	a4,a4,0x10
	sw	a2,32(sp)
	sw	a3,92(sp)
	srli	s2,s2,0x10
	srli	a4,a4,0x10
	bltu	s8,a5,lab213
lab144: 	sll	a5,s2,a5
	sw	a4,16(sp)
	sh	a5,-602(s5)
	jal	ra,getChar
	lhu	a3,-602(s5)
	lbu	a5,-604(s9)
	lw	a4,16(sp)
	or	a3,a3,a0
	slli	a3,a3,0x10
	srai	a2,s2,0x8
	srli	a3,a3,0x10
	sub	a0,s7,a5
	add	a4,a4,a2
	sll	a3,a3,a0
	sw	a2,36(sp)
	srli	a2,s2,0x8
	slli	a3,a3,0x10
	slli	a4,a4,0x10
	sw	a2,96(sp)
	srli	a3,a3,0x10
	srli	a4,a4,0x10
	bltu	s8,a5,lab214
lab145: 	sll	a5,a3,a5
	sw	a4,40(sp)
	sw	a3,16(sp)
	sh	a5,-602(s5)
	jal	ra,getChar
	lhu	a6,-602(s5)
	lw	a3,16(sp)
	lbu	a5,-604(s9)
	lw	a4,40(sp)
	or	a6,a6,a0
	slli	a6,a6,0x10
	srai	a2,a3,0x8
	srli	a6,a6,0x10
	sub	a0,s7,a5
	sll	a6,a6,a0
	add	a4,a4,a2
	srli	a3,a3,0x8
	slli	s2,a6,0x10
	slli	a4,a4,0x10
	sw	a2,40(sp)
	sw	a3,100(sp)
	srli	s2,s2,0x10
	srli	a4,a4,0x10
	bltu	s8,a5,lab215
lab146: 	sll	a5,s2,a5
	sw	a4,16(sp)
	sh	a5,-602(s5)
	jal	ra,getChar
	lhu	a3,-602(s5)
	lbu	a5,-604(s9)
	lw	a4,16(sp)
	or	a3,a3,a0
	slli	a3,a3,0x10
	srai	a2,s2,0x8
	srli	a3,a3,0x10
	sub	a0,s7,a5
	add	a4,a4,a2
	sll	a3,a3,a0
	sw	a2,44(sp)
	srli	a2,s2,0x8
	slli	a3,a3,0x10
	slli	a4,a4,0x10
	sw	a2,104(sp)
	srli	a3,a3,0x10
	srli	a4,a4,0x10
	bltu	s8,a5,lab216
lab147: 	sll	a5,a3,a5
	sw	a4,48(sp)
	sw	a3,16(sp)
	sh	a5,-602(s5)
	jal	ra,getChar
	lhu	a6,-602(s5)
	lw	a3,16(sp)
	lbu	a5,-604(s9)
	lw	a4,48(sp)
	or	a6,a6,a0
	slli	a6,a6,0x10
	srai	a2,a3,0x8
	srli	a6,a6,0x10
	sub	a0,s7,a5
	sll	a6,a6,a0
	add	a4,a4,a2
	srli	a3,a3,0x8
	slli	s2,a6,0x10
	slli	a4,a4,0x10
	sw	a2,48(sp)
	sw	a3,108(sp)
	srli	s2,s2,0x10
	srli	a4,a4,0x10
	bltu	s8,a5,lab217
lab148: 	sll	a5,s2,a5
	sw	a4,16(sp)
	sh	a5,-602(s5)
	jal	ra,getChar
	lhu	a3,-602(s5)
	lbu	a5,-604(s9)
	lw	a4,16(sp)
	or	a3,a3,a0
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	sub	a0,s7,a5
	sll	a3,a3,a0
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	j	lab218
lab139: 	sll	a4,a5,a4
	sw	a5,16(sp)
	sh	a4,-602(s5)
	jal	ra,getChar
	lhu	a3,-602(s5)
	lbu	a4,-604(s9)
	lw	a5,16(sp)
	or	s4,a3,a0
	slli	s4,s4,0x10
	srli	s4,s4,0x10
	sub	a3,s7,a4
	sll	s4,s4,a3
	slli	s4,s4,0x10
	srli	s4,s4,0x10
	j	lab219
lab182: 	jal	ra,getBits.constprop.1
	li	a4,1
	bgeu	a4,a0,lab135
	addi	a5,a0,-2
	slli	s1,a5,0x10
	srli	s1,s1,0x10
	beqz	s1,lab135
	lw	a5,136(sp)
	lui	s3,0x101
	sw	s1,4(sp)
	addi	s0,a5,1280
lab227: 	lbu	a5,-604(s9)
	li	a4,7
	lhu	s4,-602(s5)
	bgeu	a4,a5,lab220
	addi	a5,a5,-8
	slli	s2,s4,0x8
	zext.b	a4,a5
	slli	s2,s2,0x10
	sb	a4,-604(s9)
	srli	s2,s2,0x10
lab233: 	srli	a5,s4,0x8
	srli	a2,s4,0xc
	andi	a3,a5,14
	sh	s2,-602(s5)
	sw	a2,0(sp)
	andi	a5,a5,15
	bnez	a3,lab221
	beqz	a5,lab222
	lbu	a5,-597(s3) # 100dab <gValidQuantTables>
	ori	a5,a5,2
	sb	a5,-597(s3)
	lw	a5,0(sp)
	bnez	a5,lab223
	lw	a5,136(sp)
	mv	s6,s0
	li	s11,7
	addi	s1,a5,1408
	li	s8,8
lab225: 	addi	a2,a4,-8
	slli	a3,s2,0x8
	srai	a5,s2,0x8
	bgeu	s11,a4,lab224
	slli	s2,a3,0x10
	zext.b	a4,a2
	srli	s2,s2,0x10
	sh	a5,0(s6)
	sb	a4,-604(s9)
	sh	s2,-602(s5)
	addi	s6,s6,2
	bne	s1,s6,lab225
lab228: 	mv	a5,s0
lab232: 	lw	a3,12(sp)
	addi	a2,a3,32
lab226: 	lh	a1,0(a5)
	lbu	a3,0(a2)
	addi	a5,a5,2
	addi	a2,a2,1
	mul	a3,a3,a1
	addi	a3,a3,4
	srai	a3,a3,0x3
	sh	a3,-2(a5)
	bne	s10,a2,lab226
	lw	a5,0(sp)
	lw	a3,4(sp)
	seqz	a5,a5
	neg	a5,a5
	andi	a5,a5,-64
	addi	a5,a5,129
	bltu	a3,a5,lab221
	sub	a5,a3,a5
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sw	a5,4(sp)
	bnez	a5,lab227
lab221: 	mv	a5,s2
	j	lab137
lab224: 	sll	a4,s2,a4
	sh	a4,-602(s5)
	jal	ra,getChar
	lhu	a5,-602(s5)
	lbu	a4,-604(s9)
	srai	s7,s2,0x8
	or	s2,a5,a0
	slli	s2,s2,0x10
	srli	s2,s2,0x10
	sub	a5,s8,a4
	sll	s2,s2,a5
	slli	s2,s2,0x10
	srli	s2,s2,0x10
	sh	s7,0(s6)
	sh	s2,-602(s5)
	addi	s6,s6,2
	bne	s1,s6,lab225
	j	lab228
lab222: 	lbu	a5,-597(s3)
	ori	a5,a5,1
	sb	a5,-597(s3)
	lw	a5,0(sp)
	bnez	a5,lab229
	lui	a5,0x101
	addi	s6,a5,-1824 # 1008e0 <gQuant0>
	li	s11,7
	li	s8,8
lab231: 	addi	a2,a4,-8
	slli	a3,s2,0x8
	srai	a5,s2,0x8
	bgeu	s11,a4,lab230
	slli	s2,a3,0x10
	zext.b	a4,a2
	srli	s2,s2,0x10
	sh	a5,0(s6)
	sb	a4,-604(s9)
	sh	s2,-602(s5)
	addi	s6,s6,2
	bne	s0,s6,lab231
lab236: 	lui	a5,0x101
	addi	a5,a5,-1824 # 1008e0 <gQuant0>
	j	lab232
lab230: 	sll	a4,s2,a4
	sh	a4,-602(s5)
	jal	ra,getChar
	lhu	a5,-602(s5)
	lbu	a4,-604(s9)
	srai	s7,s2,0x8
	or	s2,a5,a0
	slli	s2,s2,0x10
	srli	s2,s2,0x10
	sub	a5,s8,a4
	sll	s2,s2,a5
	slli	s2,s2,0x10
	srli	s2,s2,0x10
	sh	s7,0(s6)
	sh	s2,-602(s5)
	addi	s6,s6,2
	bne	s6,s0,lab231
	lui	a5,0x101
	addi	a5,a5,-1824 # 1008e0 <gQuant0>
	j	lab232
lab220: 	sll	a5,s4,a5
	sh	a5,-602(s5)
	jal	ra,getChar
	lhu	a5,-602(s5)
	lbu	a4,-604(s9)
	or	s2,a5,a0
	slli	s2,s2,0x10
	li	a5,8
	srli	s2,s2,0x10
	sub	a5,a5,a4
	sll	s2,s2,a5
	slli	s2,s2,0x10
	srli	s2,s2,0x10
	j	lab233
lab229: 	lui	a5,0x101
	addi	s1,a5,-1824 # 1008e0 <gQuant0>
	li	s7,7
	li	s8,8
lab239: 	addi	a5,a4,-8
	zext.b	a5,a5
	slli	s6,s2,0x8
	bgeu	s7,a4,lab234
lab237: 	slli	s6,s6,0x10
	sb	a5,-604(s9)
	srli	s6,s6,0x10
lab238: 	srai	s11,s2,0x8
	slli	s11,s11,0x8
	slli	a1,s6,0x8
	slli	s11,s11,0x10
	addi	a4,a5,-8
	srai	a3,s6,0x8
	slli	s2,a1,0x10
	srli	s11,s11,0x10
	zext.b	a4,a4
	srli	s2,s2,0x10
	add	a3,s11,a3
	bgeu	s7,a5,lab235
	sh	a3,0(s1)
	sb	a4,-604(s9)
	sh	s2,-602(s5)
	addi	s1,s1,2
	beq	s1,s0,lab236
	addi	a5,a4,-8
	zext.b	a5,a5
	slli	s6,s2,0x8
	bltu	s7,a4,lab237
lab234: 	sll	a4,s2,a4
	sh	a4,-602(s5)
	jal	ra,getChar
	lhu	a4,-602(s5)
	lbu	a5,-604(s9)
	or	s6,a4,a0
	slli	s6,s6,0x10
	srli	s6,s6,0x10
	sub	a4,s8,a5
	sll	s6,s6,a4
	slli	s6,s6,0x10
	srli	s6,s6,0x10
	j	lab238
lab235: 	sll	a5,s6,a5
	sh	a5,-602(s5)
	jal	ra,getChar
	lhu	a5,-602(s5)
	lbu	a4,-604(s9)
	srai	s6,s6,0x8
	or	s2,a5,a0
	slli	s2,s2,0x10
	srli	s2,s2,0x10
	sub	a5,s8,a4
	sll	s2,s2,a5
	slli	s2,s2,0x10
	srli	s2,s2,0x10
	add	s11,s11,s6
	sh	s11,0(s1)
	sh	s2,-602(s5)
	addi	s1,s1,2
	bne	s0,s1,lab239
	lui	a5,0x101
	addi	a5,a5,-1824 # 1008e0 <gQuant0>
	j	lab232
lab223: 	lw	a5,136(sp)
	mv	s11,s0
	li	s4,7
	addi	s1,a5,1408
	li	s8,8
	j	lab240
lab242: 	slli	s6,s6,0x10
	srli	s6,s6,0x10
	sb	a6,-604(s9)
lab243: 	srai	s7,s2,0x8
	slli	s7,s7,0x8
	slli	a3,s6,0x8
	slli	s7,s7,0x10
	addi	a4,a6,-8
	srai	a5,s6,0x8
	slli	s2,a3,0x10
	srli	s7,s7,0x10
	zext.b	a4,a4
	srli	s2,s2,0x10
	add	a5,s7,a5
	bgeu	s4,a6,lab241
	sh	a5,0(s11)
	sb	a4,-604(s9)
	sh	s2,-602(s5)
	addi	s11,s11,2
	beq	s1,s11,lab228
lab240: 	addi	a5,a4,-8
	zext.b	a6,a5
	slli	s6,s2,0x8
	bltu	s4,a4,lab242
	sll	a4,s2,a4
	sh	a4,-602(s5)
	jal	ra,getChar
	lhu	a4,-602(s5)
	lbu	a6,-604(s9)
	or	s6,a4,a0
	slli	s6,s6,0x10
	srli	s6,s6,0x10
	sub	a5,s8,a6
	sll	s6,s6,a5
	slli	s6,s6,0x10
	srli	s6,s6,0x10
	j	lab243
lab241: 	sll	a5,s6,a6
	sh	a5,-602(s5)
	jal	ra,getChar
	lhu	a5,-602(s5)
	lbu	a4,-604(s9)
	srai	s6,s6,0x8
	or	s2,a5,a0
	slli	s2,s2,0x10
	srli	s2,s2,0x10
	sub	a5,s8,a4
	sll	s2,s2,a5
	slli	s2,s2,0x10
	srli	s2,s2,0x10
	add	s7,s7,s6
	sh	s7,0(s11)
	sh	s2,-602(s5)
	addi	s11,s11,2
	bne	s1,s11,lab240
	j	lab228
lab184: 	jal	ra,getBits.constprop.1
	lui	a3,0x101
	lhu	a5,-602(s5)
	lbu	a4,-604(s9)
	sh	a0,-628(a3) # 100d8c <gRestartInterval>
	j	lab137
getBits.constprop.0:
	addi	sp,sp,-32
	sw	s3,12(sp)
	lui	s3,0x101
	lbu	a5,-604(s3) # 100da4 <gBitsLeft>
	sw	s0,24(sp)
	sw	s2,16(sp)
	lui	s0,0x101
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	sw	s6,0(sp)
	li	a4,7
	lhu	s2,-602(s0) # 100da6 <gBitBuf>
	bgeu	a4,a5,lab244
	addi	a4,a5,-8
	slli	a5,s2,0x8
	slli	a5,a5,0x10
	sb	a4,-604(s3)
	srli	a5,a5,0x10
lab248: 	lw	ra,28(sp)
	sh	a5,-602(s0)
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
lab244: 	lui	s5,0x101
	lbu	a4,-600(s5) # 100da8 <gInBufLeft>
	sll	a5,s2,a5
	sh	a5,-602(s0)
	mv	s1,a0
	beqz	a4,lab245
	lui	s4,0x100
	lui	s6,0x101
	addi	s4,s4,1120 # 100460 <gCoeffBuf>
lab250: 	lbu	a5,-599(s6) # 100da9 <gInBufOfs>
	addi	a4,a4,-1
	sb	a4,-600(s5)
	addi	a4,a5,1
	add	s4,s4,a5
	sb	a4,-599(s6)
	lbu	a5,896(s4)
	beqz	s1,lab246
	li	a4,255
	beq	a5,a4,lab247
lab246: 	slli	a5,a5,0x10
	srli	a5,a5,0x10
lab251: 	lhu	a4,-602(s0)
	lbu	a3,-604(s3)
	or	a5,a5,a4
	li	a4,8
	sub	a4,a4,a3
	sll	a5,a5,a4
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	j	lab248
lab245: 	lui	a4,0x101
	lui	a5,0x101
	lw	a3,-672(a4) # 100d60 <g_pCallback_data>
	lui	s4,0x100
	lw	a5,-668(a5) # 100d64 <g_pNeedBytesCallback>
	addi	s4,s4,1120 # 100460 <gCoeffBuf>
	lui	s6,0x101
	li	a4,4
	sb	zero,-600(s5)
	addi	a2,s5,-600
	li	a1,252
	addi	a0,s4,900
	sb	a4,-599(s6) # 100da9 <gInBufOfs>
	jalr	a5
	beqz	a0,lab249
	lui	a5,0x101
	sb	a0,-675(a5) # 100d5d <gCallbackStatus>
lab249: 	lbu	a4,-600(s5)
	bnez	a4,lab250
	lui	a3,0x101
	lbu	a4,-598(a3) # 100daa <gTemFlag>
	li	a5,217
	not	a4,a4
	zext.b	a4,a4
	sb	a4,-598(a3)
	beqz	a4,lab251
	beqz	s1,lab252
lab247: 	jal	ra,getOctet.part.0
lab252: 	li	a5,255
	j	lab251
pjpeg_decode_mcu:
	addi	sp,sp,-112
	lui	a5,0x101
	sw	s6,80(sp)
	lbu	s6,-675(a5) # 100d5d <gCallbackStatus>
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s1,100(sp)
	sw	s2,96(sp)
	sw	s3,92(sp)
	sw	s4,88(sp)
	sw	s5,84(sp)
	sw	s7,76(sp)
	sw	s8,72(sp)
	sw	s9,68(sp)
	sw	s10,64(sp)
	sw	s11,60(sp)
	bnez	s6,lab253
	lui	a5,0x101
	lhu	a5,-658(a5) # 100d6e <gNumMCUSRemaining>
	bnez	a5,lab254
	li	s6,1
lab253: 	lw	ra,108(sp)
	lw	s0,104(sp)
	lw	s1,100(sp)
	lw	s2,96(sp)
	lw	s3,92(sp)
	lw	s4,88(sp)
	lw	s5,84(sp)
	lw	s7,76(sp)
	lw	s8,72(sp)
	lw	s9,68(sp)
	lw	s10,64(sp)
	lw	s11,60(sp)
	mv	a0,s6
	lw	s6,80(sp)
	addi	sp,sp,112
	ret
lab254: 	lui	s2,0x101
	lhu	a4,-628(s2) # 100d8c <gRestartInterval>
	bnez	a4,lab255
	lui	a4,0x101
	sw	a4,40(sp)
	lbu	a4,-650(a4) # 100d76 <gMaxBlocksPerMCU>
	beqz	a4,lab256
lab272: 	lui	a5,0x101
	addi	a5,a5,-592 # 100db0 <gLastDC>
	sw	a5,28(sp)
	lui	a5,0x101
	addi	a5,a5,-664 # 100d68 <gMCUOrg>
	sw	a5,24(sp)
	lui	a5,0x101
	addi	a5,a5,-640 # 100d80 <gCompDCTab>
	sw	a5,20(sp)
	lui	a5,0x101
	addi	a5,a5,-624 # 100d90 <gCompQuant>
	lui	a3,0x101
	sw	a5,32(sp)
	lui	a5,0x100
	addi	s7,a5,1120 # 100460 <gCoeffBuf>
	addi	a5,a3,-644 # 100d7c <gCompACTab>
	lui	a3,0x101
	sw	a5,16(sp)
	addi	a5,a3,1120 # 101460 <_end+0x6a8>
	sw	a5,36(sp)
	lui	a5,0x100
	lui	a4,0x100
	lui	s0,0x100
	addi	a5,a5,1136 # 100470 <gCoeffBuf+0x10>
	addi	s10,a4,852 # 100354 <CSWTCH.306>
	li	s5,0
	addi	s0,s0,1248 # 1004e0 <gMCUBufG>
	sw	a5,12(sp)
	sw	s6,44(sp)
lab285: 	lw	a5,24(sp)
	addi	s4,s7,1280
	add	a5,a5,s5
	lbu	s2,0(a5)
	lw	a5,32(sp)
	add	a5,a5,s2
	lbu	a4,0(a5)
	lw	a5,20(sp)
	add	a5,a5,s2
	lbu	a5,0(a5)
	bnez	a4,lab257
	addi	s4,s7,1152
lab257: 	bnez	a5,lab258
	addi	a0,s7,1504
	addi	a1,s7,1584
	jal	ra,huffDecode
	mv	s1,a0
	andi	a0,a0,15
	li	a4,0
	bnez	a0,lab259
lab305: 	addi	s1,s1,-1
	zext.b	s1,s1
	li	a5,14
	bltu	a5,s1,lab260
	slli	a5,s1,0x1
	add	a5,s10,a5
	lhu	a2,96(a5)
	bgeu	a4,a2,lab260
	lhu	a5,128(a5)
	add	a4,a4,a5
	slli	a4,a4,0x10
	srli	a4,a4,0x10
lab260: 	lw	a3,28(sp)
	slli	a5,s2,0x1
	lhu	a2,0(s4)
	add	a5,a3,a5
	lhu	a0,0(a5)
	lui	a3,0x101
	lbu	a1,-676(a3) # 100d5c <gReduce>
	add	a4,a4,a0
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	mul	a2,a4,a2
	lw	a3,16(sp)
	sh	a4,0(a5)
	add	s2,a3,s2
	lbu	a5,0(s2)
	sh	a2,0(s7)
	beqz	a1,lab261
	bnez	a5,lab262
	j	lab263
lab262: 	lw	a5,36(sp)
	addi	s3,s7,1600
	addi	s4,a5,-1984
lab345: 	li	s1,1
	li	s6,15
	li	s8,48
	li	s2,63
lab267: 	mv	a1,s3
	mv	a0,s4
	jal	ra,huffDecode
	mv	s9,a0
	andi	a0,a0,15
	bnez	a0,lab264
	srli	s9,s9,0x4
	zext.b	s9,s9
	bne	s9,s6,lab265
	bltu	s8,s1,lab266
	addi	s1,s1,15
lab304: 	zext.b	s1,s1
lab303: 	addi	s1,s1,1
	zext.b	s1,s1
	bgeu	s2,s1,lab267
lab265: 	lh	a5,0(s7)
	li	a2,255
	addi	a5,a5,64
	srli	a5,a5,0x7
	addi	a5,a5,128
	slli	a4,a5,0x10
	srli	a4,a4,0x10
	zext.b	a5,a5
	bgeu	a2,a4,lab268
	not	a5,a4
	slli	a5,a5,0x10
	srai	a5,a5,0x1f
	zext.b	a5,a5
lab268: 	lui	a4,0x101
	lw	a4,-648(a4) # 100d78 <gScanType>
	li	a2,4
	bltu	a2,a4,lab269
	lui	a2,0x100
	slli	a4,a4,0x2
	addi	a2,a2,764 # 1002fc <b_ref.0+0x40>
	add	a4,a4,a2
	lw	a4,0(a4)
	jr	a4
lab255: 	lui	s1,0x101
	lhu	a5,-632(s1) # 100d88 <gRestartsLeft>
	bnez	a5,lab270
	j	lab271
lab270: 	lui	a4,0x101
	sw	a4,40(sp)
	lbu	a4,-650(a4) # 100d76 <gMaxBlocksPerMCU>
	addi	a5,a5,-1
	sh	a5,-632(s1)
	bnez	a4,lab272
lab286: 	lui	a5,0x101
	lbu	a5,-675(a5) # 100d5d <gCallbackStatus>
	bnez	a5,lab273
	lui	a5,0x101
	lhu	a5,-658(a5) # 100d6e <gNumMCUSRemaining>
lab256: 	addi	a5,a5,-1
	lui	a4,0x101
	sh	a5,-658(a4) # 100d6e <gNumMCUSRemaining>
	j	lab253
	li	a4,2
	bne	s5,a4,lab274
	j	lab275
lab274: 	bltu	a4,s5,lab276
	beqz	s5,lab277
	sb	a5,768(s7)
	sb	a5,256(s7)
	sb	a5,512(s7)
	j	lab269
	li	a4,2
	bne	s5,a4,lab278
	j	lab279
lab278: 	bltu	a4,s5,lab280
	beqz	s5,lab277
	sb	a5,704(s7)
	sb	a5,192(s7)
	sb	a5,448(s7)
	j	lab269
	li	a4,1
	bne	s5,a4,lab281
	j	lab282
lab281: 	li	a4,2
	bne	s5,a4,lab283
	j	lab284
lab283: 	bnez	s5,lab269
lab277: 	sb	a5,640(s7)
	sb	a5,128(s7)
	sb	a5,384(s7)
	j	lab269
	li	a4,5
	bltu	a4,s5,lab269
	lui	a2,0x100
	slli	a4,s5,0x2
	addi	a2,a2,784 # 100310 <b_ref.0+0x54>
	add	a4,a4,a2
	lw	a4,0(a4)
	jr	a4
	sb	a5,640(s7)
lab269: 	lw	a5,40(sp)
	addi	s5,s5,1
	zext.b	s5,s5
	lbu	a5,-650(a5)
	bltu	s5,a5,lab285
	lw	s6,44(sp)
	j	lab286
lab280: 	li	a4,3
	bne	s5,a4,lab269
	li	a4,103
	mul	a4,a5,a4
	addi	a1,a5,-179
	lbu	a2,640(s7)
	li	a0,255
	srli	a4,a4,0x8
	add	a4,a4,a1
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	add	a2,a4,a2
	slli	a2,a2,0x10
	srli	a2,a2,0x10
	bgeu	a0,a2,lab287
	slli	a0,a2,0x10
	srai	a0,a0,0x10
	li	a1,0
	bltz	a0,lab288
	li	a1,255
	blt	a1,a0,lab288
lab287: 	zext.b	a1,a2
lab288: 	lbu	a0,704(s7)
	sb	a1,640(s7)
	li	a2,255
	add	a4,a4,a0
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	bgeu	a2,a4,lab289
	slli	a1,a4,0x10
	srai	a1,a1,0x10
	li	a2,0
	bltz	a1,lab290
	li	a2,255
	blt	a2,a1,lab290
lab289: 	zext.b	a2,a4
lab290: 	li	a4,183
	mul	a5,a5,a4
	lbu	a4,128(s7)
	sb	a2,704(s7)
	li	a2,255
	srli	a5,a5,0x8
	addi	a5,a5,-91
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sub	a4,a4,a5
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	bgeu	a2,a4,lab291
	slli	a1,a4,0x10
	srai	a1,a1,0x10
	li	a2,0
	bltz	a1,lab292
	li	a2,255
	blt	a2,a1,lab292
lab291: 	zext.b	a2,a4
lab292: 	lbu	a4,192(s7)
	sb	a2,128(s7)
	li	a2,255
	sub	a5,a4,a5
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	bgeu	a2,a5,lab293
	slli	a2,a5,0x10
	srai	a2,a2,0x10
	li	a4,0
	bltz	a2,lab294
	li	a4,255
	blt	a4,a2,lab294
lab293: 	zext.b	a4,a5
lab294: 	sb	a4,192(s7)
	j	lab269
lab276: 	li	a4,3
	bne	s5,a4,lab269
	li	a4,103
	mul	a4,a5,a4
	addi	a1,a5,-179
	lbu	a2,640(s7)
	li	a0,255
	srli	a4,a4,0x8
	add	a4,a4,a1
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	add	a2,a4,a2
	slli	a2,a2,0x10
	srli	a2,a2,0x10
	bgeu	a0,a2,lab295
	slli	a0,a2,0x10
	srai	a0,a0,0x10
	li	a1,0
	bltz	a0,lab296
	li	a1,255
	blt	a1,a0,lab296
lab295: 	zext.b	a1,a2
lab296: 	lbu	a0,768(s7)
	sb	a1,640(s7)
	li	a2,255
	add	a4,a4,a0
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	bgeu	a2,a4,lab297
	slli	a1,a4,0x10
	srai	a1,a1,0x10
	li	a2,0
	bltz	a1,lab298
	li	a2,255
	blt	a2,a1,lab298
lab297: 	zext.b	a2,a4
lab298: 	li	a4,183
	mul	a5,a5,a4
	lbu	a4,128(s7)
	sb	a2,768(s7)
	li	a2,255
	srli	a5,a5,0x8
	addi	a5,a5,-91
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sub	a4,a4,a5
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	bgeu	a2,a4,lab299
	slli	a1,a4,0x10
	srai	a1,a1,0x10
	li	a2,0
	bltz	a1,lab300
	li	a2,255
	blt	a2,a1,lab300
lab299: 	zext.b	a2,a4
lab300: 	lbu	a4,256(s7)
	sb	a2,128(s7)
	li	a2,255
	sub	a5,a4,a5
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	bgeu	a2,a5,lab301
	slli	a2,a5,0x10
	srai	a2,a2,0x10
	li	a4,0
	bltz	a2,lab302
	li	a4,255
	blt	a4,a2,lab302
lab301: 	zext.b	a4,a5
lab302: 	sb	a4,256(s7)
	j	lab269
lab264: 	srli	s9,s9,0x4
	zext.b	s9,s9
	jal	ra,getBits.constprop.2
	beqz	s9,lab303
	add	s1,s1,s9
	bge	s2,s1,lab304
lab266: 	li	s6,28
lab351: 	lui	a5,0x101
	lbu	a5,-675(a5) # 100d5d <gCallbackStatus>
	beqz	a5,lab253
lab273: 	mv	s6,a5
	j	lab253
lab258: 	addi	a0,s7,1408
	addi	a1,s7,1488
	jal	ra,huffDecode
	mv	s1,a0
	andi	a0,a0,15
	li	a4,0
	beqz	a0,lab305
lab259: 	jal	ra,getBits.constprop.2
	mv	a4,a0
	j	lab305
lab261: 	beqz	a5,lab306
	lw	a5,36(sp)
	addi	s2,s7,1600
	addi	s3,a5,-1984
lab344: 	li	s11,1
	li	s8,15
	li	s1,63
	j	lab307
lab310: 	srli	s6,a0,0x4
	zext.b	s6,s6
	bne	s6,s8,lab308
	li	a5,48
	bltu	a5,s11,lab266
	addi	a4,s11,1
	add	a3,s10,s11
	addi	a5,s11,2
	zext.b	a4,a4
	lb	a6,160(a3)
	addi	a1,s11,3
	add	a4,s10,a4
	zext.b	a5,a5
	lb	a0,160(a4)
	addi	a2,s11,4
	add	a5,s10,a5
	zext.b	a1,a1
	addi	a3,s11,5
	lb	a5,160(a5)
	add	a1,s10,a1
	zext.b	a2,a2
	addi	a4,s11,6
	lb	a1,160(a1)
	slli	a6,a6,0x1
	add	a2,s10,a2
	zext.b	a3,a3
	addi	a7,s11,7
	add	a6,s7,a6
	lb	a2,160(a2)
	slli	a0,a0,0x1
	add	a3,s10,a3
	zext.b	a4,a4
	sh	zero,0(a6)
	add	a0,s7,a0
	addi	a6,s11,8
	lb	a3,160(a3)
	slli	a5,a5,0x1
	add	a4,s10,a4
	zext.b	a7,a7
	sh	zero,0(a0)
	add	a5,s7,a5
	addi	a0,s11,9
	lb	a4,160(a4)
	slli	a1,a1,0x1
	add	a7,s10,a7
	zext.b	a6,a6
	sh	zero,0(a5)
	add	a1,s7,a1
	addi	a5,s11,10
	lb	a7,160(a7)
	slli	a2,a2,0x1
	add	a6,s10,a6
	zext.b	a0,a0
	sh	zero,0(a1)
	add	a2,s7,a2
	addi	a1,s11,11
	lb	a6,160(a6)
	slli	a3,a3,0x1
	add	a0,s10,a0
	zext.b	a5,a5
	sh	zero,0(a2)
	add	a3,s7,a3
	addi	a2,s11,12
	lb	a0,160(a0)
	slli	a4,a4,0x1
	add	a5,s10,a5
	zext.b	a1,a1
	sh	zero,0(a3)
	add	a4,s7,a4
	addi	a3,s11,13
	lb	a5,160(a5)
	slli	a7,a7,0x1
	add	a1,s10,a1
	zext.b	a2,a2
	sh	zero,0(a4)
	lb	a1,160(a1)
	addi	a4,s11,14
	add	a7,s7,a7
	slli	a6,a6,0x1
	add	a2,s10,a2
	zext.b	a3,a3
	sh	zero,0(a7)
	lb	a2,160(a2)
	add	a6,s7,a6
	slli	a0,a0,0x1
	zext.b	a4,a4
	add	a3,s10,a3
	addi	s11,s11,15
	sh	zero,0(a6)
	add	a0,s7,a0
	zext.b	s11,s11
	lb	a3,160(a3)
	slli	a5,a5,0x1
	add	a4,s10,a4
	sh	zero,0(a0)
	add	a5,s7,a5
	add	a0,s10,s11
	lb	a4,160(a4)
	slli	a1,a1,0x1
	sh	zero,0(a5)
	add	a1,s7,a1
	lb	a5,160(a0)
	slli	a2,a2,0x1
	sh	zero,0(a1)
	add	a2,s7,a2
	slli	a3,a3,0x1
	sh	zero,0(a2)
	add	a3,s7,a3
	slli	a4,a4,0x1
	sh	zero,0(a3)
	add	a4,s7,a4
	slli	a5,a5,0x1
	sh	zero,0(a4)
	add	a5,s7,a5
	addi	s11,s11,1
	sh	zero,0(a5)
	zext.b	s11,s11
	bltu	s1,s11,lab309
lab307: 	mv	a1,s2
	mv	a0,s3
	jal	ra,huffDecode
	andi	s9,a0,15
	mv	s6,a0
	beqz	s9,lab310
	srli	s6,s6,0x4
	mv	a0,s9
	zext.b	s6,s6
	jal	ra,getBits.constprop.2
	bnez	s6,lab311
lab329: 	addi	a5,s9,-1
	zext.b	a5,a5
	slli	a5,a5,0x1
	add	a5,s10,a5
	lhu	a4,96(a5)
	bgeu	a0,a4,lab312
	lhu	a5,128(a5)
	add	a5,a0,a5
	slli	a0,a5,0x10
	srli	a0,a0,0x10
lab312: 	slli	a5,s11,0x1
	add	a5,s4,a5
	lhu	a4,0(a5)
	add	a5,s10,s11
	lb	a5,160(a5)
	mul	a0,a0,a4
	addi	s11,s11,1
	slli	a5,a5,0x1
	add	a5,s7,a5
	zext.b	s11,s11
	sh	a0,0(a5)
	bgeu	s1,s11,lab307
lab309: 	mv	a2,s7
	li	a7,196
	li	a6,277
	li	a0,669
	li	a1,362
lab314: 	lh	a3,2(a2)
	lh	t5,4(a2)
	lh	t0,6(a2)
	lh	t4,8(a2)
	lh	t1,10(a2)
	or	a5,a3,t5
	lh	t6,12(a2)
	or	a5,t0,a5
	lh	t3,14(a2)
	or	a5,t4,a5
	or	a5,t1,a5
	or	a5,t6,a5
	or	a5,t3,a5
	lh	a4,0(a2)
	beqz	a5,lab313
	slli	t1,t1,0x10
	slli	t0,t0,0x10
	srli	t0,t0,0x10
	srli	t1,t1,0x10
	sub	a5,t1,t0
	slli	a3,a3,0x10
	slli	t3,t3,0x10
	slli	a5,a5,0x10
	srli	t3,t3,0x10
	srli	a3,a3,0x10
	srli	a5,a5,0x10
	sub	t2,a5,a3
	sub	s2,a3,t3
	add	t2,t3,t2
	slli	s2,s2,0x10
	add	t1,t1,t0
	srai	s2,s2,0x10
	slli	t0,t2,0x10
	add	a3,a3,t3
	mul	s2,s2,a6
	srai	t0,t0,0x10
	slli	t3,t1,0x10
	slli	s3,t5,0x10
	slli	t1,a3,0x10
	slli	t6,t6,0x10
	srli	t3,t3,0x10
	srli	t6,t6,0x10
	srli	t1,t1,0x10
	srli	s3,s3,0x10
	mul	t0,t0,a7
	sub	t5,t1,t3
	sub	s1,s3,t6
	slli	t5,t5,0x10
	slli	s1,s1,0x10
	srai	t5,t5,0x10
	srai	s1,s1,0x10
	add	t1,t3,t1
	add	s3,s3,t6
	slli	a5,a5,0x10
	mul	t3,t5,a1
	srai	a5,a5,0x10
	addi	a3,s2,128
	srai	a3,a3,0x8
	addi	t0,t0,128
	slli	t1,t1,0x10
	slli	a3,a3,0x10
	srai	t0,t0,0x8
	srli	t1,t1,0x10
	srli	a3,a3,0x10
	mul	t6,s1,a1
	slli	t0,t0,0x10
	srli	t0,t0,0x10
	sub	t5,t1,a3
	slli	t2,a4,0x10
	slli	t4,t4,0x10
	srli	t4,t4,0x10
	srli	t2,t2,0x10
	add	t5,t0,t5
	sub	a4,t2,t4
	mul	a5,a5,a0
	addi	t3,t3,128
	slli	t5,t5,0x10
	addi	t6,t6,128
	srli	t5,t5,0x10
	slli	s3,s3,0x10
	slli	a4,a4,0x10
	srai	t3,t3,0x8
	srai	t6,t6,0x8
	srli	s3,s3,0x10
	srli	a4,a4,0x10
	add	t3,t5,t3
	add	t2,t2,t4
	slli	t6,t6,0x10
	addi	a5,a5,128
	srli	t6,t6,0x10
	sub	t4,a4,s3
	slli	t3,t3,0x10
	slli	t2,t2,0x10
	srai	a5,a5,0x8
	srli	t3,t3,0x10
	srli	t2,t2,0x10
	add	t4,t6,t4
	sub	a5,t0,a5
	add	a4,a4,s3
	add	s1,t2,s3
	sub	a4,a4,t6
	sub	t2,t2,s3
	slli	t4,t4,0x10
	add	a5,t3,a5
	srli	t4,t4,0x10
	sub	a3,a3,t1
	slli	t6,t2,0x10
	slli	a5,a5,0x10
	slli	s1,s1,0x10
	slli	a4,a4,0x10
	srli	a5,a5,0x10
	srli	s1,s1,0x10
	srli	t6,t6,0x10
	srli	a4,a4,0x10
	add	a3,t4,a3
	add	s2,t1,s1
	sub	a3,a3,t0
	add	t2,t3,a4
	sub	t0,t6,a5
	sub	a4,a4,t3
	add	a5,a5,t6
	add	t5,t5,t4
	sub	t1,s1,t1
	sh	s2,0(a2)
	sh	a3,2(a2)
	sh	t2,4(a2)
	sh	t0,6(a2)
	sh	a5,8(a2)
	sh	a4,10(a2)
	sh	t5,12(a2)
	sh	t1,14(a2)
	addi	a2,a2,16
	bne	a2,s0,lab314
lab330: 	mv	a4,s7
	li	t3,196
	li	t1,277
	li	a7,669
	li	a6,362
	li	a0,255
	j	lab315
lab318: 	addi	a5,a5,64
	srli	a5,a5,0x7
	addi	a5,a5,128
	slli	a3,a5,0x10
	srli	a3,a3,0x10
	zext.b	a5,a5
	bgeu	a0,a3,lab316
	not	a5,a3
	slli	a5,a5,0x10
	srai	a5,a5,0x1f
	zext.b	a5,a5
lab316: 	slli	a5,a5,0x10
	srai	a5,a5,0x10
	mv	t6,a5
	mv	t5,a5
	mv	t4,a5
	mv	a1,a5
	mv	a3,a5
	mv	t0,a5
	mv	a2,a5
lab327: 	sh	a5,112(a4)
	lw	a5,12(sp)
	sh	t6,0(a4)
	sh	t5,16(a4)
	sh	t4,32(a4)
	sh	a1,48(a4)
	sh	a3,64(a4)
	sh	t0,80(a4)
	sh	a2,96(a4)
	addi	a4,a4,2
	beq	a4,a5,lab317
lab315: 	lh	t2,16(a4)
	lh	t0,32(a4)
	lh	a2,48(a4)
	lh	t6,64(a4)
	lh	a1,80(a4)
	or	a3,t0,t2
	lh	t5,96(a4)
	or	a3,a2,a3
	lh	t4,112(a4)
	or	a3,t6,a3
	or	a3,a1,a3
	or	a3,t5,a3
	or	a3,t4,a3
	lh	a5,0(a4)
	beqz	a3,lab318
	slli	t2,t2,0x10
	slli	t4,t4,0x10
	slli	a1,a1,0x10
	slli	a2,a2,0x10
	srli	t2,t2,0x10
	srli	t4,t4,0x10
	srli	a1,a1,0x10
	srli	a2,a2,0x10
	sub	s6,a1,a2
	add	s4,t4,t2
	add	a2,a2,a1
	slli	s6,s6,0x10
	slli	a2,a2,0x10
	slli	s4,s4,0x10
	srli	a2,a2,0x10
	srli	s6,s6,0x10
	srli	s4,s4,0x10
	sub	a3,s6,t2
	sub	s2,s4,a2
	sub	s1,t2,t4
	add	a1,t4,a3
	slli	t2,t5,0x10
	slli	a3,s2,0x10
	slli	t0,t0,0x10
	slli	s2,a5,0x10
	slli	t6,t6,0x10
	srli	t0,t0,0x10
	srli	t2,t2,0x10
	srli	s2,s2,0x10
	srli	t6,t6,0x10
	add	s3,t6,s2
	add	t4,t2,t0
	add	s4,s4,a2
	slli	s1,s1,0x10
	slli	t4,t4,0x10
	slli	s3,s3,0x10
	srli	t4,t4,0x10
	srli	s3,s3,0x10
	srai	s1,s1,0x10
	slli	s4,s4,0x10
	srli	s4,s4,0x10
	add	a5,t4,s3
	mul	s1,s1,t1
	sub	t5,t0,t2
	srai	a3,a3,0x10
	slli	t2,s4,0x10
	slli	a1,a1,0x10
	slli	a5,a5,0x10
	srai	a1,a1,0x10
	slli	t5,t5,0x10
	srai	a5,a5,0x10
	srai	t2,t2,0x10
	mul	a3,a3,a6
	slli	s6,s6,0x10
	srai	t5,t5,0x10
	sub	t0,s2,t6
	srai	s6,s6,0x10
	addi	s1,s1,128
	srai	s1,s1,0x8
	slli	s1,s1,0x10
	srli	s1,s1,0x10
	slli	t0,t0,0x10
	mul	a2,a1,t3
	add	a1,t2,a5
	addi	t6,a1,64
	addi	a3,a3,128
	srai	a3,a3,0x8
	sub	a3,a3,s1
	add	s2,s4,a3
	srli	t0,t0,0x10
	srli	t6,t6,0x7
	addi	t6,t6,128
	mul	a1,t5,a6
	addi	a2,a2,128
	srai	a2,a2,0x8
	slli	a2,a2,0x10
	srli	a2,a2,0x10
	add	s2,a2,s2
	sub	s1,s1,s4
	sub	s4,t0,t4
	add	t0,t4,t0
	sub	s1,s1,a2
	mul	s6,s6,a7
	addi	a1,a1,128
	srai	a1,a1,0x8
	slli	a1,a1,0x10
	srli	a1,a1,0x10
	sub	s3,s3,t4
	sub	t0,t0,a1
	slli	t4,t6,0x10
	slli	s1,s1,0x10
	slli	s3,s3,0x10
	addi	a3,s6,128
	srai	a3,a3,0x8
	sub	a3,a2,a3
	add	a3,s2,a3
	add	a2,a1,s4
	slli	s2,s2,0x10
	slli	a3,a3,0x10
	slli	a2,a2,0x10
	slli	t0,t0,0x10
	srli	t4,t4,0x10
	srai	s1,s1,0x10
	srai	s2,s2,0x10
	srai	a3,a3,0x10
	srai	s3,s3,0x10
	srai	a2,a2,0x10
	srai	t0,t0,0x10
	zext.b	t6,t6
	bgeu	a0,t4,lab319
	not	a1,t4
	slli	a1,a1,0x10
	srai	a1,a1,0x1f
	zext.b	t6,a1
lab319: 	add	t5,s1,a2
	addi	t5,t5,64
	srli	t5,t5,0x7
	addi	t5,t5,128
	slli	a1,t5,0x10
	slli	t6,t6,0x10
	srli	a1,a1,0x10
	srai	t6,t6,0x10
	zext.b	t5,t5
	bgeu	a0,a1,lab320
	not	a1,a1
	slli	a1,a1,0x10
	srai	a1,a1,0x1f
	zext.b	t5,a1
lab320: 	add	t4,s2,t0
	addi	t4,t4,64
	srli	t4,t4,0x7
	addi	t4,t4,128
	slli	a1,t4,0x10
	slli	t5,t5,0x10
	srli	a1,a1,0x10
	srai	t5,t5,0x10
	zext.b	t4,t4
	bgeu	a0,a1,lab321
	not	a1,a1
	slli	a1,a1,0x10
	srai	a1,a1,0x1f
	zext.b	t4,a1
lab321: 	sub	a1,s3,a3
	addi	a1,a1,64
	srli	a1,a1,0x7
	addi	a1,a1,128
	slli	s4,a1,0x10
	slli	t4,t4,0x10
	srli	s4,s4,0x10
	srai	t4,t4,0x10
	zext.b	a1,a1
	bgeu	a0,s4,lab322
	not	a1,s4
	slli	a1,a1,0x10
	srai	a1,a1,0x1f
	zext.b	a1,a1
lab322: 	add	a3,a3,s3
	addi	a3,a3,64
	srli	a3,a3,0x7
	addi	a3,a3,128
	slli	s3,a3,0x10
	slli	a1,a1,0x10
	srli	s3,s3,0x10
	srai	a1,a1,0x10
	zext.b	a3,a3
	bgeu	a0,s3,lab323
	not	a3,s3
	slli	a3,a3,0x10
	srai	a3,a3,0x1f
	zext.b	a3,a3
lab323: 	sub	t0,t0,s2
	addi	t0,t0,64
	srli	t0,t0,0x7
	addi	t0,t0,128
	slli	s2,t0,0x10
	slli	a3,a3,0x10
	srli	s2,s2,0x10
	srai	a3,a3,0x10
	zext.b	t0,t0
	bgeu	a0,s2,lab324
	not	t0,s2
	slli	t0,t0,0x10
	srai	t0,t0,0x1f
	zext.b	t0,t0
lab324: 	sub	a2,a2,s1
	addi	a2,a2,64
	srli	a2,a2,0x7
	addi	a2,a2,128
	slli	s1,a2,0x10
	slli	t0,t0,0x10
	srli	s1,s1,0x10
	srai	t0,t0,0x10
	zext.b	a2,a2
	bgeu	a0,s1,lab325
	not	a2,s1
	slli	a2,a2,0x10
	srai	a2,a2,0x1f
	zext.b	a2,a2
lab325: 	sub	a5,a5,t2
	addi	a5,a5,64
	srli	a5,a5,0x7
	addi	a5,a5,128
	slli	t2,a5,0x10
	slli	a2,a2,0x10
	srli	t2,t2,0x10
	srai	a2,a2,0x10
	zext.b	a5,a5
	bgeu	a0,t2,lab326
	not	a5,t2
	slli	a5,a5,0x10
	srai	a5,a5,0x1f
	zext.b	a5,a5
lab326: 	slli	a5,a5,0x10
	srai	a5,a5,0x10
	j	lab327
lab311: 	add	a3,s6,s11
	blt	s1,a3,lab266
	add	a5,s10,s11
	lb	a5,160(a5)
	addi	a2,s6,-1
	addi	a4,s11,1
	slli	a5,a5,0x1
	add	a5,s7,a5
	sh	zero,0(a5)
	slli	a5,a2,0x10
	slli	s6,s6,0x10
	srli	a5,a5,0x10
	srli	s6,s6,0x10
	zext.b	a4,a4
	beqz	a5,lab328
	add	a4,s10,a4
	lb	a2,160(a4)
	addi	a4,s6,-2
	slli	a4,a4,0x10
	slli	a2,a2,0x1
	add	a2,s7,a2
	addi	a5,s11,2
	sh	zero,0(a2)
	srli	a4,a4,0x10
	zext.b	a5,a5
	beqz	a4,lab328
	add	a5,s10,a5
	lb	a2,160(a5)
	addi	a4,s6,-3
	slli	a4,a4,0x10
	slli	a2,a2,0x1
	add	a2,s7,a2
	addi	a5,s11,3
	sh	zero,0(a2)
	srli	a4,a4,0x10
	zext.b	a5,a5
	beqz	a4,lab328
	add	a5,s10,a5
	lb	a2,160(a5)
	addi	a4,s6,-4
	slli	a4,a4,0x10
	slli	a2,a2,0x1
	add	a2,s7,a2
	addi	a5,s11,4
	sh	zero,0(a2)
	srli	a4,a4,0x10
	zext.b	a5,a5
	beqz	a4,lab328
	add	a5,s10,a5
	lb	a2,160(a5)
	addi	a4,s6,-5
	slli	a4,a4,0x10
	slli	a2,a2,0x1
	add	a2,s7,a2
	addi	a5,s11,5
	sh	zero,0(a2)
	srli	a4,a4,0x10
	zext.b	a5,a5
	beqz	a4,lab328
	add	a5,s10,a5
	lb	a2,160(a5)
	addi	a4,s6,-6
	slli	a4,a4,0x10
	slli	a2,a2,0x1
	add	a2,s7,a2
	addi	a5,s11,6
	sh	zero,0(a2)
	srli	a4,a4,0x10
	zext.b	a5,a5
	beqz	a4,lab328
	add	a5,s10,a5
	lb	a2,160(a5)
	addi	a4,s6,-7
	slli	a4,a4,0x10
	slli	a2,a2,0x1
	add	a2,s7,a2
	addi	a5,s11,7
	sh	zero,0(a2)
	srli	a4,a4,0x10
	zext.b	a5,a5
	beqz	a4,lab328
	add	a5,s10,a5
	lb	a2,160(a5)
	addi	a4,s6,-8
	slli	a4,a4,0x10
	slli	a2,a2,0x1
	add	a2,s7,a2
	addi	a5,s11,8
	sh	zero,0(a2)
	srli	a4,a4,0x10
	zext.b	a5,a5
	beqz	a4,lab328
	add	a5,s10,a5
	lb	a2,160(a5)
	addi	a4,s6,-9
	slli	a4,a4,0x10
	slli	a2,a2,0x1
	add	a2,s7,a2
	addi	a5,s11,9
	sh	zero,0(a2)
	srli	a4,a4,0x10
	zext.b	a5,a5
	beqz	a4,lab328
	add	a5,s10,a5
	lb	a2,160(a5)
	addi	a4,s6,-10
	slli	a4,a4,0x10
	slli	a2,a2,0x1
	add	a2,s7,a2
	addi	a5,s11,10
	sh	zero,0(a2)
	srli	a4,a4,0x10
	zext.b	a5,a5
	beqz	a4,lab328
	add	a5,s10,a5
	lb	a2,160(a5)
	addi	a4,s6,-11
	slli	a4,a4,0x10
	slli	a2,a2,0x1
	add	a2,s7,a2
	addi	a5,s11,11
	sh	zero,0(a2)
	srli	a4,a4,0x10
	zext.b	a5,a5
	beqz	a4,lab328
	add	a5,s10,a5
	lb	a2,160(a5)
	addi	a4,s6,-12
	slli	a4,a4,0x10
	slli	a2,a2,0x1
	add	a2,s7,a2
	addi	a5,s11,12
	sh	zero,0(a2)
	srli	a4,a4,0x10
	zext.b	a5,a5
	beqz	a4,lab328
	add	a5,s10,a5
	lb	a4,160(a5)
	addi	s6,s6,-13
	addi	a5,s11,13
	slli	a4,a4,0x1
	add	a4,s7,a4
	sh	zero,0(a4)
	slli	a4,s6,0x10
	srli	a4,a4,0x10
	zext.b	a5,a5
	beqz	a4,lab328
	add	a5,s10,a5
	lb	a2,160(a5)
	addi	a5,s11,14
	zext.b	a5,a5
	slli	a2,a2,0x1
	add	a2,s7,a2
	sh	zero,0(a2)
	li	a2,1
	beq	a4,a2,lab328
	add	a5,s10,a5
	lb	a5,160(a5)
	slli	a5,a5,0x1
	add	a5,s7,a5
	sh	zero,0(a5)
lab328: 	zext.b	s11,a3
	j	lab329
lab313: 	sh	a4,2(a2)
	sh	a4,4(a2)
	sh	a4,6(a2)
	sh	a4,8(a2)
	sh	a4,10(a2)
	sh	a4,12(a2)
	sh	a4,14(a2)
	addi	a2,a2,16
	bne	a2,s0,lab314
	j	lab330
lab317: 	lui	a5,0x101
	lw	a5,-648(a5) # 100d78 <gScanType>
	li	a4,4
	bltu	a4,a5,lab269
	lui	a4,0x100
	slli	a5,a5,0x2
	addi	a4,a4,808 # 100328 <b_ref.0+0x6c>
	add	a5,a5,a4
	lw	a5,0(a5)
	jr	a5
	lui	a5,0x100
	addi	a0,s7,384
	addi	a1,s7,640
	mv	a2,s0
	addi	s7,a5,1120 # 100460 <gCoeffBuf>
	addi	a5,a5,1120
lab331: 	lbu	a4,0(a5)
	addi	a5,a5,2
	addi	a1,a1,1
	sb	a4,0(a2)
	sb	a4,0(a0)
	sb	a4,-1(a1)
	addi	a2,a2,1
	addi	a0,a0,1
	bne	a5,s0,lab331
	j	lab269
	li	a5,5
	bltu	a5,s5,lab269
	lui	a4,0x100
	slli	a5,s5,0x2
	addi	a4,a4,828 # 10033c <b_ref.0+0x80>
	add	a5,a5,a4
	lw	a5,0(a5)
	jr	a5
	li	a5,2
	beq	s5,a5,lab332
	bltu	a5,s5,lab333
	beqz	s5,lab334
	lui	a4,0x100
	addi	a0,s7,512
	addi	a1,s7,256
	addi	a2,s7,768
	addi	a5,a4,1120 # 100460 <gCoeffBuf>
	addi	s7,a4,1120
lab335: 	lbu	a4,0(a5)
	addi	a5,a5,2
	addi	a2,a2,1
	sb	a4,0(a1)
	sb	a4,0(a0)
	sb	a4,-1(a2)
	addi	a1,a1,1
	addi	a0,a0,1
	bne	a5,s0,lab335
	j	lab269
	li	a5,2
	beq	s5,a5,lab336
	bltu	a5,s5,lab337
	beqz	s5,lab338
	lui	a4,0x100
	addi	a0,s7,448
	addi	a1,s7,192
	addi	a2,s7,704
	addi	a5,a4,1120 # 100460 <gCoeffBuf>
	addi	s7,a4,1120
lab339: 	lbu	a4,0(a5)
	addi	a5,a5,2
	addi	a2,a2,1
	sb	a4,0(a1)
	sb	a4,0(a0)
	sb	a4,-1(a2)
	addi	a1,a1,1
	addi	a0,a0,1
	bne	a5,s0,lab339
	j	lab269
	li	a5,1
	beq	s5,a5,lab340
	li	a5,2
	beq	s5,a5,lab341
	bnez	s5,lab269
	lui	a5,0x100
	addi	a0,s7,384
	addi	a1,s7,640
	mv	a2,s0
	addi	s7,a5,1120 # 100460 <gCoeffBuf>
	addi	a5,a5,1120
lab342: 	lbu	a4,0(a5)
	addi	a5,a5,2
	addi	a1,a1,1
	sb	a4,0(a2)
	sb	a4,0(a0)
	sb	a4,-1(a1)
	addi	a2,a2,1
	addi	a0,a0,1
	bne	a5,s0,lab342
	j	lab269
lab337: 	li	a5,3
	bne	s5,a5,lab269
	li	a1,0
	li	a0,0
	jal	ra,upsampleCrH
	li	a1,64
	li	a0,4
	jal	ra,upsampleCrH
	j	lab269
lab333: 	li	a5,3
	bne	s5,a5,lab269
	li	a1,0
	li	a0,0
	jal	ra,upsampleCrV
	li	a1,128
	li	a0,32
	jal	ra,upsampleCrV
	j	lab269
lab308: 	li	a4,63
	addi	a2,s10,161
	sub	a4,a4,s11
	lui	a5,0x100
	add	a2,a2,s11
	zext.b	a4,a4
	addi	a5,a5,1012 # 1003f4 <ZAG>
	add	a5,a5,s11
	add	a2,a2,a4
lab343: 	lb	a4,0(a5)
	addi	a5,a5,1
	slli	a4,a4,0x1
	add	a4,s7,a4
	sh	zero,0(a4)
	bne	a2,a5,lab343
	j	lab309
lab306: 	lw	a5,36(sp)
	addi	s2,s7,1856
	addi	s3,a5,-1904
	j	lab344
lab263: 	lw	a5,36(sp)
	addi	s3,s7,1856
	addi	s4,a5,-1904
	j	lab345
lab271: 	li	s0,1536
	li	s3,255
	j	lab346
lab348: 	addi	s0,s0,-1
	slli	s0,s0,0x10
	srli	s0,s0,0x10
	beqz	s0,lab347
lab346: 	jal	ra,getChar
	bne	a0,s3,lab348
	li	s3,255
lab350: 	jal	ra,getChar
	bne	a0,s3,lab349
	addi	s0,s0,-1
	slli	s0,s0,0x10
	srli	s0,s0,0x10
	bnez	s0,lab350
lab347: 	li	s6,29
	j	lab351
lab341: 	lui	a5,0x100
	addi	a1,s7,640
	addi	s7,a5,1120 # 100460 <gCoeffBuf>
	mv	a2,s0
	addi	a0,a5,1120
	li	t4,103
	li	a6,255
	li	t3,183
	li	t1,91
	addi	a7,s7,192
lab356: 	lh	a4,0(a0)
	lbu	t5,0(a1)
	addi	a0,a0,2
	zext.b	a5,a4
	mul	a3,a5,t4
	zext.b	a4,a4
	addi	a4,a4,-179
	srli	a3,a3,0x8
	add	a4,a4,a3
	add	a4,a4,t5
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	bgeu	a6,a4,lab352
	slli	t5,a4,0x10
	srai	t5,t5,0x10
	li	a3,0
	bltz	t5,lab353
	li	a3,255
	blt	a6,t5,lab353
lab352: 	zext.b	a3,a4
lab353: 	mul	a5,a5,t3
	lbu	a4,0(a2)
	sb	a3,0(a1)
	addi	a1,a1,1
	srli	a5,a5,0x8
	sub	a5,t1,a5
	add	a5,a5,a4
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	bgeu	a6,a5,lab354
	slli	a3,a5,0x10
	srai	a3,a3,0x10
	li	a4,0
	bltz	a3,lab355
	li	a4,255
	blt	a6,a3,lab355
lab354: 	zext.b	a4,a5
lab355: 	sb	a4,0(a2)
	addi	a2,a2,1
	bne	a2,a7,lab356
	j	lab269
lab338: 	lui	a5,0x100
	addi	a0,s7,384
	addi	a1,s7,640
	mv	a2,s0
	addi	s7,a5,1120 # 100460 <gCoeffBuf>
	addi	a5,a5,1120
lab357: 	lbu	a4,0(a5)
	addi	a5,a5,2
	addi	a1,a1,1
	sb	a4,0(a2)
	sb	a4,0(a0)
	sb	a4,-1(a1)
	addi	a2,a2,1
	addi	a0,a0,1
	bne	a5,s0,lab357
	j	lab269
lab334: 	lui	a5,0x100
	addi	a0,s7,384
	addi	a1,s7,640
	mv	a2,s0
	addi	s7,a5,1120 # 100460 <gCoeffBuf>
	addi	a5,a5,1120
lab358: 	lbu	a4,0(a5)
	addi	a5,a5,2
	addi	a1,a1,1
	sb	a4,0(a2)
	sb	a4,0(a0)
	sb	a4,-1(a1)
	addi	a2,a2,1
	addi	a0,a0,1
	bne	a5,s0,lab358
	j	lab269
lab284: 	li	a2,103
	mul	a2,a5,a2
	lbu	a4,640(s7)
	li	a1,255
	addi	a4,a4,-179
	add	a4,a4,a5
	srli	a2,a2,0x8
	add	a4,a4,a2
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	bgeu	a1,a4,lab359
	slli	a1,a4,0x10
	srai	a1,a1,0x10
	li	a2,0
	bltz	a1,lab360
	li	a2,255
	blt	a2,a1,lab360
lab359: 	zext.b	a2,a4
lab360: 	li	a4,183
	mul	a4,a5,a4
	lbu	a5,128(s7)
	sb	a2,640(s7)
	li	a2,255
	addi	a5,a5,91
	srli	a4,a4,0x8
	sub	a5,a5,a4
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	bgeu	a2,a5,lab361
	slli	a2,a5,0x10
	srai	a2,a2,0x10
	li	a4,0
	bltz	a2,lab362
	li	a4,255
	blt	a4,a2,lab362
lab361: 	zext.b	a4,a5
lab362: 	sb	a4,128(s7)
	j	lab269
lab282: 	li	a2,88
	mul	a2,a5,a2
	lbu	a4,128(s7)
	li	a1,255
	addi	a4,a4,44
	srli	a2,a2,0x8
	sub	a4,a4,a2
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	bgeu	a1,a4,lab363
	slli	a2,a4,0x10
	srai	a2,a2,0x10
	li	a1,0
	bltz	a2,lab364
	li	a1,255
	blt	a1,a2,lab364
lab363: 	zext.b	a1,a4
lab364: 	li	a4,198
	mul	a2,a5,a4
	lbu	a4,384(s7)
	sb	a1,128(s7)
	li	a1,255
	addi	a4,a4,-227
	add	a5,a4,a5
	srli	a4,a2,0x8
	add	a5,a5,a4
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	bgeu	a1,a5,lab365
	slli	a2,a5,0x10
	srai	a2,a2,0x10
	li	a4,0
	bltz	a2,lab366
	li	a4,255
	blt	a4,a2,lab366
lab365: 	zext.b	a4,a5
lab366: 	sb	a4,384(s7)
	j	lab269
lab275: 	li	a4,88
	mul	a4,a5,a4
	lbu	a2,128(s7)
	li	a1,255
	srli	a4,a4,0x8
	addi	a4,a4,-44
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	sub	a2,a2,a4
	slli	a2,a2,0x10
	srli	a2,a2,0x10
	bgeu	a1,a2,lab367
	slli	a0,a2,0x10
	srai	a0,a0,0x10
	li	a1,0
	bltz	a0,lab368
	li	a1,255
	blt	a1,a0,lab368
lab367: 	zext.b	a1,a2
lab368: 	lbu	a2,256(s7)
	sb	a1,128(s7)
	li	a1,255
	sub	a4,a2,a4
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	bgeu	a1,a4,lab369
	slli	a2,a4,0x10
	srai	a2,a2,0x10
	li	a1,0
	bltz	a2,lab370
	li	a1,255
	blt	a1,a2,lab370
lab369: 	zext.b	a1,a4
lab370: 	li	a4,198
	mul	a4,a5,a4
	addi	a0,a5,-227
	lbu	a2,384(s7)
	sb	a1,256(s7)
	li	a1,255
	srli	a5,a4,0x8
	add	a5,a5,a0
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	add	a4,a5,a2
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	bgeu	a1,a4,lab371
	slli	a1,a4,0x10
	srai	a1,a1,0x10
	li	a2,0
	bltz	a1,lab372
	li	a2,255
	blt	a2,a1,lab372
lab371: 	zext.b	a2,a4
lab372: 	lbu	a1,512(s7)
	sb	a2,384(s7)
	li	a4,255
	add	a5,a5,a1
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	bgeu	a4,a5,lab373
	slli	a2,a5,0x10
	srai	a2,a2,0x10
	li	a4,0
	bltz	a2,lab374
	li	a4,255
	blt	a4,a2,lab374
lab373: 	zext.b	a4,a5
lab374: 	sb	a4,512(s7)
	j	lab269
lab279: 	li	a4,88
	mul	a4,a5,a4
	lbu	a2,128(s7)
	li	a1,255
	srli	a4,a4,0x8
	addi	a4,a4,-44
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	sub	a2,a2,a4
	slli	a2,a2,0x10
	srli	a2,a2,0x10
	bgeu	a1,a2,lab375
	slli	a0,a2,0x10
	srai	a0,a0,0x10
	li	a1,0
	bltz	a0,lab376
	li	a1,255
	blt	a1,a0,lab376
lab375: 	zext.b	a1,a2
lab376: 	lbu	a2,192(s7)
	sb	a1,128(s7)
	li	a1,255
	sub	a4,a2,a4
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	bgeu	a1,a4,lab377
	slli	a2,a4,0x10
	srai	a2,a2,0x10
	li	a1,0
	bltz	a2,lab378
	li	a1,255
	blt	a1,a2,lab378
lab377: 	zext.b	a1,a4
lab378: 	li	a4,198
	mul	a4,a5,a4
	addi	a0,a5,-227
	lbu	a2,384(s7)
	sb	a1,192(s7)
	li	a1,255
	srli	a5,a4,0x8
	add	a5,a5,a0
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	add	a4,a5,a2
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	bgeu	a1,a4,lab379
	slli	a1,a4,0x10
	srai	a1,a1,0x10
	li	a2,0
	bltz	a1,lab380
	li	a2,255
	blt	a2,a1,lab380
lab379: 	zext.b	a2,a4
lab380: 	lbu	a1,448(s7)
	sb	a2,384(s7)
	li	a4,255
	add	a5,a5,a1
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	bgeu	a4,a5,lab381
	slli	a2,a5,0x10
	srai	a2,a2,0x10
	li	a4,0
	bltz	a2,lab382
	li	a4,255
	blt	a4,a2,lab382
lab381: 	zext.b	a4,a5
lab382: 	sb	a4,448(s7)
	j	lab269
lab340: 	lui	a5,0x100
	addi	a1,s7,384
	addi	s7,a5,1120 # 100460 <gCoeffBuf>
	mv	a0,s0
	addi	a6,a5,1120
	li	t5,88
	li	t4,44
	li	a7,255
	li	t3,198
	addi	t1,s7,448
lab387: 	lh	a5,0(a6)
	lbu	a2,0(a0)
	addi	a6,a6,2
	zext.b	a3,a5
	mul	a4,a3,t5
	srli	a4,a4,0x8
	sub	a4,t4,a4
	add	a4,a4,a2
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	bgeu	a7,a4,lab383
	slli	t6,a4,0x10
	srai	t6,t6,0x10
	li	a2,0
	bltz	t6,lab384
	li	a2,255
	blt	a7,t6,lab384
lab383: 	zext.b	a2,a4
lab384: 	mul	a3,a3,t3
	lbu	a4,0(a1)
	zext.b	a5,a5
	addi	a5,a5,-227
	sb	a2,0(a0)
	addi	a0,a0,1
	srli	a3,a3,0x8
	add	a5,a5,a3
	add	a5,a5,a4
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	bgeu	a7,a5,lab385
	slli	a3,a5,0x10
	srai	a3,a3,0x10
	li	a4,0
	bltz	a3,lab386
	li	a4,255
	blt	a7,a3,lab386
lab385: 	zext.b	a4,a5
lab386: 	sb	a4,0(a1)
	addi	a1,a1,1
	bne	a1,t1,lab387
	j	lab269
lab336: 	li	a1,0
	li	a0,0
	jal	ra,upsampleCbH
	li	a1,64
	li	a0,4
	jal	ra,upsampleCbH
	j	lab269
lab332: 	li	a1,0
	li	a0,0
	jal	ra,upsampleCbV
	li	a1,128
	li	a0,32
	jal	ra,upsampleCbV
	j	lab269
	li	a4,103
	mul	a4,a5,a4
	addi	a1,a5,-179
	lbu	a2,640(s7)
	li	a0,255
	srli	a4,a4,0x8
	add	a4,a4,a1
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	add	a2,a4,a2
	slli	a2,a2,0x10
	srli	a2,a2,0x10
	bgeu	a0,a2,lab388
	slli	a0,a2,0x10
	srai	a0,a0,0x10
	li	a1,0
	bltz	a0,lab389
	li	a1,255
	blt	a1,a0,lab389
lab388: 	zext.b	a1,a2
lab389: 	lbu	a2,704(s7)
	sb	a1,640(s7)
	li	a1,255
	add	a2,a4,a2
	slli	a2,a2,0x10
	srli	a2,a2,0x10
	bgeu	a1,a2,lab390
	slli	a0,a2,0x10
	srai	a0,a0,0x10
	li	a1,0
	bltz	a0,lab391
	li	a1,255
	blt	a1,a0,lab391
lab390: 	zext.b	a1,a2
lab391: 	lbu	a2,768(s7)
	sb	a1,704(s7)
	li	a1,255
	add	a2,a4,a2
	slli	a2,a2,0x10
	srli	a2,a2,0x10
	bgeu	a1,a2,lab392
	slli	a0,a2,0x10
	srai	a0,a0,0x10
	li	a1,0
	bltz	a0,lab393
	li	a1,255
	blt	a1,a0,lab393
lab392: 	zext.b	a1,a2
lab393: 	lbu	a0,832(s7)
	sb	a1,768(s7)
	li	a2,255
	add	a4,a4,a0
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	bgeu	a2,a4,lab394
	slli	a1,a4,0x10
	srai	a1,a1,0x10
	li	a2,0
	bltz	a1,lab395
	li	a2,255
	blt	a2,a1,lab395
lab394: 	zext.b	a2,a4
lab395: 	li	a4,183
	mul	a5,a5,a4
	lbu	a4,128(s7)
	sb	a2,832(s7)
	li	a2,255
	srli	a5,a5,0x8
	addi	a5,a5,-91
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	sub	a4,a4,a5
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	bgeu	a2,a4,lab396
	slli	a1,a4,0x10
	srai	a1,a1,0x10
	li	a2,0
	bltz	a1,lab397
	li	a2,255
	blt	a2,a1,lab397
lab396: 	zext.b	a2,a4
lab397: 	lbu	a4,192(s7)
	sb	a2,128(s7)
	li	a2,255
	sub	a4,a4,a5
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	bgeu	a2,a4,lab398
	slli	a1,a4,0x10
	srai	a1,a1,0x10
	li	a2,0
	bltz	a1,lab399
	li	a2,255
	blt	a2,a1,lab399
lab398: 	zext.b	a2,a4
lab399: 	lbu	a4,256(s7)
	sb	a2,192(s7)
	li	a2,255
	sub	a4,a4,a5
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	bgeu	a2,a4,lab400
	slli	a1,a4,0x10
	srai	a1,a1,0x10
	li	a2,0
	bltz	a1,lab401
	li	a2,255
	blt	a2,a1,lab401
lab400: 	zext.b	a2,a4
lab401: 	lbu	a4,320(s7)
	sb	a2,256(s7)
	li	a2,255
	sub	a5,a4,a5
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	bgeu	a2,a5,lab402
	slli	a2,a5,0x10
	srai	a2,a2,0x10
	li	a4,0
	bltz	a2,lab403
	li	a4,255
	blt	a4,a2,lab403
lab402: 	zext.b	a4,a5
lab403: 	sb	a4,320(s7)
	j	lab269
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
	j	lab269
	lui	a4,0x100
	addi	a0,s7,576
	addi	a1,s7,320
	addi	a2,s7,832
	addi	a5,a4,1120 # 100460 <gCoeffBuf>
	addi	s7,a4,1120
lab404: 	lbu	a4,0(a5)
	addi	a5,a5,2
	addi	a2,a2,1
	sb	a4,0(a1)
	sb	a4,0(a0)
	sb	a4,-1(a2)
	addi	a1,a1,1
	addi	a0,a0,1
	bne	a5,s0,lab404
	j	lab269
	lui	a4,0x100
	addi	a0,s7,512
	addi	a1,s7,256
	addi	a2,s7,768
	addi	a5,a4,1120 # 100460 <gCoeffBuf>
	addi	s7,a4,1120
lab405: 	lbu	a4,0(a5)
	addi	a5,a5,2
	addi	a2,a2,1
	sb	a4,0(a1)
	sb	a4,0(a0)
	sb	a4,-1(a2)
	addi	a1,a1,1
	addi	a0,a0,1
	bne	a5,s0,lab405
	j	lab269
	lui	a4,0x100
	addi	a0,s7,448
	addi	a1,s7,192
	addi	a2,s7,704
	addi	a5,a4,1120 # 100460 <gCoeffBuf>
	addi	s7,a4,1120
lab406: 	lbu	a4,0(a5)
	addi	a5,a5,2
	addi	a2,a2,1
	sb	a4,0(a1)
	sb	a4,0(a0)
	sb	a4,-1(a2)
	addi	a1,a1,1
	addi	a0,a0,1
	bne	a5,s0,lab406
	j	lab269
	lui	a5,0x100
	addi	a0,s7,384
	addi	a1,s7,640
	mv	a2,s0
	addi	s7,a5,1120 # 100460 <gCoeffBuf>
	addi	a5,a5,1120
lab407: 	lbu	a4,0(a5)
	addi	a5,a5,2
	addi	a1,a1,1
	sb	a4,0(a2)
	sb	a4,0(a0)
	sb	a4,-1(a1)
	addi	a2,a2,1
	addi	a0,a0,1
	bne	a5,s0,lab407
	j	lab269
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
	j	lab269
	li	a4,88
	mul	a4,a5,a4
	lbu	a2,128(s7)
	li	a1,255
	srli	a4,a4,0x8
	addi	a4,a4,-44
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	sub	a2,a2,a4
	slli	a2,a2,0x10
	srli	a2,a2,0x10
	bgeu	a1,a2,lab408
	slli	a0,a2,0x10
	srai	a0,a0,0x10
	li	a1,0
	bltz	a0,lab409
	li	a1,255
	blt	a1,a0,lab409
lab408: 	zext.b	a1,a2
lab409: 	lbu	a2,192(s7)
	sb	a1,128(s7)
	li	a1,255
	sub	a2,a2,a4
	slli	a2,a2,0x10
	srli	a2,a2,0x10
	bgeu	a1,a2,lab410
	slli	a0,a2,0x10
	srai	a0,a0,0x10
	li	a1,0
	bltz	a0,lab411
	li	a1,255
	blt	a1,a0,lab411
lab410: 	zext.b	a1,a2
lab411: 	lbu	a2,256(s7)
	sb	a1,192(s7)
	li	a1,255
	sub	a2,a2,a4
	slli	a2,a2,0x10
	srli	a2,a2,0x10
	bgeu	a1,a2,lab412
	slli	a0,a2,0x10
	srai	a0,a0,0x10
	li	a1,0
	bltz	a0,lab413
	li	a1,255
	blt	a1,a0,lab413
lab412: 	zext.b	a1,a2
lab413: 	lbu	a2,320(s7)
	sb	a1,256(s7)
	li	a1,255
	sub	a4,a2,a4
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	bgeu	a1,a4,lab414
	slli	a2,a4,0x10
	srai	a2,a2,0x10
	li	a1,0
	bltz	a2,lab415
	li	a1,255
	blt	a1,a2,lab415
lab414: 	zext.b	a1,a4
lab415: 	li	a2,198
	mul	a2,a5,a2
	addi	a0,a5,-227
	lbu	a4,384(s7)
	sb	a1,320(s7)
	li	a1,255
	srli	a5,a2,0x8
	add	a5,a5,a0
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	add	a4,a5,a4
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	bgeu	a1,a4,lab416
	slli	a1,a4,0x10
	srai	a1,a1,0x10
	li	a2,0
	bltz	a1,lab417
	li	a2,255
	blt	a2,a1,lab417
lab416: 	zext.b	a2,a4
lab417: 	lbu	a4,448(s7)
	sb	a2,384(s7)
	li	a2,255
	add	a4,a5,a4
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	bgeu	a2,a4,lab418
	slli	a1,a4,0x10
	srai	a1,a1,0x10
	li	a2,0
	bltz	a1,lab419
	li	a2,255
	blt	a2,a1,lab419
lab418: 	zext.b	a2,a4
lab419: 	lbu	a4,512(s7)
	sb	a2,448(s7)
	li	a2,255
	add	a4,a5,a4
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	bgeu	a2,a4,lab420
	slli	a1,a4,0x10
	srai	a1,a1,0x10
	li	a2,0
	bltz	a1,lab421
	li	a2,255
	blt	a2,a1,lab421
lab420: 	zext.b	a2,a4
lab421: 	lbu	a1,576(s7)
	sb	a2,512(s7)
	li	a4,255
	add	a5,a5,a1
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	bgeu	a4,a5,lab422
	slli	a2,a5,0x10
	srai	a2,a2,0x10
	li	a4,0
	bltz	a2,lab423
	li	a4,255
	blt	a4,a2,lab423
lab422: 	zext.b	a4,a5
lab423: 	sb	a4,576(s7)
	j	lab269
	sb	a5,832(s7)
	sb	a5,320(s7)
	sb	a5,576(s7)
	j	lab269
lab349: 	lui	a3,0x101
	lhu	a4,-630(a3) # 100d8a <gNextRestartNum>
	addi	a5,a4,208
	bne	a0,a5,lab347
	lhu	a2,-628(s2)
	lui	a5,0x101
	addi	a4,a4,1
	addi	a1,a5,-592 # 100db0 <gLastDC>
	andi	a4,a4,7
	sh	a4,-630(a3)
	sw	zero,-592(a5)
	li	a4,8
	lui	a5,0x101
	sh	zero,4(a1)
	li	a0,1
	sb	a4,-604(a5) # 100da4 <gBitsLeft>
	sh	a2,-632(s1)
	jal	ra,getBits.constprop.0
	li	a0,1
	jal	ra,getBits.constprop.0
	lhu	a5,-632(s1)
	j	lab270
pjpeg_decode_init:
	lui	a5,0x101
	sw	a1,-668(a5) # 100d64 <g_pNeedBytesCallback>
	lui	a5,0x101
	sw	a2,-672(a5) # 100d60 <g_pCallback_data>
	lui	a5,0x101
	sb	a3,-676(a5) # 100d5c <gReduce>
	lui	a5,0x101
	sh	zero,-606(a5) # 100da2 <gImageXSize>
	lui	a5,0x101
	addi	sp,sp,-96
	sh	zero,-608(a5) # 100da0 <gImageYSize>
	lui	a5,0x101
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s3,76(sp)
	sw	s4,72(sp)
	sw	s5,68(sp)
	sw	s9,52(sp)
	sw	s1,84(sp)
	sw	s2,80(sp)
	sw	s6,64(sp)
	sw	s7,60(sp)
	sw	s8,56(sp)
	sw	s10,48(sp)
	sw	s11,44(sp)
	lui	s0,0x101
	sb	zero,-609(a5) # 100d9f <gCompsInFrame>
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
	sh	zero,-628(a5) # 100d8c <gRestartInterval>
	sb	zero,-675(s0) # 100d5d <gCallbackStatus>
	lui	a5,0x101
	sb	zero,-633(a5) # 100d87 <gCompsInScan>
	lui	a5,0x101
	sb	zero,-596(a5) # 100dac <gValidHuffTables>
	lui	a5,0x101
	sb	zero,-597(a5) # 100dab <gValidQuantTables>
	lui	a5,0x101
	sb	zero,-598(a5) # 100daa <gTemFlag>
	lui	a5,0x101
	sb	zero,-599(a5) # 100da9 <gInBufOfs>
	lui	a5,0x101
	sb	zero,-600(a5) # 100da8 <gInBufLeft>
	mv	s5,a0
	li	a5,8
	lui	s4,0x101
	lui	s3,0x101
	li	a0,0
	sb	a5,-604(s3) # 100da4 <gBitsLeft>
	sh	zero,-602(s4) # 100da6 <gBitBuf>
	jal	ra,getBits.constprop.0
	li	a0,0
	jal	ra,getBits.constprop.0
	lbu	s9,-675(s0)
	beqz	s9,lab424
lab432: 	lw	ra,92(sp)
	lw	s0,88(sp)
	lw	s1,84(sp)
	lw	s2,80(sp)
	lw	s3,76(sp)
	lw	s4,72(sp)
	lw	s5,68(sp)
	lw	s6,64(sp)
	lw	s7,60(sp)
	lw	s8,56(sp)
	lw	s10,48(sp)
	lw	s11,44(sp)
	mv	a0,s9
	lw	s9,52(sp)
	addi	sp,sp,96
	ret
lab424: 	li	a0,0
	jal	ra,getBits.constprop.0
	mv	s6,a0
	li	a0,0
	jal	ra,getBits.constprop.0
	zext.b	s6,s6
	li	a5,255
	zext.b	s10,a0
	beq	s6,a5,lab425
lab433: 	lhu	a5,-602(s4)
	lbu	a4,-604(s3)
	lui	s9,0x1
	li	s2,7
	addi	s9,s9,-1 # fff <upsampleCr+0xc7>
	li	s7,8
	li	s11,255
	li	s6,216
	li	s8,217
	slli	a3,a5,0x8
	mv	s1,a5
	addi	a2,a4,-8
	bgeu	s2,a4,lab426
lab429: 	slli	a5,a3,0x10
	srli	a5,a5,0x10
	addi	s9,s9,-1
	slli	s9,s9,0x10
	sb	a2,-604(s3)
	sh	a5,-602(s4)
	srai	a4,s1,0x8
	srli	s9,s9,0x10
	srli	s1,s1,0x8
	beq	s10,s11,lab427
lab430: 	beqz	s9,lab428
	lbu	a4,-604(s3)
	mv	s10,s1
	slli	a3,a5,0x8
	mv	s1,a5
	addi	a2,a4,-8
	bltu	s2,a4,lab429
lab426: 	sll	a5,a5,a4
	sh	a5,-602(s4)
	jal	ra,getChar
	lhu	a5,-602(s4)
	lbu	a4,-604(s3)
	addi	s9,s9,-1
	or	a5,a5,a0
	slli	a5,a5,0x10
	sub	a4,s7,a4
	srli	a5,a5,0x10
	sll	a5,a5,a4
	slli	a5,a5,0x10
	srli	a5,a5,0x10
	slli	s9,s9,0x10
	sh	a5,-602(s4)
	srai	a4,s1,0x8
	srli	s9,s9,0x10
	srli	s1,s1,0x8
	bne	s10,s11,lab430
lab427: 	beq	a4,s6,lab431
	bne	a4,s8,lab430
lab428: 	li	s9,19
lab434: 	lbu	a4,-675(s0)
	beqz	a4,lab432
	mv	s9,a4
	j	lab432
lab425: 	li	a5,216
	bne	s10,a5,lab433
lab438: 	addi	a0,sp,31
	jal	ra,processMarkers
	mv	s9,a0
	bnez	a0,lab434
	lbu	a4,31(sp)
	li	a3,194
	beq	a4,a3,lab435
	li	a3,201
	beq	a4,a3,lab436
	li	a3,192
	beq	a4,a3,lab437
	li	s9,20
	j	lab434
lab431: 	srli	a5,a5,0x8
	beq	a5,s10,lab438
	j	lab428
lab436: 	li	s9,17
	j	lab434
lab437: 	jal	ra,getBits.constprop.1
	mv	s6,a0
	li	a0,0
	jal	ra,getBits.constprop.0
	li	a4,8
	bne	a0,a4,lab439
	jal	ra,getBits.constprop.1
	addi	a3,a0,-1
	lui	a5,0x101
	slli	a4,a3,0x10
	sh	a0,-608(a5) # 100da0 <gImageYSize>
	srli	a4,a4,0x10
	lui	s7,0x4
	bgeu	a4,s7,lab440
	jal	ra,getBits.constprop.1
	addi	a3,a0,-1
	lui	a5,0x101
	slli	a4,a3,0x10
	sh	a0,-606(a5) # 100da2 <gImageXSize>
	srli	a4,a4,0x10
	bgeu	a4,s7,lab441
	li	a0,0
	jal	ra,getBits.constprop.0
	zext.b	a4,a0
	lui	a5,0x101
	sb	a4,-609(a5) # 100d9f <gCompsInFrame>
	li	a3,3
	bltu	a3,a4,lab442
	slli	a3,a4,0x1
	add	a3,a3,a4
	addi	a3,a3,8
	bne	s6,a3,lab443
	beqz	a4,lab444
	lui	a4,0x101
	lui	s7,0x101
	lui	s10,0x101
	addi	a5,a4,-624 # 100d90 <gCompQuant>
	addi	s6,s7,-616 # 100d98 <gCompHSamp>
	addi	s8,s10,-620 # 100d94 <gCompVSamp>
	sw	a5,0(sp)
	li	s1,4
	li	s11,1
	j	lab445
lab449: 	slli	s2,a4,0x4
	slli	s2,s2,0x10
	sb	a5,-604(s3)
	srli	s2,s2,0x10
lab450: 	add	a3,s6,s9
	srai	a4,a4,0xc
	sb	a4,0(a3)
	li	a2,3
	addi	a3,a5,-4
	slli	a4,s2,0x4
	bgeu	a2,a5,lab446
	sb	a3,-604(s3)
	sh	a4,-602(s4)
lab471: 	add	a5,s8,s9
	srai	s2,s2,0xc
	sb	s2,0(a5)
	li	a0,0
	jal	ra,getBits.constprop.0
	lw	a5,0(sp)
	add	a4,a5,s9
	zext.b	a5,a0
	addi	s9,s9,1
	sb	a5,0(a4)
	zext.b	s9,s9
	bltu	s11,a5,lab447
	lui	a5,0x101
	lbu	a3,-609(a5) # 100d9f <gCompsInFrame>
	bgeu	s9,a3,lab448
lab445: 	li	a0,0
	jal	ra,getBits.constprop.0
	lbu	a3,-604(s3)
	lui	a5,0x101
	addi	a5,a5,-612 # 100d9c <gCompIdent>
	add	a5,a5,s9
	sb	a0,0(a5)
	li	a2,3
	addi	a5,a3,-4
	lhu	a4,-602(s4)
	zext.b	a5,a5
	bltu	a2,a3,lab449
	sll	a3,a4,a3
	sw	a4,4(sp)
	sh	a3,-602(s4)
	jal	ra,getChar
	lhu	a3,-602(s4)
	lbu	a5,-604(s3)
	lw	a4,4(sp)
	or	s2,a3,a0
	slli	s2,s2,0x10
	sub	a3,s1,a5
	srli	s2,s2,0x10
	addi	a5,a5,4
	sll	s2,s2,a3
	zext.b	a5,a5
	slli	s2,s2,0x10
	srli	s2,s2,0x10
	sb	a5,-604(s3)
	j	lab450
lab448: 	lbu	s9,-675(s0)
	bnez	s9,lab432
	beq	a3,s11,lab451
	li	a2,3
	li	s9,26
	bne	a3,a2,lab432
	lbu	a3,1(s6)
	li	s9,27
	bne	a3,s11,lab432
	lbu	a3,1(s8)
	bne	a3,s11,lab432
	lbu	a3,2(s6)
	bne	a3,s11,lab432
	lbu	a3,2(s8)
	bne	a3,s11,lab432
	lbu	a3,-616(s7)
	beq	a3,s11,lab452
	li	a4,2
	li	s9,27
	bne	a3,a4,lab432
	lbu	a4,-620(s10)
	li	a2,1
	beq	a4,a2,lab453
	bne	a4,a3,lab432
	lui	a5,0x101
	li	a3,4
	lui	s6,0x101
	addi	a4,a5,-664 # 100d68 <gMCUOrg>
	li	a2,6
	sw	a3,-648(s6) # 100d78 <gScanType>
	sw	zero,-664(a5)
	lui	a3,0x101
	li	a5,513
	sb	a2,-650(a3) # 100d76 <gMaxBlocksPerMCU>
	sh	a5,4(a4)
	li	a2,15
	li	a5,16
lab476: 	lui	a4,0x101
	lhu	a3,-606(a4) # 100da2 <gImageXSize>
	lui	a1,0x101
	lui	a0,0x101
	li	a4,16
	sw	a1,8(sp)
	sb	a4,-651(a1) # 100d75 <gMaxMCUXSize>
	sw	a0,4(sp)
	sb	a5,-652(a0) # 100d74 <gMaxMCUYSize>
	addi	a3,a3,15
	li	a1,4
lab470: 	lui	a4,0x101
	lhu	a4,-608(a4) # 100da0 <gImageYSize>
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
	lui	s1,0x101
	sh	a4,-654(s1) # 100d72 <gMaxMCUSPerRow>
	lui	a4,0x101
	sh	a5,-656(a4) # 100d70 <gMaxMCUSPerCol>
	addi	a0,sp,31
	lui	a5,0x101
	sh	a3,-658(a5) # 100d6e <gNumMCUSRemaining>
	jal	ra,processMarkers
	mv	s9,a0
	bnez	a0,lab434
	lbu	a4,31(sp)
	li	a5,218
	li	s9,18
	bne	a4,a5,lab434
	jal	ra,getBits.constprop.1
	mv	s7,a0
	li	a0,0
	jal	ra,getBits.constprop.0
	zext.b	a5,a0
	addi	a2,s7,-3
	slli	a4,a5,0x1
	lui	a3,0x101
	slli	s11,a2,0x10
	sb	a5,-633(a3) # 100d87 <gCompsInScan>
	srli	s11,s11,0x10
	addi	a4,a4,3
	bne	s11,a4,lab454
	addi	a5,a5,-1
	zext.b	a5,a5
	li	a4,2
	bltu	a4,a5,lab454
	lui	a5,0x101
	addi	s7,a5,-636 # 100d84 <gCompList>
	lui	a5,0x101
	addi	s9,a5,-640 # 100d80 <gCompDCTab>
	lui	a5,0x101
	li	s10,0
	addi	s8,a5,-644 # 100d7c <gCompACTab>
lab459: 	li	a0,0
	jal	ra,getBits.constprop.0
	mv	s2,a0
	li	a0,0
	jal	ra,getBits.constprop.0
	lui	a5,0x101
	lbu	a4,-609(a5) # 100d9f <gCompsInFrame>
	addi	a3,s11,-2
	mv	a7,s11
	slli	s11,a3,0x10
	zext.b	s2,s2
	zext.b	a5,a0
	srli	s11,s11,0x10
	beqz	a4,lab455
	lui	a2,0x101
	lbu	a3,-612(a2) # 100d9c <gCompIdent>
	beq	a3,s2,lab456
	li	a3,1
	beq	a4,a3,lab455
	addi	a3,a2,-612
	lbu	a3,1(a3)
	beq	a3,s2,lab457
	li	a3,2
	beq	a4,a3,lab455
	addi	a4,a2,-612
	lbu	a4,2(a4)
	beq	a4,s2,lab458
lab455: 	li	s9,15
	j	lab434
lab458: 	li	a6,2
	li	a4,2
lab475: 	lui	a3,0x101
	lbu	a3,-633(a3) # 100d87 <gCompsInScan>
	add	a0,s7,s10
	add	a2,s9,a4
	srli	a1,a5,0x4
	add	a4,s8,a4
	andi	a5,a5,15
	addi	s10,s10,1
	sb	a6,0(a0)
	sb	a1,0(a2)
	sb	a5,0(a4)
	zext.b	s10,s10
	bltu	s10,a3,lab459
	li	a0,0
	mv	s2,a7
	jal	ra,getBits.constprop.0
	zext.b	a5,a0
	lui	a4,0x101
	li	a0,0
	sb	a5,-677(a4) # 100d5b <spectral_start>
	jal	ra,getBits.constprop.0
	lbu	a5,-604(s3)
	zext.b	a4,a0
	lui	a3,0x101
	sb	a4,-678(a3) # 100d5a <spectral_end>
	li	a4,3
	lhu	a3,-602(s4)
	bgeu	a4,a5,lab460
	addi	a5,a5,-4
	slli	a4,a3,0x4
	zext.b	a5,a5
	slli	a4,a4,0x10
	sb	a5,-604(s3)
	srli	a4,a4,0x10
lab478: 	srli	a3,a3,0xc
	lui	a2,0x101
	sb	a3,-679(a2) # 100d59 <successive_high>
	li	a3,3
	bgeu	a3,a5,lab461
	addi	a5,a5,-4
	slli	a3,a4,0x4
	sb	a5,-604(s3)
	sh	a3,-602(s4)
lab477: 	addi	a5,s2,-5
	srli	a4,a4,0xc
	lui	a3,0x101
	slli	a5,a5,0x10
	sb	a4,-680(a3) # 100d58 <successive_low>
	srli	a5,a5,0x10
	beqz	a5,lab462
	mv	s2,a5
lab463: 	addi	s2,s2,-1
	slli	s2,s2,0x10
	li	a0,0
	srli	s2,s2,0x10
	jal	ra,getBits.constprop.0
	bnez	s2,lab463
lab462: 	lui	a5,0x101
	lbu	a3,-633(a5) # 100d87 <gCompsInScan>
	beqz	a3,lab464
	lui	a5,0x101
	lbu	a2,-636(a5) # 100d84 <gCompList>
	lui	a4,0x101
	lbu	a1,-596(a4) # 100dac <gValidHuffTables>
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
	bne	a0,a4,lab465
	beq	a3,a5,lab466
	lbu	a0,1(s7)
	add	a4,s8,a0
	lbu	a4,0(a4)
	add	a0,s9,a0
	lbu	a0,0(a0)
	addi	a4,a4,2
	sll	a4,a5,a4
	sll	a0,a5,a0
	or	a4,a4,a0
	and	a0,a1,a4
	bne	a0,a4,lab465
	li	a4,2
	beq	a3,a4,lab466
	lbu	a0,2(s7)
	add	a4,s8,a0
	lbu	a4,0(a4)
	add	a0,s9,a0
	lbu	a0,0(a0)
	addi	a4,a4,2
	sll	a4,a5,a4
	sll	a5,a5,a0
	or	a5,a4,a5
	and	a1,a1,a5
	bne	a1,a5,lab465
lab466: 	lw	a1,0(sp)
	lui	a4,0x101
	lbu	a4,-597(a4) # 100dab <gValidQuantTables>
	add	a2,a1,a2
	lbu	a5,0(a2)
	snez	a5,a5
	addi	a5,a5,1
	and	a5,a4,a5
	beqz	a5,lab467
	li	a5,1
	beq	a3,a5,lab464
	lbu	a5,1(s7)
	add	a5,a1,a5
	lbu	a5,0(a5)
	snez	a5,a5
	addi	a5,a5,1
	and	a5,a4,a5
	beqz	a5,lab467
	li	a5,2
	beq	a3,a5,lab464
	lbu	a5,2(s7)
	add	a5,a1,a5
	lbu	a5,0(a5)
	snez	a5,a5
	addi	a5,a5,1
	and	a4,a4,a5
	beqz	a4,lab467
lab464: 	lui	a5,0x101
	lui	a4,0x101
	lhu	a5,-628(a5) # 100d8c <gRestartInterval>
	addi	a3,a4,-592 # 100db0 <gLastDC>
	sw	zero,-592(a4)
	sh	zero,4(a3)
	beqz	a5,lab468
	lui	a4,0x101
	sh	a5,-632(a4) # 100d88 <gRestartsLeft>
	lui	a5,0x101
	sh	zero,-630(a5) # 100d8a <gNextRestartNum>
lab468: 	lbu	a2,-604(s3)
	lui	a5,0x101
	lui	a4,0x101
	lhu	a3,-602(s4)
	lbu	a5,-599(a5) # 100da9 <gInBufOfs>
	lbu	a4,-600(a4) # 100da8 <gInBufLeft>
	bnez	a2,lab469
	lui	s2,0x100
	addi	s2,s2,1120 # 100460 <gCoeffBuf>
lab472: 	addi	a5,a5,-1
	zext.b	a5,a5
	lui	a1,0x101
	add	a2,s2,a5
	srli	a3,a3,0x8
	addi	a4,a4,1
	sb	a5,-599(a1) # 100da9 <gInBufOfs>
	lui	a5,0x101
	sb	a4,-600(a5) # 100da8 <gInBufLeft>
	sb	a3,896(a2)
	li	a5,8
	li	a0,1
	sb	a5,-604(s3)
	jal	ra,getBits.constprop.0
	li	a0,1
	jal	ra,getBits.constprop.0
	lbu	s9,-675(s0)
	bnez	s9,lab432
	lui	a5,0x101
	lhu	t5,-606(a5) # 100da2 <gImageXSize>
	lui	a5,0x101
	lhu	t4,-608(a5) # 100da0 <gImageYSize>
	lui	a5,0x101
	lbu	t3,-609(a5) # 100d9f <gCompsInFrame>
	lui	a5,0x101
	lhu	a0,-656(a5) # 100d70 <gMaxMCUSPerCol>
	lw	a5,8(sp)
	lw	t1,-648(s6)
	lhu	a6,-654(s1)
	lbu	a1,-651(a5)
	lw	a5,4(sp)
	addi	a3,s2,640
	addi	a4,s2,128
	lbu	a2,-652(a5)
	addi	s2,s2,384
	sw	t5,0(s5)
	sw	t4,4(s5)
	sw	t3,8(s5)
	sw	t1,20(s5)
	sw	a6,12(s5)
	sw	a0,16(s5)
	sw	a1,24(s5)
	sw	a2,28(s5)
	sw	a3,32(s5)
	sw	a4,36(s5)
	sw	s2,40(s5)
	j	lab432
lab451: 	lbu	a3,-616(s7)
	li	s9,27
	bne	a3,s11,lab432
	lbu	a3,-620(s10)
	bne	a3,s11,lab432
	lui	a5,0x101
	lui	s6,0x101
	sb	s11,-650(a5) # 100d76 <gMaxBlocksPerMCU>
	lui	a5,0x101
	sb	zero,-664(a5) # 100d68 <gMCUOrg>
	sw	zero,-648(s6) # 100d78 <gScanType>
	li	a2,7
	li	a5,8
lab474: 	lui	a4,0x101
	lhu	a3,-606(a4) # 100da2 <gImageXSize>
	lui	a1,0x101
	lui	a0,0x101
	li	a4,8
	sw	a1,8(sp)
	sb	a4,-651(a1) # 100d75 <gMaxMCUXSize>
	sw	a0,4(sp)
	sb	a5,-652(a0) # 100d74 <gMaxMCUYSize>
	addi	a3,a3,7
	li	a1,3
	j	lab470
lab435: 	li	s9,37
	j	lab434
lab439: 	li	s9,7
	j	lab434
lab446: 	sll	a5,s2,a5
	sh	a5,-602(s4)
	jal	ra,getChar
	lhu	a5,-602(s4)
	lbu	a4,-604(s3)
	or	a5,a5,a0
	slli	a5,a5,0x10
	sub	a3,s1,a4
	srli	a5,a5,0x10
	sll	a5,a5,a3
	addi	a4,a4,4
	sh	a5,-602(s4)
	sb	a4,-604(s3)
	j	lab471
lab454: 	li	s9,14
	j	lab434
lab440: 	li	s9,8
	j	lab434
lab469: 	addi	a5,a5,-1
	lui	s2,0x100
	zext.b	a5,a5
	addi	s2,s2,1120 # 100460 <gCoeffBuf>
	addi	a4,a4,1
	add	a2,s2,a5
	zext.b	a4,a4
	sb	a3,896(a2)
	j	lab472
lab452: 	lbu	a4,-620(s10)
	li	a5,1
	beq	a4,a5,lab473
	li	a3,2
	li	s9,27
	bne	a4,a3,lab432
	li	a5,3
	lui	s6,0x101
	li	a4,4
	sw	a5,-648(s6) # 100d78 <gScanType>
	lui	a5,0x101
	sb	a4,-650(a5) # 100d76 <gMaxBlocksPerMCU>
	lui	a5,0x101
	lui	a4,0x2010
	sw	a4,-664(a5) # 100d68 <gMCUOrg>
	li	a2,15
	li	a5,16
	j	lab474
lab465: 	li	s9,24
	j	lab434
lab441: 	li	s9,9
	j	lab434
lab457: 	li	a6,1
	li	a4,1
	j	lab475
lab456: 	li	a6,0
	li	a4,0
	j	lab475
lab443: 	li	s9,11
	j	lab434
lab442: 	li	s9,10
	j	lab434
lab453: 	lui	a5,0x101
	li	a4,4
	sb	a4,-650(a5) # 100d76 <gMaxBlocksPerMCU>
	lui	s6,0x101
	lui	a5,0x101
	lui	a4,0x2010
	sw	a4,-664(a5) # 100d68 <gMCUOrg>
	sw	a3,-648(s6) # 100d78 <gScanType>
	li	a2,7
	li	a5,8
	j	lab476
lab447: 	li	s9,36
	j	lab434
lab461: 	sll	a5,a4,a5
	sw	a4,12(sp)
	sh	a5,-602(s4)
	jal	ra,getChar
	lhu	a5,-602(s4)
	lbu	a3,-604(s3)
	li	a2,4
	or	a5,a5,a0
	slli	a5,a5,0x10
	sub	a2,a2,a3
	srli	a5,a5,0x10
	sll	a5,a5,a2
	addi	a3,a3,4
	lw	a4,12(sp)
	sh	a5,-602(s4)
	sb	a3,-604(s3)
	j	lab477
lab467: 	li	s9,23
	j	lab434
lab460: 	sll	a5,a3,a5
	sw	a3,12(sp)
	sh	a5,-602(s4)
	jal	ra,getChar
	lhu	a4,-602(s4)
	lbu	a5,-604(s3)
	li	a2,4
	or	a4,a4,a0
	slli	a4,a4,0x10
	sub	a2,a2,a5
	srli	a4,a4,0x10
	addi	a5,a5,4
	sll	a4,a4,a2
	zext.b	a5,a5
	slli	a4,a4,0x10
	lw	a3,12(sp)
	srli	a4,a4,0x10
	sb	a5,-604(s3)
	j	lab478
lab473: 	lui	s6,0x101
	sw	a4,-648(s6) # 100d78 <gScanType>
	lui	a4,0x101
	lui	a5,0x101
	sb	a2,-650(a4) # 100d76 <gMaxBlocksPerMCU>
	li	a4,256
	addi	a3,a5,-664 # 100d68 <gMCUOrg>
	sh	a4,-664(a5)
	li	a5,2
	sb	a5,2(a3)
	li	a2,7
	li	a5,8
	j	lab474
lab444: 	lbu	s9,-675(s0)
	bnez	s9,lab432
	li	s9,26
	j	lab432
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
	.2byte	0x0000
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
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x201
	.4byte	0xff040003
	.2byte	0xc4
	.2byte	0x1026
	.2byte	0x200
	.2byte	0x102
	.4byte	0x03040303
	.2byte	0x1
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
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
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x100
	.2byte	0xc4ff
	.2byte	0x1400
	.2byte	0x111
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
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
	.2byte	0x0000
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
	.2byte	0x39cc
	.2byte	0x0000
	.2byte	0x3980
	.2byte	0x0000
	.2byte	0x395c
	.2byte	0x0000
	.2byte	0x3938
	.2byte	0x0000
	.2byte	0x39ac
	.2byte	0x0000
	.2byte	0x399c
	.2byte	0x0000
	.2byte	0x3970
	.2byte	0x0000
	.2byte	0x394c
	.2byte	0x0000
	.2byte	0x5580
	.2byte	0x0000
	.2byte	0x5388
	.2byte	0x0000
	.2byte	0x5028
	.2byte	0x0000
	.2byte	0x4834
	.2byte	0x0000
	.2byte	0x4934
	.2byte	0x0000
	.2byte	0x48e4
	.2byte	0x0000
	.2byte	0x4894
	.2byte	0x0000
	.2byte	0x4874
	.2byte	0x0000
	.2byte	0x5314
	.2byte	0x0000
	.2byte	0x52d4
	.2byte	0x0000
	.2byte	0x5294
	.2byte	0x0000
	.2byte	0x5254
	.2byte	0x0000
	.2byte	0x5220
	.2byte	0x0000
	.2byte	0x5354
	.2byte	0x0000
CSWTCH.306:
	.2byte	0xa40
	.2byte	0x10
	.2byte	0x9e0
	.2byte	0x10
	.2byte	0xcf0
	.2byte	0x10
	.2byte	0xca0
	.2byte	0x10
CSWTCH.308:
	.2byte	0xa90
	.2byte	0x10
	.2byte	0xa30
	.2byte	0x10
	.2byte	0xba0
	.2byte	0x10
	.2byte	0xaa0
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
	.2byte	0x0a13
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
	.2byte	0x0000
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
	.2byte	0x0000
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


	.bss

_end_2:
	.2byte	0x0000
