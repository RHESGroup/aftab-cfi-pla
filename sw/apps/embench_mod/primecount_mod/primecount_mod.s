	.text
	.globl  main
	.type  main, @function

countPrimes:
	addi	sp,sp,-336
	li	a5,2
	sw	a5,0(sp)
	li	a5,4
	sw	a5,168(sp)
	li	a7,2
	li	a4,3
	li	a0,1
	li	t1,1
	li	t3,41
lab6: 	mul	a5,a7,a7
	bge	a4,a5,lab0
	addi	a7,a7,-1
	mv	a1,sp
	addi	a2,sp,168
	li	a6,0
lab5: 	lw	a3,0(a1)
	blt	a7,a3,lab1
	lw	a5,0(a2)
	bge	a5,a4,lab2
lab3: 	add	a5,a5,a3
	blt	a5,a4,lab3
	sw	a5,0(a2)
lab2: 	beq	a4,a5,lab4
	addi	a6,a6,1
	addi	a1,a1,4
	addi	a2,a2,4
	bne	t1,a6,lab5
	addi	sp,sp,336
	ret
lab0: 	addi	a7,a7,1
	j	lab6
lab1: 	blt	t3,t1,lab7
	mul	a3,a4,a4
	slli	a5,t1,0x2
	addi	a5,a5,336
	add	a5,a5,sp
	sw	a4,-336(a5)
	addi	t1,t1,1
	sw	a3,-168(a5)
lab7: 	addi	a0,a0,1
lab4: 	addi	a4,a4,1
	j	lab6
benchmark_body.constprop.0:
	j	countPrimes
benchmark_body.isra.0:
	blez	a0,lab8
	addi	sp,sp,-16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	mv	s1,a0
	li	s0,0
lab9: 	addi	s0,s0,1
	jal	ra,countPrimes
	bne	s0,s1,lab9
	lw	ra,12(sp)
	lw	s0,8(sp)
	lw	s1,4(sp)
	addi	sp,sp,16
	ret
lab8: 	ret
warm_caches:
	j	benchmark_body.isra.0
benchmark:
	j	benchmark_body.constprop.0
initialise_benchmark:
	ret
verify_benchmark:
	lui	a5,0xfffff
	addi	a5,a5,584 # fffff248 <_stack+0xffef7248>
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
