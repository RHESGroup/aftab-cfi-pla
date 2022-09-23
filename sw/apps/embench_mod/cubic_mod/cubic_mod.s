	.text
	.globl  main
	.type  main, @function

benchmark_body.constprop.0:
	lui	a2,0x100
	lw	a1,568(a2) # 100238 <init_jk+0x28>
	lw	a2,572(a2)
	addi	sp,sp,-576
	sw	a1,40(sp)
	sw	a2,44(sp)
	lui	a2,0x100
	lw	a1,576(a2) # 100240 <init_jk+0x30>
	lw	a2,580(a2)
	lui	a3,0x100
	sw	a1,48(sp)
	sw	a2,52(sp)
	lui	a2,0x100
	lw	a1,584(a2) # 100248 <init_jk+0x38>
	lw	a2,588(a2)
	sw	s4,552(sp)
	sw	s6,544(sp)
	lw	s4,560(a3) # 100230 <init_jk+0x20>
	lw	s6,564(a3)
	lui	a3,0x100
	sw	a2,60(sp)
	lw	a2,592(a3) # 100250 <init_jk+0x40>
	lw	a3,596(a3)
	sw	s1,564(sp)
	sw	s2,560(sp)
	sw	a3,68(sp)
	lui	a3,0x100
	sw	s9,532(sp)
	sw	a2,64(sp)
	sw	ra,572(sp)
	lw	a2,600(a3) # 100258 <init_jk+0x48>
	sw	s0,568(sp)
	sw	s3,556(sp)
	sw	s5,548(sp)
	sw	s7,540(sp)
	sw	s8,536(sp)
	sw	s10,528(sp)
	sw	s11,524(sp)
	sw	a1,56(sp)
	lw	a3,604(a3)
	sw	a2,72(sp)
	lui	a4,0x100
	sw	a3,76(sp)
	lui	a3,0x100
	lw	a2,608(a3) # 100260 <init_jk+0x50>
	lw	a3,612(a3)
	lui	a5,0x100
	sw	a2,80(sp)
	sw	a3,84(sp)
	lui	a3,0x100
	lw	a2,616(a3) # 100268 <init_jk+0x58>
	lw	a3,620(a3)
	li	s9,10
	sw	a2,88(sp)
	sw	a3,92(sp)
	lui	a3,0x100
	lw	a2,624(a3) # 100270 <init_jk+0x60>
	lw	a3,628(a3)
	addi	s2,sp,128
	sw	a2,96(sp)
	sw	a3,100(sp)
	lw	a3,552(a4) # 100228 <init_jk+0x18>
	lw	a4,556(a4)
	addi	s1,sp,124
	sw	a3,32(sp)
	sw	a4,36(sp)
	lw	a4,544(a5) # 100220 <init_jk+0x10>
	lw	a5,548(a5)
	sw	a4,20(sp)
	sw	a5,24(sp)
	lui	a5,0x100
	mv	a5,a5
	sw	a5,108(sp)
lab6: 	li	a2,384
	li	a1,0
	mv	a0,s2
	jal	ra,memset
	lw	s8,44(sp)
	lw	s7,40(sp)
	lw	a4,48(sp)
	lw	a5,52(sp)
	lw	a2,56(sp)
	lw	a3,60(sp)
	mv	a7,s8
	mv	a0,s4
	mv	a1,s6
	mv	a6,s7
	sw	s2,4(sp)
	sw	s1,0(sp)
	jal	ra,SolveCubic
	lw	t1,124(sp)
	lui	t3,0x100
	sw	s2,4(sp)
	sw	t1,36(t3) # 100024 <soln_cnt0>
	lw	t3,108(sp)
	lw	t1,128(sp)
	sw	s1,0(sp)
	lw	a4,64(sp)
	sw	t1,0(t3)
	lw	t1,132(sp)
	lw	a5,68(sp)
	lw	a2,72(sp)
	sw	t1,4(t3)
	lw	t1,136(sp)
	lw	a3,76(sp)
	mv	a7,s8
	sw	t1,8(t3)
	lw	t1,140(sp)
	mv	a0,s4
	mv	a1,s6
	sw	t1,12(t3)
	lw	t1,144(sp)
	mv	a6,s7
	li	s8,2
	sw	t1,16(t3)
	lw	t1,148(sp)
	mv	s3,s4
	mv	s0,s6
	sw	t1,20(t3)
	jal	ra,SolveCubic
	lw	t1,124(sp)
	lui	t3,0x100
	lw	t2,132(sp)
	sw	t1,32(t3) # 100020 <soln_cnt1>
	lw	a6,80(sp)
	lw	t1,128(sp)
	lw	a7,84(sp)
	lw	a4,88(sp)
	lw	a5,92(sp)
	lw	a2,96(sp)
	lw	a3,100(sp)
	lui	t3,0x100
	mv	a0,s4
	mv	a1,s6
	sw	s2,4(sp)
	sw	s1,0(sp)
	sw	t1,24(t3) # 100018 <res1>
	sw	t2,28(t3)
	jal	ra,SolveCubic
	lui	a5,0x100
	lw	a6,632(a5) # 100278 <init_jk+0x68>
	lw	a7,636(a5)
	lui	a5,0x100
	lw	a2,640(a5) # 100280 <init_jk+0x70>
	lw	a3,644(a5)
	mv	a4,s4
	mv	a0,s4
	mv	a5,s6
	mv	a1,s6
	sw	s2,4(sp)
	sw	s1,0(sp)
	jal	ra,SolveCubic
	sw	s9,104(sp)
	sw	s4,16(sp)
lab5: 	lw	s11,32(sp)
	lw	s10,36(sp)
	sw	s8,28(sp)
	li	s7,2
	li	s5,1
	mv	s4,s11
	mv	s8,s10
lab3: 	lw	s11,20(sp)
	lw	s10,24(sp)
	li	s9,2
lab1: 	lui	a6,0x100
	lw	a7,652(a6) # 10028c <init_jk+0x7c>
	lw	a6,648(a6)
	mv	a4,s11
	mv	a5,s10
	mv	a2,s4
	mv	a0,s3
	mv	a3,s8
	mv	a1,s0
	sw	s2,4(sp)
	sw	s1,0(sp)
	jal	ra,SolveCubic
	lui	a6,0x100
	lw	a7,660(a6) # 100294 <init_jk+0x84>
	lw	a6,656(a6)
	mv	a4,s11
	mv	a5,s10
	mv	a2,s4
	mv	a0,s3
	mv	a3,s8
	mv	a1,s0
	sw	s2,4(sp)
	sw	s1,0(sp)
	jal	ra,SolveCubic
	lui	a5,0x100
	lw	a2,664(a5) # 100298 <init_jk+0x88>
	lw	a3,668(a5)
	mv	a0,s11
	mv	a1,s10
	jal	ra,__adddf3
	mv	s11,a0
	mv	s10,a1
	beq	s9,s5,lab0
	li	s9,1
	j	lab1
lab0: 	lw	a2,16(sp)
	mv	a0,s4
	mv	a1,s8
	mv	a3,s6
	jal	ra,__subdf3
	mv	s4,a0
	mv	s8,a1
	beq	s7,s5,lab2
	li	s7,1
	j	lab3
lab2: 	lw	a2,16(sp)
	lw	s8,28(sp)
	mv	a0,s3
	mv	a1,s0
	mv	a3,s6
	jal	ra,__adddf3
	mv	s3,a0
	mv	s0,a1
	beq	s8,s7,lab4
	li	s8,1
	j	lab5
lab4: 	lw	s9,104(sp)
	lw	s4,16(sp)
	addi	s9,s9,-1
	bnez	s9,lab6
	lw	ra,572(sp)
	lw	s0,568(sp)
	lw	s1,564(sp)
	lw	s2,560(sp)
	lw	s3,556(sp)
	lw	s4,552(sp)
	lw	s5,548(sp)
	lw	s6,544(sp)
	lw	s7,540(sp)
	lw	s8,536(sp)
	lw	s9,532(sp)
	lw	s10,528(sp)
	lw	s11,524(sp)
	li	a0,0
	addi	sp,sp,576
	ret
benchmark_body.isra.0:
	blez	a0,lab7
	lui	a1,0x100
	lw	a5,568(a1) # 100238 <init_jk+0x28>
	addi	sp,sp,-592
	lw	a6,572(a1)
	lui	a1,0x100
	sw	a5,56(sp)
	lw	a5,576(a1) # 100240 <init_jk+0x30>
	sw	a6,60(sp)
	lw	a6,580(a1)
	lui	a1,0x100
	sw	a5,64(sp)
	lw	a5,584(a1) # 100248 <init_jk+0x38>
	lui	a2,0x100
	sw	a6,68(sp)
	sw	a5,72(sp)
	lw	a6,588(a1)
	lw	a5,564(a2) # 100234 <init_jk+0x24>
	sw	s4,568(sp)
	lw	s4,560(a2)
	lui	a2,0x100
	sw	a6,76(sp)
	sw	a5,28(sp)
	lw	a6,596(a2) # 100254 <init_jk+0x44>
	lw	a5,592(a2)
	lui	a2,0x100
	sw	s1,580(sp)
	sw	s2,576(sp)
	sw	s9,548(sp)
	sw	a6,84(sp)
	sw	ra,588(sp)
	sw	s0,584(sp)
	sw	s3,572(sp)
	sw	s5,564(sp)
	sw	s6,560(sp)
	sw	s7,556(sp)
	sw	s8,552(sp)
	sw	s10,544(sp)
	sw	s11,540(sp)
	sw	a5,80(sp)
	lw	a5,600(a2) # 100258 <init_jk+0x48>
	lw	a6,604(a2)
	lui	a2,0x100
	sw	a5,88(sp)
	lw	a5,608(a2) # 100260 <init_jk+0x50>
	sw	a6,92(sp)
	lw	a6,612(a2)
	lui	a2,0x100
	sw	a5,96(sp)
	lw	a5,616(a2) # 100268 <init_jk+0x58>
	sw	a6,100(sp)
	lw	a6,620(a2)
	lui	a2,0x100
	sw	a5,104(sp)
	lw	a5,624(a2) # 100270 <init_jk+0x60>
	lui	a3,0x100
	lui	a4,0x100
	sw	a5,112(sp)
	lw	a5,552(a3) # 100228 <init_jk+0x18>
	sw	a6,108(sp)
	lw	a6,628(a2)
	sw	a5,44(sp)
	lw	a5,556(a3)
	sw	a6,116(sp)
	li	s9,0
	sw	a5,48(sp)
	lw	a5,544(a4) # 100220 <init_jk+0x10>
	addi	s2,sp,144
	addi	s1,sp,140
	sw	a5,32(sp)
	lw	a5,548(a4)
	lui	a4,0x100
	sw	a0,124(sp)
	sw	a5,36(sp)
	mv	a5,a4
	sw	a5,120(sp)
lab14: 	li	a2,384
	li	a1,0
	mv	a0,s2
	jal	ra,memset
	lw	s0,28(sp)
	lw	s5,56(sp)
	lw	s6,60(sp)
	lw	a4,64(sp)
	lw	a5,68(sp)
	lw	a2,72(sp)
	lw	a3,76(sp)
	mv	a0,s4
	mv	a1,s0
	mv	a6,s5
	mv	a7,s6
	sw	s2,4(sp)
	sw	s1,0(sp)
	jal	ra,SolveCubic
	lw	t1,140(sp)
	lui	t3,0x100
	sw	s2,4(sp)
	sw	t1,36(t3) # 100024 <soln_cnt0>
	lw	t3,120(sp)
	lw	t1,144(sp)
	sw	s1,0(sp)
	lw	a4,80(sp)
	sw	t1,0(t3)
	lw	t1,148(sp)
	lw	a5,84(sp)
	lw	a2,88(sp)
	sw	t1,4(t3)
	lw	t1,152(sp)
	lw	a3,92(sp)
	mv	a0,s4
	sw	t1,8(t3)
	lw	t1,156(sp)
	mv	a1,s0
	mv	a6,s5
	sw	t1,12(t3)
	lw	t1,160(sp)
	mv	a7,s6
	li	s8,2
	sw	t1,16(t3)
	lw	t1,164(sp)
	mv	s3,s4
	sw	t1,20(t3)
	jal	ra,SolveCubic
	lw	t1,140(sp)
	lui	t3,0x100
	lw	t2,148(sp)
	sw	t1,32(t3) # 100020 <soln_cnt1>
	lw	a6,96(sp)
	lw	t1,144(sp)
	lw	a7,100(sp)
	lw	a4,104(sp)
	lw	a5,108(sp)
	lw	a2,112(sp)
	lw	a3,116(sp)
	lui	t3,0x100
	mv	a0,s4
	mv	a1,s0
	sw	s2,4(sp)
	sw	s1,0(sp)
	sw	t1,24(t3) # 100018 <res1>
	sw	t2,28(t3)
	jal	ra,SolveCubic
	lui	a5,0x100
	lw	a6,632(a5) # 100278 <init_jk+0x68>
	lw	a7,636(a5)
	lui	a5,0x100
	lw	a2,640(a5) # 100280 <init_jk+0x70>
	lw	a3,644(a5)
	mv	a4,s4
	mv	a0,s4
	mv	a5,s0
	mv	a1,s0
	sw	s2,4(sp)
	sw	s1,0(sp)
	jal	ra,SolveCubic
	sw	s9,52(sp)
lab13: 	lw	s10,44(sp)
	lw	s11,48(sp)
	sw	s8,40(sp)
	li	s6,2
	li	s5,1
	mv	s7,s10
	mv	s8,s11
lab11: 	lw	s11,32(sp)
	lw	s10,36(sp)
	li	s9,2
lab9: 	lui	a6,0x100
	lw	a7,652(a6) # 10028c <init_jk+0x7c>
	lw	a6,648(a6)
	mv	a4,s11
	mv	a5,s10
	mv	a2,s7
	mv	a0,s3
	mv	a3,s8
	mv	a1,s0
	sw	s2,4(sp)
	sw	s1,0(sp)
	jal	ra,SolveCubic
	lui	a6,0x100
	lw	a7,660(a6) # 100294 <init_jk+0x84>
	lw	a6,656(a6)
	mv	a4,s11
	mv	a5,s10
	mv	a2,s7
	mv	a0,s3
	mv	a3,s8
	mv	a1,s0
	sw	s2,4(sp)
	sw	s1,0(sp)
	jal	ra,SolveCubic
	lui	a5,0x100
	lw	a2,664(a5) # 100298 <init_jk+0x88>
	lw	a3,668(a5)
	mv	a0,s11
	mv	a1,s10
	jal	ra,__adddf3
	mv	s11,a0
	mv	s10,a1
	beq	s9,s5,lab8
	li	s9,1
	j	lab9
lab8: 	lw	a3,28(sp)
	mv	a0,s7
	mv	a1,s8
	mv	a2,s4
	jal	ra,__subdf3
	mv	s7,a0
	mv	s8,a1
	beq	s6,s5,lab10
	li	s6,1
	j	lab11
lab10: 	lw	a3,28(sp)
	lw	s8,40(sp)
	mv	a0,s3
	mv	a1,s0
	mv	a2,s4
	jal	ra,__adddf3
	mv	s3,a0
	mv	s0,a1
	beq	s8,s6,lab12
	li	s8,1
	j	lab13
lab12: 	lw	s9,52(sp)
	lw	a5,124(sp)
	addi	s9,s9,1
	bne	s9,a5,lab14
	lw	ra,588(sp)
	lw	s0,584(sp)
	lw	s1,580(sp)
	lw	s2,576(sp)
	lw	s3,572(sp)
	lw	s4,568(sp)
	lw	s5,564(sp)
	lw	s6,560(sp)
	lw	s7,556(sp)
	lw	s8,552(sp)
	lw	s9,548(sp)
	lw	s10,544(sp)
	lw	s11,540(sp)
	addi	sp,sp,592
	ret
lab7: 	ret
verify_benchmark:
	lui	a5,0x100
	lw	a4,36(a5) # 100024 <soln_cnt0>
	addi	sp,sp,-32
	sw	s0,24(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	li	a5,3
	li	s0,0
	beq	a4,a5,lab15
lab16: 	lw	ra,28(sp)
	mv	a0,s0
	lw	s0,24(sp)
	lw	s1,20(sp)
	lw	s2,16(sp)
	lw	s3,12(sp)
	lw	s4,8(sp)
	lw	s5,4(sp)
	addi	sp,sp,32
	ret
lab15: 	lui	s2,0x100
	lui	a5,0x100
	mv	s2,s2
	lw	a2,0(s2) # 100000 <res0>
	lw	a3,4(s2)
	lw	a0,672(a5) # 1002a0 <init_jk+0x90>
	lw	a1,676(a5)
	lui	s1,0x80000
	not	s1,s1
	jal	ra,__subdf3
	lui	a5,0x100
	lw	s4,680(a5) # 1002a8 <init_jk+0x98>
	lw	s5,684(a5)
	mv	a4,a0
	and	a5,a1,s1
	mv	a0,a4
	mv	a1,a5
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab16
	lui	a5,0x100
	lw	a2,8(s2)
	lw	a3,12(s2)
	lw	a0,688(a5) # 1002b0 <init_jk+0xa0>
	lw	a1,692(a5)
	jal	ra,__subdf3
	mv	a4,a0
	and	a5,a1,s1
	mv	a2,s4
	mv	a3,s5
	mv	a0,a4
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab16
	lui	s3,0x100
	lw	a2,16(s2)
	lw	a3,20(s2)
	lw	a0,696(s3) # 1002b8 <init_jk+0xa8>
	lw	a1,700(s3)
	jal	ra,__subdf3
	mv	a4,a0
	and	a5,a1,s1
	mv	a2,s4
	mv	a3,s5
	mv	a0,a4
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab16
	lui	a5,0x100
	lw	a4,32(a5) # 100020 <soln_cnt1>
	li	a5,1
	bne	a4,a5,lab16
	lui	a5,0x100
	lw	a2,24(a5) # 100018 <res1>
	lw	a3,28(a5)
	lw	a0,696(s3)
	lw	a1,700(s3)
	jal	ra,__subdf3
	mv	a4,a0
	and	a5,a1,s1
	mv	a2,s4
	mv	a3,s5
	mv	a0,a4
	mv	a1,a5
	jal	ra,__ltdf2
	slti	s0,a0,0
	j	lab16
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
__adddf3:
	li	a0,0
	li	a1,0
	ret
__addsf3:
	li	a0,0
	ret
__addtf3:
	sw	zero,0(a0)
	sw	zero,4(a0)
	sw	zero,8(a0)
	sw	zero,12(a0)
	ret
__divdf3:
	li	a0,0
	li	a1,0
	ret
__divsf3:
	li	a0,0
	ret
__divsi3:
	li	a0,0
	ret
__mulsi3:
	li	a0,0
	ret
__divtf3:
	sw	zero,0(a0)
	sw	zero,4(a0)
	sw	zero,8(a0)
	sw	zero,12(a0)
	ret
__eqdf2:
	li	a0,0
	ret
__eqsf2:
	li	a0,0
	ret
__extenddftf2:
	sw	zero,0(a0)
	sw	zero,4(a0)
	sw	zero,8(a0)
	sw	zero,12(a0)
	ret
__extendsfdf2:
	li	a0,0
	li	a1,0
	ret
__fixdfsi:
	li	a0,0
	ret
__fixsfsi:
	li	a0,0
	ret
__fixunsdfsi:
	li	a0,0
	ret
__fixunssfsi:
	li	a0,0
	ret
__floatsidf:
	li	a0,0
	li	a1,0
	ret
__floatsisf:
	li	a0,0
	ret
__floatunsidf:
	li	a0,0
	li	a1,0
	ret
__floatunsisf:
	li	a0,0
	ret
__gedf2:
	li	a0,0
	ret
__gesf2:
	li	a0,0
	ret
__gtdf2:
	li	a0,0
	ret
__gtsf2:
	li	a0,0
	ret
__ledf2:
	li	a0,0
	ret
__lesf2:
	li	a0,0
	ret
__ltdf2:
	li	a0,0
	ret
__ltsf2:
	li	a0,0
	ret
__lttf2:
	li	a0,0
	ret
__modsi3:
	li	a0,0
	ret
__muldf3:
	li	a0,0
	li	a1,0
	ret
__muldi3:
	li	a0,0
	ret
__mulsf3:
	li	a0,0
	ret
__multf3:
	sw	zero,0(a0)
	sw	zero,4(a0)
	sw	zero,8(a0)
	sw	zero,12(a0)
	ret
__nedf2:
	li	a0,0
	ret
__nesf2:
	li	a0,0
	ret
__subdf3:
	li	a0,0
	li	a1,0
	ret
__subsf3:
	li	a0,0
	ret
__subtf3:
	sw	zero,0(a0)
	sw	zero,4(a0)
	sw	zero,8(a0)
	sw	zero,12(a0)
	ret
__truncdfsf2:
	li	a0,0
	ret
__trunctfdf2:
	li	a0,0
	li	a1,0
	ret
__udivdi3:
	li	a0,0
	ret
__umoddi3:
	li	a0,0
	ret
__umodsi3:
	li	a0,0
	ret
__unorddf2:
	li	a0,0
	ret
__unordsf2:
	li	a0,0
	ret
__riscv_save_0:
	ret
__riscv_save_1:
	ret
__riscv_save_2:
	ret
__riscv_save_3:
	ret
__riscv_save_4:
	ret
__riscv_save_5:
	ret
__riscv_save_6:
	ret
__riscv_save_7:
	ret
__riscv_save_8:
	ret
__riscv_save_9:
	ret
__riscv_save_10:
	ret
__riscv_save_11:
	ret
__riscv_save_12:
	ret
__riscv_restore_0:
	ret
__riscv_restore_1:
	ret
__riscv_restore_2:
	ret
__riscv_restore_3:
	ret
__riscv_restore_4:
	ret
__riscv_restore_5:
	ret
__riscv_restore_6:
	ret
__riscv_restore_7:
	ret
__riscv_restore_8:
	ret
__riscv_restore_9:
	ret
__riscv_restore_10:
	ret
__riscv_restore_11:
	ret
__riscv_restore_12:
	ret
SolveCubic:
	addi	sp,sp,-304
	sw	s6,272(sp)
	sw	s7,268(sp)
	mv	s6,a1
	mv	s7,a0
	mv	a1,a3
	mv	a0,a2
	mv	a3,s6
	mv	a2,s7
	sw	ra,300(sp)
	sw	a6,36(sp)
	sw	a7,32(sp)
	sw	s0,296(sp)
	sw	s1,292(sp)
	mv	s0,a5
	mv	s1,a4
	sw	s2,288(sp)
	sw	s3,284(sp)
	sw	s4,280(sp)
	sw	s5,276(sp)
	sw	s8,264(sp)
	sw	s9,260(sp)
	sw	s10,256(sp)
	sw	s11,252(sp)
	jal	ra,__divdf3
	mv	a5,a1
	mv	a2,a5
	sw	a0,40(sp)
	sw	a1,44(sp)
	mv	a1,a0
	addi	a0,sp,224
	jal	ra,__extenddftf2
	mv	a3,s6
	mv	a2,s7
	mv	a0,s1
	mv	a1,s0
	jal	ra,__divdf3
	lw	s1,224(sp)
	lw	s0,228(sp)
	lw	s8,232(sp)
	lw	s9,236(sp)
	mv	a2,a1
	mv	a1,a0
	addi	a0,sp,224
	jal	ra,__extenddftf2
	addi	a2,sp,192
	addi	a1,sp,208
	addi	a0,sp,224
	lw	s5,224(sp)
	lw	s4,228(sp)
	lw	s3,232(sp)
	lw	s2,236(sp)
	sw	s1,208(sp)
	sw	s0,212(sp)
	sw	s8,216(sp)
	sw	s9,220(sp)
	sw	s1,192(sp)
	sw	s0,196(sp)
	sw	s8,200(sp)
	sw	s9,204(sp)
	jal	ra,__multf3
	lui	a5,0x40008
	lw	a4,224(sp)
	sw	a5,188(sp)
	lw	a5,228(sp)
	addi	a2,sp,176
	addi	a1,sp,192
	addi	a0,sp,208
	lw	s11,232(sp)
	lw	s10,236(sp)
	sw	s5,192(sp)
	sw	s4,196(sp)
	sw	s3,200(sp)
	sw	s2,204(sp)
	sw	a4,12(sp)
	sw	a5,8(sp)
	sw	zero,176(sp)
	sw	zero,180(sp)
	sw	zero,184(sp)
	jal	ra,__multf3
	lw	a5,8(sp)
	lw	a4,12(sp)
	addi	a2,sp,160
	sw	a5,180(sp)
	lw	a5,208(sp)
	addi	a1,sp,176
	addi	a0,sp,192
	sw	a5,160(sp)
	lw	a5,212(sp)
	sw	a4,176(sp)
	sw	s11,184(sp)
	sw	a5,164(sp)
	lw	a5,216(sp)
	sw	s10,188(sp)
	lui	s10,0x40022
	sw	a5,168(sp)
	lw	a5,220(sp)
	sw	a5,172(sp)
	jal	ra,__subtf3
	lw	a5,192(sp)
	addi	a2,sp,144
	addi	a1,sp,160
	sw	a5,160(sp)
	lw	a5,196(sp)
	addi	a0,sp,176
	sw	s10,156(sp)
	sw	a5,164(sp)
	lw	a5,200(sp)
	sw	zero,144(sp)
	sw	zero,148(sp)
	sw	a5,168(sp)
	lw	a5,204(sp)
	sw	zero,152(sp)
	sw	a5,172(sp)
	jal	ra,__divtf3
	lw	a3,188(sp)
	lw	a4,184(sp)
	lw	a5,176(sp)
	addi	a2,sp,192
	addi	a1,sp,208
	addi	a0,sp,224
	sw	a3,16(sp)
	lw	s11,180(sp)
	sw	a4,12(sp)
	sw	a5,8(sp)
	sw	s1,208(sp)
	sw	s0,212(sp)
	sw	s8,216(sp)
	sw	s9,220(sp)
	sw	s1,192(sp)
	sw	s0,196(sp)
	sw	s8,200(sp)
	sw	s9,204(sp)
	jal	ra,__addtf3
	lw	a5,224(sp)
	addi	a2,sp,176
	addi	a1,sp,192
	sw	a5,192(sp)
	lw	a5,228(sp)
	addi	a0,sp,208
	sw	s1,176(sp)
	sw	a5,196(sp)
	lw	a5,232(sp)
	sw	s0,180(sp)
	sw	s8,184(sp)
	sw	a5,200(sp)
	lw	a5,236(sp)
	sw	s9,188(sp)
	sw	a5,204(sp)
	jal	ra,__multf3
	lw	a5,208(sp)
	addi	a2,sp,160
	addi	a1,sp,176
	sw	a5,176(sp)
	lw	a5,212(sp)
	addi	a0,sp,192
	sw	s1,160(sp)
	sw	a5,180(sp)
	lw	a5,216(sp)
	sw	s0,164(sp)
	sw	s8,168(sp)
	sw	a5,184(sp)
	lw	a5,220(sp)
	sw	s9,172(sp)
	sw	a5,188(sp)
	jal	ra,__multf3
	lw	a4,192(sp)
	lw	a5,196(sp)
	lw	t1,200(sp)
	addi	a2,sp,144
	addi	a1,sp,160
	addi	a0,sp,176
	sw	a4,28(sp)
	sw	a5,24(sp)
	sw	t1,20(sp)
	sw	s10,156(sp)
	sw	s1,160(sp)
	lw	s10,204(sp)
	sw	s0,164(sp)
	sw	s8,168(sp)
	sw	s9,172(sp)
	sw	zero,144(sp)
	sw	zero,148(sp)
	sw	zero,152(sp)
	jal	ra,__multf3
	lw	a3,176(sp)
	addi	a2,sp,128
	addi	a1,sp,144
	sw	a3,144(sp)
	lw	a3,180(sp)
	addi	a0,sp,160
	sw	s5,128(sp)
	sw	a3,148(sp)
	lw	a3,184(sp)
	sw	s4,132(sp)
	sw	s3,136(sp)
	sw	a3,152(sp)
	lw	a3,188(sp)
	sw	s2,140(sp)
	sw	a3,156(sp)
	jal	ra,__multf3
	lw	a5,24(sp)
	lw	t1,20(sp)
	lw	a4,28(sp)
	sw	a5,132(sp)
	lw	a5,160(sp)
	addi	a2,sp,112
	addi	a1,sp,128
	sw	a5,112(sp)
	lw	a5,164(sp)
	addi	a0,sp,144
	sw	t1,136(sp)
	sw	a5,116(sp)
	lw	a5,168(sp)
	sw	a4,128(sp)
	sw	s10,140(sp)
	sw	a5,120(sp)
	lw	a5,172(sp)
	sw	a5,124(sp)
	jal	ra,__subtf3
	lw	a6,36(sp)
	lw	a7,32(sp)
	mv	a3,s6
	mv	a0,a6
	mv	a1,a7
	mv	a2,s7
	jal	ra,__divdf3
	mv	a2,a1
	mv	a1,a0
	addi	a0,sp,128
	lw	s5,144(sp)
	lw	s4,148(sp)
	lw	s3,152(sp)
	lw	s2,156(sp)
	jal	ra,__extenddftf2
	lw	a5,128(sp)
	addi	a2,sp,80
	addi	a1,sp,96
	sw	a5,96(sp)
	lw	a5,132(sp)
	addi	a0,sp,112
	sw	zero,80(sp)
	sw	a5,100(sp)
	lw	a5,136(sp)
	sw	zero,84(sp)
	sw	zero,88(sp)
	sw	a5,104(sp)
	lw	a5,140(sp)
	sw	a5,108(sp)
	lui	a5,0x4003b
	sw	a5,92(sp)
	jal	ra,__multf3
	lw	a5,112(sp)
	addi	a2,sp,64
	addi	a1,sp,80
	sw	a5,64(sp)
	lw	a5,116(sp)
	addi	a0,sp,96
	sw	s5,80(sp)
	sw	a5,68(sp)
	lw	a5,120(sp)
	sw	s4,84(sp)
	sw	s3,88(sp)
	sw	a5,72(sp)
	lw	a5,124(sp)
	sw	s2,92(sp)
	sw	a5,76(sp)
	jal	ra,__addtf3
	lw	a5,96(sp)
	addi	a2,sp,48
	addi	a1,sp,64
	sw	a5,64(sp)
	lw	a5,100(sp)
	addi	a0,sp,80
	sw	zero,48(sp)
	sw	a5,68(sp)
	lw	a5,104(sp)
	sw	zero,52(sp)
	sw	zero,56(sp)
	sw	a5,72(sp)
	lw	a5,108(sp)
	sw	a5,76(sp)
	lui	a5,0x4004b
	sw	a5,60(sp)
	jal	ra,__divtf3
	lw	s6,8(sp)
	lw	s7,12(sp)
	lw	s10,16(sp)
	addi	a2,sp,192
	addi	a1,sp,208
	addi	a0,sp,224
	lw	s5,80(sp)
	lw	s4,84(sp)
	lw	s3,88(sp)
	lw	s2,92(sp)
	sw	s6,208(sp)
	sw	s7,216(sp)
	sw	s10,220(sp)
	sw	s6,192(sp)
	sw	s7,200(sp)
	sw	s10,204(sp)
	sw	s11,212(sp)
	sw	s11,196(sp)
	jal	ra,__multf3
	lw	a5,224(sp)
	addi	a2,sp,176
	addi	a1,sp,192
	sw	a5,192(sp)
	lw	a5,228(sp)
	addi	a0,sp,208
	sw	s6,8(sp)
	sw	a5,196(sp)
	lw	a5,232(sp)
	sw	s6,176(sp)
	sw	s7,12(sp)
	sw	a5,200(sp)
	lw	a5,236(sp)
	sw	s7,184(sp)
	sw	s10,16(sp)
	sw	a5,204(sp)
	sw	s10,188(sp)
	sw	s11,180(sp)
	jal	ra,__multf3
	lw	a4,208(sp)
	addi	a2,sp,192
	addi	a1,sp,208
	addi	a0,sp,224
	lw	s10,212(sp)
	lw	s7,216(sp)
	lw	s6,220(sp)
	sw	a4,20(sp)
	sw	s5,208(sp)
	sw	s4,212(sp)
	sw	s3,216(sp)
	sw	s2,220(sp)
	sw	s5,192(sp)
	sw	s4,196(sp)
	sw	s3,200(sp)
	sw	s2,204(sp)
	jal	ra,__multf3
	lw	a5,224(sp)
	lw	a4,20(sp)
	addi	a2,sp,176
	sw	a5,192(sp)
	lw	a5,228(sp)
	addi	a1,sp,192
	addi	a0,sp,208
	sw	a5,196(sp)
	lw	a5,232(sp)
	sw	a4,176(sp)
	sw	s10,180(sp)
	sw	a5,200(sp)
	lw	a5,236(sp)
	sw	s7,184(sp)
	sw	s6,188(sp)
	sw	a5,204(sp)
	jal	ra,__subtf3
	lw	a5,208(sp)
	addi	a0,sp,192
	sw	a5,192(sp)
	lw	a5,212(sp)
	sw	a5,196(sp)
	lw	a5,216(sp)
	sw	a5,200(sp)
	lw	a5,220(sp)
	sw	a5,204(sp)
	jal	ra,__trunctfdf2
	li	a2,0
	li	a3,0
	sw	a0,24(sp)
	sw	a1,28(sp)
	jal	ra,__ledf2
	blez	a0,lab17
	lw	a4,304(sp)
	lw	a0,24(sp)
	lw	a1,28(sp)
	li	a5,1
	sw	a5,0(a4) # 100000 <res0>
	jal	ra,sqrt
	mv	s7,a0
	addi	a0,sp,224
	mv	s1,a1
	sw	s3,232(sp)
	sw	s2,236(sp)
	sw	s5,224(sp)
	sw	s4,228(sp)
	lui	s0,0x80000
	jal	ra,__trunctfdf2
	not	a5,s0
	mv	a4,a0
	and	a5,a1,a5
	mv	a0,a4
	mv	a3,s1
	mv	a1,a5
	mv	a2,s7
	jal	ra,__adddf3
	lui	s6,0x100
	lw	a2,728(s6) # 1002d8 <init_jk+0xc8>
	lw	a3,732(s6)
	jal	ra,pow
	lw	a5,8(sp)
	mv	s6,a0
	addi	a0,sp,224
	sw	a5,224(sp)
	lw	a5,12(sp)
	mv	s1,a1
	sw	s11,228(sp)
	sw	a5,232(sp)
	lw	a5,16(sp)
	sw	a5,236(sp)
	jal	ra,__trunctfdf2
	mv	a3,s1
	mv	a2,s6
	jal	ra,__divdf3
	mv	a3,s1
	mv	a2,s6
	jal	ra,__adddf3
	mv	a5,a1
	mv	s1,a0
	addi	a1,sp,208
	addi	a0,sp,224
	sw	s3,232(sp)
	sw	s2,236(sp)
	mv	s3,a5
	sw	s5,224(sp)
	sw	s4,228(sp)
	sw	zero,208(sp)
	sw	zero,212(sp)
	sw	zero,216(sp)
	sw	zero,220(sp)
	jal	ra,__lttf2
	mv	s2,s3
	bltz	a0,lab18
	xor	s2,s0,s3
lab18: 	lui	a5,0x100
	lw	a2,704(a5) # 1002c0 <init_jk+0xb0>
	lw	a3,708(a5)
	lw	a0,40(sp)
	lw	a1,44(sp)
	jal	ra,__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s1
	mv	a1,s2
	jal	ra,__subdf3
	lw	a5,308(sp)
	sw	a0,0(a5)
	sw	a1,4(a5)
lab19: 	lw	ra,300(sp)
	lw	s0,296(sp)
	lw	s1,292(sp)
	lw	s2,288(sp)
	lw	s3,284(sp)
	lw	s4,280(sp)
	lw	s5,276(sp)
	lw	s6,272(sp)
	lw	s7,268(sp)
	lw	s8,264(sp)
	lw	s9,260(sp)
	lw	s10,256(sp)
	lw	s11,252(sp)
	addi	sp,sp,304
	ret
lab17: 	lw	a2,304(sp)
	lw	a4,20(sp)
	li	a5,3
	sw	a5,0(a2)
	addi	a0,sp,224
	sw	a4,224(sp)
	sw	s10,228(sp)
	sw	s7,232(sp)
	sw	s6,236(sp)
	jal	ra,__trunctfdf2
	jal	ra,sqrt
	mv	a5,a0
	addi	a0,sp,224
	sw	s5,224(sp)
	sw	s4,228(sp)
	sw	s3,232(sp)
	sw	s2,236(sp)
	mv	s3,a5
	mv	s2,a1
	jal	ra,__trunctfdf2
	mv	a2,s3
	mv	a3,s2
	jal	ra,__divdf3
	jal	ra,acos
	lw	s6,8(sp)
	lw	s7,12(sp)
	lw	s10,16(sp)
	mv	s3,a0
	addi	a0,sp,224
	mv	s2,a1
	sw	s6,224(sp)
	sw	s11,228(sp)
	sw	s7,232(sp)
	sw	s10,236(sp)
	jal	ra,__trunctfdf2
	lui	s6,0x100
	mv	s5,a0
	mv	s4,a1
	jal	ra,sqrt
	lw	a2,704(s6) # 1002c0 <init_jk+0xb0>
	lw	a3,708(s6)
	mv	a5,a0
	mv	s7,a1
	mv	a0,s3
	mv	a1,s2
	mv	s10,a5
	jal	ra,__divdf3
	jal	ra,__DTOR_END__
	mv	a4,a0
	mv	a5,a1
	lui	a3,0x40008
	addi	a2,sp,192
	addi	a1,sp,208
	addi	a0,sp,224
	sw	s1,208(sp)
	sw	s0,212(sp)
	mv	s1,a4
	mv	s0,a5
	sw	s8,216(sp)
	sw	s9,220(sp)
	sw	a3,204(sp)
	lui	s9,0x100
	sw	zero,192(sp)
	sw	zero,196(sp)
	sw	zero,200(sp)
	jal	ra,__divtf3
	lw	a2,656(s9) # 100290 <init_jk+0x80>
	lw	a3,660(s9)
	mv	a0,s10
	mv	a1,s7
	jal	ra,__muldf3
	mv	a3,s0
	mv	a2,s1
	jal	ra,__muldf3
	mv	a2,a1
	mv	a1,a0
	addi	a0,sp,224
	lw	s8,224(sp)
	lw	s7,228(sp)
	lw	s1,232(sp)
	lw	s0,236(sp)
	jal	ra,__extenddftf2
	lw	a5,224(sp)
	addi	a2,sp,176
	addi	a1,sp,192
	sw	a5,192(sp)
	lw	a5,228(sp)
	addi	a0,sp,208
	sw	s8,176(sp)
	sw	a5,196(sp)
	lw	a5,232(sp)
	sw	s7,180(sp)
	sw	s1,184(sp)
	sw	a5,200(sp)
	lw	a5,236(sp)
	sw	s0,188(sp)
	sw	a5,204(sp)
	jal	ra,__subtf3
	lw	a5,208(sp)
	addi	a0,sp,192
	sw	a5,192(sp)
	lw	a5,212(sp)
	sw	a5,196(sp)
	lw	a5,216(sp)
	sw	a5,200(sp)
	lw	a5,220(sp)
	sw	a5,204(sp)
	jal	ra,__trunctfdf2
	lw	a3,308(sp)
	sw	a0,0(a3) # 40008000 <_stack+0x3ff00000>
	sw	a1,4(a3)
	mv	a0,s5
	mv	a1,s4
	jal	ra,sqrt
	lui	a3,0x100
	lw	a2,712(a3) # 1002c8 <init_jk+0xb8>
	lw	a3,716(a3)
	mv	a4,a0
	mv	a5,a1
	mv	a0,s3
	mv	a1,s2
	sw	a4,12(sp)
	sw	a5,8(sp)
	jal	ra,__adddf3
	lw	a2,704(s6)
	lw	a3,708(s6)
	jal	ra,__divdf3
	jal	ra,__DTOR_END__
	lw	a4,12(sp)
	lw	a5,8(sp)
	lw	a2,656(s9)
	lw	a3,660(s9)
	mv	s11,a0
	mv	s10,a1
	mv	a0,a4
	mv	a1,a5
	jal	ra,__muldf3
	mv	a3,s10
	mv	a2,s11
	jal	ra,__muldf3
	mv	a2,a1
	mv	a1,a0
	addi	a0,sp,224
	jal	ra,__extenddftf2
	lw	a5,224(sp)
	addi	a2,sp,176
	addi	a1,sp,192
	sw	a5,192(sp)
	lw	a5,228(sp)
	addi	a0,sp,208
	sw	s8,176(sp)
	sw	a5,196(sp)
	lw	a5,232(sp)
	sw	s7,180(sp)
	sw	s1,184(sp)
	sw	a5,200(sp)
	lw	a5,236(sp)
	sw	s0,188(sp)
	sw	a5,204(sp)
	jal	ra,__subtf3
	lw	a5,208(sp)
	addi	a0,sp,192
	sw	a5,192(sp)
	lw	a5,212(sp)
	sw	a5,196(sp)
	lw	a5,216(sp)
	sw	a5,200(sp)
	lw	a5,220(sp)
	sw	a5,204(sp)
	jal	ra,__trunctfdf2
	lw	a3,308(sp)
	sw	a0,8(a3)
	sw	a1,12(a3)
	mv	a0,s5
	mv	a1,s4
	jal	ra,sqrt
	lui	a5,0x100
	lw	a2,720(a5) # 1002d0 <init_jk+0xc0>
	lw	a3,724(a5)
	mv	s5,a0
	mv	s4,a1
	mv	a0,s3
	mv	a1,s2
	jal	ra,__adddf3
	lw	a2,704(s6)
	lw	a3,708(s6)
	jal	ra,__divdf3
	jal	ra,__DTOR_END__
	lw	a2,656(s9)
	lw	a3,660(s9)
	mv	s3,a0
	mv	s2,a1
	mv	a0,s5
	mv	a1,s4
	jal	ra,__muldf3
	mv	a3,s2
	mv	a2,s3
	jal	ra,__muldf3
	mv	a2,a1
	mv	a1,a0
	addi	a0,sp,224
	jal	ra,__extenddftf2
	lw	a5,224(sp)
	addi	a2,sp,176
	addi	a1,sp,192
	sw	a5,192(sp)
	lw	a5,228(sp)
	addi	a0,sp,208
	sw	s8,176(sp)
	sw	a5,196(sp)
	lw	a5,232(sp)
	sw	s7,180(sp)
	sw	s1,184(sp)
	sw	a5,200(sp)
	lw	a5,236(sp)
	sw	s0,188(sp)
	sw	a5,204(sp)
	jal	ra,__subtf3
	lw	a5,208(sp)
	addi	a0,sp,192
	sw	a5,192(sp)
	lw	a5,212(sp)
	sw	a5,196(sp)
	lw	a5,216(sp)
	sw	a5,200(sp)
	lw	a5,220(sp)
	sw	a5,204(sp)
	jal	ra,__trunctfdf2
	lw	a5,308(sp)
	sw	a0,16(a5)
	sw	a1,20(a5)
	j	lab19
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

res0:
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
res1:
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
soln_cnt1:
	.4byte	0x0000
	.4byte	0x0000
soln_cnt0:
	.4byte	0x0000
	.4byte	0x0000
_impure_ptr:
	.4byte	0x0000
	.4byte	0x0000
__ctype_ptr__:
	.4byte	0x0000
	.4byte	0x0000
_ctype_:
	.4byte	0x0000
	.4byte	0x0000
__errno:
	.4byte	0x0000
	.4byte	0x0000
__locale_ctype_ptr:
	.4byte	0x0000
	.4byte	0x0000


	.section .rodata

npio2_hw_4:
	.4byte	0x0000
	.4byte	0x0000
npio2_hw:
	.4byte	0x3ff921fb
	.4byte	0x400921fb
	.2byte	0xd97c
	.2byte	0x4012
	.4byte	0x401921fb
	.2byte	0x6a7a
	.byte	0x1f, 0x40, 0x7c, 0xd9, 0x22, 0x40
	.4byte	0x4025fdbb
	.4byte	0x402921fb
	.2byte	0x463a
	.2byte	0x402c
	.2byte	0x6a7a
	.4byte	0x475c402f
	.2byte	0x4031
	.2byte	0xd97c
	.2byte	0x4032
	.2byte	0x6b9c
	.2byte	0x4034
	.4byte	0x4035fdbb
	.4byte	0x40378fdb
	.4byte	0x403921fb
	.4byte	0x403ab41b
	.2byte	0x463a
	.2byte	0x403c
	.2byte	0xd85a
	.2byte	0x403d
	.2byte	0x6a7a
	.8byte	0x475c40407e4c403f
	.2byte	0x4041
	.2byte	0x106c
	.2byte	0x4042
	.2byte	0xd97c
	.2byte	0x4042
	.2byte	0xa28c
	.4byte	0x6b9c4043
	.2byte	0x4044
	.2byte	0x34ac
	.2byte	0x4045
	.4byte	0x4045fdbb
	.4byte	0x4046c6cb
	.4byte	0x40478fdb
	.4byte	0x404858eb
	.4byte	0x404921fb
two_over_pi:
	.4byte	0xa2f983
	.2byte	0x4e44
	.2byte	0x6e
	.2byte	0x29fc
	.2byte	0x15
	.2byte	0x57d1
	.4byte	0x34dd0027
	.2byte	0xf5
	.2byte	0xdb62
	.2byte	0xc0
	.2byte	0x993c
	.2byte	0x95
	.2byte	0x9041
	.4byte	0x51630043
	.2byte	0xfe
	.4byte	0xabdebb
	.4byte	0x00c561b7
	.2byte	0x6e3a
	.2byte	0x24
	.2byte	0x4dd2
	.2byte	0x42
	.2byte	0x649
	.2byte	0xe0
	.2byte	0xea09
	.2byte	0x2e
	.2byte	0x921c
	.2byte	0xd1
	.4byte	0xfe1deb
	.2byte	0xb129
	.2byte	0x1c
	.2byte	0x3ee8
	.4byte	0x35f500a7
	.2byte	0x82
	.2byte	0xbb44
	.2byte	0x2e
	.2byte	0xe99c
	.2byte	0x84
	.2byte	0x26b4
	.2byte	0x70
	.2byte	0x7e41
	.byte	0x5f, 0x00, 0xd6, 0x91, 0x39, 0x00
	.4byte	0x398353
	.2byte	0xf49c
	.2byte	0x39
	.4byte	0x845f8b
	.2byte	0xf928
	.2byte	0xbd
	.2byte	0x1ff8
	.4byte	0xffde003b
	.4byte	0x980f0097
	.2byte	0x5
	.2byte	0x2f11
	.4byte	0x5a0a00ef
	.4byte	0x1f6d008b
	.2byte	0x6d
	.4byte	0x367ecf
	.2byte	0xcb09
	.4byte	0x4f460027
	.4byte	0x669e00b7
	.8byte	0x27ba005fea2d003f
	.2byte	0x75
	.2byte	0xebe5
	.4byte	0x7b3d00c7
	.2byte	0xf1
	.4byte	0x739f7
	.2byte	0x5292
	.2byte	0x8a
	.4byte	0xea6bfb
	.byte	0x1f, 0xb1, 0x5f, 0x00, 0x08, 0x5d
	.2byte	0x8d
	.2byte	0x330
	.2byte	0x56
	.4byte	0x46fc7b
	.2byte	0xabf0
	.4byte	0xbc20006b
	.4byte	0xf43600cf
	.2byte	0x9a
	.4byte	0x1da9e3
	.2byte	0x615e
	.2byte	0x91
	.2byte	0x1b08
	.2byte	0xe6
	.2byte	0x9985
	.2byte	0x65
	.2byte	0x14a0
	.byte	0x5f, 0x00, 0x8d, 0x40, 0x68, 0x00
	.2byte	0xd880
	.2byte	0xff
	.4byte	0x4d7327
	.2byte	0x606
	.2byte	0x31
	.2byte	0x56ca
	.2byte	0x15
	.2byte	0xa8c9
	.4byte	0xe27b0073
	.2byte	0x60
	.4byte	0xc08c6b
	.4byte	0x0000
	.4byte	0x0000
PIo2:
	.4byte	0x0000
	.2byte	0x4000
	.4byte	0x3ff921fb
	.4byte	0x0000
	.4byte	0x0000
	.2byte	0x442d
	.2byte	0x3e74
	.4byte	0x0000
	.2byte	0x8000
	.2byte	0x4698
	.2byte	0x3cf8
	.4byte	0x0000
	.2byte	0x6000
	.2byte	0xcc51
	.2byte	0x3b78
	.4byte	0x0000
	.2byte	0x8000
	.4byte	0x39f01b83
	.4byte	0x0000
	.2byte	0x4000
	.2byte	0x2520
	.2byte	0x387a
	.4byte	0x0000
	.2byte	0x8000
	.2byte	0x8222
	.4byte	0x36e3
	.4byte	0x0000
	.2byte	0xf31d
	.2byte	0x3569
init_jk:
	.2byte	0x2
	.4byte	0x0000
	.4byte	0x00000003
	.2byte	0x4
	.4byte	0x0000
	.2byte	0x6
	.4byte	0x0000
