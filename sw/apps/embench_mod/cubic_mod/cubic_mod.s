	.text
	.globl  main
	.type  main, @function

benchmark_body.constprop.0:
	lui	a2,0x100
	lw	a1,880(a2) # 100370 <init_jk+0x28>
	lw	a2,884(a2)
	addi	sp,sp,-576
	sw	a1,40(sp)
	sw	a2,44(sp)
	lui	a2,0x100
	lw	a1,888(a2) # 100378 <init_jk+0x30>
	lw	a2,892(a2)
	lui	a3,0x100
	sw	a1,48(sp)
	sw	a2,52(sp)
	lui	a2,0x100
	lw	a1,896(a2) # 100380 <init_jk+0x38>
	lw	a2,900(a2)
	sw	s6,544(sp)
	sw	s7,540(sp)
	lw	s6,872(a3) # 100368 <init_jk+0x20>
	lw	s7,876(a3)
	lui	a3,0x100
	sw	a2,60(sp)
	lw	a2,904(a3) # 100388 <init_jk+0x40>
	lw	a3,908(a3)
	sw	s2,560(sp)
	sw	s5,548(sp)
	sw	a3,68(sp)
	lui	a3,0x100
	sw	s9,532(sp)
	sw	a2,64(sp)
	sw	ra,572(sp)
	lw	a2,912(a3) # 100390 <init_jk+0x48>
	sw	s0,568(sp)
	sw	s1,564(sp)
	sw	s3,556(sp)
	sw	s4,552(sp)
	sw	s8,536(sp)
	sw	s10,528(sp)
	sw	s11,524(sp)
	sw	a1,56(sp)
	lw	a3,916(a3)
	sw	a2,72(sp)
	lui	a4,0x100
	sw	a3,76(sp)
	lui	a3,0x100
	lw	a2,920(a3) # 100398 <init_jk+0x50>
	lw	a3,924(a3)
	lui	a5,0x100
	sw	a2,80(sp)
	sw	a3,84(sp)
	lui	a3,0x100
	lw	a2,928(a3) # 1003a0 <init_jk+0x58>
	lw	a3,932(a3)
	li	s5,10
	sw	a2,88(sp)
	sw	a3,92(sp)
	lui	a3,0x100
	lw	a2,936(a3) # 1003a8 <init_jk+0x60>
	lw	a3,940(a3)
	addi	s2,sp,128
	sw	a2,96(sp)
	sw	a3,100(sp)
	lw	a3,864(a4) # 100360 <init_jk+0x18>
	lw	a4,868(a4)
	addi	s9,sp,124
	sw	a3,32(sp)
	sw	a4,36(sp)
	lw	a4,856(a5) # 100358 <init_jk+0x10>
	lw	a5,860(a5)
	sw	s5,104(sp)
	sw	a4,20(sp)
	sw	a5,24(sp)
	lui	a5,0x101
	addi	a5,a5,-1368 # 100aa8 <res0>
	sw	a5,108(sp)
lab4: 	li	a2,384
	li	a1,0
	mv	a0,s2
	jal	ra,memset
	lw	s0,40(sp)
	lw	s1,44(sp)
	lw	a4,48(sp)
	lw	a5,52(sp)
	lw	a2,56(sp)
	lw	a3,60(sp)
	mv	a0,s6
	mv	a1,s7
	mv	a6,s0
	mv	a7,s1
	sw	s2,4(sp)
	sw	s9,0(sp)
	jal	ra,SolveCubic
	lw	t1,124(sp)
	lui	t3,0x101
	sw	s2,4(sp)
	sw	t1,-1332(t3) # 100acc <soln_cnt0>
	lw	t3,108(sp)
	lw	t1,128(sp)
	sw	s9,0(sp)
	lw	a4,64(sp)
	sw	t1,0(t3)
	lw	t1,132(sp)
	lw	a5,68(sp)
	lw	a2,72(sp)
	sw	t1,4(t3)
	lw	t1,136(sp)
	lw	a3,76(sp)
	mv	a0,s6
	sw	t1,8(t3)
	lw	t1,140(sp)
	mv	a1,s7
	mv	a6,s0
	sw	t1,12(t3)
	lw	t1,144(sp)
	mv	a7,s1
	mv	s4,s6
	sw	t1,16(t3)
	lw	t1,148(sp)
	mv	s3,s7
	sw	t1,20(t3)
	jal	ra,SolveCubic
	lw	t1,124(sp)
	lui	t3,0x101
	lw	t2,132(sp)
	sw	t1,-1336(t3) # 100ac8 <soln_cnt1>
	lw	a6,80(sp)
	lw	t1,128(sp)
	lw	a7,84(sp)
	lw	a4,88(sp)
	lw	a5,92(sp)
	lw	a2,96(sp)
	lw	a3,100(sp)
	lui	t3,0x101
	mv	a0,s6
	mv	a1,s7
	sw	s2,4(sp)
	sw	s9,0(sp)
	sw	t1,-1344(t3) # 100ac0 <res1>
	sw	t2,-1340(t3)
	jal	ra,SolveCubic
	lui	a5,0x100
	lw	a6,944(a5) # 1003b0 <init_jk+0x68>
	lw	a7,948(a5)
	lui	a5,0x100
	lw	a2,952(a5) # 1003b8 <init_jk+0x70>
	lw	a3,956(a5)
	mv	a4,s6
	mv	a5,s7
	mv	a0,s6
	mv	a1,s7
	sw	s2,4(sp)
	sw	s9,0(sp)
	jal	ra,SolveCubic
	li	a5,2
	sw	a5,28(sp)
	sw	s6,16(sp)
lab6: 	lw	s1,32(sp)
	lw	s0,36(sp)
	li	s10,2
	li	s8,1
lab5: 	lw	s11,20(sp)
	lw	s6,24(sp)
	li	s5,2
lab1: 	lui	a6,0x100
	lw	a7,964(a6) # 1003c4 <init_jk+0x7c>
	lw	a6,960(a6)
	mv	a4,s11
	mv	a5,s6
	mv	a2,s1
	mv	a0,s4
	mv	a3,s0
	mv	a1,s3
	sw	s2,4(sp)
	sw	s9,0(sp)
	jal	ra,SolveCubic
	lui	a6,0x100
	lw	a7,972(a6) # 1003cc <init_jk+0x84>
	lw	a6,968(a6)
	mv	a4,s11
	mv	a5,s6
	mv	a2,s1
	mv	a0,s4
	mv	a3,s0
	mv	a1,s3
	sw	s2,4(sp)
	sw	s9,0(sp)
	jal	ra,SolveCubic
	lui	a5,0x100
	lw	a2,976(a5) # 1003d0 <init_jk+0x88>
	lw	a3,980(a5)
	mv	a0,s11
	mv	a1,s6
	jal	ra,__adddf3
	mv	s11,a0
	mv	s6,a1
	beq	s5,s8,lab0
	li	s5,1
	j	lab1
lab0: 	lw	s6,16(sp)
	mv	a0,s1
	mv	a1,s0
	mv	a2,s6
	mv	a3,s7
	jal	ra,__subdf3
	mv	s1,a0
	mv	s0,a1
	bne	s10,s5,lab2
	mv	a0,s4
	mv	a1,s3
	mv	a2,s6
	mv	a3,s7
	jal	ra,__adddf3
	lw	a5,28(sp)
	mv	s4,a0
	mv	s3,a1
	bne	a5,s10,lab3
	lw	a5,104(sp)
	addi	a5,a5,-1
	sw	a5,104(sp)
	bnez	a5,lab4
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
lab2: 	li	s10,1
	j	lab5
lab3: 	li	a5,1
	sw	a5,28(sp)
	j	lab6
benchmark_body.isra.0:
	addi	sp,sp,-592
	sw	ra,588(sp)
	sw	s0,584(sp)
	sw	s1,580(sp)
	sw	s2,576(sp)
	sw	s3,572(sp)
	sw	s4,568(sp)
	sw	s5,564(sp)
	sw	s6,560(sp)
	sw	s7,556(sp)
	sw	s8,552(sp)
	sw	s9,548(sp)
	sw	s10,544(sp)
	sw	s11,540(sp)
	sw	a0,120(sp)
	blez	a0,lab7
	lui	a2,0x100
	lw	a1,880(a2) # 100370 <init_jk+0x28>
	lw	a2,884(a2)
	lui	a3,0x100
	sw	a1,56(sp)
	sw	a2,60(sp)
	lui	a2,0x100
	lw	a1,888(a2) # 100378 <init_jk+0x30>
	lw	a2,892(a2)
	lw	s6,872(a3) # 100368 <init_jk+0x20>
	sw	a1,64(sp)
	sw	a2,68(sp)
	lui	a2,0x100
	lw	a1,896(a2) # 100380 <init_jk+0x38>
	lw	a2,900(a2)
	lw	s7,876(a3)
	lui	a3,0x100
	sw	a2,76(sp)
	lw	a2,904(a3) # 100388 <init_jk+0x40>
	lw	a3,908(a3)
	lui	a4,0x100
	sw	a2,80(sp)
	sw	a3,84(sp)
	lui	a3,0x100
	lw	a2,912(a3) # 100390 <init_jk+0x48>
	lw	a3,916(a3)
	sw	a1,72(sp)
	sw	a2,88(sp)
	sw	a3,92(sp)
	lui	a3,0x100
	lw	a2,920(a3) # 100398 <init_jk+0x50>
	lw	a3,924(a3)
	lui	a5,0x100
	sw	a2,96(sp)
	sw	a3,100(sp)
	lui	a3,0x100
	lw	a2,928(a3) # 1003a0 <init_jk+0x58>
	lw	a3,932(a3)
	li	s5,0
	sw	a2,104(sp)
	sw	a3,108(sp)
	lui	a3,0x100
	lw	a2,936(a3) # 1003a8 <init_jk+0x60>
	lw	a3,940(a3)
	addi	s2,sp,144
	sw	a2,112(sp)
	sw	a3,116(sp)
	lw	a3,864(a4) # 100360 <init_jk+0x18>
	lw	a4,868(a4)
	addi	s9,sp,140
	sw	a3,44(sp)
	sw	a4,48(sp)
	lw	a4,856(a5) # 100358 <init_jk+0x10>
	lw	a5,860(a5)
	sw	s5,52(sp)
	sw	a4,32(sp)
	sw	a5,36(sp)
	lui	a5,0x101
	addi	a5,a5,-1368 # 100aa8 <res0>
	sw	a5,124(sp)
lab12: 	li	a2,384
	li	a1,0
	mv	a0,s2
	jal	ra,memset
	lw	s0,56(sp)
	lw	s1,60(sp)
	lw	a4,64(sp)
	lw	a5,68(sp)
	lw	a2,72(sp)
	lw	a3,76(sp)
	mv	a0,s6
	mv	a1,s7
	mv	a6,s0
	mv	a7,s1
	sw	s2,4(sp)
	sw	s9,0(sp)
	jal	ra,SolveCubic
	lw	t1,140(sp)
	lui	t3,0x101
	sw	s2,4(sp)
	sw	t1,-1332(t3) # 100acc <soln_cnt0>
	lw	t3,124(sp)
	lw	t1,144(sp)
	sw	s9,0(sp)
	lw	a4,80(sp)
	sw	t1,0(t3)
	lw	t1,148(sp)
	lw	a5,84(sp)
	lw	a2,88(sp)
	sw	t1,4(t3)
	lw	t1,152(sp)
	lw	a3,92(sp)
	mv	a0,s6
	sw	t1,8(t3)
	lw	t1,156(sp)
	mv	a1,s7
	mv	a6,s0
	sw	t1,12(t3)
	lw	t1,160(sp)
	mv	a7,s1
	mv	s4,s6
	sw	t1,16(t3)
	lw	t1,164(sp)
	mv	s3,s7
	sw	t1,20(t3)
	jal	ra,SolveCubic
	lw	t1,140(sp)
	lui	t3,0x101
	lw	t2,148(sp)
	sw	t1,-1336(t3) # 100ac8 <soln_cnt1>
	lw	a6,96(sp)
	lw	t1,144(sp)
	lw	a7,100(sp)
	lw	a4,104(sp)
	lw	a5,108(sp)
	lw	a2,112(sp)
	lw	a3,116(sp)
	lui	t3,0x101
	mv	a0,s6
	mv	a1,s7
	sw	s2,4(sp)
	sw	s9,0(sp)
	sw	t1,-1344(t3) # 100ac0 <res1>
	sw	t2,-1340(t3)
	jal	ra,SolveCubic
	lui	a5,0x100
	lw	a6,944(a5) # 1003b0 <init_jk+0x68>
	lw	a7,948(a5)
	lui	a5,0x100
	lw	a2,952(a5) # 1003b8 <init_jk+0x70>
	lw	a3,956(a5)
	mv	a4,s6
	mv	a5,s7
	mv	a0,s6
	mv	a1,s7
	sw	s2,4(sp)
	sw	s9,0(sp)
	jal	ra,SolveCubic
	li	a5,2
	sw	a5,40(sp)
	sw	s6,28(sp)
lab14: 	lw	s1,44(sp)
	lw	s0,48(sp)
	li	s10,2
	li	s8,1
lab13: 	lw	s11,32(sp)
	lw	s6,36(sp)
	li	s5,2
lab9: 	lui	a6,0x100
	lw	a7,964(a6) # 1003c4 <init_jk+0x7c>
	lw	a6,960(a6)
	mv	a4,s11
	mv	a5,s6
	mv	a2,s1
	mv	a0,s4
	mv	a3,s0
	mv	a1,s3
	sw	s2,4(sp)
	sw	s9,0(sp)
	jal	ra,SolveCubic
	lui	a6,0x100
	lw	a7,972(a6) # 1003cc <init_jk+0x84>
	lw	a6,968(a6)
	mv	a4,s11
	mv	a5,s6
	mv	a2,s1
	mv	a0,s4
	mv	a3,s0
	mv	a1,s3
	sw	s2,4(sp)
	sw	s9,0(sp)
	jal	ra,SolveCubic
	lui	a5,0x100
	lw	a2,976(a5) # 1003d0 <init_jk+0x88>
	lw	a3,980(a5)
	mv	a0,s11
	mv	a1,s6
	jal	ra,__adddf3
	mv	s11,a0
	mv	s6,a1
	beq	s5,s8,lab8
	li	s5,1
	j	lab9
lab8: 	lw	s6,28(sp)
	mv	a0,s1
	mv	a1,s0
	mv	a2,s6
	mv	a3,s7
	jal	ra,__subdf3
	mv	s1,a0
	mv	s0,a1
	bne	s10,s5,lab10
	mv	a0,s4
	mv	a1,s3
	mv	a2,s6
	mv	a3,s7
	jal	ra,__adddf3
	lw	a5,40(sp)
	mv	s4,a0
	mv	s3,a1
	bne	a5,s10,lab11
	lw	a5,52(sp)
	lw	a4,120(sp)
	addi	a5,a5,1
	sw	a5,52(sp)
	bne	a5,a4,lab12
lab7: 	lw	ra,588(sp)
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
lab10: 	li	s10,1
	j	lab13
lab11: 	li	a5,1
	sw	a5,40(sp)
	j	lab14
verify_benchmark:
	lui	a5,0x101
	lw	a4,-1332(a5) # 100acc <soln_cnt0>
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
lab15: 	lui	s2,0x101
	lui	a5,0x100
	addi	s2,s2,-1368 # 100aa8 <res0>
	lw	a2,0(s2)
	lw	a3,4(s2)
	lw	a0,984(a5) # 1003d8 <init_jk+0x90>
	lw	a1,988(a5)
	lui	s1,0x80000
	not	s1,s1
	jal	ra,__subdf3
	lui	a5,0x100
	lw	s4,992(a5) # 1003e0 <init_jk+0x98>
	lw	s5,996(a5)
	mv	a4,a0
	and	a5,a1,s1
	mv	a0,a4
	mv	a1,a5
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ledf2
	bgez	a0,lab16
	lui	a5,0x100
	lw	a2,8(s2)
	lw	a3,12(s2)
	lw	a0,1000(a5) # 1003e8 <init_jk+0xa0>
	lw	a1,1004(a5)
	jal	ra,__subdf3
	mv	a4,a0
	and	a5,a1,s1
	mv	a2,s4
	mv	a3,s5
	mv	a0,a4
	mv	a1,a5
	jal	ra,__ledf2
	bgez	a0,lab16
	lui	s3,0x100
	lw	a2,16(s2)
	lw	a3,20(s2)
	lw	a0,1008(s3) # 1003f0 <init_jk+0xa8>
	lw	a1,1012(s3)
	jal	ra,__subdf3
	mv	a4,a0
	and	a5,a1,s1
	mv	a2,s4
	mv	a3,s5
	mv	a0,a4
	mv	a1,a5
	jal	ra,__ledf2
	bgez	a0,lab16
	lui	a5,0x101
	lw	a4,-1336(a5) # 100ac8 <soln_cnt1>
	li	a5,1
	bne	a4,a5,lab16
	lui	a5,0x101
	lw	a2,-1344(a5) # 100ac0 <res1>
	lw	a3,-1340(a5)
	lw	a0,1008(s3)
	lw	a1,1012(s3)
	jal	ra,__subdf3
	mv	a4,a0
	and	a5,a1,s1
	mv	a2,s4
	mv	a3,s5
	mv	a0,a4
	mv	a1,a5
	jal	ra,__ledf2
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
	lw	s11,232(sp)
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
	sw	s11,216(sp)
	sw	s9,220(sp)
	sw	s1,192(sp)
	sw	s0,196(sp)
	sw	s11,200(sp)
	sw	s9,204(sp)
	jal	ra,__multf3
	lui	a5,0x40008
	lw	a4,224(sp)
	sw	a5,188(sp)
	lw	a5,228(sp)
	addi	a2,sp,176
	addi	a1,sp,192
	addi	a0,sp,208
	lw	s8,232(sp)
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
	sw	s8,184(sp)
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
	lw	a3,184(sp)
	lw	a4,180(sp)
	lw	a5,176(sp)
	addi	a2,sp,192
	addi	a1,sp,208
	addi	a0,sp,224
	sw	a3,16(sp)
	lw	s8,188(sp)
	sw	a4,12(sp)
	sw	a5,8(sp)
	sw	s1,208(sp)
	sw	s0,212(sp)
	sw	s11,216(sp)
	sw	s9,220(sp)
	sw	s1,192(sp)
	sw	s0,196(sp)
	sw	s11,200(sp)
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
	sw	s11,184(sp)
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
	sw	s11,168(sp)
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
	sw	s11,168(sp)
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
	sw	s7,212(sp)
	sw	s10,216(sp)
	sw	s6,192(sp)
	sw	s7,196(sp)
	sw	s10,200(sp)
	sw	s8,220(sp)
	sw	s8,204(sp)
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
	sw	s7,180(sp)
	sw	s10,16(sp)
	sw	a5,204(sp)
	sw	s10,184(sp)
	sw	s8,188(sp)
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
	sw	a5,0(a4)
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
	lw	a2,1040(s6) # 100410 <init_jk+0xc8>
	lw	a3,1044(s6)
	jal	ra,pow
	lw	a5,8(sp)
	mv	s6,a0
	addi	a0,sp,224
	sw	a5,224(sp)
	lw	a5,12(sp)
	mv	s1,a1
	sw	s8,236(sp)
	sw	a5,228(sp)
	lw	a5,16(sp)
	sw	a5,232(sp)
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
	jal	ra,__letf2
	mv	s2,s3
	bltz	a0,lab18
	xor	s2,s0,s3
lab18: 	lui	a5,0x100
	lw	a2,1016(a5) # 1003f8 <init_jk+0xb0>
	lw	a3,1020(a5)
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
	sw	s7,228(sp)
	sw	s10,232(sp)
	sw	s8,236(sp)
	jal	ra,__trunctfdf2
	lui	s6,0x100
	mv	s5,a0
	mv	s4,a1
	jal	ra,sqrt
	lw	a2,1016(s6) # 1003f8 <init_jk+0xb0>
	lw	a3,1020(s6)
	mv	s8,a0
	mv	s7,a1
	mv	a0,s3
	mv	a1,s2
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
	sw	s11,216(sp)
	sw	s9,220(sp)
	sw	a3,204(sp)
	lui	s9,0x100
	sw	zero,192(sp)
	sw	zero,196(sp)
	sw	zero,200(sp)
	jal	ra,__divtf3
	lw	a2,968(s9) # 1003c8 <init_jk+0x80>
	lw	a3,972(s9)
	mv	a0,s8
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
	sw	a0,0(a3) # 40008000 <_stack+0x3fef8000>
	sw	a1,4(a3)
	mv	a0,s5
	mv	a1,s4
	jal	ra,sqrt
	lui	a3,0x100
	lw	a2,1024(a3) # 100400 <init_jk+0xb8>
	lw	a3,1028(a3)
	mv	a4,a0
	mv	a5,a1
	mv	a0,s3
	mv	a1,s2
	sw	a4,12(sp)
	sw	a5,8(sp)
	jal	ra,__adddf3
	lw	a2,1016(s6)
	lw	a3,1020(s6)
	jal	ra,__divdf3
	jal	ra,__DTOR_END__
	lw	a4,12(sp)
	lw	a5,8(sp)
	lw	a2,968(s9)
	lw	a3,972(s9)
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
	lw	a2,1032(a5) # 100408 <init_jk+0xc0>
	lw	a3,1036(a5)
	mv	s5,a0
	mv	s4,a1
	mv	a0,s3
	mv	a1,s2
	jal	ra,__adddf3
	lw	a2,1016(s6)
	lw	a3,1020(s6)
	jal	ra,__divdf3
	jal	ra,__DTOR_END__
	lw	a2,968(s9)
	lw	a3,972(s9)
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
__adddf3:
	lui	a6,0x100
	addi	a6,a6,-1 # fffff <__errno+0xf3d6f>
	addi	sp,sp,-32
	and	a7,a6,a1
	srli	a4,a1,0x14
	srli	a5,a0,0x1d
	and	a6,a6,a3
	sw	s0,24(sp)
	andi	s0,a4,2047
	slli	a4,a7,0x3
	srli	a7,a3,0x14
	slli	a6,a6,0x3
	sw	s1,20(sp)
	or	a5,a5,a4
	andi	a7,a7,2047
	srli	a4,a2,0x1d
	sw	ra,28(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	srli	s1,a1,0x1f
	srli	a3,a3,0x1f
	or	a4,a4,a6
	slli	a0,a0,0x3
	slli	a2,a2,0x3
	sub	a6,s0,a7
	bne	s1,a3,lab20
	blez	a6,lab21
	bnez	a7,lab22
	or	a3,a4,a2
	beqz	a3,lab23
	addi	a1,a6,-1
	bnez	a1,lab24
	add	a2,a0,a2
	add	a4,a5,a4
	sltu	a5,a2,a0
	add	a5,a4,a5
	mv	a0,a2
lab38: 	li	s0,1
	j	lab25
lab24: 	li	a3,2047
	bne	a6,a3,lab26
lab40: 	li	s0,2047
	j	lab27
lab22: 	li	a3,2047
	beq	s0,a3,lab27
	lui	a3,0x800
	or	a4,a4,a3
	mv	a1,a6
lab26: 	li	a3,56
	blt	a3,a1,lab28
	li	a3,31
	blt	a3,a1,lab29
	li	a6,32
	sub	a6,a6,a1
	sll	a3,a4,a6
	srl	a7,a2,a1
	sll	a6,a2,a6
	or	a3,a3,a7
	snez	a6,a6
	or	a3,a3,a6
	srl	a1,a4,a1
lab32: 	add	a3,a3,a0
	add	a1,a1,a5
	sltu	a5,a3,a0
	add	a5,a1,a5
	mv	a0,a3
lab25: 	lui	a4,0x800
	and	a4,a5,a4
	beqz	a4,lab27
	addi	s0,s0,1 # 80000001 <_stack+0x7fef0001>
	li	a4,2047
	beq	s0,a4,lab30
	lui	a4,0xff800
	addi	a4,a4,-1 # ff7fffff <_stack+0xff6effff>
	and	a5,a5,a4
	srli	a4,a0,0x1
	andi	a0,a0,1
	or	a4,a4,a0
	slli	a0,a5,0x1f
	or	a0,a0,a4
	srli	a5,a5,0x1
	j	lab27
lab29: 	addi	a3,a1,-32
	li	a7,32
	srl	a3,a4,a3
	li	a6,0
	beq	a1,a7,lab31
	li	a6,64
	sub	a6,a6,a1
	sll	a6,a4,a6
lab31: 	or	a6,a6,a2
	snez	a6,a6
	or	a3,a3,a6
lab33: 	li	a1,0
	j	lab32
lab28: 	or	a3,a4,a2
	snez	a3,a3
	j	lab33
lab21: 	beqz	a6,lab34
	sub	a1,a7,s0
	bnez	s0,lab35
	or	a3,a5,a0
	beqz	a3,lab36
	addi	a3,a1,-1
	bnez	a3,lab37
	add	a0,a0,a2
	add	a4,a5,a4
	sltu	a2,a0,a2
	add	a5,a4,a2
	j	lab38
lab37: 	li	a6,2047
	bne	a1,a6,lab39
lab41: 	mv	a5,a4
	mv	a0,a2
	j	lab40
lab35: 	li	a3,2047
	beq	a7,a3,lab41
	lui	a3,0x800
	or	a5,a5,a3
	mv	a3,a1
lab39: 	li	a1,56
	blt	a1,a3,lab42
	li	a1,31
	blt	a1,a3,lab43
	li	a6,32
	sub	a6,a6,a3
	sll	a1,a5,a6
	srl	t1,a0,a3
	sll	a6,a0,a6
	or	a1,a1,t1
	snez	a6,a6
	or	a1,a1,a6
	srl	a3,a5,a3
lab45: 	add	a0,a1,a2
	add	a3,a3,a4
	sltu	a2,a0,a2
	add	a5,a3,a2
	mv	s0,a7
	j	lab25
lab43: 	addi	a1,a3,-32 # 7fffe0 <_stack+0x6effe0>
	li	t1,32
	srl	a1,a5,a1
	li	a6,0
	beq	a3,t1,lab44
	li	a6,64
	sub	a6,a6,a3
	sll	a6,a5,a6
lab44: 	or	a6,a6,a0
	snez	a6,a6
	or	a1,a1,a6
lab46: 	li	a3,0
	j	lab45
lab42: 	or	a1,a5,a0
	snez	a1,a1
	j	lab46
lab34: 	addi	a3,s0,1
	andi	a1,a3,2046
	bnez	a1,lab47
	or	a3,a5,a0
	bnez	s0,lab48
	beqz	a3,lab49
	or	a3,a4,a2
	beqz	a3,lab27
	add	a2,a0,a2
	add	a4,a5,a4
	sltu	a5,a2,a0
	add	a5,a4,a5
	lui	a4,0x800
	and	a4,a5,a4
	mv	a0,a2
	beqz	a4,lab27
	lui	a4,0xff800
	addi	a4,a4,-1 # ff7fffff <_stack+0xff6effff>
	and	a5,a5,a4
	li	s0,1
lab27: 	andi	a4,a0,7
	beqz	a4,lab50
	andi	a4,a0,15
	li	a3,4
	beq	a4,a3,lab50
	addi	a4,a0,4
	sltu	a0,a4,a0
	add	a5,a5,a0
	mv	a0,a4
	j	lab50
lab48: 	beqz	a3,lab41
	or	a4,a4,a2
	beqz	a4,lab40
lab84: 	li	s1,0
	lui	a5,0x400
	li	a0,0
lab98: 	li	s0,2047
	j	lab50
lab47: 	li	a1,2047
	beq	a3,a1,lab51
	add	a2,a0,a2
	sltu	a0,a2,a0
	add	a4,a5,a4
	add	a4,a4,a0
	slli	a0,a4,0x1f
	srli	a2,a2,0x1
	or	a0,a0,a2
	srli	a5,a4,0x1
	mv	s0,a3
	j	lab27
lab20: 	blez	a6,lab52
	bnez	a7,lab53
	or	a3,a4,a2
	beqz	a3,lab23
	addi	a1,a6,-1
	bnez	a1,lab54
	sub	a2,a0,a2
	sub	a4,a5,a4
	sltu	a5,a0,a2
	sub	a5,a4,a5
	mv	a0,a2
lab67: 	li	s0,1
	j	lab55
lab54: 	li	a3,2047
	beq	a6,a3,lab40
lab59: 	li	a3,56
	blt	a3,a1,lab56
	li	a3,31
	blt	a3,a1,lab57
	li	a6,32
	sub	a6,a6,a1
	sll	a3,a4,a6
	srl	a7,a2,a1
	sll	a6,a2,a6
	or	a3,a3,a7
	snez	a6,a6
	or	a3,a3,a6
	srl	a1,a4,a1
lab61: 	sub	a3,a0,a3
	sub	a1,a5,a1
	sltu	a5,a0,a3
	sub	a5,a1,a5
	mv	a0,a3
lab55: 	lui	s2,0x800
	and	a4,a5,s2
	beqz	a4,lab27
	addi	s2,s2,-1 # 7fffff <_stack+0x6effff>
	and	s2,a5,s2
	mv	s3,a0
	j	lab58
lab53: 	li	a3,2047
	beq	s0,a3,lab27
	lui	a3,0x800
	or	a4,a4,a3
	mv	a1,a6
	j	lab59
lab57: 	addi	a3,a1,-32
	li	a7,32
	srl	a3,a4,a3
	li	a6,0
	beq	a1,a7,lab60
	li	a6,64
	sub	a6,a6,a1
	sll	a6,a4,a6
lab60: 	or	a6,a6,a2
	snez	a6,a6
	or	a3,a3,a6
lab62: 	li	a1,0
	j	lab61
lab56: 	or	a3,a4,a2
	snez	a3,a3
	j	lab62
lab52: 	beqz	a6,lab63
	sub	a6,a7,s0
	bnez	s0,lab64
	or	a1,a5,a0
	beqz	a1,lab65
	addi	a1,a6,-1
	bnez	a1,lab66
	sub	a0,a2,a0
	sub	a4,a4,a5
	sltu	a2,a2,a0
	sub	a5,a4,a2
	mv	s1,a3
	j	lab67
lab66: 	li	t1,2047
	bne	a6,t1,lab68
lab70: 	mv	a5,a4
	mv	a0,a2
	li	s0,2047
	j	lab69
lab64: 	li	a1,2047
	beq	a7,a1,lab70
	lui	a1,0x800
	or	a5,a5,a1
	mv	a1,a6
lab68: 	li	a6,56
	blt	a6,a1,lab71
	li	a6,31
	blt	a6,a1,lab72
	li	t1,32
	sub	t1,t1,a1
	srl	t3,a0,a1
	sll	a6,a5,t1
	sll	t1,a0,t1
	or	a6,a6,t3
	snez	t1,t1
	or	a0,a6,t1
	srl	a1,a5,a1
lab74: 	sub	a0,a2,a0
	sub	a1,a4,a1
	sltu	a2,a2,a0
	sub	a5,a1,a2
	mv	s0,a7
	mv	s1,a3
	j	lab55
lab72: 	addi	a6,a1,-32 # 7fffe0 <_stack+0x6effe0>
	li	t3,32
	srl	a6,a5,a6
	li	t1,0
	beq	a1,t3,lab73
	li	t1,64
	sub	t1,t1,a1
	sll	t1,a5,t1
lab73: 	or	t1,t1,a0
	snez	t1,t1
	or	a0,a6,t1
lab75: 	li	a1,0
	j	lab74
lab71: 	or	a0,a5,a0
	snez	a0,a0
	j	lab75
lab63: 	addi	a1,s0,1
	andi	a1,a1,2046
	bnez	a1,lab76
	or	a6,a5,a0
	or	a1,a4,a2
	bnez	s0,lab77
	bnez	a6,lab78
	beqz	a1,lab79
	mv	a5,a4
	mv	a0,a2
lab69: 	mv	s1,a3
	j	lab27
lab78: 	beqz	a1,lab27
	sub	a6,a0,a2
	sltu	a7,a0,a6
	sub	a1,a5,a4
	sub	a1,a1,a7
	lui	a7,0x800
	and	a7,a1,a7
	beqz	a7,lab80
	sub	a0,a2,a0
	sub	a4,a4,a5
	sltu	a2,a2,a0
	sub	a5,a4,a2
	j	lab69
lab80: 	or	a0,a6,a1
	beqz	a0,lab81
	mv	a5,a1
	mv	a0,a6
	j	lab27
lab77: 	bnez	a6,lab82
	beqz	a1,lab83
	mv	a5,a4
	mv	a0,a2
	mv	s1,a3
	j	lab40
lab82: 	beqz	a1,lab40
	j	lab84
lab76: 	sub	s3,a0,a2
	sltu	a1,a0,s3
	sub	s2,a5,a4
	sub	s2,s2,a1
	lui	a1,0x800
	and	a1,s2,a1
	beqz	a1,lab85
	sub	s3,a2,a0
	sub	s2,a4,a5
	sltu	a2,a2,s3
	sub	s2,s2,a2
	mv	s1,a3
lab58: 	beqz	s2,lab86
	mv	a0,s2
	jal	ra,__clzsi2
lab91: 	addi	a4,a0,-8
	li	a5,31
	blt	a5,a4,lab87
	li	a5,32
	sub	a5,a5,a4
	sll	s2,s2,a4
	srl	a5,s3,a5
	or	a5,a5,s2
	sll	a0,s3,a4
lab92: 	blt	a4,s0,lab88
	sub	a4,a4,s0
	addi	a2,a4,1
	li	a3,31
	blt	a3,a2,lab89
	li	a4,32
	sub	a4,a4,a2
	sll	a3,a5,a4
	srl	a1,a0,a2
	sll	a4,a0,a4
	or	a3,a3,a1
	snez	a4,a4
	or	a0,a3,a4
	srl	a5,a5,a2
lab94: 	li	s0,0
	j	lab27
lab85: 	or	a0,s3,s2
	bnez	a0,lab58
	li	a5,0
	li	s0,0
	j	lab90
lab86: 	mv	a0,s3
	jal	ra,__clzsi2
	addi	a0,a0,32
	j	lab91
lab87: 	addi	a5,a0,-40
	sll	a5,s3,a5
	li	a0,0
	j	lab92
lab89: 	addi	a4,a4,-31
	li	a1,32
	srl	a4,a5,a4
	li	a3,0
	beq	a2,a1,lab93
	li	a3,64
	sub	a3,a3,a2
	sll	a3,a5,a3
lab93: 	or	a3,a0,a3
	snez	a3,a3
	or	a0,a4,a3
	li	a5,0
	j	lab94
lab88: 	sub	s0,s0,a4
	lui	a4,0xff800
	addi	a4,a4,-1 # ff7fffff <_stack+0xff6effff>
	and	a5,a5,a4
	j	lab27
lab36: 	mv	a5,a4
	mv	a0,a2
	mv	s0,a1
	j	lab27
lab49: 	mv	a5,a4
	mv	a0,a2
	j	lab27
lab51: 	li	s0,2047
lab30: 	li	a5,0
	li	a0,0
lab50: 	lui	a4,0x800
	and	a4,a5,a4
	beqz	a4,lab95
	addi	s0,s0,1
	li	a4,2047
	beq	s0,a4,lab96
	lui	a4,0xff800
	addi	a4,a4,-1 # ff7fffff <_stack+0xff6effff>
	and	a5,a5,a4
lab95: 	slli	a3,a5,0x1d
	srli	a0,a0,0x3
	li	a4,2047
	or	a3,a3,a0
	srli	a5,a5,0x3
	bne	s0,a4,lab97
	or	a3,a3,a5
	li	a5,0
	beqz	a3,lab97
	lui	a5,0x80
	li	a3,0
	li	s1,0
lab97: 	slli	a4,s0,0x14
	lui	a2,0x7ff00
	slli	a5,a5,0xc
	lw	ra,28(sp)
	lw	s0,24(sp)
	and	a4,a4,a2
	srli	a5,a5,0xc
	slli	s1,s1,0x1f
	or	a5,a4,a5
	or	a4,a5,s1
	lw	s2,16(sp)
	lw	s1,20(sp)
	lw	s3,12(sp)
	mv	a0,a3
	mv	a1,a4
	addi	sp,sp,32
	ret
lab23: 	mv	s0,a6
	j	lab27
lab65: 	mv	a5,a4
	mv	a0,a2
	mv	s0,a6
	j	lab69
lab79: 	li	a5,0
	li	a0,0
lab90: 	li	s1,0
	j	lab50
lab81: 	li	a5,0
	j	lab90
lab83: 	li	a0,0
	li	s1,0
	lui	a5,0x400
	j	lab98
lab96: 	li	a5,0
	li	a0,0
	j	lab95
__divdf3:
	addi	sp,sp,-48
	srli	a6,a1,0x14
	sw	s1,36(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s6,16(sp)
	sw	s8,8(sp)
	slli	s1,a1,0xc
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,32(sp)
	sw	s5,20(sp)
	sw	s7,12(sp)
	andi	a6,a6,2047
	mv	s4,a0
	mv	s6,a2
	mv	s8,a3
	srli	s1,s1,0xc
	srli	s3,a1,0x1f
	beqz	a6,lab99
	li	a5,2047
	beq	a6,a5,lab100
	srli	s5,a0,0x1d
	slli	s1,s1,0x3
	or	s5,s5,s1
	lui	a5,0x800
	or	s5,s5,a5
	slli	s0,a0,0x3
	addi	s2,a6,-1023
lab107: 	li	s7,0
lab111: 	srli	a5,s8,0x14
	slli	s1,s8,0xc
	andi	a5,a5,2047
	srli	s1,s1,0xc
	srli	s8,s8,0x1f
	beqz	a5,lab101
	li	a4,2047
	beq	a5,a4,lab102
	slli	s1,s1,0x3
	srli	a4,s6,0x1d
	or	a4,a4,s1
	lui	s1,0x800
	or	s1,a4,s1
	slli	t4,s6,0x3
	addi	a5,a5,-1023 # 7ffc01 <_stack+0x6efc01>
lab115: 	li	a4,0
lab119: 	sub	a6,s2,a5
	slli	a5,s7,0x2
	or	a5,a5,a4
	addi	a5,a5,-1
	li	a3,14
	xor	a2,s3,s8
	bltu	a3,a5,lab103
	lui	a3,0x100
	slli	a5,a5,0x2
	mv	a3,a3
	add	a5,a5,a3
	lw	a5,0(a5)
	jr	a5
lab99: 	or	s5,s1,a0
	beqz	s5,lab104
	beqz	s1,lab105
	mv	a0,s1
	jal	ra,__clzsi2
lab108: 	addi	a5,a0,-11
	li	a4,28
	blt	a4,a5,lab106
	li	s5,29
	addi	s0,a0,-8
	sub	s5,s5,a5
	sll	s1,s1,s0
	srl	s5,s4,s5
	or	s5,s5,s1
	sll	s0,s4,s0
lab109: 	li	a6,-1011
	sub	s2,a6,a0
	j	lab107
lab105: 	jal	ra,__clzsi2
	addi	a0,a0,32
	j	lab108
lab106: 	addi	s5,a0,-40
	sll	s5,s4,s5
	li	s0,0
	j	lab109
lab100: 	or	s5,s1,a0
	beqz	s5,lab110
	mv	s0,a0
	mv	s5,s1
	li	s2,2047
	li	s7,3
	j	lab111
lab104: 	li	s0,0
	li	s2,0
	li	s7,1
	j	lab111
lab110: 	li	s0,0
	li	s2,2047
	li	s7,2
	j	lab111
lab101: 	or	t4,s1,s6
	beqz	t4,lab112
	beqz	s1,lab113
	mv	a0,s1
	jal	ra,__clzsi2
lab116: 	addi	a4,a0,-11
	li	a5,28
	blt	a5,a4,lab114
	li	a5,29
	addi	t4,a0,-8
	sub	a5,a5,a4
	sll	s1,s1,t4
	srl	a5,s6,a5
	or	s1,a5,s1
	sll	t4,s6,t4
lab117: 	li	a5,-1011
	sub	a5,a5,a0
	j	lab115
lab113: 	mv	a0,s6
	jal	ra,__clzsi2
	addi	a0,a0,32
	j	lab116
lab114: 	addi	s1,a0,-40
	sll	s1,s6,s1
	li	t4,0
	j	lab117
lab102: 	or	t4,s1,s6
	beqz	t4,lab118
	mv	t4,s6
	li	a5,2047
	li	a4,3
	j	lab119
lab112: 	li	s1,0
	li	a5,0
	li	a4,1
	j	lab119
lab118: 	li	s1,0
	li	a5,2047
	li	a4,2
	j	lab119
lab103: 	bltu	s1,s5,lab120
	bne	s5,s1,lab121
	bltu	s0,t4,lab121
lab120: 	slli	a4,s5,0x1f
	srli	a5,s0,0x1
	slli	t5,s0,0x1f
	srli	s5,s5,0x1
	or	s0,a4,a5
lab144: 	slli	a0,s1,0x8
	srli	a3,t4,0x18
	or	a3,a3,a0
	srli	a0,a0,0x10
	divu	t3,s5,a0
	slli	t1,a3,0x10
	srli	t1,t1,0x10
	srli	a5,s0,0x10
	slli	a1,t4,0x8
	remu	s5,s5,a0
	mv	a4,t3
	mul	a7,t1,t3
	slli	s5,s5,0x10
	or	a5,a5,s5
	bgeu	a5,a7,lab122
	add	a5,a5,a3
	addi	a4,t3,-1
	bltu	a5,a3,lab122
	bgeu	a5,a7,lab122
	addi	a4,t3,-2
	add	a5,a5,a3
lab122: 	sub	a5,a5,a7
	divu	t3,a5,a0
	slli	s0,s0,0x10
	srli	s0,s0,0x10
	remu	a5,a5,a0
	mul	a7,t1,t3
	slli	a5,a5,0x10
	or	s0,s0,a5
	mv	a5,t3
	bgeu	s0,a7,lab123
	add	s0,s0,a3
	addi	a5,t3,-1
	bltu	s0,a3,lab123
	bgeu	s0,a7,lab123
	addi	a5,t3,-2
	add	s0,s0,a3
lab123: 	slli	a4,a4,0x10
	lui	t2,0x10
	or	t6,a4,a5
	sub	s0,s0,a7
	addi	a7,t2,-1 # ffff <__errno+0x3d6f>
	and	a5,t6,a7
	srli	t4,t6,0x10
	srli	t3,a1,0x10
	and	a7,a1,a7
	mul	t0,a7,a5
	mul	s1,t4,a7
	srli	a4,t0,0x10
	mul	a5,t3,a5
	add	a5,a5,s1
	add	a4,a4,a5
	mul	t4,t4,t3
	bgeu	a4,s1,lab124
	add	t4,t4,t2
lab124: 	srli	a5,a4,0x10
	add	a5,a5,t4
	lui	t4,0x10
	addi	t4,t4,-1 # ffff <__errno+0x3d6f>
	and	a4,a4,t4
	slli	a4,a4,0x10
	and	t0,t0,t4
	add	a4,a4,t0
	bltu	s0,a5,lab125
	mv	s1,t6
	bne	s0,a5,lab126
	bgeu	t5,a4,lab126
lab125: 	add	t5,t5,a1
	sltu	t4,t5,a1
	add	t4,t4,a3
	add	s0,s0,t4
	addi	s1,t6,-1
	bltu	a3,s0,lab127
	bne	a3,s0,lab126
	bltu	t5,a1,lab126
lab127: 	bltu	s0,a5,lab128
	bne	a5,s0,lab126
	bgeu	t5,a4,lab126
lab128: 	add	t5,t5,a1
	sltu	t4,t5,a1
	add	t4,t4,a3
	addi	s1,t6,-2
	add	s0,s0,t4
lab126: 	sub	a4,t5,a4
	sub	s0,s0,a5
	sltu	a5,t5,a4
	sub	s0,s0,a5
	li	t4,-1
	beq	a3,s0,lab129
	divu	t6,s0,a0
	srli	a5,a4,0x10
	remu	s0,s0,a0
	mv	t4,t6
	mul	t5,t1,t6
	slli	s0,s0,0x10
	or	a5,a5,s0
	bgeu	a5,t5,lab130
	add	a5,a5,a3
	addi	t4,t6,-1
	bltu	a5,a3,lab130
	bgeu	a5,t5,lab130
	addi	t4,t6,-2
	add	a5,a5,a3
lab130: 	sub	a5,a5,t5
	divu	t5,a5,a0
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	remu	a5,a5,a0
	mv	a0,t5
	mul	t1,t1,t5
	slli	a5,a5,0x10
	or	a4,a4,a5
	bgeu	a4,t1,lab131
	add	a4,a4,a3
	addi	a0,t5,-1
	bltu	a4,a3,lab131
	bgeu	a4,t1,lab131
	addi	a0,t5,-2
	add	a4,a4,a3
lab131: 	slli	a5,t4,0x10
	or	a5,a5,a0
	slli	a0,a5,0x10
	srli	a0,a0,0x10
	sub	a4,a4,t1
	srli	t1,a5,0x10
	mul	t4,a0,a7
	mul	a7,t1,a7
	mul	t1,t3,t1
	mul	t3,t3,a0
	srli	a0,t4,0x10
	add	t3,t3,a7
	add	a0,a0,t3
	bgeu	a0,a7,lab132
	lui	a7,0x10
	add	t1,t1,a7
lab132: 	srli	a7,a0,0x10
	add	a7,a7,t1
	lui	t1,0x10
	addi	t1,t1,-1 # ffff <__errno+0x3d6f>
	and	a0,a0,t1
	slli	a0,a0,0x10
	and	t4,t4,t1
	add	a0,a0,t4
	bltu	a4,a7,lab133
	bne	a4,a7,lab134
	mv	t4,a5
	beqz	a0,lab129
lab133: 	add	a4,a3,a4
	addi	t4,a5,-1
	bltu	a4,a3,lab135
	bltu	a4,a7,lab136
	bne	a4,a7,lab137
	bgeu	a1,a0,lab138
lab136: 	addi	t4,a5,-2
	slli	a5,a1,0x1
	sltu	a1,a5,a1
	add	a1,a1,a3
	add	a4,a4,a1
	mv	a1,a5
lab135: 	bne	a4,a7,lab139
lab138: 	beq	a0,a1,lab129
lab139: 	ori	t4,t4,1
lab129: 	addi	a5,a6,1023
	blez	a5,lab140
	andi	a4,t4,7
	beqz	a4,lab141
	andi	a4,t4,15
	li	a3,4
	beq	a4,a3,lab141
	addi	a4,t4,4
	sltu	t4,a4,t4
	add	s1,s1,t4
	mv	t4,a4
lab141: 	lui	a4,0x1000
	and	a4,s1,a4
	beqz	a4,lab142
	lui	a5,0xff000
	addi	a5,a5,-1 # feffffff <_stack+0xfeeeffff>
	and	s1,s1,a5
	addi	a5,a6,1024
lab142: 	li	a4,2046
	blt	a4,a5,lab143
	srli	t4,t4,0x3
	slli	a4,s1,0x1d
	or	a4,a4,t4
	srli	a0,s1,0x3
lab147: 	lui	a3,0x7ff00
	slli	a5,a5,0x14
	slli	a0,a0,0xc
	lw	ra,44(sp)
	lw	s0,40(sp)
	and	a5,a5,a3
	srli	a0,a0,0xc
	or	a5,a5,a0
	slli	a2,a2,0x1f
	or	a3,a5,a2
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	lw	s5,20(sp)
	lw	s6,16(sp)
	lw	s7,12(sp)
	lw	s8,8(sp)
	mv	a0,a4
	mv	a1,a3
	addi	sp,sp,48
	ret
lab121: 	addi	a6,a6,-1
	li	t5,0
	j	lab144
	mv	a2,s3
	mv	s1,s5
	mv	t4,s0
	mv	a4,s7
lab148: 	li	a5,3
	beq	a4,a5,lab145
	li	a5,1
	beq	a4,a5,lab146
	li	a5,2
	bne	a4,a5,lab129
lab143: 	li	a0,0
	li	a4,0
	li	a5,2047
	j	lab147
	mv	a2,s8
	j	lab148
	lui	s1,0x80
	li	t4,0
	li	a2,0
	li	a4,3
	j	lab148
lab140: 	li	a0,1
	sub	a0,a0,a5
	li	a4,56
	blt	a4,a0,lab146
	li	a4,31
	blt	a4,a0,lab149
	addi	a6,a6,1054
	sll	a5,s1,a6
	srl	a4,t4,a0
	sll	a6,t4,a6
	or	a5,a5,a4
	snez	a6,a6
	or	a5,a5,a6
	srl	a0,s1,a0
lab153: 	andi	a4,a5,7
	beqz	a4,lab150
	andi	a4,a5,15
	li	a3,4
	beq	a4,a3,lab150
	addi	a4,a5,4
	sltu	a5,a4,a5
	add	a0,a0,a5
	mv	a5,a4
lab150: 	lui	a4,0x800
	and	a4,a0,a4
	bnez	a4,lab151
	slli	a4,a0,0x1d
	srli	a5,a5,0x3
	or	a4,a4,a5
	srli	a0,a0,0x3
lab154: 	li	a5,0
	j	lab147
lab149: 	li	a4,-31
	sub	a5,a4,a5
	li	a3,32
	srl	a5,s1,a5
	li	a4,0
	beq	a0,a3,lab152
	addi	a4,a6,1086
	sll	a4,s1,a4
lab152: 	or	a4,a4,t4
	snez	a4,a4
	or	a5,a5,a4
	li	a0,0
	j	lab153
lab146: 	li	a0,0
	li	a4,0
	j	lab154
lab145: 	lui	a0,0x80
	li	a4,0
	li	a5,2047
	li	a2,0
	j	lab147
lab151: 	li	a0,0
	li	a4,0
	li	a5,1
	j	lab147
lab137: 	mv	a5,t4
lab134: 	mv	t4,a5
	j	lab139
__eqdf2:
	srli	a4,a1,0x14
	lui	a5,0x100
	addi	a5,a5,-1 # fffff <__errno+0xf3d6f>
	srli	a6,a3,0x14
	mv	t1,a0
	mv	t4,a0
	andi	a4,a4,2047
	li	a0,2047
	and	a7,a5,a1
	mv	t5,a2
	and	a5,a5,a3
	srli	a1,a1,0x1f
	andi	a6,a6,2047
	srli	a3,a3,0x1f
	bne	a4,a0,lab155
	or	t3,a7,t1
	li	a0,1
	bnez	t3,lab156
	beq	a6,a4,lab157
lab156: 	ret
lab155: 	bne	a6,a0,lab158
lab157: 	or	a2,a5,a2
	li	a0,1
	bnez	a2,lab156
lab158: 	li	a0,1
	bne	a4,a6,lab156
	bne	a7,a5,lab156
	bne	t4,t5,lab156
	beq	a1,a3,lab159
	bnez	a4,lab156
	or	a7,a7,t1
	snez	a0,a7
	ret
lab159: 	li	a0,0
	ret
__gedf2:
	lui	a4,0x100
	addi	a4,a4,-1 # fffff <__errno+0xf3d6f>
	srli	a6,a1,0x14
	and	a7,a4,a1
	mv	a5,a0
	mv	t1,a0
	andi	a6,a6,2047
	srli	a0,a1,0x1f
	li	t4,2047
	srli	a1,a3,0x14
	and	a4,a4,a3
	mv	t3,a2
	andi	a1,a1,2047
	srli	a3,a3,0x1f
	bne	a6,t4,lab160
	or	t4,a7,a5
	beqz	t4,lab161
lab163: 	li	a0,-2
	ret
lab160: 	bne	a1,t4,lab162
lab177: 	or	t4,a4,a2
	bnez	t4,lab163
lab162: 	bnez	a6,lab164
	or	a5,a7,a5
	seqz	a5,a5
	bnez	a1,lab165
lab179: 	or	a2,a4,a2
	beqz	a2,lab166
lab165: 	bnez	a5,lab167
lab178: 	bne	a0,a3,lab168
	bge	a1,a6,lab169
lab168: 	beqz	a0,lab170
lab173: 	li	a0,-1
	ret
lab167: 	li	a0,-1
	beqz	a3,lab171
	mv	a0,a3
	ret
lab169: 	bge	a6,a1,lab172
lab175: 	beqz	a0,lab173
lab171: 	ret
lab172: 	bltu	a4,a7,lab168
	bne	a7,a4,lab174
	bltu	t3,t1,lab168
	bltu	t1,t3,lab175
lab176: 	li	a0,0
	ret
lab170: 	li	a0,1
	ret
lab166: 	bnez	a5,lab176
	j	lab168
lab174: 	bltu	a7,a4,lab175
	j	lab176
lab161: 	beq	a1,a6,lab177
lab164: 	bnez	a1,lab178
	li	a5,0
	j	lab179
__ledf2:
	lui	a4,0x100
	addi	a4,a4,-1 # fffff <__errno+0xf3d6f>
	srli	a6,a1,0x14
	and	a7,a4,a1
	mv	a5,a0
	mv	t1,a0
	andi	a6,a6,2047
	srli	a0,a1,0x1f
	li	t4,2047
	srli	a1,a3,0x14
	and	a4,a4,a3
	mv	t3,a2
	andi	a1,a1,2047
	srli	a3,a3,0x1f
	bne	a6,t4,lab180
	or	t4,a7,a5
	beqz	t4,lab181
lab183: 	li	a0,2
	ret
lab180: 	bne	a1,t4,lab182
lab197: 	or	t4,a4,a2
	bnez	t4,lab183
lab182: 	bnez	a6,lab184
	or	a5,a7,a5
	seqz	a5,a5
	bnez	a1,lab185
lab199: 	or	a2,a4,a2
	beqz	a2,lab186
lab185: 	bnez	a5,lab187
lab198: 	bne	a0,a3,lab188
	bge	a1,a6,lab189
lab188: 	beqz	a0,lab190
lab193: 	li	a0,-1
	ret
lab187: 	li	a0,-1
	beqz	a3,lab191
	mv	a0,a3
	ret
lab189: 	bge	a6,a1,lab192
lab195: 	beqz	a0,lab193
lab191: 	ret
lab192: 	bltu	a4,a7,lab188
	bne	a7,a4,lab194
	bltu	t3,t1,lab188
	bltu	t1,t3,lab195
lab196: 	li	a0,0
	ret
lab190: 	li	a0,1
	ret
lab186: 	bnez	a5,lab196
	j	lab188
lab194: 	bltu	a7,a4,lab195
	j	lab196
lab181: 	beq	a1,a6,lab197
lab184: 	bnez	a1,lab198
	li	a5,0
	j	lab199
__muldf3:
	addi	sp,sp,-48
	sw	s3,28(sp)
	srli	s3,a1,0x14
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s7,12(sp)
	slli	s1,a1,0xc
	sw	ra,44(sp)
	sw	s2,32(sp)
	sw	s6,16(sp)
	andi	s3,s3,2047
	mv	s0,a0
	mv	s7,a2
	mv	s5,a3
	srli	s1,s1,0xc
	srli	s4,a1,0x1f
	beqz	s3,lab200
	li	a5,2047
	beq	s3,a5,lab201
	slli	s1,s1,0x3
	srli	a5,a0,0x1d
	or	a5,a5,s1
	lui	s1,0x800
	or	s1,a5,s1
	slli	s2,a0,0x3
	addi	s3,s3,-1023
lab219: 	li	s6,0
lab223: 	srli	a4,s5,0x14
	slli	s0,s5,0xc
	andi	a4,a4,2047
	srli	s0,s0,0xc
	srli	s5,s5,0x1f
	beqz	a4,lab202
	li	a5,2047
	beq	a4,a5,lab203
	slli	s0,s0,0x3
	srli	a5,s7,0x1d
	or	a5,a5,s0
	lui	s0,0x800
	or	s0,a5,s0
	addi	a4,a4,-1023
	slli	a5,s7,0x3
lab227: 	li	a0,0
lab231: 	add	s3,s3,a4
	slli	a4,s6,0x2
	or	a4,a4,a0
	li	a3,10
	xor	a2,s4,s5
	addi	a1,s3,1
	blt	a3,a4,lab204
	li	a3,2
	blt	a3,a4,lab205
	addi	a4,a4,-1
	li	a3,1
	bgeu	a3,a4,lab206
lab234: 	lui	t3,0x10
	addi	t1,t3,-1 # ffff <__errno+0x3d6f>
	srli	a6,s2,0x10
	srli	a0,a5,0x10
	and	s2,s2,t1
	and	t4,a5,t1
	mul	a5,s2,t4
	mul	t5,a6,t4
	srli	a4,a5,0x10
	mul	a3,a0,s2
	add	a3,a3,t5
	add	a4,a4,a3
	mul	a7,a6,a0
	bgeu	a4,t5,lab207
	add	a7,a7,t3
lab207: 	and	a3,a4,t1
	and	a5,a5,t1
	slli	a3,a3,0x10
	and	t3,s0,t1
	add	a3,a3,a5
	srli	a5,s0,0x10
	srli	t0,a4,0x10
	mul	t5,s2,t3
	mul	t1,a6,t3
	srli	a4,t5,0x10
	mul	s2,a5,s2
	add	s2,s2,t1
	add	a4,a4,s2
	mul	a6,a6,a5
	bgeu	a4,t1,lab208
	lui	t1,0x10
	add	a6,a6,t1
lab208: 	lui	s2,0x10
	addi	t6,s2,-1 # ffff <__errno+0x3d6f>
	srli	t1,a4,0x10
	and	t5,t5,t6
	and	a4,a4,t6
	srli	s0,s1,0x10
	and	t6,s1,t6
	mul	t2,t4,t6
	add	t1,t1,a6
	slli	a4,a4,0x10
	add	t5,a4,t5
	add	t0,t0,t5
	mul	a6,s0,t4
	srli	a4,t2,0x10
	mul	s1,a0,s0
	mul	a0,a0,t6
	add	a0,a0,a6
	add	a4,a4,a0
	bgeu	a4,a6,lab209
	add	s1,s1,s2
lab209: 	srli	t4,a4,0x10
	add	t4,t4,s1
	lui	s1,0x10
	addi	a0,s1,-1 # ffff <__errno+0x3d6f>
	and	a4,a4,a0
	and	t2,t2,a0
	slli	a4,a4,0x10
	mul	a0,s0,t3
	add	a4,a4,t2
	mul	a6,a5,s0
	mul	t2,t3,t6
	mul	a5,a5,t6
	srli	t6,t2,0x10
	add	a5,a5,a0
	add	t6,t6,a5
	bgeu	t6,a0,lab210
	add	a6,a6,s1
lab210: 	lui	a0,0x10
	addi	a0,a0,-1 # ffff <__errno+0x3d6f>
	and	a5,t6,a0
	and	t2,t2,a0
	slli	a5,a5,0x10
	add	a7,a7,t0
	add	a5,a5,t2
	sltu	t5,a7,t5
	add	a5,a5,t1
	add	t0,a5,t5
	add	a7,a7,a4
	sltu	a4,a7,a4
	add	a0,t0,t4
	add	t3,a0,a4
	sltu	s0,a5,t1
	sltu	t0,t0,t5
	srli	a5,t6,0x10
	sltu	a4,t3,a4
	or	s0,s0,t0
	sltu	a0,a0,t4
	add	s0,s0,a5
	or	a0,a0,a4
	add	s0,s0,a0
	add	s0,s0,a6
	srli	a5,t3,0x17
	slli	s0,s0,0x9
	or	s0,s0,a5
	slli	a5,a7,0x9
	or	a5,a5,a3
	snez	a5,a5
	srli	a7,a7,0x17
	slli	a4,t3,0x9
	or	a5,a5,a7
	or	a5,a5,a4
	lui	a4,0x1000
	and	a4,s0,a4
	beqz	a4,lab211
	srli	a4,a5,0x1
	andi	a5,a5,1
	or	a4,a4,a5
	slli	a5,s0,0x1f
	or	a5,a4,a5
	srli	s0,s0,0x1
lab236: 	addi	a3,a1,1023 # 8003ff <_stack+0x6f03ff>
	blez	a3,lab212
	andi	a4,a5,7
	beqz	a4,lab213
	andi	a4,a5,15
	li	a0,4
	beq	a4,a0,lab213
	addi	a4,a5,4
	sltu	a5,a4,a5
	add	s0,s0,a5
	mv	a5,a4
lab213: 	lui	a4,0x1000
	and	a4,s0,a4
	beqz	a4,lab214
	lui	a4,0xff000
	addi	a4,a4,-1 # feffffff <_stack+0xfeeeffff>
	and	s0,s0,a4
	addi	a3,a1,1024
lab214: 	li	a4,2046
	blt	a4,a3,lab215
	slli	a4,s0,0x1d
	srli	a5,a5,0x3
	or	a4,a4,a5
	srli	s0,s0,0x3
lab245: 	lui	a5,0x7ff00
	slli	a3,a3,0x14
	slli	s0,s0,0xc
	and	a3,a3,a5
	srli	s0,s0,0xc
	lw	ra,44(sp)
	or	a3,a3,s0
	lw	s0,40(sp)
	slli	a2,a2,0x1f
	or	a5,a3,a2
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	lw	s5,20(sp)
	lw	s6,16(sp)
	lw	s7,12(sp)
	mv	a0,a4
	mv	a1,a5
	addi	sp,sp,48
	ret
lab200: 	or	s2,s1,a0
	beqz	s2,lab216
	beqz	s1,lab217
	mv	a0,s1
	jal	ra,__clzsi2
lab220: 	addi	a4,a0,-11
	li	a5,28
	blt	a5,a4,lab218
	li	a5,29
	addi	s2,a0,-8
	sub	a5,a5,a4
	sll	s1,s1,s2
	srl	a5,s0,a5
	or	s1,a5,s1
	sll	s2,s0,s2
lab221: 	li	s3,-1011
	sub	s3,s3,a0
	j	lab219
lab217: 	jal	ra,__clzsi2
	addi	a0,a0,32
	j	lab220
lab218: 	addi	s1,a0,-40
	sll	s1,s0,s1
	li	s2,0
	j	lab221
lab201: 	or	s2,s1,a0
	beqz	s2,lab222
	mv	s2,a0
	li	s3,2047
	li	s6,3
	j	lab223
lab216: 	li	s1,0
	li	s3,0
	li	s6,1
	j	lab223
lab222: 	li	s1,0
	li	s3,2047
	li	s6,2
	j	lab223
lab202: 	or	a5,s0,s7
	beqz	a5,lab224
	beqz	s0,lab225
	mv	a0,s0
	jal	ra,__clzsi2
lab228: 	addi	a3,a0,-11
	li	a5,28
	blt	a5,a3,lab226
	li	a4,29
	addi	a5,a0,-8
	sub	a4,a4,a3
	sll	s0,s0,a5
	srl	a4,s7,a4
	or	s0,a4,s0
	sll	a5,s7,a5
lab229: 	li	a4,-1011
	sub	a4,a4,a0
	j	lab227
lab225: 	mv	a0,s7
	jal	ra,__clzsi2
	addi	a0,a0,32
	j	lab228
lab226: 	addi	s0,a0,-40
	sll	s0,s7,s0
	li	a5,0
	j	lab229
lab203: 	or	a5,s0,s7
	beqz	a5,lab230
	mv	a5,s7
	li	a4,2047
	li	a0,3
	j	lab231
lab224: 	li	s0,0
	li	a4,0
	li	a0,1
	j	lab231
lab230: 	li	s0,0
	li	a4,2047
	li	a0,2
	j	lab231
lab205: 	li	a3,1
	sll	a3,a3,a4
	andi	a4,a3,1328
	bnez	a4,lab232
	andi	a6,a3,576
	bnez	a6,lab233
	andi	a3,a3,136
	beqz	a3,lab234
lab239: 	mv	a2,s5
lab206: 	li	a4,2
	beq	a0,a4,lab215
lab240: 	li	a4,3
	beq	a0,a4,lab235
	li	a4,1
	bne	a0,a4,lab236
lab241: 	li	s0,0
	li	a4,0
	j	lab237
lab204: 	li	a3,15
	beq	a4,a3,lab238
	li	a3,11
	beq	a4,a3,lab239
	mv	a2,s4
lab232: 	mv	s0,s1
	mv	a5,s2
	mv	a0,s6
	j	lab206
lab238: 	lui	s0,0x80
	li	a5,0
	li	a2,0
	li	a0,3
	j	lab240
lab211: 	mv	a1,s3
	j	lab236
lab212: 	li	a0,1
	sub	a0,a0,a3
	li	a4,56
	blt	a4,a0,lab241
	li	a4,31
	blt	a4,a0,lab242
	addi	a1,a1,1054
	sll	a4,s0,a1
	srl	a3,a5,a0
	sll	a1,a5,a1
	or	a4,a4,a3
	snez	a1,a1
	or	a5,a4,a1
	srl	s0,s0,a0
lab247: 	andi	a4,a5,7
	beqz	a4,lab243
	andi	a4,a5,15
	li	a3,4
	beq	a4,a3,lab243
	addi	a4,a5,4 # 7ff00004 <_stack+0x7fdf0004>
	sltu	a5,a4,a5
	add	s0,s0,a5
	mv	a5,a4
lab243: 	lui	a4,0x800
	and	a4,s0,a4
	bnez	a4,lab244
	slli	a4,s0,0x1d
	srli	a5,a5,0x3
	or	a4,a4,a5
	srli	s0,s0,0x3
lab237: 	li	a3,0
	j	lab245
lab242: 	li	a4,-31
	sub	a4,a4,a3
	li	a6,32
	srl	a4,s0,a4
	li	a3,0
	beq	a0,a6,lab246
	addi	a1,a1,1086
	sll	a3,s0,a1
lab246: 	or	a3,a3,a5
	snez	a3,a3
	or	a5,a4,a3
	li	s0,0
	j	lab247
lab233: 	lui	s0,0x80
lab248: 	li	a3,2047
	li	a2,0
	j	lab245
lab235: 	lui	s0,0x80
	li	a4,0
	j	lab248
lab215: 	li	s0,0
	li	a4,0
	li	a3,2047
	j	lab245
lab244: 	li	s0,0
	li	a4,0
	li	a3,1
	j	lab245
__subdf3:
	lui	a6,0x100
	addi	a6,a6,-1 # fffff <__errno+0xf3d6f>
	addi	sp,sp,-32
	and	a7,a6,a1
	srli	a4,a1,0x14
	srli	a5,a0,0x1d
	and	a6,a6,a3
	sw	s0,24(sp)
	andi	s0,a4,2047
	slli	a4,a7,0x3
	srli	a7,a3,0x14
	sw	s1,20(sp)
	or	a5,a5,a4
	srli	s1,a1,0x1f
	srli	a4,a2,0x1d
	slli	a6,a6,0x3
	sw	ra,28(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	andi	a7,a7,2047
	li	a1,2047
	slli	a0,a0,0x3
	srli	a3,a3,0x1f
	or	a4,a4,a6
	slli	a2,a2,0x3
	bne	a7,a1,lab249
	or	a1,a4,a2
	bnez	a1,lab250
lab249: 	xori	a3,a3,1
lab250: 	sub	a6,s0,a7
	bne	a3,s1,lab251
	blez	a6,lab252
	bnez	a7,lab253
	or	a3,a4,a2
	beqz	a3,lab254
	addi	a1,a6,-1
	bnez	a1,lab255
	add	a2,a0,a2
	add	a4,a5,a4
	sltu	a5,a2,a0
	add	a5,a4,a5
	mv	a0,a2
lab269: 	li	s0,1
	j	lab256
lab255: 	li	a3,2047
	bne	a6,a3,lab257
lab271: 	li	s0,2047
	j	lab258
lab253: 	li	a3,2047
	beq	s0,a3,lab258
	lui	a3,0x800
	or	a4,a4,a3
	mv	a1,a6
lab257: 	li	a3,56
	blt	a3,a1,lab259
	li	a3,31
	blt	a3,a1,lab260
	li	a6,32
	sub	a6,a6,a1
	sll	a3,a4,a6
	srl	a7,a2,a1
	sll	a6,a2,a6
	or	a3,a3,a7
	snez	a6,a6
	or	a3,a3,a6
	srl	a1,a4,a1
lab263: 	add	a3,a3,a0
	add	a1,a1,a5
	sltu	a5,a3,a0
	add	a5,a1,a5
	mv	a0,a3
lab256: 	lui	a4,0x800
	and	a4,a5,a4
	beqz	a4,lab258
	addi	s0,s0,1 # 80001 <__errno+0x73d71>
	li	a4,2047
	beq	s0,a4,lab261
	lui	a4,0xff800
	addi	a4,a4,-1 # ff7fffff <_stack+0xff6effff>
	and	a5,a5,a4
	srli	a4,a0,0x1
	andi	a0,a0,1
	or	a4,a4,a0
	slli	a0,a5,0x1f
	or	a0,a0,a4
	srli	a5,a5,0x1
	j	lab258
lab260: 	addi	a3,a1,-32
	li	a7,32
	srl	a3,a4,a3
	li	a6,0
	beq	a1,a7,lab262
	li	a6,64
	sub	a6,a6,a1
	sll	a6,a4,a6
lab262: 	or	a6,a6,a2
	snez	a6,a6
	or	a3,a3,a6
lab264: 	li	a1,0
	j	lab263
lab259: 	or	a3,a4,a2
	snez	a3,a3
	j	lab264
lab252: 	beqz	a6,lab265
	sub	a1,a7,s0
	bnez	s0,lab266
	or	a3,a5,a0
	beqz	a3,lab267
	addi	a3,a1,-1
	bnez	a3,lab268
	add	a0,a0,a2
	add	a4,a5,a4
	sltu	a2,a0,a2
	add	a5,a4,a2
	j	lab269
lab268: 	li	a6,2047
	bne	a1,a6,lab270
lab272: 	mv	a5,a4
	mv	a0,a2
	j	lab271
lab266: 	li	a3,2047
	beq	a7,a3,lab272
	lui	a3,0x800
	or	a5,a5,a3
	mv	a3,a1
lab270: 	li	a1,56
	blt	a1,a3,lab273
	li	a1,31
	blt	a1,a3,lab274
	li	a6,32
	sub	a6,a6,a3
	sll	a1,a5,a6
	srl	t1,a0,a3
	sll	a6,a0,a6
	or	a1,a1,t1
	snez	a6,a6
	or	a1,a1,a6
	srl	a3,a5,a3
lab276: 	add	a0,a1,a2
	add	a3,a3,a4
	sltu	a2,a0,a2
	add	a5,a3,a2
	mv	s0,a7
	j	lab256
lab274: 	addi	a1,a3,-32 # 7fffe0 <_stack+0x6effe0>
	li	t1,32
	srl	a1,a5,a1
	li	a6,0
	beq	a3,t1,lab275
	li	a6,64
	sub	a6,a6,a3
	sll	a6,a5,a6
lab275: 	or	a6,a6,a0
	snez	a6,a6
	or	a1,a1,a6
lab277: 	li	a3,0
	j	lab276
lab273: 	or	a1,a5,a0
	snez	a1,a1
	j	lab277
lab265: 	addi	a3,s0,1
	andi	a1,a3,2046
	bnez	a1,lab278
	or	a3,a5,a0
	bnez	s0,lab279
	beqz	a3,lab280
	or	a3,a4,a2
	beqz	a3,lab258
	add	a2,a0,a2
	add	a4,a5,a4
	sltu	a5,a2,a0
	add	a5,a4,a5
	lui	a4,0x800
	and	a4,a5,a4
	mv	a0,a2
	beqz	a4,lab258
	lui	a4,0xff800
	addi	a4,a4,-1 # ff7fffff <_stack+0xff6effff>
	and	a5,a5,a4
	li	s0,1
lab258: 	andi	a4,a0,7
	beqz	a4,lab281
	andi	a4,a0,15
	li	a3,4
	beq	a4,a3,lab281
	addi	a4,a0,4
	sltu	a0,a4,a0
	add	a5,a5,a0
	mv	a0,a4
	j	lab281
lab279: 	beqz	a3,lab272
	or	a4,a4,a2
	beqz	a4,lab271
lab315: 	li	s1,0
	lui	a5,0x400
	li	a0,0
lab329: 	li	s0,2047
	j	lab281
lab278: 	li	a1,2047
	beq	a3,a1,lab282
	add	a2,a0,a2
	sltu	a0,a2,a0
	add	a4,a5,a4
	add	a4,a4,a0
	slli	a0,a4,0x1f
	srli	a2,a2,0x1
	or	a0,a0,a2
	srli	a5,a4,0x1
	mv	s0,a3
	j	lab258
lab251: 	blez	a6,lab283
	bnez	a7,lab284
	or	a3,a4,a2
	beqz	a3,lab254
	addi	a1,a6,-1
	bnez	a1,lab285
	sub	a2,a0,a2
	sub	a4,a5,a4
	sltu	a5,a0,a2
	sub	a5,a4,a5
	mv	a0,a2
lab298: 	li	s0,1
	j	lab286
lab285: 	li	a3,2047
	beq	a6,a3,lab271
lab290: 	li	a3,56
	blt	a3,a1,lab287
	li	a3,31
	blt	a3,a1,lab288
	li	a6,32
	sub	a6,a6,a1
	sll	a3,a4,a6
	srl	a7,a2,a1
	sll	a6,a2,a6
	or	a3,a3,a7
	snez	a6,a6
	or	a3,a3,a6
	srl	a1,a4,a1
lab292: 	sub	a3,a0,a3
	sub	a1,a5,a1
	sltu	a5,a0,a3
	sub	a5,a1,a5
	mv	a0,a3
lab286: 	lui	s2,0x800
	and	a4,a5,s2
	beqz	a4,lab258
	addi	s2,s2,-1 # 7fffff <_stack+0x6effff>
	and	s2,a5,s2
	mv	s3,a0
	j	lab289
lab284: 	li	a3,2047
	beq	s0,a3,lab258
	lui	a3,0x800
	or	a4,a4,a3
	mv	a1,a6
	j	lab290
lab288: 	addi	a3,a1,-32
	li	a7,32
	srl	a3,a4,a3
	li	a6,0
	beq	a1,a7,lab291
	li	a6,64
	sub	a6,a6,a1
	sll	a6,a4,a6
lab291: 	or	a6,a6,a2
	snez	a6,a6
	or	a3,a3,a6
lab293: 	li	a1,0
	j	lab292
lab287: 	or	a3,a4,a2
	snez	a3,a3
	j	lab293
lab283: 	beqz	a6,lab294
	sub	a6,a7,s0
	bnez	s0,lab295
	or	a1,a5,a0
	beqz	a1,lab296
	addi	a1,a6,-1
	bnez	a1,lab297
	sub	a0,a2,a0
	sub	a4,a4,a5
	sltu	a2,a2,a0
	sub	a5,a4,a2
	mv	s1,a3
	j	lab298
lab297: 	li	t1,2047
	bne	a6,t1,lab299
lab301: 	mv	a5,a4
	mv	a0,a2
	li	s0,2047
	j	lab300
lab295: 	li	a1,2047
	beq	a7,a1,lab301
	lui	a1,0x800
	or	a5,a5,a1
	mv	a1,a6
lab299: 	li	a6,56
	blt	a6,a1,lab302
	li	a6,31
	blt	a6,a1,lab303
	li	t1,32
	sub	t1,t1,a1
	srl	t3,a0,a1
	sll	a6,a5,t1
	sll	t1,a0,t1
	or	a6,a6,t3
	snez	t1,t1
	or	a0,a6,t1
	srl	a1,a5,a1
lab305: 	sub	a0,a2,a0
	sub	a1,a4,a1
	sltu	a2,a2,a0
	sub	a5,a1,a2
	mv	s0,a7
	mv	s1,a3
	j	lab286
lab303: 	addi	a6,a1,-32 # 7fffe0 <_stack+0x6effe0>
	li	t3,32
	srl	a6,a5,a6
	li	t1,0
	beq	a1,t3,lab304
	li	t1,64
	sub	t1,t1,a1
	sll	t1,a5,t1
lab304: 	or	t1,t1,a0
	snez	t1,t1
	or	a0,a6,t1
lab306: 	li	a1,0
	j	lab305
lab302: 	or	a0,a5,a0
	snez	a0,a0
	j	lab306
lab294: 	addi	a1,s0,1
	andi	a1,a1,2046
	bnez	a1,lab307
	or	a1,a4,a2
	or	a6,a5,a0
	bnez	s0,lab308
	bnez	a6,lab309
	beqz	a1,lab310
	mv	a5,a4
	mv	a0,a2
lab300: 	mv	s1,a3
	j	lab258
lab309: 	beqz	a1,lab258
	sub	a6,a0,a2
	sltu	a7,a0,a6
	sub	a1,a5,a4
	sub	a1,a1,a7
	lui	a7,0x800
	and	a7,a1,a7
	beqz	a7,lab311
	sub	a0,a2,a0
	sub	a4,a4,a5
	sltu	a2,a2,a0
	sub	a5,a4,a2
	j	lab300
lab311: 	or	a0,a6,a1
	beqz	a0,lab312
	mv	a5,a1
	mv	a0,a6
	j	lab258
lab308: 	bnez	a6,lab313
	beqz	a1,lab314
	mv	a5,a4
	mv	a0,a2
	mv	s1,a3
	j	lab271
lab313: 	beqz	a1,lab271
	j	lab315
lab307: 	sub	s3,a0,a2
	sltu	a1,a0,s3
	sub	s2,a5,a4
	sub	s2,s2,a1
	lui	a1,0x800
	and	a1,s2,a1
	beqz	a1,lab316
	sub	s3,a2,a0
	sub	s2,a4,a5
	sltu	a2,a2,s3
	sub	s2,s2,a2
	mv	s1,a3
lab289: 	beqz	s2,lab317
	mv	a0,s2
	jal	ra,__clzsi2
lab322: 	addi	a4,a0,-8
	li	a5,31
	blt	a5,a4,lab318
	li	a5,32
	sub	a5,a5,a4
	sll	s2,s2,a4
	srl	a5,s3,a5
	or	a5,a5,s2
	sll	a0,s3,a4
lab323: 	blt	a4,s0,lab319
	sub	a4,a4,s0
	addi	a2,a4,1
	li	a3,31
	blt	a3,a2,lab320
	li	a4,32
	sub	a4,a4,a2
	sll	a3,a5,a4
	srl	a1,a0,a2
	sll	a4,a0,a4
	or	a3,a3,a1
	snez	a4,a4
	or	a0,a3,a4
	srl	a5,a5,a2
lab325: 	li	s0,0
	j	lab258
lab316: 	or	a0,s3,s2
	bnez	a0,lab289
	li	a5,0
	li	s0,0
	j	lab321
lab317: 	mv	a0,s3
	jal	ra,__clzsi2
	addi	a0,a0,32
	j	lab322
lab318: 	addi	a5,a0,-40
	sll	a5,s3,a5
	li	a0,0
	j	lab323
lab320: 	addi	a4,a4,-31
	li	a1,32
	srl	a4,a5,a4
	li	a3,0
	beq	a2,a1,lab324
	li	a3,64
	sub	a3,a3,a2
	sll	a3,a5,a3
lab324: 	or	a3,a0,a3
	snez	a3,a3
	or	a0,a4,a3
	li	a5,0
	j	lab325
lab319: 	sub	s0,s0,a4
	lui	a4,0xff800
	addi	a4,a4,-1 # ff7fffff <_stack+0xff6effff>
	and	a5,a5,a4
	j	lab258
lab267: 	mv	a5,a4
	mv	a0,a2
	mv	s0,a1
	j	lab258
lab280: 	mv	a5,a4
	mv	a0,a2
	j	lab258
lab282: 	li	s0,2047
lab261: 	li	a5,0
	li	a0,0
lab281: 	lui	a4,0x800
	and	a4,a5,a4
	beqz	a4,lab326
	addi	s0,s0,1
	li	a4,2047
	beq	s0,a4,lab327
	lui	a4,0xff800
	addi	a4,a4,-1 # ff7fffff <_stack+0xff6effff>
	and	a5,a5,a4
lab326: 	slli	a3,a5,0x1d
	srli	a0,a0,0x3
	li	a4,2047
	or	a3,a3,a0
	srli	a5,a5,0x3
	bne	s0,a4,lab328
	or	a3,a3,a5
	li	a5,0
	beqz	a3,lab328
	lui	a5,0x80
	li	a3,0
	li	s1,0
lab328: 	slli	a4,s0,0x14
	lui	a2,0x7ff00
	slli	a5,a5,0xc
	lw	ra,28(sp)
	lw	s0,24(sp)
	and	a4,a4,a2
	srli	a5,a5,0xc
	slli	s1,s1,0x1f
	or	a5,a4,a5
	or	a4,a5,s1
	lw	s2,16(sp)
	lw	s1,20(sp)
	lw	s3,12(sp)
	mv	a0,a3
	mv	a1,a4
	addi	sp,sp,32
	ret
lab254: 	mv	s0,a6
	j	lab258
lab296: 	mv	a5,a4
	mv	a0,a2
	mv	s0,a6
	j	lab300
lab310: 	li	a5,0
	li	a0,0
lab321: 	li	s1,0
	j	lab281
lab312: 	li	a5,0
	j	lab321
lab314: 	li	a0,0
	li	s1,0
	lui	a5,0x400
	j	lab329
lab327: 	li	a5,0
	li	a0,0
	j	lab326
__unorddf2:
	lui	a5,0x100
	addi	a5,a5,-1 # fffff <__errno+0xf3d6f>
	and	a4,a5,a1
	srli	a1,a1,0x14
	and	a5,a5,a3
	andi	a1,a1,2047
	srli	a3,a3,0x14
	li	a6,2047
	andi	a3,a3,2047
	bne	a1,a6,lab330
	or	a4,a4,a0
	li	a0,1
	bnez	a4,lab331
lab330: 	li	a4,2047
	li	a0,0
	bne	a3,a4,lab331
	or	a5,a5,a2
	snez	a0,a5
lab331: 	ret
__fixdfsi:
	srli	a4,a1,0x14
	lui	a3,0x100
	addi	a5,a3,-1 # fffff <__errno+0xf3d6f>
	andi	a4,a4,2047
	li	a2,1022
	and	a5,a5,a1
	srli	a1,a1,0x1f
	bge	a2,a4,lab332
	li	a2,1053
	bge	a2,a4,lab333
	lui	a0,0x80000
	not	a0,a0
	add	a0,a1,a0
	ret
lab333: 	or	a5,a5,a3
	li	a3,1075
	sub	a3,a3,a4
	li	a2,31
	blt	a2,a3,lab334
	addi	a4,a4,-1043
	sll	a5,a5,a4
	srl	a0,a0,a3
	or	a0,a5,a0
lab336: 	beqz	a1,lab335
	neg	a0,a0
	ret
lab334: 	li	a3,1043
	sub	a4,a3,a4
	srl	a0,a5,a4
	j	lab336
lab332: 	li	a0,0
lab335: 	ret
__floatsidf:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	beqz	a0,lab337
	srai	a5,a0,0x1f
	xor	s0,a5,a0
	sub	s0,s0,a5
	srli	s1,a0,0x1f
	mv	a0,s0
	jal	ra,__clzsi2
	li	a4,1054
	li	a5,10
	sub	a4,a4,a0
	blt	a5,a0,lab338
	li	a5,11
	sub	a5,a5,a0
	addi	a0,a0,21 # 80000015 <_stack+0x7fef0015>
	srl	a5,s0,a5
	sll	s0,s0,a0
	mv	a0,s1
lab339: 	slli	a5,a5,0xc
	srli	a5,a5,0xc
	slli	a4,a4,0x14
	slli	a0,a0,0x1f
	or	a4,a4,a5
	lw	ra,12(sp)
	or	a5,a4,a0
	mv	a0,s0
	lw	s0,8(sp)
	lw	s1,4(sp)
	mv	a1,a5
	addi	sp,sp,16
	ret
lab338: 	addi	a0,a0,-11
	sll	a5,s0,a0
	mv	a0,s1
lab340: 	li	s0,0
	j	lab339
lab337: 	li	a4,0
	li	a5,0
	j	lab340
__addtf3:
	addi	sp,sp,-112
	lw	a5,8(a1) # 800008 <_stack+0x6f0008>
	sw	s3,92(sp)
	lw	s3,12(a1)
	lw	a3,0(a1)
	lw	a4,4(a1)
	sw	s4,88(sp)
	sw	s8,72(sp)
	mv	s4,a0
	sw	a5,56(sp)
	sw	a5,24(sp)
	lw	a7,0(a2) # 7ff00000 <_stack+0x7fdf0000>
	slli	a5,s3,0x10
	lw	a6,4(a2)
	lw	a0,8(a2)
	lw	s8,12(a2)
	sw	s0,104(sp)
	srli	a5,a5,0x10
	slli	s0,s3,0x1
	sw	a3,48(sp)
	sw	s3,60(sp)
	sw	a3,16(sp)
	sw	ra,108(sp)
	sw	s1,100(sp)
	sw	s2,96(sp)
	sw	s5,84(sp)
	sw	s6,80(sp)
	sw	s7,76(sp)
	sw	s9,68(sp)
	sw	a4,52(sp)
	sw	a4,20(sp)
	sw	a5,28(sp)
	srli	s0,s0,0x11
	srli	s3,s3,0x1f
	addi	a3,sp,16
	addi	a1,sp,28
lab341: 	lw	a5,0(a1)
	lw	a4,-4(a1)
	addi	a1,a1,-4
	slli	a5,a5,0x3
	srli	a4,a4,0x1d
	or	a5,a5,a4
	sw	a5,4(a1)
	bne	a3,a1,lab341
	lw	s2,16(sp)
	slli	a5,s8,0x10
	slli	s7,s8,0x1
	slli	s2,s2,0x3
	srli	a5,a5,0x10
	sw	a6,52(sp)
	sw	a0,56(sp)
	sw	s8,60(sp)
	sw	a6,36(sp)
	sw	a0,40(sp)
	sw	s2,16(sp)
	sw	a7,48(sp)
	sw	a7,32(sp)
	sw	a5,44(sp)
	srli	s7,s7,0x11
	srli	s8,s8,0x1f
	addi	a0,sp,32
	addi	a6,sp,44
lab342: 	lw	a5,0(a6)
	lw	a4,-4(a6)
	addi	a6,a6,-4
	slli	a5,a5,0x3
	srli	a4,a4,0x1d
	or	a5,a5,a4
	sw	a5,4(a6)
	bne	a0,a6,lab342
	lw	s1,32(sp)
	sub	a2,s0,s7
	slli	s1,s1,0x3
	sw	s1,32(sp)
	bne	s3,s8,lab343
	blez	a2,lab344
	lw	s8,20(sp)
	lw	s6,24(sp)
	lw	s5,28(sp)
	bnez	s7,lab345
	lw	a3,36(sp)
	lw	a5,40(sp)
	lw	a1,44(sp)
	or	a4,a3,a5
	or	a4,a4,a1
	or	a4,a4,s1
	bnez	a4,lab346
lab350: 	sw	s2,48(sp)
	sw	s8,52(sp)
	sw	s6,56(sp)
	sw	s5,60(sp)
	mv	s0,a2
	j	lab347
lab346: 	addi	a4,a2,-1
	bnez	a4,lab348
	add	s1,s2,s1
	add	a3,a3,s8
	sw	s1,48(sp)
	sltu	s1,s1,s2
	add	a4,a3,s1
	sw	a4,52(sp)
	sltu	a3,a3,s8
	sltu	a4,a4,s1
	or	a3,a3,a4
	add	a5,a5,s6
	add	a4,a5,a3
	sw	a4,56(sp)
	sltu	a5,a5,s6
	sltu	a4,a4,a3
	or	a5,a5,a4
	add	a1,a1,s5
	add	a5,a5,a1
lab367: 	li	s0,1
	j	lab349
lab348: 	lui	a5,0x8
	addi	a5,a5,-1 # 7fff <__extenddftf2+0x67>
	beq	a2,a5,lab350
	li	a5,116
	bge	a5,a4,lab351
lab354: 	sw	zero,44(sp)
	sw	zero,40(sp)
	sw	zero,36(sp)
	li	a5,1
	j	lab352
lab345: 	lui	a5,0x8
	addi	a5,a5,-1 # 7fff <__extenddftf2+0x67>
	bne	s0,a5,lab353
lab407: 	sw	s2,48(sp)
	sw	s8,52(sp)
	sw	s6,56(sp)
	sw	s5,60(sp)
	j	lab347
lab353: 	lw	a5,44(sp)
	lui	a4,0x80
	or	a5,a5,a4
	sw	a5,44(sp)
	li	a5,116
	blt	a5,a2,lab354
	mv	a4,a2
lab351: 	srai	a5,a4,0x5
	mv	a2,a6
	li	s1,0
	li	a3,0
lab359: 	bne	a3,a5,lab355
	andi	a4,a4,31
	slli	a3,a5,0x2
	bnez	a4,lab356
	li	a2,3
	sub	a2,a2,a5
lab357: 	add	a1,a6,a3
	lw	a1,0(a1)
	addi	a4,a4,1 # 80001 <__errno+0x73d71>
	addi	a6,a6,4
	sw	a1,-4(a6)
	bge	a2,a4,lab357
	li	a4,4
	sub	a5,a4,a5
	j	lab358
lab355: 	lw	a1,0(a2)
	addi	a3,a3,1
	addi	a2,a2,4
	or	s1,s1,a1
	j	lab359
lab356: 	addi	a2,a3,64
	add	a2,a2,sp
	lw	a2,-32(a2)
	li	a7,32
	sub	a7,a7,a4
	sll	a2,a2,a7
	or	s1,s1,a2
	add	a1,a0,a3
	neg	a2,a3
	li	a3,3
	li	t1,0
	sub	a3,a3,a5
lab362: 	blt	t1,a3,lab360
	li	a2,4
	sub	a5,a2,a5
	lw	a2,44(sp)
	slli	a3,a3,0x2
	addi	a3,a3,64
	add	a3,a3,sp
	srl	a4,a2,a4
	sw	a4,-32(a3)
lab358: 	li	a2,4
	sub	a2,a2,a5
	slli	a5,a5,0x2
	add	a0,a0,a5
	slli	a2,a2,0x2
	li	a1,0
	jal	ra,memset
	lw	a5,32(sp)
	snez	s1,s1
	or	a5,a5,s1
lab352: 	sw	a5,32(sp)
	lw	a5,32(sp)
	lw	a4,36(sp)
	add	a5,s2,a5
	add	a4,s8,a4
	sw	a5,48(sp)
	sltu	a5,a5,s2
	add	a3,a4,a5
	sw	a3,52(sp)
	sltu	a3,a3,a5
	lw	a5,40(sp)
	sltu	a4,a4,s8
	or	a4,a4,a3
	add	a5,s6,a5
	add	a3,a5,a4
	sw	a3,56(sp)
	sltu	a3,a3,a4
	lw	a4,44(sp)
	sltu	a5,a5,s6
	or	a5,a5,a3
	add	a4,s5,a4
	add	a5,a5,a4
lab349: 	lui	a4,0x80
	sw	a5,60(sp)
	and	a4,a5,a4
	beqz	a4,lab347
	lui	a4,0xfff80
	addi	a4,a4,-1 # fff7ffff <_stack+0xffe6ffff>
	and	a5,a5,a4
	sw	a5,60(sp)
	lw	a5,48(sp)
	addi	s0,s0,1
	addi	a1,sp,60
	slli	a4,a5,0x1f
	addi	a5,sp,48
lab361: 	lw	a3,0(a5)
	lw	a2,4(a5)
	addi	a5,a5,4
	srli	a3,a3,0x1
	slli	a2,a2,0x1f
	or	a3,a3,a2
	sw	a3,-4(a5)
	bne	a5,a1,lab361
	lw	a5,60(sp)
	srli	a5,a5,0x1
	sw	a5,60(sp)
	snez	a5,a4
	lw	a4,48(sp)
	or	a5,a4,a5
	sw	a5,48(sp)
	lui	a5,0x8
	addi	a5,a5,-1 # 7fff <__extenddftf2+0x67>
	bne	s0,a5,lab347
	sw	zero,60(sp)
	sw	zero,56(sp)
	sw	zero,52(sp)
	sw	zero,48(sp)
	j	lab347
lab360: 	lw	a6,0(a1)
	lw	t3,4(a1)
	add	t4,a1,a2
	srl	a6,a6,a4
	sll	t3,t3,a7
	or	a6,a6,t3
	sw	a6,0(t4)
	addi	t1,t1,1 # 10001 <__errno+0x3d71>
	addi	a1,a1,4
	j	lab362
lab344: 	lw	s5,36(sp)
	lw	s6,40(sp)
	lw	s8,44(sp)
	beqz	a2,lab363
	sub	a0,s7,s0
	bnez	s0,lab364
	lw	a4,20(sp)
	lw	a5,24(sp)
	lw	a6,28(sp)
	or	a2,a4,a5
	or	a2,a2,a6
	or	a2,a2,s2
	bnez	a2,lab365
lab368: 	sw	s1,48(sp)
	sw	s5,52(sp)
	sw	s6,56(sp)
	sw	s8,60(sp)
lab398: 	mv	s0,a0
	j	lab347
lab365: 	addi	a2,a0,-1
	bnez	a2,lab366
	add	s2,s2,s1
	add	a4,a4,s5
	sw	s2,48(sp)
	sltu	s2,s2,s1
	add	a3,a4,s2
	sw	a3,52(sp)
	sltu	a4,a4,s5
	sltu	a3,a3,s2
	or	a4,a4,a3
	add	a5,a5,s6
	add	a3,a5,a4
	sw	a3,56(sp)
	sltu	a5,a5,s6
	sltu	a3,a3,a4
	or	a5,a5,a3
	add	a6,a6,s8
	add	a5,a5,a6
	j	lab367
lab366: 	lui	a5,0x8
	addi	a5,a5,-1 # 7fff <__extenddftf2+0x67>
	beq	a0,a5,lab368
	li	a5,116
	bge	a5,a2,lab369
lab377: 	sw	zero,28(sp)
	sw	zero,24(sp)
	sw	zero,20(sp)
	li	a5,1
	j	lab370
lab364: 	lui	a5,0x8
	addi	a5,a5,-1 # 7fff <__extenddftf2+0x67>
	bne	s7,a5,lab371
	sw	s1,48(sp)
	sw	s5,52(sp)
	sw	s6,56(sp)
	sw	s8,60(sp)
	mv	s0,s7
lab347: 	lw	a5,48(sp)
	andi	a4,a5,7
	beqz	a4,lab372
	andi	a4,a5,15
	li	a3,4
	beq	a4,a3,lab372
	lw	a4,52(sp)
	addi	a5,a5,4
	sw	a5,48(sp)
	sltiu	a5,a5,4
	add	a4,a5,a4
	sw	a4,52(sp)
	sltu	a4,a4,a5
	lw	a5,56(sp)
	add	a5,a4,a5
	sw	a5,56(sp)
	sltu	a5,a5,a4
	lw	a4,60(sp)
	add	a5,a5,a4
	sw	a5,60(sp)
lab372: 	lw	a5,60(sp)
	lui	a4,0x80
	and	a4,a5,a4
	beqz	a4,lab373
	lui	a4,0x8
	addi	s0,s0,1
	addi	a4,a4,-1 # 7fff <__extenddftf2+0x67>
	beq	s0,a4,lab374
	lui	a4,0xfff80
	addi	a4,a4,-1 # fff7ffff <_stack+0xffe6ffff>
	and	a5,a5,a4
	sw	a5,60(sp)
lab373: 	addi	a5,sp,48
	addi	a2,sp,60
lab375: 	lw	a4,0(a5)
	lw	a3,4(a5)
	addi	a5,a5,4
	srli	a4,a4,0x3
	slli	a3,a3,0x1d
	or	a4,a4,a3
	sw	a4,-4(a5)
	bne	a2,a5,lab375
	lw	a4,60(sp)
	lui	a3,0x8
	addi	a5,a3,-1 # 7fff <__extenddftf2+0x67>
	srli	a4,a4,0x3
	sw	a4,60(sp)
	bne	s0,a5,lab376
	lw	a2,52(sp)
	lw	a5,48(sp)
	or	a5,a5,a2
	lw	a2,56(sp)
	or	a5,a5,a2
	or	a5,a5,a4
	beqz	a5,lab376
	sw	a3,60(sp)
	sw	zero,56(sp)
	sw	zero,52(sp)
	sw	zero,48(sp)
	li	s3,0
lab376: 	lw	a5,60(sp)
	slli	s0,s0,0x11
	srli	s0,s0,0x11
	sh	a5,12(sp)
	lw	a5,48(sp)
	slli	s3,s3,0xf
	or	s3,s3,s0
	sw	a5,0(s4)
	lw	a5,52(sp)
	sh	s3,14(sp)
	lw	ra,108(sp)
	sw	a5,4(s4)
	lw	a5,56(sp)
	lw	s0,104(sp)
	lw	s1,100(sp)
	sw	a5,8(s4)
	lw	a5,12(sp)
	lw	s2,96(sp)
	lw	s3,92(sp)
	sw	a5,12(s4)
	lw	s5,84(sp)
	lw	s6,80(sp)
	lw	s7,76(sp)
	lw	s8,72(sp)
	lw	s9,68(sp)
	mv	a0,s4
	lw	s4,88(sp)
	addi	sp,sp,112
	ret
lab371: 	lw	a5,28(sp)
	lui	a4,0x80
	or	a5,a5,a4
	sw	a5,28(sp)
	li	a5,116
	blt	a5,a0,lab377
	mv	a2,a0
lab369: 	li	a5,32
	div	a5,a2,a5
	mv	a0,a1
	li	s0,0
	li	a4,0
lab383: 	blt	a4,a5,lab378
	mv	a4,a5
	bgez	a5,lab379
	li	a4,0
lab379: 	andi	a7,a2,31
	slli	a0,a5,0x2
	bnez	a7,lab380
	li	a2,3
	li	a4,0
	sub	a2,a2,a5
lab381: 	add	a6,a1,a0
	lw	a6,0(a6)
	addi	a4,a4,1 # 80001 <__errno+0x73d71>
	addi	a1,a1,4
	sw	a6,-4(a1)
	bge	a2,a4,lab381
	li	a4,4
	sub	a5,a4,a5
	j	lab382
lab378: 	lw	a6,0(a0)
	addi	a4,a4,1
	addi	a0,a0,4
	or	s0,s0,a6
	j	lab383
lab380: 	li	a1,32
	rem	a2,a2,a1
	slli	a4,a4,0x2
	addi	a4,a4,64
	add	a4,a4,sp
	lw	a4,-48(a4)
	li	t1,0
	sub	a2,a1,a2
	sll	a4,a4,a2
	or	s0,s0,a4
	li	a4,3
	add	a1,a3,a0
	sub	a4,a4,a5
	neg	a0,a0
lab386: 	blt	t1,a4,lab384
	li	a2,4
	sub	a5,a2,a5
	lw	a2,28(sp)
	slli	a4,a4,0x2
	addi	a4,a4,64
	add	a4,a4,sp
	srl	a2,a2,a7
	sw	a2,-48(a4)
lab382: 	li	a4,4
	li	a2,0
	blt	a4,a5,lab385
	sub	a4,a4,a5
	slli	a2,a4,0x2
lab385: 	slli	a5,a5,0x2
	add	a0,a3,a5
	li	a1,0
	jal	ra,memset
	lw	a5,16(sp)
	snez	s0,s0
	or	a5,a5,s0
lab370: 	sw	a5,16(sp)
	lw	a5,16(sp)
	lw	a4,20(sp)
	mv	s0,s7
	add	a5,s1,a5
	add	a4,s5,a4
	sw	a5,48(sp)
	sltu	a5,a5,s1
	add	a3,a4,a5
	sw	a3,52(sp)
	sltu	a3,a3,a5
	lw	a5,24(sp)
	sltu	a4,a4,s5
	or	a4,a4,a3
	add	a5,s6,a5
	add	a3,a5,a4
	sw	a3,56(sp)
	sltu	a3,a3,a4
	lw	a4,28(sp)
	sltu	a5,a5,s6
	or	a5,a5,a3
	add	a4,s8,a4
	add	a5,a5,a4
	j	lab349
lab384: 	lw	a6,0(a1)
	lw	t3,4(a1)
	add	t4,a1,a0
	srl	a6,a6,a7
	sll	t3,t3,a2
	or	a6,a6,t3
	sw	a6,0(t4)
	addi	t1,t1,1
	addi	a1,a1,4
	j	lab386
lab363: 	lui	a6,0x8
	addi	a0,s0,1
	addi	a7,a6,-2 # 7ffe <__extenddftf2+0x66>
	and	a7,a0,a7
	lw	a2,20(sp)
	lw	a3,24(sp)
	lw	a4,28(sp)
	addi	a5,sp,48
	addi	a1,sp,60
	bnez	a7,lab387
	or	a0,a2,a3
	or	a0,a0,a4
	or	a0,a0,s2
	bnez	s0,lab388
	bnez	a0,lab389
	sw	s1,48(sp)
	sw	s5,52(sp)
	sw	s6,56(sp)
	sw	s8,60(sp)
	j	lab347
lab389: 	or	a5,s5,s6
	or	a5,a5,s8
	or	a5,a5,s1
	bnez	a5,lab390
	sw	s2,48(sp)
	sw	a2,52(sp)
	sw	a3,56(sp)
	sw	a4,60(sp)
	j	lab347
lab390: 	add	s1,s2,s1
	add	s5,a2,s5
	sw	s1,48(sp)
	sltu	s1,s1,s2
	add	a5,s5,s1
	sw	a5,52(sp)
	sltu	s5,s5,a2
	sltu	a5,a5,s1
	or	s5,s5,a5
	add	s6,a3,s6
	add	a5,s6,s5
	sw	a5,56(sp)
	sltu	s6,s6,a3
	sltu	a5,a5,s5
	or	s6,s6,a5
	add	a4,a4,s8
	add	s6,s6,a4
	lui	a5,0x80
	and	a5,s6,a5
	bnez	a5,lab391
	sw	s6,60(sp)
	j	lab347
lab391: 	lui	a5,0xfff80
	addi	a5,a5,-1 # fff7ffff <_stack+0xffe6ffff>
	and	s6,s6,a5
	sw	s6,60(sp)
	li	s0,1
	j	lab347
lab388: 	bnez	a0,lab392
	sw	s1,48(sp)
	sw	s5,52(sp)
	sw	s6,56(sp)
	sw	s8,60(sp)
lab394: 	addi	s0,a6,-1
	j	lab347
lab392: 	or	s5,s5,s6
	or	s5,s5,s8
	or	s5,s5,s1
	bnez	s5,lab393
	sw	s2,48(sp)
	sw	a2,52(sp)
	sw	a3,56(sp)
	sw	a4,60(sp)
	j	lab394
lab393: 	sw	a6,60(sp)
	sw	zero,56(sp)
	sw	zero,52(sp)
	sw	zero,48(sp)
	mv	a4,a1
lab395: 	lw	a3,0(a4)
	lw	a2,-4(a4)
	addi	a4,a4,-4
	slli	a3,a3,0x3
	srli	a2,a2,0x1d
	or	a3,a3,a2
	sw	a3,4(a4)
	bne	a5,a4,lab395
lab456: 	lw	a5,48(sp)
	lui	s0,0x8
	li	s3,0
	slli	a5,a5,0x3
	sw	a5,48(sp)
	addi	s0,s0,-1 # 7fff <__extenddftf2+0x67>
	j	lab347
lab387: 	add	s1,s2,s1
	add	s5,a2,s5
	sw	s1,48(sp)
	sltu	s1,s1,s2
	add	a6,s5,s1
	sw	a6,52(sp)
	sltu	s5,s5,a2
	sltu	a6,a6,s1
	or	s5,s5,a6
	add	s6,a3,s6
	add	a2,s6,s5
	sw	a2,56(sp)
	sltu	s6,s6,a3
	sltu	a2,a2,s5
	or	s6,s6,a2
	add	a4,a4,s8
	add	s6,s6,a4
	sw	s6,60(sp)
lab396: 	lw	a4,0(a5)
	lw	a3,4(a5)
	addi	a5,a5,4
	srli	a4,a4,0x1
	slli	a3,a3,0x1f
	or	a4,a4,a3
	sw	a4,-4(a5)
	bne	a1,a5,lab396
	lui	a4,0x8
	addi	a4,a4,-1 # 7fff <__extenddftf2+0x67>
	lw	a5,60(sp)
	beq	a0,a4,lab397
	srli	a5,a5,0x1
	sw	a5,60(sp)
	j	lab398
lab397: 	sw	zero,60(sp)
	sw	zero,56(sp)
	sw	zero,52(sp)
	sw	zero,48(sp)
	j	lab398
lab343: 	blez	a2,lab399
	lw	s8,20(sp)
	lw	s6,24(sp)
	lw	s5,28(sp)
	bnez	s7,lab400
	lw	a1,36(sp)
	lw	a7,40(sp)
	lw	a5,44(sp)
	or	a4,a1,a7
	or	a4,a4,a5
	or	a4,a4,s1
	beqz	a4,lab350
	addi	a4,a2,-1
	bnez	a4,lab401
	sub	a3,s2,s1
	sub	a2,s8,a1
	sltu	a0,s2,a3
	sltu	a6,s8,a2
	sub	a2,a2,a0
	li	a0,0
	bgeu	s2,a3,lab402
	sub	a1,a1,s8
	seqz	a0,a1
lab402: 	or	a0,a0,a6
	sub	a1,s6,a7
	sltu	a6,s6,a1
	sub	a1,a1,a0
	beqz	a0,lab403
	sub	a7,a7,s6
	seqz	a4,a7
lab403: 	sub	a5,s5,a5
	or	a4,a4,a6
	sub	a5,a5,a4
lab425: 	li	s0,1
	j	lab404
lab401: 	lui	a5,0x8
	addi	a5,a5,-1 # 7fff <__extenddftf2+0x67>
	beq	a2,a5,lab350
	li	a5,116
	bge	a5,a4,lab405
lab408: 	sw	zero,44(sp)
	sw	zero,40(sp)
	sw	zero,36(sp)
	li	a5,1
	j	lab406
lab400: 	lui	a5,0x8
	addi	a5,a5,-1 # 7fff <__extenddftf2+0x67>
	beq	s0,a5,lab407
	lw	a5,44(sp)
	lui	a4,0x80
	or	a5,a5,a4
	sw	a5,44(sp)
	li	a5,116
	blt	a5,a2,lab408
	mv	a4,a2
lab405: 	srai	a5,a4,0x5
	mv	a2,a6
	li	s1,0
	li	a3,0
lab413: 	bne	a3,a5,lab409
	andi	a3,a4,31
	slli	a4,a5,0x2
	bnez	a3,lab410
	li	a2,3
	sub	a2,a2,a5
lab411: 	add	a1,a6,a4
	lw	a1,0(a1)
	addi	a3,a3,1
	addi	a6,a6,4
	sw	a1,-4(a6)
	bge	a2,a3,lab411
	li	a4,4
	sub	a5,a4,a5
	j	lab412
lab409: 	lw	a1,0(a2)
	addi	a3,a3,1
	addi	a2,a2,4
	or	s1,s1,a1
	j	lab413
lab410: 	addi	a2,a4,64 # 80040 <__errno+0x73db0>
	add	a2,a2,sp
	lw	a2,-32(a2)
	li	a7,32
	sub	a7,a7,a3
	sll	a2,a2,a7
	or	s1,s1,a2
	add	a1,a0,a4
	neg	a2,a4
	li	a4,3
	li	t1,0
	sub	a4,a4,a5
lab418: 	blt	t1,a4,lab414
	li	a2,4
	sub	a5,a2,a5
	lw	a2,44(sp)
	slli	a4,a4,0x2
	addi	a4,a4,64
	add	a4,a4,sp
	srl	a3,a2,a3
	sw	a3,-32(a4)
lab412: 	li	a2,4
	sub	a2,a2,a5
	slli	a5,a5,0x2
	add	a0,a0,a5
	slli	a2,a2,0x2
	li	a1,0
	jal	ra,memset
	lw	a4,32(sp)
	snez	a5,s1
	or	a5,a4,a5
lab406: 	sw	a5,32(sp)
	lw	a3,32(sp)
	lw	a4,36(sp)
	sub	a3,s2,a3
	sub	a2,s8,a4
	sltu	a5,s2,a3
	sltu	a1,s8,a2
	sub	a2,a2,a5
	li	a5,0
	bgeu	s2,a3,lab415
	sub	a4,a4,s8
	seqz	a5,a4
lab415: 	lw	a0,40(sp)
	or	a5,a5,a1
	li	a4,0
	sub	a1,s6,a0
	sltu	a6,s6,a1
	sub	a1,a1,a5
	beqz	a5,lab416
	sub	a0,a0,s6
	seqz	a4,a0
lab416: 	lw	a5,44(sp)
	or	a4,a4,a6
	sub	a5,s5,a5
	sub	a5,a5,a4
lab404: 	lui	a4,0x80
	sw	a3,48(sp)
	sw	a5,60(sp)
	sw	a1,56(sp)
	sw	a2,52(sp)
	and	a3,a5,a4
	beqz	a3,lab347
	addi	a4,a4,-1 # 7ffff <__errno+0x73d6f>
	and	a5,a5,a4
	sw	a5,60(sp)
	j	lab417
lab414: 	lw	a6,0(a1)
	lw	t3,4(a1)
	add	t4,a1,a2
	srl	a6,a6,a3
	sll	t3,t3,a7
	or	a6,a6,t3
	sw	a6,0(t4)
	addi	t1,t1,1
	addi	a1,a1,4
	j	lab418
lab399: 	lw	s5,36(sp)
	lw	s6,40(sp)
	lw	s9,44(sp)
	beqz	a2,lab419
	sub	a4,s7,s0
	bnez	s0,lab420
	lw	a7,20(sp)
	lw	a6,24(sp)
	lw	a5,28(sp)
	or	a2,a7,a6
	or	a2,a2,a5
	or	a2,a2,s2
	bnez	a2,lab421
lab426: 	sw	s1,48(sp)
	sw	s5,52(sp)
	sw	s6,56(sp)
	sw	s9,60(sp)
	mv	s0,a4
lab430: 	mv	s3,s8
	j	lab347
lab421: 	addi	a0,a4,-1
	bnez	a0,lab422
	sub	a3,s1,s2
	sub	a2,s5,a7
	sltu	a4,s1,a3
	sltu	a1,s5,a2
	sub	a2,a2,a4
	li	a4,0
	bgeu	s1,a3,lab423
	sub	a7,a7,s5
	seqz	a4,a7
lab423: 	or	a4,a4,a1
	sub	a1,s6,a6
	sltu	a7,s6,a1
	sub	a1,a1,a4
	beqz	a4,lab424
	sub	a6,a6,s6
	seqz	a0,a6
lab424: 	sub	a5,s9,a5
	or	a4,a0,a7
	sub	a5,a5,a4
	mv	s3,s8
	j	lab425
lab422: 	lui	a5,0x8
	addi	a5,a5,-1 # 7fff <__extenddftf2+0x67>
	beq	a4,a5,lab426
	li	a5,116
	blt	a5,a0,lab427
	mv	a4,a0
	j	lab428
lab420: 	lui	a5,0x8
	addi	a5,a5,-1 # 7fff <__extenddftf2+0x67>
	bne	s7,a5,lab429
	sw	s1,48(sp)
	sw	s5,52(sp)
	sw	s6,56(sp)
	sw	s9,60(sp)
	mv	s0,s7
	j	lab430
lab429: 	lw	a5,28(sp)
	lui	a2,0x80
	or	a5,a5,a2
	sw	a5,28(sp)
	li	a5,116
	blt	a5,a4,lab427
lab428: 	li	a5,32
	div	a5,a4,a5
	mv	a0,a1
	li	s0,0
	li	a2,0
lab436: 	blt	a2,a5,lab431
	mv	a2,a5
	bgez	a5,lab432
	li	a2,0
lab432: 	andi	a7,a4,31
	slli	a0,a5,0x2
	bnez	a7,lab433
	li	a2,3
	li	a4,0
	sub	a2,a2,a5
lab434: 	add	a6,a1,a0
	lw	a6,0(a6)
	addi	a4,a4,1
	addi	a1,a1,4
	sw	a6,-4(a1)
	bge	a2,a4,lab434
	li	a4,4
	sub	a5,a4,a5
	j	lab435
lab431: 	lw	a6,0(a0)
	addi	a2,a2,1 # 80001 <__errno+0x73d71>
	addi	a0,a0,4
	or	s0,s0,a6
	j	lab436
lab433: 	li	a1,32
	rem	a4,a4,a1
	slli	a2,a2,0x2
	li	t1,0
	sub	a1,a1,a4
	addi	a4,a2,64
	add	a2,a4,sp
	lw	a4,-48(a2)
	add	a2,a3,a0
	neg	a0,a0
	sll	a4,a4,a1
	or	s0,s0,a4
	li	a4,3
	sub	a4,a4,a5
lab441: 	blt	t1,a4,lab437
	li	a2,4
	sub	a5,a2,a5
	lw	a2,28(sp)
	slli	a4,a4,0x2
	addi	a4,a4,64
	add	a4,a4,sp
	srl	a2,a2,a7
	sw	a2,-48(a4)
lab435: 	li	a4,4
	li	a2,0
	blt	a4,a5,lab438
	sub	a4,a4,a5
	slli	a2,a4,0x2
lab438: 	slli	a5,a5,0x2
	add	a0,a3,a5
	li	a1,0
	jal	ra,memset
	lw	a4,16(sp)
	snez	a5,s0
	or	a5,a4,a5
lab442: 	sw	a5,16(sp)
	lw	a3,16(sp)
	lw	a4,20(sp)
	sub	a3,s1,a3
	sub	a2,s5,a4
	sltu	a5,s1,a3
	sltu	a1,s5,a2
	sub	a2,a2,a5
	li	a5,0
	bgeu	s1,a3,lab439
	sub	a4,a4,s5
	seqz	a5,a4
lab439: 	lw	a0,24(sp)
	or	a5,a5,a1
	li	a4,0
	sub	a1,s6,a0
	sltu	a6,s6,a1
	sub	a1,a1,a5
	beqz	a5,lab440
	sub	a0,a0,s6
	seqz	a4,a0
lab440: 	lw	a5,28(sp)
	or	a4,a4,a6
	mv	s0,s7
	sub	a5,s9,a5
	sub	a5,a5,a4
	mv	s3,s8
	j	lab404
lab437: 	lw	a6,0(a2)
	lw	t3,4(a2)
	add	t4,a2,a0
	srl	a6,a6,a7
	sll	t3,t3,a1
	or	a6,a6,t3
	sw	a6,0(t4)
	addi	t1,t1,1
	addi	a2,a2,4
	j	lab441
lab427: 	sw	zero,28(sp)
	sw	zero,24(sp)
	sw	zero,20(sp)
	li	a5,1
	j	lab442
lab419: 	lui	a0,0x8
	addi	a5,a0,-2 # 7ffe <__extenddftf2+0x66>
	addi	a1,s0,1
	and	a1,a1,a5
	lw	a4,20(sp)
	lw	a3,24(sp)
	lw	a5,28(sp)
	bnez	a1,lab443
	or	a1,a4,a3
	or	a2,s5,s6
	or	a1,a1,a5
	or	a2,a2,s9
	or	a1,a1,s2
	or	a2,a2,s1
	bnez	s0,lab444
	bnez	a1,lab445
	sw	s1,48(sp)
	sw	s5,52(sp)
	sw	s6,56(sp)
	sw	s9,60(sp)
	mv	s3,s8
lab452: 	bnez	a2,lab347
lab474: 	li	s0,0
	li	s3,0
	j	lab347
lab445: 	bnez	a2,lab446
	sw	s2,48(sp)
	sw	a4,52(sp)
	sw	a3,56(sp)
lab485: 	sw	a5,60(sp)
	j	lab347
lab446: 	sub	a2,s2,s1
	sub	a6,a4,s5
	sltu	t3,s2,a2
	sltu	a0,a4,a6
	sub	t3,a6,t3
	li	a1,0
	bgeu	s2,a2,lab447
	seqz	a1,a6
lab447: 	or	a1,a1,a0
	sub	a0,a3,s6
	sltu	t4,a3,a0
	sub	t1,a0,a1
	li	a7,0
	beqz	a1,lab448
	seqz	a7,a0
lab448: 	or	a7,a7,t4
	sub	a1,a5,s9
	sub	a1,a1,a7
	lui	a7,0x80
	sw	a1,60(sp)
	sw	t1,56(sp)
	sw	t3,52(sp)
	sw	a2,48(sp)
	and	a7,a1,a7
	beqz	a7,lab449
	sub	s2,s1,s2
	sub	a4,s5,a4
	sltu	a2,s1,s2
	sltu	s5,s5,a4
	sub	a4,a4,a2
	li	a2,0
	bgeu	s1,s2,lab450
	seqz	a2,a6
lab450: 	or	s5,a2,s5
	sub	a3,s6,a3
	sltu	s6,s6,a3
	li	a2,0
	sub	a3,a3,s5
	beqz	s5,lab451
	seqz	a2,a0
lab451: 	sub	a5,s9,a5
	or	a2,a2,s6
	sub	a5,a5,a2
	sw	a5,60(sp)
	sw	a3,56(sp)
	sw	a4,52(sp)
	sw	s2,48(sp)
	j	lab430
lab449: 	or	a2,a2,t3
	or	a2,a2,t1
	or	a2,a2,a1
	j	lab452
lab444: 	addi	a6,sp,48
	bnez	a1,lab453
	bnez	a2,lab454
	sw	a0,60(sp)
	sw	zero,56(sp)
	sw	zero,52(sp)
	sw	zero,48(sp)
	addi	a5,sp,60
lab455: 	lw	a4,0(a5)
	lw	a3,-4(a5)
	addi	a5,a5,-4
	slli	a4,a4,0x3
	srli	a3,a3,0x1d
	or	a4,a4,a3
	sw	a4,4(a5)
	bne	a6,a5,lab455
	j	lab456
lab454: 	sw	s1,48(sp)
	sw	s5,52(sp)
	sw	s6,56(sp)
	sw	s9,60(sp)
	mv	s3,s8
lab458: 	addi	s0,a0,-1
	j	lab347
lab453: 	bnez	a2,lab457
	sw	s2,48(sp)
	sw	a4,52(sp)
	sw	a3,56(sp)
	sw	a5,60(sp)
	j	lab458
lab457: 	sw	a0,60(sp)
	sw	zero,56(sp)
	sw	zero,52(sp)
	sw	zero,48(sp)
	addi	a5,sp,60
lab459: 	lw	a4,0(a5)
	lw	a3,-4(a5)
	addi	a5,a5,-4
	slli	a4,a4,0x3
	srli	a3,a3,0x1d
	or	a4,a4,a3
	sw	a4,4(a5)
	bne	a6,a5,lab459
	j	lab456
lab443: 	sub	a0,s2,s1
	sub	a7,a4,s5
	sltu	t3,s2,a0
	sltu	a6,a4,a7
	sub	t3,a7,t3
	li	a1,0
	bgeu	s2,a0,lab460
	seqz	a1,a7
lab460: 	or	a1,a1,a6
	sub	a6,a3,s6
	sltu	t5,a3,a6
	sub	t4,a6,a1
	li	t1,0
	beqz	a1,lab461
	seqz	t1,a6
lab461: 	or	t1,t1,t5
	sub	a1,a5,s9
	sub	a1,a1,t1
	lui	t1,0x80
	sw	a1,60(sp)
	sw	t4,56(sp)
	sw	t3,52(sp)
	sw	a0,48(sp)
	and	t1,a1,t1
	beqz	t1,lab462
	sub	s2,s1,s2
	sub	a4,s5,a4
	sltu	a1,s1,s2
	sltu	s5,s5,a4
	sub	a4,a4,a1
	li	a1,0
	bgeu	s1,s2,lab463
	seqz	a1,a7
lab463: 	sub	a3,s6,a3
	or	s5,a1,s5
	sltu	s6,s6,a3
	sub	a3,a3,s5
	beqz	s5,lab464
	seqz	a2,a6
lab464: 	sub	a1,s9,a5
	or	a5,a2,s6
	sub	a5,a1,a5
	sw	a5,60(sp)
	sw	a3,56(sp)
	sw	a4,52(sp)
	sw	s2,48(sp)
	mv	s3,s8
lab417: 	lw	a0,60(sp)
	beqz	a0,lab465
	jal	ra,__clzsi2
lab476: 	addi	s1,a0,-12
	li	a4,32
	andi	a0,s1,31
	div	a5,s1,a4
	beqz	a0,lab466
	addi	a7,sp,48
	rem	a3,s1,a4
	sub	a2,a4,a3
	li	a3,-4
	mul	a3,a5,a3
	addi	a4,a3,12
	add	a4,a7,a4
	neg	a3,a3
lab480: 	bne	a7,a4,lab467
	lw	a4,48(sp)
	addi	a2,a5,-1
	slli	a5,a5,0x2
	addi	a5,a5,64
	add	a5,a5,sp
	sll	a4,a4,a0
	sw	a4,-16(a5)
lab479: 	addi	a2,a2,1
	slli	a2,a2,0x2
	li	a1,0
	addi	a0,sp,48
	jal	ra,memset
	blt	s1,s0,lab468
	sub	s1,s1,s0
	addi	s1,s1,1
	li	a0,32
	div	a0,s1,a0
	addi	a3,sp,48
	mv	a4,a3
	li	s0,0
	li	a5,0
lab481: 	blt	a5,a0,lab469
	mv	a5,a0
	bgez	a0,lab470
	li	a5,0
lab470: 	andi	a6,s1,31
	slli	a4,a0,0x2
	bnez	a6,lab471
	li	a2,3
	li	a5,0
	sub	a2,a2,a0
lab472: 	add	a1,a3,a4
	lw	a1,0(a1)
	addi	a5,a5,1
	addi	a3,a3,4
	sw	a1,-4(a3)
	bge	a2,a5,lab472
	li	a5,4
	sub	a0,a5,a0
	j	lab473
lab462: 	or	a0,a0,t3
	or	a0,a0,t4
	or	a0,a0,a1
	beqz	a0,lab474
	j	lab417
lab465: 	lw	a0,56(sp)
	beqz	a0,lab475
	jal	ra,__clzsi2
	addi	a0,a0,32
	j	lab476
lab475: 	lw	a0,52(sp)
	beqz	a0,lab477
	jal	ra,__clzsi2
	addi	a0,a0,64
	j	lab476
lab477: 	lw	a0,48(sp)
	jal	ra,__clzsi2
	addi	a0,a0,96
	j	lab476
lab466: 	li	a2,-4
	mul	a2,a5,a2
	addi	a4,sp,60
	li	a3,3
lab478: 	add	a1,a4,a2
	lw	a1,0(a1)
	addi	a3,a3,-1
	addi	a4,a4,-4
	sw	a1,4(a4)
	bge	a3,a5,lab478
	addi	a2,a5,-1
	j	lab479
lab467: 	lw	a1,0(a4)
	lw	a6,-4(a4)
	add	t1,a4,a3
	sll	a1,a1,a0
	srl	a6,a6,a2
	or	a1,a1,a6
	sw	a1,0(t1) # 80000 <__errno+0x73d70>
	addi	a4,a4,-4
	j	lab480
lab469: 	lw	a2,0(a4)
	addi	a5,a5,1
	addi	a4,a4,4
	or	s0,s0,a2
	j	lab481
lab471: 	li	a3,32
	rem	s1,s1,a3
	slli	a5,a5,0x2
	addi	a5,a5,64
	add	a5,a5,sp
	lw	a5,-16(a5)
	li	a7,0
	sub	a3,a3,s1
	sll	a5,a5,a3
	or	s0,s0,a5
	addi	a5,sp,48
	add	a2,a5,a4
	li	a5,3
	neg	a4,a4
	sub	a5,a5,a0
lab484: 	blt	a7,a5,lab482
	li	a4,4
	sub	a0,a4,a0
	lw	a4,60(sp)
	slli	a5,a5,0x2
	addi	a5,a5,64
	add	a5,a5,sp
	srl	a4,a4,a6
	sw	a4,-16(a5)
lab473: 	li	a5,4
	li	a2,0
	blt	a5,a0,lab483
	sub	a5,a5,a0
	slli	a2,a5,0x2
lab483: 	addi	a5,sp,48
	slli	a0,a0,0x2
	add	a0,a5,a0
	li	a1,0
	jal	ra,memset
	lw	a4,48(sp)
	snez	a5,s0
	li	s0,0
	or	a5,a4,a5
	sw	a5,48(sp)
	j	lab347
lab482: 	lw	a1,0(a2)
	lw	t1,4(a2)
	add	t3,a2,a4
	srl	a1,a1,a6
	sll	t1,t1,a3
	or	a1,a1,t1
	sw	a1,0(t3)
	addi	a7,a7,1 # 80001 <__errno+0x73d71>
	addi	a2,a2,4
	j	lab484
lab468: 	lw	a5,60(sp)
	lui	a4,0xfff80
	addi	a4,a4,-1 # fff7ffff <_stack+0xffe6ffff>
	sub	s0,s0,s1
	and	a5,a5,a4
	j	lab485
lab374: 	sw	zero,60(sp)
	sw	zero,56(sp)
	sw	zero,52(sp)
	sw	zero,48(sp)
	j	lab373
__divtf3:
	addi	sp,sp,-160
	sw	s4,136(sp)
	lw	s4,12(a1)
	lw	a6,0(a1)
	lw	a5,4(a1)
	sw	s0,152(sp)
	mv	s0,a0
	lw	a0,8(a1)
	slli	a4,s4,0x10
	sw	s3,140(sp)
	sw	s6,128(sp)
	lw	s3,12(a2)
	lw	s6,4(a2)
	sw	s7,124(sp)
	sw	s8,120(sp)
	lw	s7,8(a2)
	lw	s8,0(a2)
	lui	a2,0x8
	sw	s2,144(sp)
	srli	a4,a4,0x10
	srli	s2,s4,0x10
	addi	a2,a2,-1 # 7fff <__extenddftf2+0x67>
	sw	s4,92(sp)
	sw	ra,156(sp)
	sw	s1,148(sp)
	sw	s5,132(sp)
	sw	s9,116(sp)
	sw	s10,112(sp)
	sw	s11,108(sp)
	sw	a6,80(sp)
	sw	a5,84(sp)
	sw	a0,88(sp)
	sw	a6,32(sp)
	sw	a5,36(sp)
	sw	a0,40(sp)
	sw	a4,44(sp)
	and	a3,s2,a2
	srli	s4,s4,0x1f
	beqz	a3,lab486
	beq	a3,a2,lab487
	lui	a5,0x10
	or	a4,a4,a5
	sw	a4,44(sp)
	addi	a1,sp,32
	addi	a5,sp,44
lab488: 	lw	a4,0(a5) # 10000 <__errno+0x3d70>
	lw	a2,-4(a5)
	addi	a5,a5,-4
	slli	a4,a4,0x3
	srli	a2,a2,0x1d
	or	a4,a4,a2
	sw	a4,4(a5)
	bne	a1,a5,lab488
	lw	a5,32(sp)
	slli	a5,a5,0x3
	sw	a5,32(sp)
	lui	a5,0xffffc
	addi	a5,a5,1 # ffffc001 <_stack+0xffeec001>
	add	s2,a3,a5
lab497: 	li	s5,0
lab504: 	slli	a0,s3,0x10
	lui	a4,0x8
	srli	a5,s3,0x10
	srli	a0,a0,0x10
	addi	a4,a4,-1 # 7fff <__extenddftf2+0x67>
	sw	s3,92(sp)
	sw	s8,80(sp)
	sw	s6,84(sp)
	sw	s7,88(sp)
	sw	s8,48(sp)
	sw	s6,52(sp)
	sw	s7,56(sp)
	sw	a0,60(sp)
	and	a5,a5,a4
	srli	s3,s3,0x1f
	beqz	a5,lab489
	beq	a5,a4,lab490
	lui	a4,0x10
	or	a0,a0,a4
	sw	a0,60(sp)
	addi	a1,sp,48
	addi	a4,sp,60
lab491: 	lw	a3,0(a4) # 10000 <__errno+0x3d70>
	lw	a2,-4(a4)
	addi	a4,a4,-4
	slli	a3,a3,0x3
	srli	a2,a2,0x1d
	or	a3,a3,a2
	sw	a3,4(a4)
	bne	a1,a4,lab491
	lw	a4,48(sp)
	slli	a4,a4,0x3
	sw	a4,48(sp)
	lui	a4,0xffffc
	addi	a4,a4,1 # ffffc001 <_stack+0xffeec001>
	add	a5,a5,a4
lab509: 	li	a4,0
lab516: 	sub	a3,s2,a5
	slli	a5,s5,0x2
	or	a5,a5,a4
	addi	a5,a5,-1
	li	a2,14
	xor	s1,s4,s3
	bltu	a2,a5,lab492
	lui	a2,0x100
	slli	a5,a5,0x2
	addi	a2,a2,60 # 10003c <__errno+0xf3dac>
	add	a5,a5,a2
	lw	a5,0(a5)
	jr	a5
lab486: 	or	a3,a5,a6
	or	a3,a3,a0
	or	a3,a3,a4
	beqz	a3,lab493
	beqz	a4,lab494
	mv	a0,a4
	jal	ra,__clzsi2
	mv	s2,a0
lab499: 	addi	a3,s2,-12
	srai	a5,a3,0x5
	andi	a3,a3,31
	beqz	a3,lab495
	li	a2,-4
	mul	a2,a5,a2
	li	a0,32
	addi	a7,sp,32
	sub	a0,a0,a3
	addi	a4,a2,12
	add	a4,a7,a4
	neg	a2,a2
lab503: 	bne	a7,a4,lab496
	addi	a2,a5,-1
	slli	a5,a5,0x2
	addi	a4,sp,32
	addi	a5,a5,64
	add	a5,a5,a4
	lw	a4,32(sp)
	sll	a4,a4,a3
	sw	a4,-64(a5)
lab502: 	addi	a2,a2,1
	slli	a2,a2,0x2
	li	a1,0
	addi	a0,sp,32
	jal	ra,memset
	lui	a3,0xffffc
	addi	a3,a3,17 # ffffc011 <_stack+0xffeec011>
	sub	s2,a3,s2
	j	lab497
lab494: 	beqz	a0,lab498
	jal	ra,__clzsi2
	addi	s2,a0,32
	j	lab499
lab498: 	beqz	a5,lab500
	mv	a0,a5
	jal	ra,__clzsi2
	addi	s2,a0,64
	j	lab499
lab500: 	mv	a0,a6
	jal	ra,__clzsi2
	addi	s2,a0,96
	j	lab499
lab495: 	li	a2,-4
	mul	a2,a5,a2
	addi	a4,sp,44
	li	a3,3
lab501: 	add	a1,a4,a2
	lw	a1,0(a1)
	addi	a3,a3,-1
	addi	a4,a4,-4
	sw	a1,4(a4)
	bge	a3,a5,lab501
	addi	a2,a5,-1
	j	lab502
lab496: 	lw	a1,0(a4)
	lw	a6,-4(a4)
	add	t1,a4,a2
	sll	a1,a1,a3
	srl	a6,a6,a0
	or	a1,a1,a6
	sw	a1,0(t1)
	addi	a4,a4,-4
	j	lab503
lab487: 	or	a5,a5,a6
	or	a5,a5,a0
	or	a5,a5,a4
	mv	s2,a3
	li	s5,3
	bnez	a5,lab504
	li	s5,2
	j	lab504
lab493: 	li	s2,0
	li	s5,1
	j	lab504
lab489: 	or	a5,s6,s8
	or	a5,a5,s7
	or	a5,a5,a0
	beqz	a5,lab505
	beqz	a0,lab506
	jal	ra,__clzsi2
	mv	s1,a0
lab511: 	addi	a3,s1,-12
	srai	a5,a3,0x5
	andi	a3,a3,31
	beqz	a3,lab507
	li	a2,-4
	mul	a2,a5,a2
	li	a0,32
	addi	a7,sp,48
	sub	a0,a0,a3
	addi	a4,a2,12
	add	a4,a7,a4
	neg	a2,a2
lab515: 	bne	a7,a4,lab508
	addi	a2,a5,-1
	slli	a5,a5,0x2
	addi	a4,sp,32
	addi	a5,a5,64
	add	a5,a5,a4
	lw	a4,48(sp)
	sll	a4,a4,a3
	sw	a4,-48(a5)
lab514: 	addi	a2,a2,1
	slli	a2,a2,0x2
	li	a1,0
	addi	a0,sp,48
	jal	ra,memset
	lui	a5,0xffffc
	addi	a5,a5,17 # ffffc011 <_stack+0xffeec011>
	sub	a5,a5,s1
	j	lab509
lab506: 	beqz	s7,lab510
	mv	a0,s7
	jal	ra,__clzsi2
	addi	s1,a0,32
	j	lab511
lab510: 	beqz	s6,lab512
	mv	a0,s6
	jal	ra,__clzsi2
	addi	s1,a0,64
	j	lab511
lab512: 	mv	a0,s8
	jal	ra,__clzsi2
	addi	s1,a0,96
	j	lab511
lab507: 	li	a2,-4
	mul	a2,a5,a2
	addi	a4,sp,60
	li	a3,3
lab513: 	add	a1,a4,a2
	lw	a1,0(a1)
	addi	a3,a3,-1
	addi	a4,a4,-4
	sw	a1,4(a4)
	bge	a3,a5,lab513
	addi	a2,a5,-1
	j	lab514
lab508: 	lw	a1,0(a4)
	lw	a6,-4(a4)
	add	t1,a4,a2
	sll	a1,a1,a3
	srl	a6,a6,a0
	or	a1,a1,a6
	sw	a1,0(t1)
	addi	a4,a4,-4
	j	lab515
lab490: 	or	s6,s6,s8
	or	s6,s6,s7
	or	s6,s6,a0
	li	a4,3
	bnez	s6,lab516
	li	a4,2
	j	lab516
lab505: 	li	a5,0
	li	a4,1
	j	lab516
lab492: 	lw	a0,44(sp)
	lw	a1,60(sp)
	sw	zero,92(sp)
	sw	zero,88(sp)
	sw	zero,84(sp)
	sw	zero,80(sp)
	lw	a5,32(sp)
	lw	a4,36(sp)
	lw	a2,56(sp)
	bltu	a1,a0,lab517
	bne	a0,a1,lab518
	lw	a1,40(sp)
	bltu	a2,a1,lab517
	bne	a1,a2,lab518
	lw	a2,52(sp)
	bltu	a2,a4,lab517
	bne	a2,a4,lab518
	lw	a4,48(sp)
	bltu	a5,a4,lab518
lab517: 	slli	a5,a5,0x1f
	sw	a5,92(sp)
	addi	a1,sp,44
	addi	a5,sp,32
lab519: 	lw	a4,0(a5)
	lw	a2,4(a5)
	addi	a5,a5,4
	srli	a4,a4,0x1
	slli	a2,a2,0x1f
	or	a4,a4,a2
	sw	a4,-4(a5)
	bne	a1,a5,lab519
	lw	a5,44(sp)
	srli	a5,a5,0x1
	sw	a5,44(sp)
lab529: 	addi	a1,sp,48
	addi	a5,sp,60
lab520: 	lw	a4,0(a5)
	lw	a2,-4(a5)
	addi	a5,a5,-4
	slli	a4,a4,0xc
	srli	a2,a2,0x14
	or	a4,a4,a2
	sw	a4,4(a5)
	bne	a1,a5,lab520
	lw	t6,60(sp)
	lw	a7,52(sp)
	lui	t5,0x10
	addi	t5,t5,-1 # ffff <__errno+0x3d6f>
	lw	t4,56(sp)
	and	a5,t6,t5
	lw	a6,48(sp)
	sw	a5,16(sp)
	srli	a5,a7,0x10
	sw	a5,4(sp)
	and	a5,a7,t5
	sw	a5,12(sp)
	srli	a5,t4,0x10
	slli	a6,a6,0xc
	sw	a5,8(sp)
	and	a5,t4,t5
	sw	a5,20(sp)
	lw	t1,40(sp)
	sub	a5,a7,a6
	lw	a4,44(sp)
	lw	a2,36(sp)
	lw	a1,32(sp)
	sw	a5,24(sp)
	sub	a5,t4,a7
	srli	s5,t6,0x10
	srli	s11,a6,0x10
	addi	t2,sp,64
	addi	s3,sp,80
	li	s4,3
	lui	s8,0x10
	and	s10,a6,t5
	sw	a5,28(sp)
lab528: 	bne	t6,a4,lab521
	li	a5,-1
	sw	a5,12(t2)
	beqz	s4,lab522
	lw	a0,12(s3)
	sub	s2,a6,a1
	sltu	t3,a6,s2
	snez	a5,a0
	li	s6,0
	beqz	a0,lab523
	seqz	s6,s2
lab523: 	or	s6,s6,t3
	sub	t0,a7,a2
	sltu	t3,a7,t0
	li	s7,0
	beqz	s6,lab524
	seqz	s7,t0
lab524: 	or	s7,s7,t3
	lw	t3,24(sp)
	add	a0,a6,a0
	add	t3,t3,a1
	add	t3,t3,a5
	sltu	a1,a6,a0
	sltu	s9,a7,t3
	sub	t3,t3,a1
	li	a1,0
	bgeu	a6,a0,lab525
	sub	s2,s2,a5
	sub	s2,s2,a7
	seqz	a1,s2
lab525: 	or	a5,a1,s9
	lw	a1,28(sp)
	add	a1,a1,a2
	add	a1,a1,s6
	sltu	s2,t4,a1
	li	a2,0
	sub	a1,a1,a5
	beqz	a5,lab526
	sub	t0,t0,s6
	sub	t0,t0,t4
	seqz	a2,t0
lab526: 	sub	a5,a4,t4
	add	a5,a5,t1
	add	a5,a5,s7
	or	a2,a2,s2
	sub	a5,a5,a2
	bgeu	a4,a5,lab527
	li	a2,-2
	add	a0,a0,a6
	add	t1,t3,a7
	sw	a2,12(t2)
	sltu	a2,a0,a6
	add	t3,t1,a2
	sltu	a2,t3,a2
	sltu	t1,t1,a7
	or	a2,t1,a2
	add	t1,a1,t4
	add	a1,t1,a2
	sltu	a2,a1,a2
	sltu	t1,t1,t4
	or	t1,t1,a2
	add	t1,t1,a4
	add	a5,a5,t1
lab527: 	mv	t1,a1
	addi	s4,s4,-1
	addi	t2,t2,-4
	addi	s3,s3,-4
	mv	a2,t3
	mv	a1,a0
	mv	a4,a5
	j	lab528
lab518: 	addi	a3,a3,-1
	j	lab529
lab521: 	divu	t3,a4,s5
	lw	a5,16(sp)
	srli	a0,t1,0x10
	remu	a4,a4,s5
	mul	a5,a5,t3
	slli	a4,a4,0x10
	or	a4,a0,a4
	mv	a0,t3
	bgeu	a4,a5,lab530
	add	a4,a4,t6
	addi	a0,t3,-1
	bltu	a4,t6,lab530
	bgeu	a4,a5,lab530
	addi	a0,t3,-2
	add	a4,a4,t6
lab530: 	sub	a4,a4,a5
	divu	t3,a4,s5
	lw	a5,16(sp)
	and	t1,t1,t5
	remu	a4,a4,s5
	mul	a5,a5,t3
	slli	a4,a4,0x10
	or	t1,t1,a4
	mv	a4,t3
	bgeu	t1,a5,lab531
	add	t1,t1,t6
	addi	a4,t3,-1
	bltu	t1,t6,lab531
	bgeu	t1,a5,lab531
	addi	a4,t3,-2
	add	t1,t1,t6
lab531: 	slli	a0,a0,0x10
	or	a0,a0,a4
	srli	t0,a0,0x10
	and	a4,a0,t5
	mul	t3,s10,a4
	sub	a5,t1,a5
	sw	a0,12(t2)
	mul	s2,t0,s10
	srli	s7,t3,0x10
	mul	t1,s11,a4
	add	t1,t1,s2
	add	t1,s7,t1
	mul	s6,t0,s11
	bgeu	t1,s2,lab532
	add	s6,s6,s8
lab532: 	srli	s2,t1,0x10
	and	t1,t1,t5
	and	t3,t3,t5
	slli	t1,t1,0x10
	add	t1,t1,t3
	lw	t3,12(sp)
	add	s2,s2,s6
	sw	s2,0(sp)
	mul	s6,t3,a4
	mul	s7,t0,t3
	lw	t3,4(sp)
	mul	s9,t0,t3
	mul	t3,t3,a4
	add	t3,t3,s7
	mv	s2,t3
	srli	t3,s6,0x10
	add	t3,t3,s2
	bgeu	t3,s7,lab533
	add	s9,s9,s8
lab533: 	lw	s2,0(sp)
	and	s7,t3,t5
	slli	s7,s7,0x10
	and	s6,s6,t5
	add	s6,s7,s6
	add	s6,s6,s2
	sltu	s2,s6,s2
	srli	t3,t3,0x10
	add	t3,t3,s2
	lw	s7,20(sp)
	add	t3,t3,s9
	lw	s9,8(sp)
	mul	s7,t0,s7
	lw	s2,20(sp)
	mul	s9,t0,s9
	lw	t0,8(sp)
	mul	s2,s2,a4
	mul	a4,t0,a4
	srli	t0,s2,0x10
	add	a4,a4,s7
	add	a4,t0,a4
	bgeu	a4,s7,lab534
	add	s9,s9,s8
lab534: 	and	t0,a4,t5
	slli	t0,t0,0x10
	and	s2,s2,t5
	add	s2,t0,s2
	add	s2,s2,t3
	srli	a4,a4,0x10
	sltu	t3,s2,t3
	add	a4,a4,t3
	add	t0,a4,s9
	lw	a4,12(s3)
	bltu	a5,t0,lab535
	bne	t0,a5,lab536
	bltu	a2,s2,lab535
	bne	a2,s2,lab536
	bltu	a1,s6,lab535
	bne	s6,a1,lab536
	bgeu	a4,t1,lab536
lab535: 	addi	t3,a0,-1
	add	a4,a4,a6
	add	s7,a7,a1
	sw	t3,12(t2)
	sltu	t3,a4,a6
	add	a1,s7,t3
	sltu	t3,a1,t3
	sltu	s7,s7,a7
	or	t3,s7,t3
	add	s7,t4,a2
	add	a2,s7,t3
	sltu	t3,a2,t3
	sltu	s7,s7,t4
	or	s7,s7,t3
	add	s7,s7,t6
	add	a5,a5,s7
	bltu	t6,a5,lab537
	bne	t6,a5,lab536
	bltu	t4,a2,lab537
	bne	t4,a2,lab536
	bltu	a7,a1,lab537
	bne	a7,a1,lab536
	bltu	a4,a6,lab536
lab537: 	bltu	a5,t0,lab538
	bne	t0,a5,lab536
	bltu	a2,s2,lab538
	bne	a2,s2,lab536
	bltu	a1,s6,lab538
	bne	a1,s6,lab536
	bgeu	a4,t1,lab536
lab538: 	addi	a0,a0,-2
	add	a4,a4,a6
	add	t3,a7,a1
	sw	a0,12(t2)
	sltu	a0,a4,a6
	add	a1,t3,a0
	sltu	a0,a1,a0
	sltu	t3,t3,a7
	or	a0,t3,a0
	add	t3,t4,a2
	add	a2,t3,a0
	sltu	a0,a2,a0
	sltu	t3,t3,t4
	or	t3,t3,a0
	add	t3,t3,t6
	add	a5,a5,t3
lab536: 	sub	a0,a4,t1
	sub	t3,a1,s6
	sltu	s7,a4,a0
	sltu	s9,a1,t3
	sub	t3,t3,s7
	li	s7,0
	bgeu	a4,a0,lab539
	sub	a4,s6,a1
	seqz	s7,a4
lab539: 	or	a4,s7,s9
	sub	s9,a2,s2
	sltu	a2,a2,s9
	sub	a1,s9,a4
	li	s7,0
	beqz	a4,lab540
	seqz	s7,s9
lab540: 	sub	a5,a5,t0
	or	s7,s7,a2
	sub	a5,a5,s7
	bnez	s4,lab527
	bne	t1,a0,lab541
	bne	t3,s6,lab541
	bne	a1,s2,lab541
	beq	t0,a5,lab522
lab541: 	lw	a5,64(sp)
	ori	a5,a5,1
	sw	a5,64(sp)
lab522: 	lui	a5,0x4
	addi	a5,a5,-1 # 3fff <__addtf3+0x887>
	add	a5,a3,a5
	blez	a5,lab542
	lw	a4,64(sp)
	andi	a2,a4,7
	beqz	a2,lab543
	andi	a2,a4,15
	li	a1,4
	beq	a2,a1,lab543
	lw	a2,68(sp)
	addi	a4,a4,4
	sw	a4,64(sp)
	sltiu	a4,a4,4
	add	a2,a4,a2
	sw	a2,68(sp)
	sltu	a2,a2,a4
	lw	a4,72(sp)
	add	a4,a2,a4
	sw	a4,72(sp)
	sltu	a4,a4,a2
	lw	a2,76(sp)
	add	a4,a4,a2
	sw	a4,76(sp)
lab543: 	lw	a4,76(sp)
	lui	a2,0x100
	and	a2,a4,a2
	beqz	a2,lab544
	lui	a5,0xfff00
	addi	a5,a5,-1 # ffefffff <_stack+0xffdeffff>
	and	a4,a4,a5
	lui	a5,0x4
	sw	a4,76(sp)
	add	a5,a3,a5
lab544: 	addi	a4,sp,64
	addi	a1,sp,76
lab545: 	lw	a3,0(a4)
	lw	a2,4(a4)
	addi	a4,a4,4
	srli	a3,a3,0x3
	slli	a2,a2,0x1d
	or	a3,a3,a2
	sw	a3,-4(a4)
	bne	a1,a4,lab545
	lui	a3,0x8
	addi	a2,a3,-2 # 7ffe <__extenddftf2+0x66>
	lw	a4,76(sp)
	blt	a2,a5,lab546
	srli	a4,a4,0x3
	sw	a4,76(sp)
lab549: 	slli	a5,a5,0x11
	srli	a5,a5,0x11
	slli	s1,s1,0xf
	or	s1,s1,a5
	lw	a5,64(sp)
	lw	a4,76(sp)
	sh	s1,94(sp)
	sw	a5,0(s0)
	lw	a5,68(sp)
	sh	a4,92(sp)
	lw	ra,156(sp)
	sw	a5,4(s0)
	lw	a5,72(sp)
	mv	a0,s0
	lw	s1,148(sp)
	sw	a5,8(s0)
	lw	a5,92(sp)
	lw	s2,144(sp)
	lw	s3,140(sp)
	sw	a5,12(s0)
	lw	s0,152(sp)
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
	lw	a5,32(sp)
	mv	s1,s4
	mv	a4,s5
	sw	a5,64(sp)
	lw	a5,36(sp)
	sw	a5,68(sp)
	lw	a5,40(sp)
	sw	a5,72(sp)
	lw	a5,44(sp)
lab550: 	sw	a5,76(sp)
	li	a5,1
	beq	a4,a5,lab547
	beqz	a4,lab522
	li	a5,2
	beq	a4,a5,lab548
	li	a5,3
	bne	a4,a5,lab522
	lui	a5,0x8
	sw	a5,76(sp)
	sw	zero,72(sp)
	sw	zero,68(sp)
	sw	zero,64(sp)
	addi	a5,a5,-1 # 7fff <__extenddftf2+0x67>
	li	s1,0
	j	lab549
	lw	a5,48(sp)
	mv	s1,s3
	sw	a5,64(sp)
	lw	a5,52(sp)
	sw	a5,68(sp)
	lw	a5,56(sp)
	sw	a5,72(sp)
	lw	a5,60(sp)
	j	lab550
lab546: 	sw	zero,76(sp)
	sw	zero,72(sp)
	sw	zero,68(sp)
	sw	zero,64(sp)
	addi	a5,a3,-1
	j	lab549
lab542: 	li	a4,1
	sub	a5,a4,a5
	li	a4,116
	blt	a4,a5,lab551
	addi	s3,sp,64
	srai	a0,a5,0x5
	mv	a3,s3
	li	s2,0
	li	a4,0
lab556: 	bne	a4,a0,lab552
	andi	a5,a5,31
	slli	a4,a0,0x2
	bnez	a5,lab553
	li	a2,3
	mv	a5,s3
	li	a3,0
	sub	a2,a2,a0
lab554: 	add	a1,a5,a4
	lw	a1,0(a1)
	addi	a3,a3,1
	addi	a5,a5,4
	sw	a1,-4(a5)
	bge	a2,a3,lab554
	li	a5,4
	sub	a0,a5,a0
	j	lab555
lab552: 	lw	a2,0(a3)
	addi	a4,a4,1
	addi	a3,a3,4
	or	s2,s2,a2
	j	lab556
lab553: 	addi	a3,a4,64
	addi	a2,sp,32
	add	a3,a3,a2
	lw	a3,-32(a3)
	li	a6,32
	sub	a6,a6,a5
	sll	a3,a3,a6
	or	s2,s2,a3
	add	a2,s3,a4
	neg	a3,a4
	li	a4,3
	li	a7,0
	sub	a4,a4,a0
lab560: 	blt	a7,a4,lab557
	li	a3,4
	slli	a4,a4,0x2
	sub	a0,a3,a0
	addi	a4,a4,64
	addi	a3,sp,32
	add	a4,a4,a3
	lw	a3,76(sp)
	srl	a5,a3,a5
	sw	a5,-32(a4)
lab555: 	li	s4,4
	sub	a2,s4,a0
	slli	a0,a0,0x2
	slli	a2,a2,0x2
	li	a1,0
	add	a0,s3,a0
	jal	ra,memset
	lw	a4,64(sp)
	snez	a5,s2
	or	a5,a5,a4
	sw	a5,64(sp)
	andi	a4,a5,7
	beqz	a4,lab558
	andi	a4,a5,15
	beq	a4,s4,lab558
	lw	a4,68(sp)
	addi	a5,a5,4
	sw	a5,64(sp)
	sltiu	a5,a5,4
	add	a4,a5,a4
	sw	a4,68(sp)
	sltu	a4,a4,a5
	lw	a5,72(sp)
	add	a5,a4,a5
	sw	a5,72(sp)
	sltu	a5,a5,a4
	lw	a4,76(sp)
	add	a5,a5,a4
	sw	a5,76(sp)
lab558: 	lw	a4,76(sp)
	lui	a5,0x80
	and	a5,a5,a4
	beqz	a5,lab559
	sw	zero,76(sp)
	sw	zero,72(sp)
	sw	zero,68(sp)
	sw	zero,64(sp)
	li	a5,1
	j	lab549
lab557: 	lw	a1,0(a2) # 100000 <__errno+0xf3d70>
	lw	t1,4(a2)
	add	t3,a2,a3
	srl	a1,a1,a5
	sll	t1,t1,a6
	or	a1,a1,t1
	sw	a1,0(t3)
	addi	a7,a7,1
	addi	a2,a2,4
	j	lab560
lab559: 	addi	a3,s3,12
lab561: 	lw	a5,0(s3)
	lw	a4,4(s3)
	addi	s3,s3,4
	srli	a5,a5,0x3
	slli	a4,a4,0x1d
	or	a5,a5,a4
	sw	a5,-4(s3)
	bne	s3,a3,lab561
	lw	a5,76(sp)
	srli	a5,a5,0x3
	sw	a5,76(sp)
lab562: 	li	a5,0
	j	lab549
lab551: 	lw	a5,68(sp)
	lw	a4,64(sp)
	or	a4,a4,a5
	lw	a5,72(sp)
	or	a4,a4,a5
	lw	a5,76(sp)
	or	a4,a4,a5
	li	a5,0
	beqz	a4,lab549
	sw	zero,76(sp)
	sw	zero,72(sp)
	sw	zero,68(sp)
	sw	zero,64(sp)
	j	lab549
lab547: 	sw	zero,76(sp)
	sw	zero,72(sp)
	sw	zero,68(sp)
	sw	zero,64(sp)
	j	lab562
lab548: 	lui	a5,0x8
	sw	zero,76(sp)
	sw	zero,72(sp)
	sw	zero,68(sp)
	sw	zero,64(sp)
	addi	a5,a5,-1 # 7fff <__extenddftf2+0x67>
	j	lab549
__letf2:
	lw	t6,0(a0)
	lw	a6,4(a0)
	lw	t3,8(a0)
	lw	a0,12(a0)
	lw	a3,12(a1)
	lui	a5,0x8
	srli	a2,a0,0x10
	addi	a5,a5,-1 # 7fff <__extenddftf2+0x67>
	slli	t1,a3,0x10
	srli	a4,a3,0x10
	lw	t0,0(a1)
	lw	a7,4(a1)
	lw	t4,8(a1)
	and	a2,a2,a5
	slli	a1,a0,0x10
	addi	sp,sp,-16
	srli	a1,a1,0x10
	srli	a0,a0,0x1f
	srli	t1,t1,0x10
	and	a4,a4,a5
	srli	a3,a3,0x1f
	bne	a2,a5,lab563
	or	a5,a6,t6
	or	a5,a5,t3
	or	a5,a5,a1
	beqz	a5,lab564
lab567: 	li	a0,2
	j	lab565
lab563: 	bne	a4,a5,lab566
lab582: 	or	a5,t0,a7
	or	a5,a5,t4
	or	a5,a5,t1
	bnez	a5,lab567
lab566: 	bnez	a2,lab568
	or	a5,a6,t6
	or	a5,a5,t3
	or	a5,a5,a1
	seqz	a5,a5
	bnez	a4,lab569
lab584: 	or	t5,t0,a7
	or	t5,t5,t4
	or	t5,t5,t1
	beqz	t5,lab570
lab569: 	bnez	a5,lab571
lab583: 	bne	a3,a0,lab572
	bge	a4,a2,lab573
lab572: 	beqz	a0,lab574
lab576: 	li	a0,-1
	j	lab565
lab571: 	li	a0,-1
	beqz	a3,lab565
	mv	a0,a3
lab565: 	addi	sp,sp,16
	ret
lab573: 	bge	a2,a4,lab575
lab580: 	bnez	a0,lab565
	j	lab576
lab575: 	bltu	t1,a1,lab572
	bne	a1,t1,lab577
	bltu	t4,t3,lab572
	bne	t3,t4,lab578
	bltu	a7,a6,lab572
	bne	a6,a7,lab579
	bltu	t0,t6,lab572
lab579: 	bltu	a6,a7,lab580
	bne	a6,a7,lab581
	bltu	t6,t0,lab580
lab581: 	li	a0,0
	j	lab565
lab574: 	li	a0,1
	j	lab565
lab570: 	bnez	a5,lab581
	j	lab572
lab577: 	bltu	a1,t1,lab580
	j	lab581
lab578: 	bltu	t3,t4,lab580
	j	lab581
lab564: 	beq	a4,a2,lab582
lab568: 	bnez	a4,lab583
	li	a5,0
	j	lab584
__multf3:
	addi	sp,sp,-192
	sw	s2,176(sp)
	lw	s2,12(a1)
	lw	a5,0(a1)
	lw	a3,8(a1)
	sw	s11,140(sp)
	mv	s11,a0
	lw	a0,4(a1)
	slli	a4,s2,0x10
	sw	s3,172(sp)
	sw	s4,168(sp)
	lw	s3,12(a2)
	lw	s4,0(a2)
	sw	s5,164(sp)
	sw	s6,160(sp)
	lw	s5,8(a2)
	lw	s6,4(a2)
	lui	a2,0x8
	sw	s0,184(sp)
	srli	a4,a4,0x10
	srli	s0,s2,0x10
	addi	a2,a2,-1 # 7fff <__extenddftf2+0x67>
	sw	s2,108(sp)
	sw	ra,188(sp)
	sw	s1,180(sp)
	sw	s7,156(sp)
	sw	s8,152(sp)
	sw	s9,148(sp)
	sw	s10,144(sp)
	sw	a5,96(sp)
	sw	a0,100(sp)
	sw	a3,104(sp)
	sw	a5,48(sp)
	sw	a0,52(sp)
	sw	a3,56(sp)
	sw	a4,60(sp)
	and	s0,s0,a2
	srli	s2,s2,0x1f
	beqz	s0,lab585
	beq	s0,a2,lab586
	lui	a5,0x10
	or	a4,a4,a5
	sw	a4,60(sp)
	addi	a2,sp,48
	addi	a5,sp,60
lab587: 	lw	a4,0(a5) # 10000 <__errno+0x3d70>
	lw	a3,-4(a5)
	addi	a5,a5,-4
	slli	a4,a4,0x3
	srli	a3,a3,0x1d
	or	a4,a4,a3
	sw	a4,4(a5)
	bne	a2,a5,lab587
	lw	a5,48(sp)
	slli	a5,a5,0x3
	sw	a5,48(sp)
	lui	a5,0xffffc
	addi	a5,a5,1 # ffffc001 <_stack+0xffeec001>
	add	s0,s0,a5
lab622: 	li	s7,0
lab629: 	slli	a0,s3,0x10
	lui	a4,0x8
	srli	a5,s3,0x10
	srli	a0,a0,0x10
	addi	a4,a4,-1 # 7fff <__extenddftf2+0x67>
	sw	s3,108(sp)
	sw	s4,96(sp)
	sw	s6,100(sp)
	sw	s5,104(sp)
	sw	s4,64(sp)
	sw	s6,68(sp)
	sw	s5,72(sp)
	sw	a0,76(sp)
	and	a5,a5,a4
	srli	s3,s3,0x1f
	beqz	a5,lab588
	beq	a5,a4,lab589
	lui	a4,0x10
	or	a0,a0,a4
	sw	a0,76(sp)
	addi	a1,sp,64
	addi	a4,sp,76
lab590: 	lw	a3,0(a4) # 10000 <__errno+0x3d70>
	lw	a2,-4(a4)
	addi	a4,a4,-4
	slli	a3,a3,0x3
	srli	a2,a2,0x1d
	or	a3,a3,a2
	sw	a3,4(a4)
	bne	a1,a4,lab590
	lw	a4,64(sp)
	slli	a4,a4,0x3
	sw	a4,64(sp)
	lui	a4,0xffffc
	addi	a4,a4,1 # ffffc001 <_stack+0xffeec001>
	add	a5,a5,a4
lab634: 	li	a3,0
lab641: 	add	a5,a5,s0
	sw	a5,24(sp)
	addi	a5,a5,1
	xor	a4,s2,s3
	sw	a5,20(sp)
	slli	a5,s7,0x2
	sw	a4,8(sp)
	or	a5,a5,a3
	li	a4,10
	blt	a4,a5,lab591
	li	a4,2
	blt	a4,a5,lab592
	addi	a5,a5,-1
	li	a4,1
	bgeu	a4,a5,lab593
lab644: 	lw	a4,48(sp)
	lw	t3,64(sp)
	lui	a0,0x10
	addi	a3,a0,-1 # ffff <__errno+0x3d6f>
	srli	a7,a4,0x10
	srli	s4,t3,0x10
	and	a4,a4,a3
	and	t3,t3,a3
	mul	a2,t3,a4
	mul	a6,a7,t3
	srli	a5,a2,0x10
	mul	a1,s4,a4
	add	a1,a1,a6
	add	a5,a5,a1
	mul	s7,a7,s4
	bgeu	a5,a6,lab594
	add	s7,s7,a0
lab594: 	lw	t5,68(sp)
	srli	s3,a5,0x10
	and	a5,a5,a3
	and	a2,a2,a3
	slli	a5,a5,0x10
	add	a5,a5,a2
	srli	s1,t5,0x10
	and	t5,t5,a3
	mul	a2,a7,t5
	sw	a5,28(sp)
	sw	a5,96(sp)
	mul	a3,s1,a4
	mul	a5,t5,a4
	add	a3,a3,a2
	srli	a0,a5,0x10
	add	a0,a0,a3
	mul	s6,a7,s1
	bgeu	a0,a2,lab595
	lui	a3,0x10
	add	s6,s6,a3
lab595: 	srli	a3,a0,0x10
	lw	a1,52(sp)
	sw	a3,12(sp)
	lui	a3,0x10
	addi	a2,a3,-1 # ffff <__errno+0x3d6f>
	and	a0,a0,a2
	and	a5,a5,a2
	srli	s2,a1,0x10
	slli	a0,a0,0x10
	and	a1,a1,a2
	add	a0,a0,a5
	mul	t4,s2,t3
	add	s3,s3,a0
	mul	a5,a1,t3
	mul	t1,s4,a1
	srli	a6,a5,0x10
	add	t1,t1,t4
	add	a6,a6,t1
	mul	a2,s4,s2
	bgeu	a6,t4,lab596
	add	a2,a2,a3
lab596: 	lui	t1,0x10
	addi	a3,t1,-1 # ffff <__errno+0x3d6f>
	srli	s5,a6,0x10
	and	a6,a6,a3
	and	a5,a5,a3
	slli	a6,a6,0x10
	add	s5,s5,a2
	mul	t4,s2,t5
	add	a6,a6,a5
	mul	a2,a1,t5
	mul	a5,s1,a1
	srli	a3,a2,0x10
	add	a5,a5,t4
	add	a3,a3,a5
	mul	t6,s1,s2
	bgeu	a3,t4,lab597
	add	t6,t6,t1
lab597: 	srli	a5,a3,0x10
	add	a5,a5,t6
	lw	t4,72(sp)
	lui	s0,0x10
	sw	a5,32(sp)
	addi	a5,s0,-1 # ffff <__errno+0x3d6f>
	and	a3,a3,a5
	and	a2,a2,a5
	srli	t2,t4,0x10
	slli	a3,a3,0x10
	and	t4,t4,a5
	mul	s8,a7,t4
	add	a3,a3,a2
	mul	t6,t2,a4
	mul	a2,t4,a4
	add	t6,t6,s8
	srli	a5,a2,0x10
	add	a5,a5,t6
	mul	t1,a7,t2
	bgeu	a5,s8,lab598
	add	t1,t1,s0
lab598: 	srli	t6,a5,0x10
	add	t1,t6,t1
	lui	s9,0x10
	sw	t1,36(sp)
	addi	t1,s9,-1 # ffff <__errno+0x3d6f>
	and	a5,a5,t1
	and	a2,a2,t1
	slli	a5,a5,0x10
	add	a5,a5,a2
	lw	a2,56(sp)
	srli	s0,a2,0x10
	and	a2,a2,t1
	mul	s10,s0,t3
	mul	t6,s4,a2
	mul	t1,a2,t3
	add	t6,t6,s10
	mv	t0,t6
	srli	t6,t1,0x10
	add	t6,t6,t0
	mul	s8,s4,s0
	bgeu	t6,s10,lab599
	add	s8,s8,s9
lab599: 	srli	s10,t6,0x10
	add	s10,s10,s8
	lui	s8,0x10
	addi	s9,s8,-1 # ffff <__errno+0x3d6f>
	and	t6,t6,s9
	slli	t6,t6,0x10
	and	t1,t1,s9
	add	t1,t6,t1
	lw	t6,12(sp)
	add	s3,s7,s3
	sltu	a0,s3,a0
	add	t0,t6,a0
	add	t0,t0,s6
	add	t6,s3,a6
	sltu	a6,t6,a6
	sw	t6,12(sp)
	sw	t6,100(sp)
	add	t6,t0,s5
	add	s6,t6,a6
	add	s3,s6,a3
	sltu	t0,t0,a0
	sltu	s6,s6,a6
	lw	a0,32(sp)
	sltu	t6,t6,s5
	or	t6,t6,s6
	add	t6,t6,t0
	add	t6,t6,a0
	lw	a0,36(sp)
	sltu	a3,s3,a3
	add	a6,t6,a3
	add	s3,s3,a5
	sltu	a5,s3,a5
	add	a0,a6,a0
	add	t0,a0,a5
	add	s3,s3,t1
	sltu	t1,s3,t1
	sw	s3,16(sp)
	sw	s3,104(sp)
	add	s3,t0,s10
	add	s5,s3,t1
	sltu	a6,a6,a3
	sltu	t1,s5,t1
	lw	a3,36(sp)
	sltu	s3,s3,s10
	or	s3,s3,t1
	lw	t1,76(sp)
	sltu	t0,t0,a5
	sltu	a0,a0,a3
	or	a0,a0,t0
	srli	t0,t1,0x10
	and	t1,t1,s9
	mul	a5,t1,a4
	lw	s6,32(sp)
	sltu	t6,t6,s6
	or	t6,t6,a6
	add	a0,t6,a0
	add	s6,a0,s3
	mul	a3,a7,t1
	srli	a0,a5,0x10
	mul	a4,t0,a4
	add	a4,a4,a3
	add	a0,a0,a4
	mul	a7,a7,t0
	bgeu	a0,a3,lab600
	add	a7,a7,s8
lab600: 	srli	a4,a0,0x10
	add	a4,a4,a7
	lw	s3,60(sp)
	lui	a3,0x10
	sw	a4,32(sp)
	addi	a4,a3,-1 # ffff <__errno+0x3d6f>
	and	a7,a0,a4
	and	a5,a5,a4
	srli	t6,s3,0x10
	slli	a7,a7,0x10
	and	s3,s3,a4
	add	a7,a7,a5
	mul	a4,s4,t6
	mul	a5,s3,t3
	mul	s4,s4,s3
	srli	a6,a5,0x10
	mul	t3,t6,t3
	add	s4,s4,t3
	add	a6,a6,s4
	bgeu	a6,t3,lab601
	add	a4,a4,a3
lab601: 	srli	a3,a6,0x10
	add	a4,a3,a4
	lui	s4,0x10
	sw	a4,36(sp)
	addi	a4,s4,-1 # ffff <__errno+0x3d6f>
	and	a6,a6,a4
	and	a5,a5,a4
	slli	a6,a6,0x10
	mul	a4,s2,t4
	add	a6,a6,a5
	mul	t3,t2,a1
	mul	a5,a1,t4
	add	t3,t3,a4
	srli	a0,a5,0x10
	add	a0,a0,t3
	mul	a3,s2,t2
	bgeu	a0,a4,lab602
	add	a3,a3,s4
lab602: 	srli	a4,a0,0x10
	add	a4,a4,a3
	lui	s7,0x10
	sw	a4,40(sp)
	addi	a4,s7,-1 # ffff <__errno+0x3d6f>
	and	a0,a0,a4
	and	a5,a5,a4
	slli	a0,a0,0x10
	mul	a4,s0,t5
	add	a0,a0,a5
	mul	s4,s1,a2
	mul	a5,a2,t5
	add	s4,s4,a4
	srli	a3,a5,0x10
	add	a3,a3,s4
	mul	t3,s1,s0
	bgeu	a3,a4,lab603
	add	t3,t3,s7
lab603: 	srli	s7,a3,0x10
	lui	a4,0x10
	add	s7,s7,t3
	addi	a4,a4,-1 # ffff <__errno+0x3d6f>
	lw	t3,32(sp)
	and	a3,a3,a4
	and	a5,a5,a4
	slli	a3,a3,0x10
	add	s4,s6,t3
	add	a3,a3,a5
	lw	t3,36(sp)
	add	a5,s5,a7
	sltu	a7,a5,a7
	add	s10,s4,a7
	add	s6,s10,t3
	add	a5,a5,a6
	lw	t3,40(sp)
	sltu	a6,a5,a6
	add	s9,s6,a6
	add	a5,a5,a0
	sltu	a0,a5,a0
	add	a4,s9,t3
	add	s8,a4,a0
	add	a5,a5,a3
	sltu	a3,a5,a3
	add	s5,s8,s7
	add	t3,s5,a3
	sw	a3,44(sp)
	lw	a3,32(sp)
	sltu	s5,s5,s7
	sltu	s10,s10,a7
	sltu	s4,s4,a3
	lw	a3,36(sp)
	sltu	s9,s9,a6
	mul	a7,t2,a2
	sltu	s6,s6,a3
	lw	a3,40(sp)
	sltu	s8,s8,a0
	or	s4,s4,s10
	sltu	a4,a4,a3
	lw	a3,44(sp)
	or	s6,s6,s9
	add	s4,s4,s6
	sltu	a3,t3,a3
	or	s5,s5,a3
	mul	a6,s0,t4
	or	a4,a4,s8
	add	a4,s4,a4
	sw	a5,108(sp)
	add	a4,a4,s5
	mul	a3,t4,a2
	add	a7,a7,a6
	srli	a0,a3,0x10
	add	a0,a0,a7
	mul	s4,t2,s0
	bgeu	a0,a6,lab604
	lui	a6,0x10
	add	s4,s4,a6
lab604: 	srli	a7,a0,0x10
	lui	a6,0x10
	add	a7,a7,s4
	addi	s4,a6,-1 # ffff <__errno+0x3d6f>
	and	a0,a0,s4
	and	a3,a3,s4
	slli	a0,a0,0x10
	mul	s4,s2,t1
	add	a0,a0,a3
	mul	a3,t1,a1
	mul	a1,t0,a1
	add	s5,a1,s4
	srli	a1,a3,0x10
	add	a1,a1,s5
	mul	s2,s2,t0
	bgeu	a1,s4,lab605
	add	s2,s2,a6
lab605: 	srli	a6,a1,0x10
	lui	s5,0x10
	add	s2,a6,s2
	addi	a6,s5,-1 # ffff <__errno+0x3d6f>
	and	a1,a1,a6
	and	a3,a3,a6
	slli	a1,a1,0x10
	mul	s4,s1,t6
	add	a1,a1,a3
	mul	s1,s1,s3
	mul	a3,s3,t5
	mul	t5,t6,t5
	srli	a6,a3,0x10
	add	s1,s1,t5
	add	a6,a6,s1
	bgeu	a6,t5,lab606
	add	s4,s4,s5
lab606: 	srli	s1,a6,0x10
	add	s1,s1,s4
	lui	s4,0x10
	addi	t5,s4,-1 # ffff <__errno+0x3d6f>
	and	a3,a3,t5
	mul	s5,s0,t1
	and	a6,a6,t5
	slli	a6,a6,0x10
	add	a6,a6,a3
	mul	t5,t1,a2
	mul	a2,t0,a2
	srli	a3,t5,0x10
	add	a2,a2,s5
	add	a3,a3,a2
	mul	s0,s0,t0
	bgeu	a3,s5,lab607
	add	s0,s0,s4
lab607: 	srli	a2,a3,0x10
	lui	s4,0x10
	add	s0,a2,s0
	addi	a2,s4,-1 # ffff <__errno+0x3d6f>
	and	a3,a3,a2
	and	t5,t5,a2
	slli	a3,a3,0x10
	mul	s5,t2,t6
	add	a3,a3,t5
	mul	t2,t2,s3
	mul	t5,s3,t4
	mul	t4,t6,t4
	srli	a2,t5,0x10
	add	t2,t2,t4
	add	a2,a2,t2
	bgeu	a2,t4,lab608
	add	s5,s5,s4
lab608: 	srli	s4,a2,0x10
	add	s4,s4,s5
	lui	s5,0x10
	addi	t2,s5,-1 # ffff <__errno+0x3d6f>
	add	t3,t3,a0
	sltu	a0,t3,a0
	add	a4,a4,a7
	and	a2,a2,t2
	add	s7,a4,a0
	and	t5,t5,t2
	add	t3,t3,a1
	slli	a2,a2,0x10
	add	a2,a2,t5
	sltu	a1,t3,a1
	add	t5,s7,s2
	add	s6,t5,a1
	add	t3,t3,a6
	add	t4,s6,s1
	sw	t3,112(sp)
	sltu	t3,t3,a6
	add	s8,t4,t3
	sltu	s7,s7,a0
	sltu	s6,s6,a1
	sltu	a4,a4,a7
	sltu	t5,t5,s2
	add	a6,s8,a3
	or	a4,a4,s7
	or	t5,t5,s6
	sltu	t4,t4,s1
	sltu	s8,s8,t3
	add	a4,a4,t5
	or	t4,t4,s8
	add	a4,a4,t4
	sltu	a3,a6,a3
	add	a4,a4,s0
	add	a1,a4,a3
	add	a6,a6,a2
	sw	a6,116(sp)
	sltu	a6,a6,a2
	add	a2,a1,s4
	add	a0,a2,a6
	sltu	a6,a0,a6
	sltu	a2,a2,s4
	or	a2,a2,a6
	mul	a6,t1,s3
	sltu	a4,a4,s0
	sltu	a3,a1,a3
	or	a3,a4,a3
	mul	t1,t6,t1
	srli	a4,a6,0x10
	mul	t6,t0,t6
	mul	t0,t0,s3
	add	t0,t0,t1
	add	a4,a4,t0
	bgeu	a4,t1,lab609
	add	t6,t6,s5
lab609: 	and	a1,a4,t2
	slli	a1,a1,0x10
	and	a6,a6,t2
	add	a1,a1,a6
	srli	a4,a4,0x10
	add	a0,a0,a1
	add	a4,a4,a3
	sltu	a1,a0,a1
	add	a4,a4,a2
	add	a4,a4,a1
	lw	a3,12(sp)
	add	t6,a4,t6
	lw	a4,28(sp)
	slli	a5,a5,0xd
	sw	t6,124(sp)
	or	a4,a4,a3
	lw	a3,16(sp)
	sw	a0,120(sp)
	addi	a1,sp,112
	or	a4,a3,a4
	or	a5,a5,a4
	addi	a4,sp,96
lab610: 	lw	a3,12(a4)
	lw	a2,16(a4)
	addi	a4,a4,4
	srli	a3,a3,0x13
	slli	a2,a2,0xd
	or	a3,a3,a2
	sw	a3,-4(a4)
	bne	a1,a4,lab610
	lw	a3,104(sp)
	lw	a4,96(sp)
	snez	a5,a5
	sw	a3,88(sp)
	lw	a3,100(sp)
	or	a5,a5,a4
	lw	a4,108(sp)
	sw	a3,84(sp)
	lui	a3,0x100
	sw	a4,92(sp)
	sw	a5,80(sp)
	and	a4,a4,a3
	beqz	a4,lab611
	slli	a5,a5,0x1f
	addi	a4,sp,80
	addi	a1,sp,92
lab612: 	lw	a3,0(a4)
	lw	a2,4(a4)
	addi	a4,a4,4
	srli	a3,a3,0x1
	slli	a2,a2,0x1f
	or	a3,a3,a2
	sw	a3,-4(a4)
	bne	a1,a4,lab612
	lw	a4,92(sp)
	snez	a5,a5
	srli	a4,a4,0x1
	sw	a4,92(sp)
	lw	a4,80(sp)
	or	a5,a4,a5
	sw	a5,80(sp)
lab648: 	lw	a4,20(sp)
	lui	a5,0x4
	addi	a5,a5,-1 # 3fff <__addtf3+0x887>
	add	a5,a4,a5
	blez	a5,lab613
	lw	a4,80(sp)
	andi	a3,a4,7
	beqz	a3,lab614
	andi	a3,a4,15
	li	a2,4
	beq	a3,a2,lab614
	lw	a3,84(sp)
	addi	a4,a4,4
	sw	a4,80(sp)
	sltiu	a4,a4,4
	add	a3,a4,a3
	sw	a3,84(sp)
	sltu	a3,a3,a4
	lw	a4,88(sp)
	add	a4,a3,a4
	sw	a4,88(sp)
	sltu	a4,a4,a3
	lw	a3,92(sp)
	add	a4,a4,a3
	sw	a4,92(sp)
lab614: 	lw	a4,92(sp)
	lui	a3,0x100
	and	a3,a4,a3
	beqz	a3,lab615
	lui	a5,0xfff00
	addi	a5,a5,-1 # ffefffff <_stack+0xffdeffff>
	and	a4,a4,a5
	sw	a4,92(sp)
	lw	a4,20(sp)
	lui	a5,0x4
	add	a5,a4,a5
lab615: 	addi	a4,sp,80
	addi	a1,sp,92
lab616: 	lw	a3,0(a4)
	lw	a2,4(a4)
	addi	a4,a4,4
	srli	a3,a3,0x3
	slli	a2,a2,0x1d
	or	a3,a3,a2
	sw	a3,-4(a4)
	bne	a4,a1,lab616
	lui	a3,0x8
	addi	a2,a3,-2 # 7ffe <__extenddftf2+0x66>
	lw	a4,92(sp)
	blt	a2,a5,lab617
	srli	a4,a4,0x3
	sw	a4,92(sp)
lab645: 	lw	a4,92(sp)
	slli	a5,a5,0x11
	srli	a5,a5,0x11
	sh	a4,108(sp)
	lw	a4,8(sp)
	lw	ra,188(sp)
	lw	s0,184(sp)
	slli	a4,a4,0xf
	or	a5,a4,a5
	sh	a5,110(sp)
	lw	a5,80(sp)
	lw	s1,180(sp)
	lw	s2,176(sp)
	sw	a5,0(s11)
	lw	a5,84(sp)
	lw	s3,172(sp)
	lw	s4,168(sp)
	sw	a5,4(s11)
	lw	a5,88(sp)
	lw	s5,164(sp)
	lw	s6,160(sp)
	sw	a5,8(s11)
	lw	a5,108(sp)
	lw	s7,156(sp)
	lw	s8,152(sp)
	sw	a5,12(s11)
	lw	s9,148(sp)
	lw	s10,144(sp)
	mv	a0,s11
	lw	s11,140(sp)
	addi	sp,sp,192
	ret
lab585: 	or	a2,a5,a0
	or	a2,a2,a3
	or	a2,a2,a4
	beqz	a2,lab618
	beqz	a4,lab619
	mv	a0,a4
	jal	ra,__clzsi2
	mv	s1,a0
lab624: 	addi	a3,s1,-12
	srai	a5,a3,0x5
	andi	a3,a3,31
	beqz	a3,lab620
	li	a2,-4
	mul	a2,a5,a2
	li	a0,32
	addi	a7,sp,48
	sub	a0,a0,a3
	addi	a4,a2,12
	add	a4,a7,a4
	neg	a2,a2
lab628: 	bne	a7,a4,lab621
	addi	a2,a5,-1 # 3fff <__addtf3+0x887>
	slli	a5,a5,0x2
	addi	a4,sp,48
	addi	a5,a5,80
	add	a5,a5,a4
	lw	a4,48(sp)
	sll	a4,a4,a3
	sw	a4,-80(a5)
lab627: 	addi	a2,a2,1
	lui	s0,0xffffc
	slli	a2,a2,0x2
	li	a1,0
	addi	a0,sp,48
	addi	s0,s0,17 # ffffc011 <_stack+0xffeec011>
	jal	ra,memset
	sub	s0,s0,s1
	j	lab622
lab619: 	beqz	a3,lab623
	mv	a0,a3
	jal	ra,__clzsi2
	addi	s1,a0,32
	j	lab624
lab623: 	beqz	a0,lab625
	jal	ra,__clzsi2
	addi	s1,a0,64
	j	lab624
lab625: 	mv	a0,a5
	jal	ra,__clzsi2
	addi	s1,a0,96
	j	lab624
lab620: 	li	a2,-4
	mul	a2,a5,a2
	addi	a4,sp,60
	li	a3,3
lab626: 	add	a1,a4,a2
	lw	a1,0(a1)
	addi	a3,a3,-1
	addi	a4,a4,-4
	sw	a1,4(a4)
	bge	a3,a5,lab626
	addi	a2,a5,-1
	j	lab627
lab621: 	lw	a1,0(a4)
	lw	a6,-4(a4)
	add	t1,a4,a2
	sll	a1,a1,a3
	srl	a6,a6,a0
	or	a1,a1,a6
	sw	a1,0(t1)
	addi	a4,a4,-4
	j	lab628
lab586: 	or	a5,a5,a0
	or	a5,a5,a3
	or	a5,a5,a4
	li	s7,3
	bnez	a5,lab629
	li	s7,2
	j	lab629
lab618: 	li	s0,0
	li	s7,1
	j	lab629
lab588: 	or	a5,s4,s6
	or	a5,a5,s5
	or	a5,a5,a0
	beqz	a5,lab630
	beqz	a0,lab631
	jal	ra,__clzsi2
	mv	s1,a0
lab636: 	addi	a3,s1,-12
	srai	a5,a3,0x5
	andi	a3,a3,31
	beqz	a3,lab632
	li	a2,-4
	mul	a2,a5,a2
	li	a0,32
	addi	a7,sp,64
	sub	a0,a0,a3
	addi	a4,a2,12
	add	a4,a7,a4
	neg	a2,a2
lab640: 	bne	a7,a4,lab633
	addi	a2,a5,-1
	slli	a5,a5,0x2
	addi	a4,sp,48
	addi	a5,a5,80
	add	a5,a5,a4
	lw	a4,64(sp)
	sll	a4,a4,a3
	sw	a4,-64(a5)
lab639: 	addi	a2,a2,1
	slli	a2,a2,0x2
	li	a1,0
	addi	a0,sp,64
	jal	ra,memset
	lui	a5,0xffffc
	addi	a5,a5,17 # ffffc011 <_stack+0xffeec011>
	sub	a5,a5,s1
	j	lab634
lab631: 	beqz	s5,lab635
	mv	a0,s5
	jal	ra,__clzsi2
	addi	s1,a0,32
	j	lab636
lab635: 	beqz	s6,lab637
	mv	a0,s6
	jal	ra,__clzsi2
	addi	s1,a0,64
	j	lab636
lab637: 	mv	a0,s4
	jal	ra,__clzsi2
	addi	s1,a0,96
	j	lab636
lab632: 	li	a2,-4
	mul	a2,a5,a2
	addi	a4,sp,76
	li	a3,3
lab638: 	add	a1,a4,a2
	lw	a1,0(a1)
	addi	a3,a3,-1
	addi	a4,a4,-4
	sw	a1,4(a4)
	bge	a3,a5,lab638
	addi	a2,a5,-1
	j	lab639
lab633: 	lw	a1,0(a4)
	lw	a6,-4(a4)
	add	t1,a4,a2
	sll	a1,a1,a3
	srl	a6,a6,a0
	or	a1,a1,a6
	sw	a1,0(t1)
	addi	a4,a4,-4
	j	lab640
lab589: 	or	s4,s4,s6
	or	s4,s4,s5
	or	s4,s4,a0
	li	a3,3
	bnez	s4,lab641
	li	a3,2
	j	lab641
lab630: 	li	a5,0
	li	a3,1
	j	lab641
lab592: 	li	a4,1
	sll	a5,a4,a5
	andi	a4,a5,1328
	bnez	a4,lab642
	andi	a4,a5,136
	bnez	a4,lab643
	andi	a5,a5,576
	beqz	a5,lab644
lab646: 	lui	a5,0x8
	sw	a5,92(sp)
	sw	zero,88(sp)
	sw	zero,84(sp)
	sw	zero,80(sp)
	addi	a5,a5,-1 # 7fff <__extenddftf2+0x67>
	sw	zero,8(sp)
	j	lab645
lab591: 	li	a4,15
	beq	a5,a4,lab646
	li	a4,11
	beq	a5,a4,lab643
	sw	s2,8(sp)
lab642: 	lw	a5,48(sp)
	sw	a5,80(sp)
	lw	a5,52(sp)
	sw	a5,84(sp)
	lw	a5,56(sp)
	sw	a5,88(sp)
	lw	a5,60(sp)
lab650: 	sw	a5,92(sp)
	li	a5,2
	beq	s7,a5,lab647
	li	a5,3
	beq	s7,a5,lab646
	li	a5,1
	bne	s7,a5,lab648
	sw	zero,92(sp)
	sw	zero,88(sp)
	sw	zero,84(sp)
	sw	zero,80(sp)
	j	lab649
lab643: 	sw	s3,8(sp)
lab593: 	lw	a5,64(sp)
	mv	s7,a3
	sw	a5,80(sp)
	lw	a5,68(sp)
	sw	a5,84(sp)
	lw	a5,72(sp)
	sw	a5,88(sp)
	lw	a5,76(sp)
	j	lab650
lab611: 	lw	a5,24(sp)
	sw	a5,20(sp)
	j	lab648
lab617: 	sw	zero,92(sp)
	sw	zero,88(sp)
	sw	zero,84(sp)
	sw	zero,80(sp)
	addi	a5,a3,-1
	j	lab645
lab613: 	li	a4,1
	sub	a5,a4,a5
	li	a4,116
	blt	a4,a5,lab651
	addi	s1,sp,80
	srai	a0,a5,0x5
	mv	a3,s1
	li	s0,0
	li	a4,0
lab656: 	bne	a4,a0,lab652
	andi	a5,a5,31
	slli	a4,a0,0x2
	bnez	a5,lab653
	li	a2,3
	mv	a5,s1
	li	a3,0
	sub	a2,a2,a0
lab654: 	add	a1,a5,a4
	lw	a1,0(a1)
	addi	a3,a3,1
	addi	a5,a5,4
	sw	a1,-4(a5)
	bge	a2,a3,lab654
	li	a5,4
	sub	a0,a5,a0
	j	lab655
lab652: 	lw	a2,0(a3)
	addi	a4,a4,1
	addi	a3,a3,4
	or	s0,s0,a2
	j	lab656
lab653: 	addi	a3,a4,80
	addi	a2,sp,48
	add	a3,a3,a2
	lw	a3,-48(a3)
	li	a6,32
	sub	a6,a6,a5
	sll	a3,a3,a6
	or	s0,s0,a3
	add	a2,s1,a4
	neg	a3,a4
	li	a4,3
	li	a7,0
	sub	a4,a4,a0
lab660: 	blt	a7,a4,lab657
	li	a3,4
	slli	a4,a4,0x2
	sub	a0,a3,a0
	addi	a4,a4,80
	addi	a3,sp,48
	add	a4,a4,a3
	lw	a3,92(sp)
	srl	a5,a3,a5
	sw	a5,-48(a4)
lab655: 	li	s2,4
	sub	a2,s2,a0
	slli	a0,a0,0x2
	slli	a2,a2,0x2
	li	a1,0
	add	a0,s1,a0
	jal	ra,memset
	lw	a4,80(sp)
	snez	a5,s0
	or	a5,a5,a4
	sw	a5,80(sp)
	andi	a4,a5,7
	beqz	a4,lab658
	andi	a4,a5,15
	beq	a4,s2,lab658
	lw	a4,84(sp)
	addi	a5,a5,4
	sw	a5,80(sp)
	sltiu	a5,a5,4
	add	a4,a5,a4
	sw	a4,84(sp)
	sltu	a4,a4,a5
	lw	a5,88(sp)
	add	a5,a4,a5
	sw	a5,88(sp)
	sltu	a5,a5,a4
	lw	a4,92(sp)
	add	a5,a5,a4
	sw	a5,92(sp)
lab658: 	lw	a4,92(sp)
	lui	a5,0x80
	and	a5,a5,a4
	beqz	a5,lab659
	sw	zero,92(sp)
	sw	zero,88(sp)
	sw	zero,84(sp)
	sw	zero,80(sp)
	li	a5,1
	j	lab645
lab657: 	lw	a1,0(a2)
	lw	t1,4(a2)
	add	t3,a2,a3
	srl	a1,a1,a5
	sll	t1,t1,a6
	or	a1,a1,t1
	sw	a1,0(t3)
	addi	a7,a7,1
	addi	a2,a2,4
	j	lab660
lab659: 	addi	a3,s1,12
lab661: 	lw	a5,0(s1)
	lw	a4,4(s1)
	addi	s1,s1,4
	srli	a5,a5,0x3
	slli	a4,a4,0x1d
	or	a5,a5,a4
	sw	a5,-4(s1)
	bne	s1,a3,lab661
	lw	a5,92(sp)
	srli	a5,a5,0x3
	sw	a5,92(sp)
lab649: 	li	a5,0
	j	lab645
lab651: 	lw	a5,84(sp)
	lw	a4,80(sp)
	or	a4,a4,a5
	lw	a5,88(sp)
	or	a4,a4,a5
	lw	a5,92(sp)
	or	a4,a4,a5
	li	a5,0
	beqz	a4,lab645
	sw	zero,92(sp)
	sw	zero,88(sp)
	sw	zero,84(sp)
	sw	zero,80(sp)
	j	lab645
lab647: 	lui	a5,0x8
	sw	zero,92(sp)
	sw	zero,88(sp)
	sw	zero,84(sp)
	sw	zero,80(sp)
	addi	a5,a5,-1 # 7fff <__extenddftf2+0x67>
	j	lab645
__subtf3:
	addi	sp,sp,-112
	lw	a5,8(a1)
	sw	s3,92(sp)
	lw	s3,12(a1)
	lw	a3,0(a1)
	lw	a4,4(a1)
	sw	s4,88(sp)
	sw	s8,72(sp)
	mv	s4,a0
	sw	a5,56(sp)
	sw	a5,24(sp)
	lw	a7,0(a2)
	slli	a5,s3,0x10
	lw	a6,4(a2)
	lw	a0,8(a2)
	lw	s8,12(a2)
	sw	s0,104(sp)
	srli	a5,a5,0x10
	slli	s0,s3,0x1
	sw	a3,48(sp)
	sw	s3,60(sp)
	sw	a3,16(sp)
	sw	ra,108(sp)
	sw	s1,100(sp)
	sw	s2,96(sp)
	sw	s5,84(sp)
	sw	s6,80(sp)
	sw	s7,76(sp)
	sw	s9,68(sp)
	sw	a4,52(sp)
	sw	a4,20(sp)
	sw	a5,28(sp)
	srli	s0,s0,0x11
	srli	s3,s3,0x1f
	addi	a3,sp,16
	addi	a1,sp,28
lab662: 	lw	a5,0(a1)
	lw	a4,-4(a1)
	addi	a1,a1,-4
	slli	a5,a5,0x3
	srli	a4,a4,0x1d
	or	a5,a5,a4
	sw	a5,4(a1)
	bne	a3,a1,lab662
	lw	s2,16(sp)
	slli	a5,s8,0x10
	slli	s7,s8,0x1
	slli	s2,s2,0x3
	srli	a5,a5,0x10
	sw	a6,52(sp)
	sw	a0,56(sp)
	sw	s8,60(sp)
	sw	a6,36(sp)
	sw	a0,40(sp)
	sw	s2,16(sp)
	sw	a7,48(sp)
	sw	a7,32(sp)
	sw	a5,44(sp)
	srli	s7,s7,0x11
	srli	s8,s8,0x1f
	addi	a0,sp,32
	addi	a6,sp,44
lab663: 	lw	a5,0(a6)
	lw	a4,-4(a6)
	addi	a6,a6,-4
	slli	a5,a5,0x3
	srli	a4,a4,0x1d
	or	a5,a5,a4
	sw	a5,4(a6)
	bne	a0,a6,lab663
	lw	s1,32(sp)
	lui	a5,0x8
	addi	a5,a5,-1 # 7fff <__extenddftf2+0x67>
	slli	s1,s1,0x3
	sw	s1,32(sp)
	bne	s7,a5,lab664
	lw	a4,40(sp)
	lw	a5,36(sp)
	or	a5,a5,a4
	lw	a4,44(sp)
	or	a5,a5,a4
	or	a5,a5,s1
	bnez	a5,lab665
lab664: 	xori	s8,s8,1
lab665: 	sub	a2,s0,s7
	bne	s8,s3,lab666
	blez	a2,lab667
	lw	s8,20(sp)
	lw	s6,24(sp)
	lw	s5,28(sp)
	bnez	s7,lab668
	lw	a3,36(sp)
	lw	a5,40(sp)
	lw	a1,44(sp)
	or	a4,a3,a5
	or	a4,a4,a1
	or	a4,a4,s1
	bnez	a4,lab669
lab673: 	sw	s2,48(sp)
	sw	s8,52(sp)
	sw	s6,56(sp)
	sw	s5,60(sp)
	mv	s0,a2
	j	lab670
lab669: 	addi	a4,a2,-1
	bnez	a4,lab671
	add	s1,s2,s1
	add	a3,a3,s8
	sw	s1,48(sp)
	sltu	s1,s1,s2
	add	a4,a3,s1
	sw	a4,52(sp)
	sltu	a3,a3,s8
	sltu	a4,a4,s1
	or	a3,a3,a4
	add	a5,a5,s6
	add	a4,a5,a3
	sw	a4,56(sp)
	sltu	a5,a5,s6
	sltu	a4,a4,a3
	or	a5,a5,a4
	add	a1,a1,s5
	add	a5,a5,a1
lab690: 	li	s0,1
	j	lab672
lab671: 	lui	a5,0x8
	addi	a5,a5,-1 # 7fff <__extenddftf2+0x67>
	beq	a2,a5,lab673
	li	a5,116
	bge	a5,a4,lab674
lab677: 	sw	zero,44(sp)
	sw	zero,40(sp)
	sw	zero,36(sp)
	li	a5,1
	j	lab675
lab668: 	lui	a5,0x8
	addi	a5,a5,-1 # 7fff <__extenddftf2+0x67>
	bne	s0,a5,lab676
lab730: 	sw	s2,48(sp)
	sw	s8,52(sp)
	sw	s6,56(sp)
	sw	s5,60(sp)
	j	lab670
lab676: 	lw	a5,44(sp)
	lui	a4,0x80
	or	a5,a5,a4
	sw	a5,44(sp)
	li	a5,116
	blt	a5,a2,lab677
	mv	a4,a2
lab674: 	srai	a5,a4,0x5
	mv	a2,a6
	li	s1,0
	li	a3,0
lab682: 	bne	a3,a5,lab678
	andi	a4,a4,31
	slli	a3,a5,0x2
	bnez	a4,lab679
	li	a2,3
	sub	a2,a2,a5
lab680: 	add	a1,a6,a3
	lw	a1,0(a1)
	addi	a4,a4,1 # 80001 <__errno+0x73d71>
	addi	a6,a6,4
	sw	a1,-4(a6)
	bge	a2,a4,lab680
	li	a4,4
	sub	a5,a4,a5
	j	lab681
lab678: 	lw	a1,0(a2)
	addi	a3,a3,1
	addi	a2,a2,4
	or	s1,s1,a1
	j	lab682
lab679: 	addi	a2,a3,64
	add	a2,a2,sp
	lw	a2,-32(a2)
	li	a7,32
	sub	a7,a7,a4
	sll	a2,a2,a7
	or	s1,s1,a2
	add	a1,a0,a3
	neg	a2,a3
	li	a3,3
	li	t1,0
	sub	a3,a3,a5
lab685: 	blt	t1,a3,lab683
	li	a2,4
	sub	a5,a2,a5
	lw	a2,44(sp)
	slli	a3,a3,0x2
	addi	a3,a3,64
	add	a3,a3,sp
	srl	a4,a2,a4
	sw	a4,-32(a3)
lab681: 	li	a2,4
	sub	a2,a2,a5
	slli	a5,a5,0x2
	add	a0,a0,a5
	slli	a2,a2,0x2
	li	a1,0
	jal	ra,memset
	lw	a5,32(sp)
	snez	s1,s1
	or	a5,a5,s1
lab675: 	sw	a5,32(sp)
	lw	a5,32(sp)
	lw	a4,36(sp)
	add	a5,s2,a5
	add	a4,s8,a4
	sw	a5,48(sp)
	sltu	a5,a5,s2
	add	a3,a4,a5
	sw	a3,52(sp)
	sltu	a3,a3,a5
	lw	a5,40(sp)
	sltu	a4,a4,s8
	or	a4,a4,a3
	add	a5,s6,a5
	add	a3,a5,a4
	sw	a3,56(sp)
	sltu	a3,a3,a4
	lw	a4,44(sp)
	sltu	a5,a5,s6
	or	a5,a5,a3
	add	a4,s5,a4
	add	a5,a5,a4
lab672: 	lui	a4,0x80
	sw	a5,60(sp)
	and	a4,a5,a4
	beqz	a4,lab670
	lui	a4,0xfff80
	addi	a4,a4,-1 # fff7ffff <_stack+0xffe6ffff>
	and	a5,a5,a4
	sw	a5,60(sp)
	lw	a5,48(sp)
	addi	s0,s0,1
	addi	a1,sp,60
	slli	a4,a5,0x1f
	addi	a5,sp,48
lab684: 	lw	a3,0(a5)
	lw	a2,4(a5)
	addi	a5,a5,4
	srli	a3,a3,0x1
	slli	a2,a2,0x1f
	or	a3,a3,a2
	sw	a3,-4(a5)
	bne	a5,a1,lab684
	lw	a5,60(sp)
	srli	a5,a5,0x1
	sw	a5,60(sp)
	snez	a5,a4
	lw	a4,48(sp)
	or	a5,a4,a5
	sw	a5,48(sp)
	lui	a5,0x8
	addi	a5,a5,-1 # 7fff <__extenddftf2+0x67>
	bne	s0,a5,lab670
	sw	zero,60(sp)
	sw	zero,56(sp)
	sw	zero,52(sp)
	sw	zero,48(sp)
	j	lab670
lab683: 	lw	a6,0(a1)
	lw	t3,4(a1)
	add	t4,a1,a2
	srl	a6,a6,a4
	sll	t3,t3,a7
	or	a6,a6,t3
	sw	a6,0(t4)
	addi	t1,t1,1
	addi	a1,a1,4
	j	lab685
lab667: 	lw	s5,36(sp)
	lw	s6,40(sp)
	lw	s8,44(sp)
	beqz	a2,lab686
	sub	a0,s7,s0
	bnez	s0,lab687
	lw	a4,20(sp)
	lw	a5,24(sp)
	lw	a6,28(sp)
	or	a2,a4,a5
	or	a2,a2,a6
	or	a2,a2,s2
	bnez	a2,lab688
lab691: 	sw	s1,48(sp)
	sw	s5,52(sp)
	sw	s6,56(sp)
	sw	s8,60(sp)
lab721: 	mv	s0,a0
	j	lab670
lab688: 	addi	a2,a0,-1
	bnez	a2,lab689
	add	s2,s2,s1
	add	a4,a4,s5
	sw	s2,48(sp)
	sltu	s2,s2,s1
	add	a3,a4,s2
	sw	a3,52(sp)
	sltu	a4,a4,s5
	sltu	a3,a3,s2
	or	a4,a4,a3
	add	a5,a5,s6
	add	a3,a5,a4
	sw	a3,56(sp)
	sltu	a5,a5,s6
	sltu	a3,a3,a4
	or	a5,a5,a3
	add	a6,a6,s8
	add	a5,a5,a6
	j	lab690
lab689: 	lui	a5,0x8
	addi	a5,a5,-1 # 7fff <__extenddftf2+0x67>
	beq	a0,a5,lab691
	li	a5,116
	bge	a5,a2,lab692
lab700: 	sw	zero,28(sp)
	sw	zero,24(sp)
	sw	zero,20(sp)
	li	a5,1
	j	lab693
lab687: 	lui	a5,0x8
	addi	a5,a5,-1 # 7fff <__extenddftf2+0x67>
	bne	s7,a5,lab694
	sw	s1,48(sp)
	sw	s5,52(sp)
	sw	s6,56(sp)
	sw	s8,60(sp)
	mv	s0,s7
lab670: 	lw	a5,48(sp)
	andi	a4,a5,7
	beqz	a4,lab695
	andi	a4,a5,15
	li	a3,4
	beq	a4,a3,lab695
	lw	a4,52(sp)
	addi	a5,a5,4
	sw	a5,48(sp)
	sltiu	a5,a5,4
	add	a4,a5,a4
	sw	a4,52(sp)
	sltu	a4,a4,a5
	lw	a5,56(sp)
	add	a5,a4,a5
	sw	a5,56(sp)
	sltu	a5,a5,a4
	lw	a4,60(sp)
	add	a5,a5,a4
	sw	a5,60(sp)
lab695: 	lw	a5,60(sp)
	lui	a4,0x80
	and	a4,a5,a4
	beqz	a4,lab696
	lui	a4,0x8
	addi	s0,s0,1
	addi	a4,a4,-1 # 7fff <__extenddftf2+0x67>
	beq	s0,a4,lab697
	lui	a4,0xfff80
	addi	a4,a4,-1 # fff7ffff <_stack+0xffe6ffff>
	and	a5,a5,a4
	sw	a5,60(sp)
lab696: 	addi	a5,sp,48
	addi	a2,sp,60
lab698: 	lw	a4,0(a5)
	lw	a3,4(a5)
	addi	a5,a5,4
	srli	a4,a4,0x3
	slli	a3,a3,0x1d
	or	a4,a4,a3
	sw	a4,-4(a5)
	bne	a2,a5,lab698
	lw	a4,60(sp)
	lui	a3,0x8
	addi	a5,a3,-1 # 7fff <__extenddftf2+0x67>
	srli	a4,a4,0x3
	sw	a4,60(sp)
	bne	s0,a5,lab699
	lw	a2,52(sp)
	lw	a5,48(sp)
	or	a5,a5,a2
	lw	a2,56(sp)
	or	a5,a5,a2
	or	a5,a5,a4
	beqz	a5,lab699
	sw	a3,60(sp)
	sw	zero,56(sp)
	sw	zero,52(sp)
	sw	zero,48(sp)
	li	s3,0
lab699: 	lw	a5,60(sp)
	slli	s0,s0,0x11
	srli	s0,s0,0x11
	sh	a5,12(sp)
	lw	a5,48(sp)
	slli	s3,s3,0xf
	or	s3,s3,s0
	sw	a5,0(s4)
	lw	a5,52(sp)
	sh	s3,14(sp)
	lw	ra,108(sp)
	sw	a5,4(s4)
	lw	a5,56(sp)
	lw	s0,104(sp)
	lw	s1,100(sp)
	sw	a5,8(s4)
	lw	a5,12(sp)
	lw	s2,96(sp)
	lw	s3,92(sp)
	sw	a5,12(s4)
	lw	s5,84(sp)
	lw	s6,80(sp)
	lw	s7,76(sp)
	lw	s8,72(sp)
	lw	s9,68(sp)
	mv	a0,s4
	lw	s4,88(sp)
	addi	sp,sp,112
	ret
lab694: 	lw	a5,28(sp)
	lui	a4,0x80
	or	a5,a5,a4
	sw	a5,28(sp)
	li	a5,116
	blt	a5,a0,lab700
	mv	a2,a0
lab692: 	li	a5,32
	div	a5,a2,a5
	mv	a0,a1
	li	s0,0
	li	a4,0
lab706: 	blt	a4,a5,lab701
	mv	a4,a5
	bgez	a5,lab702
	li	a4,0
lab702: 	andi	a7,a2,31
	slli	a0,a5,0x2
	bnez	a7,lab703
	li	a2,3
	li	a4,0
	sub	a2,a2,a5
lab704: 	add	a6,a1,a0
	lw	a6,0(a6)
	addi	a4,a4,1 # 80001 <__errno+0x73d71>
	addi	a1,a1,4
	sw	a6,-4(a1)
	bge	a2,a4,lab704
	li	a4,4
	sub	a5,a4,a5
	j	lab705
lab701: 	lw	a6,0(a0)
	addi	a4,a4,1
	addi	a0,a0,4
	or	s0,s0,a6
	j	lab706
lab703: 	li	a1,32
	rem	a2,a2,a1
	slli	a4,a4,0x2
	addi	a4,a4,64
	add	a4,a4,sp
	lw	a4,-48(a4)
	li	t1,0
	sub	a2,a1,a2
	sll	a4,a4,a2
	or	s0,s0,a4
	li	a4,3
	add	a1,a3,a0
	sub	a4,a4,a5
	neg	a0,a0
lab709: 	blt	t1,a4,lab707
	li	a2,4
	sub	a5,a2,a5
	lw	a2,28(sp)
	slli	a4,a4,0x2
	addi	a4,a4,64
	add	a4,a4,sp
	srl	a2,a2,a7
	sw	a2,-48(a4)
lab705: 	li	a4,4
	li	a2,0
	blt	a4,a5,lab708
	sub	a4,a4,a5
	slli	a2,a4,0x2
lab708: 	slli	a5,a5,0x2
	add	a0,a3,a5
	li	a1,0
	jal	ra,memset
	lw	a5,16(sp)
	snez	s0,s0
	or	a5,a5,s0
lab693: 	sw	a5,16(sp)
	lw	a5,16(sp)
	lw	a4,20(sp)
	mv	s0,s7
	add	a5,s1,a5
	add	a4,s5,a4
	sw	a5,48(sp)
	sltu	a5,a5,s1
	add	a3,a4,a5
	sw	a3,52(sp)
	sltu	a3,a3,a5
	lw	a5,24(sp)
	sltu	a4,a4,s5
	or	a4,a4,a3
	add	a5,s6,a5
	add	a3,a5,a4
	sw	a3,56(sp)
	sltu	a3,a3,a4
	lw	a4,28(sp)
	sltu	a5,a5,s6
	or	a5,a5,a3
	add	a4,s8,a4
	add	a5,a5,a4
	j	lab672
lab707: 	lw	a6,0(a1)
	lw	t3,4(a1)
	add	t4,a1,a0
	srl	a6,a6,a7
	sll	t3,t3,a2
	or	a6,a6,t3
	sw	a6,0(t4)
	addi	t1,t1,1
	addi	a1,a1,4
	j	lab709
lab686: 	lui	a6,0x8
	addi	a0,s0,1
	addi	a7,a6,-2 # 7ffe <__extenddftf2+0x66>
	and	a7,a0,a7
	lw	a2,20(sp)
	lw	a3,24(sp)
	lw	a4,28(sp)
	addi	a5,sp,48
	addi	a1,sp,60
	bnez	a7,lab710
	or	a0,a2,a3
	or	a0,a0,a4
	or	a0,a0,s2
	bnez	s0,lab711
	bnez	a0,lab712
	sw	s1,48(sp)
	sw	s5,52(sp)
	sw	s6,56(sp)
	sw	s8,60(sp)
	j	lab670
lab712: 	or	a5,s5,s6
	or	a5,a5,s8
	or	a5,a5,s1
	bnez	a5,lab713
	sw	s2,48(sp)
	sw	a2,52(sp)
	sw	a3,56(sp)
	sw	a4,60(sp)
	j	lab670
lab713: 	add	s1,s2,s1
	add	s5,a2,s5
	sw	s1,48(sp)
	sltu	s1,s1,s2
	add	a5,s5,s1
	sw	a5,52(sp)
	sltu	s5,s5,a2
	sltu	a5,a5,s1
	or	s5,s5,a5
	add	s6,a3,s6
	add	a5,s6,s5
	sw	a5,56(sp)
	sltu	s6,s6,a3
	sltu	a5,a5,s5
	or	s6,s6,a5
	add	a4,a4,s8
	add	s6,s6,a4
	lui	a5,0x80
	and	a5,s6,a5
	bnez	a5,lab714
	sw	s6,60(sp)
	j	lab670
lab714: 	lui	a5,0xfff80
	addi	a5,a5,-1 # fff7ffff <_stack+0xffe6ffff>
	and	s6,s6,a5
	sw	s6,60(sp)
	li	s0,1
	j	lab670
lab711: 	bnez	a0,lab715
	sw	s1,48(sp)
	sw	s5,52(sp)
	sw	s6,56(sp)
	sw	s8,60(sp)
lab717: 	addi	s0,a6,-1
	j	lab670
lab715: 	or	s5,s5,s6
	or	s5,s5,s8
	or	s5,s5,s1
	bnez	s5,lab716
	sw	s2,48(sp)
	sw	a2,52(sp)
	sw	a3,56(sp)
	sw	a4,60(sp)
	j	lab717
lab716: 	sw	a6,60(sp)
	sw	zero,56(sp)
	sw	zero,52(sp)
	sw	zero,48(sp)
	mv	a4,a1
lab718: 	lw	a3,0(a4)
	lw	a2,-4(a4)
	addi	a4,a4,-4
	slli	a3,a3,0x3
	srli	a2,a2,0x1d
	or	a3,a3,a2
	sw	a3,4(a4)
	bne	a5,a4,lab718
lab779: 	lw	a5,48(sp)
	lui	s0,0x8
	li	s3,0
	slli	a5,a5,0x3
	sw	a5,48(sp)
	addi	s0,s0,-1 # 7fff <__extenddftf2+0x67>
	j	lab670
lab710: 	add	s1,s2,s1
	add	s5,a2,s5
	sw	s1,48(sp)
	sltu	s1,s1,s2
	add	a6,s5,s1
	sw	a6,52(sp)
	sltu	s5,s5,a2
	sltu	a6,a6,s1
	or	s5,s5,a6
	add	s6,a3,s6
	add	a2,s6,s5
	sw	a2,56(sp)
	sltu	s6,s6,a3
	sltu	a2,a2,s5
	or	s6,s6,a2
	add	a4,a4,s8
	add	s6,s6,a4
	sw	s6,60(sp)
lab719: 	lw	a4,0(a5)
	lw	a3,4(a5)
	addi	a5,a5,4
	srli	a4,a4,0x1
	slli	a3,a3,0x1f
	or	a4,a4,a3
	sw	a4,-4(a5)
	bne	a1,a5,lab719
	lui	a4,0x8
	addi	a4,a4,-1 # 7fff <__extenddftf2+0x67>
	lw	a5,60(sp)
	beq	a0,a4,lab720
	srli	a5,a5,0x1
	sw	a5,60(sp)
	j	lab721
lab720: 	sw	zero,60(sp)
	sw	zero,56(sp)
	sw	zero,52(sp)
	sw	zero,48(sp)
	j	lab721
lab666: 	blez	a2,lab722
	lw	s8,20(sp)
	lw	s6,24(sp)
	lw	s5,28(sp)
	bnez	s7,lab723
	lw	a1,36(sp)
	lw	a7,40(sp)
	lw	a5,44(sp)
	or	a4,a1,a7
	or	a4,a4,a5
	or	a4,a4,s1
	beqz	a4,lab673
	addi	a4,a2,-1
	bnez	a4,lab724
	sub	a3,s2,s1
	sub	a2,s8,a1
	sltu	a0,s2,a3
	sltu	a6,s8,a2
	sub	a2,a2,a0
	li	a0,0
	bgeu	s2,a3,lab725
	sub	a1,a1,s8
	seqz	a0,a1
lab725: 	or	a0,a0,a6
	sub	a1,s6,a7
	sltu	a6,s6,a1
	sub	a1,a1,a0
	beqz	a0,lab726
	sub	a7,a7,s6
	seqz	a4,a7
lab726: 	sub	a5,s5,a5
	or	a4,a4,a6
	sub	a5,a5,a4
lab748: 	li	s0,1
	j	lab727
lab724: 	lui	a5,0x8
	addi	a5,a5,-1 # 7fff <__extenddftf2+0x67>
	beq	a2,a5,lab673
	li	a5,116
	bge	a5,a4,lab728
lab731: 	sw	zero,44(sp)
	sw	zero,40(sp)
	sw	zero,36(sp)
	li	a5,1
	j	lab729
lab723: 	lui	a5,0x8
	addi	a5,a5,-1 # 7fff <__extenddftf2+0x67>
	beq	s0,a5,lab730
	lw	a5,44(sp)
	lui	a4,0x80
	or	a5,a5,a4
	sw	a5,44(sp)
	li	a5,116
	blt	a5,a2,lab731
	mv	a4,a2
lab728: 	srai	a5,a4,0x5
	mv	a2,a6
	li	s1,0
	li	a3,0
lab736: 	bne	a3,a5,lab732
	andi	a3,a4,31
	slli	a4,a5,0x2
	bnez	a3,lab733
	li	a2,3
	sub	a2,a2,a5
lab734: 	add	a1,a6,a4
	lw	a1,0(a1)
	addi	a3,a3,1
	addi	a6,a6,4
	sw	a1,-4(a6)
	bge	a2,a3,lab734
	li	a4,4
	sub	a5,a4,a5
	j	lab735
lab732: 	lw	a1,0(a2)
	addi	a3,a3,1
	addi	a2,a2,4
	or	s1,s1,a1
	j	lab736
lab733: 	addi	a2,a4,64 # 80040 <__errno+0x73db0>
	add	a2,a2,sp
	lw	a2,-32(a2)
	li	a7,32
	sub	a7,a7,a3
	sll	a2,a2,a7
	or	s1,s1,a2
	add	a1,a0,a4
	neg	a2,a4
	li	a4,3
	li	t1,0
	sub	a4,a4,a5
lab741: 	blt	t1,a4,lab737
	li	a2,4
	sub	a5,a2,a5
	lw	a2,44(sp)
	slli	a4,a4,0x2
	addi	a4,a4,64
	add	a4,a4,sp
	srl	a3,a2,a3
	sw	a3,-32(a4)
lab735: 	li	a2,4
	sub	a2,a2,a5
	slli	a5,a5,0x2
	add	a0,a0,a5
	slli	a2,a2,0x2
	li	a1,0
	jal	ra,memset
	lw	a4,32(sp)
	snez	a5,s1
	or	a5,a4,a5
lab729: 	sw	a5,32(sp)
	lw	a3,32(sp)
	lw	a4,36(sp)
	sub	a3,s2,a3
	sub	a2,s8,a4
	sltu	a5,s2,a3
	sltu	a1,s8,a2
	sub	a2,a2,a5
	li	a5,0
	bgeu	s2,a3,lab738
	sub	a4,a4,s8
	seqz	a5,a4
lab738: 	lw	a0,40(sp)
	or	a5,a5,a1
	li	a4,0
	sub	a1,s6,a0
	sltu	a6,s6,a1
	sub	a1,a1,a5
	beqz	a5,lab739
	sub	a0,a0,s6
	seqz	a4,a0
lab739: 	lw	a5,44(sp)
	or	a4,a4,a6
	sub	a5,s5,a5
	sub	a5,a5,a4
lab727: 	lui	a4,0x80
	sw	a3,48(sp)
	sw	a5,60(sp)
	sw	a1,56(sp)
	sw	a2,52(sp)
	and	a3,a5,a4
	beqz	a3,lab670
	addi	a4,a4,-1 # 7ffff <__errno+0x73d6f>
	and	a5,a5,a4
	sw	a5,60(sp)
	j	lab740
lab737: 	lw	a6,0(a1)
	lw	t3,4(a1)
	add	t4,a1,a2
	srl	a6,a6,a3
	sll	t3,t3,a7
	or	a6,a6,t3
	sw	a6,0(t4)
	addi	t1,t1,1
	addi	a1,a1,4
	j	lab741
lab722: 	lw	s5,36(sp)
	lw	s6,40(sp)
	lw	s9,44(sp)
	beqz	a2,lab742
	sub	a4,s7,s0
	bnez	s0,lab743
	lw	a7,20(sp)
	lw	a6,24(sp)
	lw	a5,28(sp)
	or	a2,a7,a6
	or	a2,a2,a5
	or	a2,a2,s2
	bnez	a2,lab744
lab749: 	sw	s1,48(sp)
	sw	s5,52(sp)
	sw	s6,56(sp)
	sw	s9,60(sp)
	mv	s0,a4
lab753: 	mv	s3,s8
	j	lab670
lab744: 	addi	a0,a4,-1
	bnez	a0,lab745
	sub	a3,s1,s2
	sub	a2,s5,a7
	sltu	a4,s1,a3
	sltu	a1,s5,a2
	sub	a2,a2,a4
	li	a4,0
	bgeu	s1,a3,lab746
	sub	a7,a7,s5
	seqz	a4,a7
lab746: 	or	a4,a4,a1
	sub	a1,s6,a6
	sltu	a7,s6,a1
	sub	a1,a1,a4
	beqz	a4,lab747
	sub	a6,a6,s6
	seqz	a0,a6
lab747: 	sub	a5,s9,a5
	or	a4,a0,a7
	sub	a5,a5,a4
	mv	s3,s8
	j	lab748
lab745: 	lui	a5,0x8
	addi	a5,a5,-1 # 7fff <__extenddftf2+0x67>
	beq	a4,a5,lab749
	li	a5,116
	blt	a5,a0,lab750
	mv	a4,a0
	j	lab751
lab743: 	lui	a5,0x8
	addi	a5,a5,-1 # 7fff <__extenddftf2+0x67>
	bne	s7,a5,lab752
	sw	s1,48(sp)
	sw	s5,52(sp)
	sw	s6,56(sp)
	sw	s9,60(sp)
	mv	s0,s7
	j	lab753
lab752: 	lw	a5,28(sp)
	lui	a2,0x80
	or	a5,a5,a2
	sw	a5,28(sp)
	li	a5,116
	blt	a5,a4,lab750
lab751: 	li	a5,32
	div	a5,a4,a5
	mv	a0,a1
	li	s0,0
	li	a2,0
lab759: 	blt	a2,a5,lab754
	mv	a2,a5
	bgez	a5,lab755
	li	a2,0
lab755: 	andi	a7,a4,31
	slli	a0,a5,0x2
	bnez	a7,lab756
	li	a2,3
	li	a4,0
	sub	a2,a2,a5
lab757: 	add	a6,a1,a0
	lw	a6,0(a6)
	addi	a4,a4,1
	addi	a1,a1,4
	sw	a6,-4(a1)
	bge	a2,a4,lab757
	li	a4,4
	sub	a5,a4,a5
	j	lab758
lab754: 	lw	a6,0(a0)
	addi	a2,a2,1 # 80001 <__errno+0x73d71>
	addi	a0,a0,4
	or	s0,s0,a6
	j	lab759
lab756: 	li	a1,32
	rem	a4,a4,a1
	slli	a2,a2,0x2
	li	t1,0
	sub	a1,a1,a4
	addi	a4,a2,64
	add	a2,a4,sp
	lw	a4,-48(a2)
	add	a2,a3,a0
	neg	a0,a0
	sll	a4,a4,a1
	or	s0,s0,a4
	li	a4,3
	sub	a4,a4,a5
lab764: 	blt	t1,a4,lab760
	li	a2,4
	sub	a5,a2,a5
	lw	a2,28(sp)
	slli	a4,a4,0x2
	addi	a4,a4,64
	add	a4,a4,sp
	srl	a2,a2,a7
	sw	a2,-48(a4)
lab758: 	li	a4,4
	li	a2,0
	blt	a4,a5,lab761
	sub	a4,a4,a5
	slli	a2,a4,0x2
lab761: 	slli	a5,a5,0x2
	add	a0,a3,a5
	li	a1,0
	jal	ra,memset
	lw	a4,16(sp)
	snez	a5,s0
	or	a5,a4,a5
lab765: 	sw	a5,16(sp)
	lw	a3,16(sp)
	lw	a4,20(sp)
	sub	a3,s1,a3
	sub	a2,s5,a4
	sltu	a5,s1,a3
	sltu	a1,s5,a2
	sub	a2,a2,a5
	li	a5,0
	bgeu	s1,a3,lab762
	sub	a4,a4,s5
	seqz	a5,a4
lab762: 	lw	a0,24(sp)
	or	a5,a5,a1
	li	a4,0
	sub	a1,s6,a0
	sltu	a6,s6,a1
	sub	a1,a1,a5
	beqz	a5,lab763
	sub	a0,a0,s6
	seqz	a4,a0
lab763: 	lw	a5,28(sp)
	or	a4,a4,a6
	mv	s0,s7
	sub	a5,s9,a5
	sub	a5,a5,a4
	mv	s3,s8
	j	lab727
lab760: 	lw	a6,0(a2)
	lw	t3,4(a2)
	add	t4,a2,a0
	srl	a6,a6,a7
	sll	t3,t3,a1
	or	a6,a6,t3
	sw	a6,0(t4)
	addi	t1,t1,1
	addi	a2,a2,4
	j	lab764
lab750: 	sw	zero,28(sp)
	sw	zero,24(sp)
	sw	zero,20(sp)
	li	a5,1
	j	lab765
lab742: 	lui	a0,0x8
	addi	a5,a0,-2 # 7ffe <__extenddftf2+0x66>
	addi	a1,s0,1
	and	a1,a1,a5
	lw	a4,20(sp)
	lw	a3,24(sp)
	lw	a5,28(sp)
	bnez	a1,lab766
	or	a2,s5,s6
	or	a1,a4,a3
	or	a2,a2,s9
	or	a1,a1,a5
	or	a2,a2,s1
	or	a1,a1,s2
	bnez	s0,lab767
	bnez	a1,lab768
	sw	s1,48(sp)
	sw	s5,52(sp)
	sw	s6,56(sp)
	sw	s9,60(sp)
	mv	s3,s8
lab775: 	bnez	a2,lab670
lab797: 	li	s0,0
	li	s3,0
	j	lab670
lab768: 	bnez	a2,lab769
	sw	s2,48(sp)
	sw	a4,52(sp)
	sw	a3,56(sp)
lab808: 	sw	a5,60(sp)
	j	lab670
lab769: 	sub	a2,s2,s1
	sub	a6,a4,s5
	sltu	t3,s2,a2
	sltu	a0,a4,a6
	sub	t3,a6,t3
	li	a1,0
	bgeu	s2,a2,lab770
	seqz	a1,a6
lab770: 	or	a1,a1,a0
	sub	a0,a3,s6
	sltu	t4,a3,a0
	sub	t1,a0,a1
	li	a7,0
	beqz	a1,lab771
	seqz	a7,a0
lab771: 	or	a7,a7,t4
	sub	a1,a5,s9
	sub	a1,a1,a7
	lui	a7,0x80
	sw	a1,60(sp)
	sw	t1,56(sp)
	sw	t3,52(sp)
	sw	a2,48(sp)
	and	a7,a1,a7
	beqz	a7,lab772
	sub	s2,s1,s2
	sub	a4,s5,a4
	sltu	a2,s1,s2
	sltu	s5,s5,a4
	sub	a4,a4,a2
	li	a2,0
	bgeu	s1,s2,lab773
	seqz	a2,a6
lab773: 	or	s5,a2,s5
	sub	a3,s6,a3
	sltu	s6,s6,a3
	li	a2,0
	sub	a3,a3,s5
	beqz	s5,lab774
	seqz	a2,a0
lab774: 	sub	a5,s9,a5
	or	a2,a2,s6
	sub	a5,a5,a2
	sw	a5,60(sp)
	sw	a3,56(sp)
	sw	a4,52(sp)
	sw	s2,48(sp)
	j	lab753
lab772: 	or	a2,a2,t3
	or	a2,a2,t1
	or	a2,a2,a1
	j	lab775
lab767: 	addi	a6,sp,48
	bnez	a1,lab776
	bnez	a2,lab777
	sw	a0,60(sp)
	sw	zero,56(sp)
	sw	zero,52(sp)
	sw	zero,48(sp)
	addi	a5,sp,60
lab778: 	lw	a4,0(a5)
	lw	a3,-4(a5)
	addi	a5,a5,-4
	slli	a4,a4,0x3
	srli	a3,a3,0x1d
	or	a4,a4,a3
	sw	a4,4(a5)
	bne	a6,a5,lab778
	j	lab779
lab777: 	sw	s1,48(sp)
	sw	s5,52(sp)
	sw	s6,56(sp)
	sw	s9,60(sp)
	mv	s3,s8
lab781: 	addi	s0,a0,-1
	j	lab670
lab776: 	bnez	a2,lab780
	sw	s2,48(sp)
	sw	a4,52(sp)
	sw	a3,56(sp)
	sw	a5,60(sp)
	j	lab781
lab780: 	sw	a0,60(sp)
	sw	zero,56(sp)
	sw	zero,52(sp)
	sw	zero,48(sp)
	addi	a5,sp,60
lab782: 	lw	a4,0(a5)
	lw	a3,-4(a5)
	addi	a5,a5,-4
	slli	a4,a4,0x3
	srli	a3,a3,0x1d
	or	a4,a4,a3
	sw	a4,4(a5)
	bne	a6,a5,lab782
	j	lab779
lab766: 	sub	a0,s2,s1
	sub	a7,a4,s5
	sltu	t3,s2,a0
	sltu	a6,a4,a7
	sub	t3,a7,t3
	li	a1,0
	bgeu	s2,a0,lab783
	seqz	a1,a7
lab783: 	or	a1,a1,a6
	sub	a6,a3,s6
	sltu	t5,a3,a6
	sub	t4,a6,a1
	li	t1,0
	beqz	a1,lab784
	seqz	t1,a6
lab784: 	or	t1,t1,t5
	sub	a1,a5,s9
	sub	a1,a1,t1
	lui	t1,0x80
	sw	a1,60(sp)
	sw	t4,56(sp)
	sw	t3,52(sp)
	sw	a0,48(sp)
	and	t1,a1,t1
	beqz	t1,lab785
	sub	s2,s1,s2
	sub	a4,s5,a4
	sltu	a1,s1,s2
	sltu	s5,s5,a4
	sub	a4,a4,a1
	li	a1,0
	bgeu	s1,s2,lab786
	seqz	a1,a7
lab786: 	sub	a3,s6,a3
	or	s5,a1,s5
	sltu	s6,s6,a3
	sub	a3,a3,s5
	beqz	s5,lab787
	seqz	a2,a6
lab787: 	sub	a1,s9,a5
	or	a5,a2,s6
	sub	a5,a1,a5
	sw	a5,60(sp)
	sw	a3,56(sp)
	sw	a4,52(sp)
	sw	s2,48(sp)
	mv	s3,s8
lab740: 	lw	a0,60(sp)
	beqz	a0,lab788
	jal	ra,__clzsi2
lab799: 	addi	s1,a0,-12
	li	a4,32
	andi	a0,s1,31
	div	a5,s1,a4
	beqz	a0,lab789
	addi	a7,sp,48
	rem	a3,s1,a4
	sub	a2,a4,a3
	li	a3,-4
	mul	a3,a5,a3
	addi	a4,a3,12
	add	a4,a7,a4
	neg	a3,a3
lab803: 	bne	a7,a4,lab790
	lw	a4,48(sp)
	addi	a2,a5,-1
	slli	a5,a5,0x2
	addi	a5,a5,64
	add	a5,a5,sp
	sll	a4,a4,a0
	sw	a4,-16(a5)
lab802: 	addi	a2,a2,1
	slli	a2,a2,0x2
	li	a1,0
	addi	a0,sp,48
	jal	ra,memset
	blt	s1,s0,lab791
	sub	s1,s1,s0
	addi	s1,s1,1
	li	a0,32
	div	a0,s1,a0
	addi	a3,sp,48
	mv	a4,a3
	li	s0,0
	li	a5,0
lab804: 	blt	a5,a0,lab792
	mv	a5,a0
	bgez	a0,lab793
	li	a5,0
lab793: 	andi	a6,s1,31
	slli	a4,a0,0x2
	bnez	a6,lab794
	li	a2,3
	li	a5,0
	sub	a2,a2,a0
lab795: 	add	a1,a3,a4
	lw	a1,0(a1)
	addi	a5,a5,1
	addi	a3,a3,4
	sw	a1,-4(a3)
	bge	a2,a5,lab795
	li	a5,4
	sub	a0,a5,a0
	j	lab796
lab785: 	or	a0,a0,t3
	or	a0,a0,t4
	or	a0,a0,a1
	beqz	a0,lab797
	j	lab740
lab788: 	lw	a0,56(sp)
	beqz	a0,lab798
	jal	ra,__clzsi2
	addi	a0,a0,32
	j	lab799
lab798: 	lw	a0,52(sp)
	beqz	a0,lab800
	jal	ra,__clzsi2
	addi	a0,a0,64
	j	lab799
lab800: 	lw	a0,48(sp)
	jal	ra,__clzsi2
	addi	a0,a0,96
	j	lab799
lab789: 	li	a2,-4
	mul	a2,a5,a2
	addi	a4,sp,60
	li	a3,3
lab801: 	add	a1,a4,a2
	lw	a1,0(a1)
	addi	a3,a3,-1
	addi	a4,a4,-4
	sw	a1,4(a4)
	bge	a3,a5,lab801
	addi	a2,a5,-1
	j	lab802
lab790: 	lw	a1,0(a4)
	lw	a6,-4(a4)
	add	t1,a4,a3
	sll	a1,a1,a0
	srl	a6,a6,a2
	or	a1,a1,a6
	sw	a1,0(t1) # 80000 <__errno+0x73d70>
	addi	a4,a4,-4
	j	lab803
lab792: 	lw	a2,0(a4)
	addi	a5,a5,1
	addi	a4,a4,4
	or	s0,s0,a2
	j	lab804
lab794: 	li	a3,32
	rem	s1,s1,a3
	slli	a5,a5,0x2
	addi	a5,a5,64
	add	a5,a5,sp
	lw	a5,-16(a5)
	li	a7,0
	sub	a3,a3,s1
	sll	a5,a5,a3
	or	s0,s0,a5
	addi	a5,sp,48
	add	a2,a5,a4
	li	a5,3
	neg	a4,a4
	sub	a5,a5,a0
lab807: 	blt	a7,a5,lab805
	li	a4,4
	sub	a0,a4,a0
	lw	a4,60(sp)
	slli	a5,a5,0x2
	addi	a5,a5,64
	add	a5,a5,sp
	srl	a4,a4,a6
	sw	a4,-16(a5)
lab796: 	li	a5,4
	li	a2,0
	blt	a5,a0,lab806
	sub	a5,a5,a0
	slli	a2,a5,0x2
lab806: 	addi	a5,sp,48
	slli	a0,a0,0x2
	add	a0,a5,a0
	li	a1,0
	jal	ra,memset
	lw	a4,48(sp)
	snez	a5,s0
	li	s0,0
	or	a5,a4,a5
	sw	a5,48(sp)
	j	lab670
lab805: 	lw	a1,0(a2)
	lw	t1,4(a2)
	add	t3,a2,a4
	srl	a1,a1,a6
	sll	t1,t1,a3
	or	a1,a1,t1
	sw	a1,0(t3)
	addi	a7,a7,1 # 80001 <__errno+0x73d71>
	addi	a2,a2,4
	j	lab807
lab791: 	lw	a5,60(sp)
	lui	a4,0xfff80
	addi	a4,a4,-1 # fff7ffff <_stack+0xffe6ffff>
	sub	s0,s0,s1
	and	a5,a5,a4
	j	lab808
lab697: 	sw	zero,60(sp)
	sw	zero,56(sp)
	sw	zero,52(sp)
	sw	zero,48(sp)
	j	lab696
__extenddftf2:
	srli	a5,a2,0x14
	slli	a4,a2,0xc
	andi	a5,a5,2047
	addi	sp,sp,-64
	srli	a4,a4,0xc
	addi	a3,a5,1
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	ra,60(sp)
	sw	s3,44(sp)
	sw	a1,16(sp)
	sw	a4,20(sp)
	sw	zero,28(sp)
	sw	zero,24(sp)
	andi	a3,a3,2046
	mv	s2,a0
	mv	s0,a1
	srli	s1,a2,0x1f
	beqz	a3,lab809
	lui	a3,0x4
	addi	a3,a3,-1024 # 3c00 <__addtf3+0x488>
	add	a5,a5,a3
	srli	a3,a4,0x4
	sw	a3,28(sp)
	slli	a4,a4,0x1c
	srli	a3,a1,0x4
	or	a4,a4,a3
	slli	s0,a1,0x1c
	sw	a4,24(sp)
	sw	s0,20(sp)
	sw	zero,16(sp)
lab811: 	slli	s1,s1,0xf
	or	s1,s1,a5
	lw	a5,16(sp)
	lw	a4,28(sp)
	sh	s1,14(sp)
	sw	a5,0(s2)
	lw	a5,20(sp)
	sh	a4,12(sp)
	lw	ra,60(sp)
	sw	a5,4(s2)
	lw	a5,24(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	sw	a5,8(s2)
	lw	a5,12(sp)
	lw	s3,44(sp)
	mv	a0,s2
	sw	a5,12(s2)
	lw	s2,48(sp)
	addi	sp,sp,64
	ret
lab809: 	or	a0,a4,a1
	bnez	a5,lab810
	beqz	a0,lab811
	beqz	a4,lab812
	mv	a0,a4
	jal	ra,__clzsi2
	mv	s3,a0
lab816: 	addi	a4,s3,49
	srai	a5,a4,0x5
	andi	a4,a4,31
	beqz	a4,lab813
	li	a2,-4
	mul	a2,a5,a2
	li	a0,32
	addi	a7,sp,16
	sub	a0,a0,a4
	addi	a3,a2,12
	add	a3,a7,a3
	neg	a2,a2
lab818: 	bne	a7,a3,lab814
	addi	a2,a5,-1
	slli	a5,a5,0x2
	addi	a5,a5,32
	add	a5,a5,sp
	sll	a4,s0,a4
	sw	a4,-16(a5)
	j	lab815
lab812: 	jal	ra,__clzsi2
	addi	s3,a0,32
	j	lab816
lab813: 	li	a2,-4
	mul	a2,a5,a2
	addi	a4,sp,28
	li	a3,3
lab817: 	add	a1,a4,a2
	lw	a1,0(a1)
	addi	a3,a3,-1
	addi	a4,a4,-4
	sw	a1,4(a4)
	bge	a3,a5,lab817
	addi	a2,a5,-1
lab815: 	addi	a2,a2,1
	slli	a2,a2,0x2
	li	a1,0
	addi	a0,sp,16
	jal	ra,memset
	lui	a5,0x4
	addi	a5,a5,-1012 # 3c0c <__addtf3+0x494>
	sub	a5,a5,s3
	j	lab811
lab814: 	lw	a1,0(a3)
	lw	a6,-4(a3)
	add	t1,a3,a2
	sll	a1,a1,a4
	srl	a6,a6,a0
	or	a1,a1,a6
	sw	a1,0(t1)
	addi	a3,a3,-4
	j	lab818
lab810: 	lui	a5,0x8
	beqz	a0,lab819
	slli	a5,a4,0x1c
	srli	a3,a1,0x4
	or	a5,a5,a3
	sw	a5,24(sp)
	srli	a4,a4,0x4
	lui	a5,0x8
	slli	s0,a1,0x1c
	or	a4,a4,a5
	sw	s0,20(sp)
	sw	zero,16(sp)
	sw	a4,28(sp)
lab819: 	addi	a5,a5,-1 # 7fff <__extenddftf2+0x67>
	j	lab811
__trunctfdf2:
	addi	sp,sp,-48
	lw	a5,8(a0)
	sw	s1,36(sp)
	lw	s1,12(a0)
	lw	a3,0(a0)
	lw	a4,4(a0)
	sw	a5,8(sp)
	sw	a5,24(sp)
	slli	a5,s1,0x10
	sw	a3,0(sp)
	sw	a3,16(sp)
	srli	a5,a5,0x10
	slli	a3,s1,0x1
	sw	a4,4(sp)
	sw	s1,12(sp)
	sw	a4,20(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	a5,28(sp)
	srli	a3,a3,0x11
	srli	s1,s1,0x1f
	addi	a0,sp,16
	addi	a4,sp,28
lab820: 	lw	a5,0(a4)
	lw	a2,-4(a4)
	addi	a4,a4,-4
	slli	a5,a5,0x3
	srli	a2,a2,0x1d
	or	a5,a5,a2
	sw	a5,4(a4)
	bne	a0,a4,lab820
	lw	a1,16(sp)
	lui	a2,0x8
	addi	a5,a3,1
	slli	a1,a1,0x3
	addi	a2,a2,-2 # 7ffe <__extenddftf2+0x66>
	sw	a1,16(sp)
	and	a5,a5,a2
	beqz	a5,lab821
	lui	a5,0xffffc
	addi	a5,a5,1024 # ffffc400 <_stack+0xffeec400>
	add	a3,a3,a5
	li	a5,2046
	blt	a5,a3,lab822
	blez	a3,lab823
	lw	a2,24(sp)
	lw	a5,28(sp)
	lw	a4,20(sp)
	srli	a0,a2,0x1c
	slli	a5,a5,0x4
	or	a5,a5,a0
	sw	a5,20(sp)
	slli	a5,a4,0x4
	or	a5,a5,a1
	srli	a4,a4,0x1c
	slli	a2,a2,0x4
	snez	a5,a5
	or	a4,a4,a2
	or	a5,a5,a4
lab826: 	lw	a4,20(sp)
lab835: 	andi	a2,a5,7
	beqz	a2,lab824
	andi	a2,a5,15
	li	a1,4
	beq	a2,a1,lab824
	addi	a2,a5,4
	sltu	a5,a2,a5
	add	a4,a4,a5
	mv	a5,a2
	j	lab824
lab823: 	li	a5,-52
	bge	a3,a5,lab825
	sw	zero,20(sp)
	li	a5,1
lab832: 	li	a3,0
	j	lab826
lab825: 	lw	a5,28(sp)
	lui	a2,0x80
	mv	a6,a0
	or	a2,a2,a5
	li	a5,61
	sub	a3,a5,a3
	sw	a2,28(sp)
	srai	a5,a3,0x5
	li	a1,0
	li	s0,0
lab827: 	lw	a7,0(a6)
	addi	a1,a1,1
	addi	a6,a6,4
	or	s0,s0,a7
	bne	a5,a1,lab827
	andi	a3,a3,31
	slli	a1,a5,0x2
	bnez	a3,lab828
	li	a2,3
	sub	a2,a2,a5
lab829: 	add	a6,a4,a1
	lw	a6,0(a6)
	addi	a3,a3,1
	addi	a4,a4,4
	sw	a6,-4(a4)
	bge	a2,a3,lab829
	li	a4,4
	sub	a5,a4,a5
	j	lab830
lab828: 	addi	a4,a1,32
	add	a4,a4,sp
	lw	a4,-16(a4)
	li	t1,32
	sub	t1,t1,a3
	sll	a4,a4,t1
	or	s0,s0,a4
	li	a4,3
	add	a6,a0,a1
	li	t3,0
	neg	a1,a1
	sub	a4,a4,a5
lab833: 	blt	t3,a4,lab831
	slli	a4,a4,0x2
	addi	a4,a4,32
	li	a1,4
	add	a4,a4,sp
	srl	a2,a2,a3
	sub	a5,a1,a5
	sw	a2,-16(a4)
lab830: 	li	a2,4
	sub	a2,a2,a5
	slli	a5,a5,0x2
	add	a0,a0,a5
	slli	a2,a2,0x2
	li	a1,0
	jal	ra,memset
	lw	a4,16(sp)
	snez	a5,s0
	or	a5,a5,a4
	j	lab832
lab831: 	lw	a7,0(a6)
	lw	t4,4(a6)
	add	t5,a6,a1
	srl	a7,a7,a3
	sll	t4,t4,t1
	or	a7,a7,t4
	sw	a7,0(t5)
	addi	t3,t3,1
	addi	a6,a6,4
	j	lab833
lab821: 	lw	a2,20(sp)
	lw	a4,24(sp)
	lw	a0,28(sp)
	or	a5,a4,a2
	or	a5,a5,a0
	or	a5,a5,a1
	bnez	a3,lab834
	snez	a5,a5
	li	a4,0
	j	lab835
lab834: 	beqz	a5,lab836
	slli	a5,a4,0x4
	srli	a2,a2,0x1c
	srli	a4,a4,0x1c
	slli	a0,a0,0x4
	lui	a3,0x400
	or	a2,a2,a5
	or	a4,a4,a0
	or	a4,a4,a3
	andi	a5,a2,-8
	li	a3,2047
	j	lab835
lab822: 	li	a4,0
	li	a5,0
lab840: 	li	a3,2047
lab824: 	lui	a2,0x800
	and	a2,a4,a2
	beqz	a2,lab837
	addi	a3,a3,1 # 400001 <_stack+0x2f0001>
	li	a2,2047
	beq	a3,a2,lab838
	lui	a2,0xff800
	addi	a2,a2,-1 # ff7fffff <_stack+0xff6effff>
	and	a4,a4,a2
lab837: 	slli	a2,a4,0x1d
	srli	a5,a5,0x3
	or	a5,a2,a5
	li	a2,2047
	srli	a4,a4,0x3
	bne	a3,a2,lab839
	or	a5,a5,a4
	li	a4,0
	beqz	a5,lab839
	lui	a4,0x80
	li	a5,0
	li	s1,0
lab839: 	slli	a3,a3,0x14
	lui	a2,0x7ff00
	slli	a4,a4,0xc
	lw	ra,44(sp)
	lw	s0,40(sp)
	srli	a4,a4,0xc
	and	a3,a3,a2
	slli	s1,s1,0x1f
	or	a3,a3,a4
	or	a4,a3,s1
	mv	a0,a5
	lw	s1,36(sp)
	mv	a1,a4
	addi	sp,sp,48
	ret
lab836: 	li	a4,0
	j	lab840
lab838: 	li	a4,0
	li	a5,0
	j	lab837
__clzsi2:
	lui	a5,0x10
	bgeu	a0,a5,lab841
	sltiu	a5,a0,256
	xori	a5,a5,1
	slli	a5,a5,0x3
lab842: 	lui	a4,0x100
	li	a3,32
	sub	a3,a3,a5
	srl	a0,a0,a5
	addi	a5,a4,120 # 100078 <__clz_tab>
	add	a5,a5,a0
	lbu	a0,0(a5) # 10000 <__errno+0x3d70>
	sub	a0,a3,a0
	ret
lab841: 	lui	a4,0x1000
	li	a5,16
	bltu	a0,a4,lab842
	li	a5,24
	j	lab842
memset:
	li	t1,15
	mv	a4,a0
	bgeu	t1,a2,lab843
	andi	a5,a4,15
	bnez	a5,lab844
lab848: 	bnez	a1,lab845
lab847: 	andi	a3,a2,-16
	andi	a2,a2,15
	add	a3,a3,a4
lab846: 	sw	a1,0(a4) # 1000000 <_stack+0xef0000>
	sw	a1,4(a4)
	sw	a1,8(a4)
	sw	a1,12(a4)
	addi	a4,a4,16
	bltu	a4,a3,lab846
	bnez	a2,lab843
	ret
lab843: 	sub	a3,t1,a2
	slli	a3,a3,0x2
	auipc	t0,0x0
	add	a3,a3,t0
	jr	12(a3)
	sb	a1,14(a4)
	sb	a1,13(a4)
	sb	a1,12(a4)
	sb	a1,11(a4)
	sb	a1,10(a4)
	sb	a1,9(a4)
	sb	a1,8(a4)
	sb	a1,7(a4)
	sb	a1,6(a4)
	sb	a1,5(a4)
	sb	a1,4(a4)
	sb	a1,3(a4)
	sb	a1,2(a4)
	sb	a1,1(a4)
	sb	a1,0(a4)
	ret
lab845: 	zext.b	a1,a1
	slli	a3,a1,0x8
	or	a1,a1,a3
	slli	a3,a1,0x10
	or	a1,a1,a3
	j	lab847
lab844: 	slli	a3,a5,0x2
	auipc	t0,0x0
	add	a3,a3,t0
	mv	t0,ra
	jalr	-96(a3)
	mv	ra,t0
	addi	a5,a5,-16
	sub	a4,a4,a5
	add	a2,a2,a5
	bgeu	t1,a2,lab843
	j	lab848
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

__clz_tab_78:
	.2byte	0x2498
	.2byte	0x0000
	.2byte	0x2578
	.2byte	0x0000
	.2byte	0x24a8
	.2byte	0x0000
	.2byte	0x2578
	.2byte	0x0000
	.2byte	0x2584
	.2byte	0x0000
	.2byte	0x2578
	.2byte	0x0000
	.2byte	0x24a8
	.2byte	0x0000
	.2byte	0x2498
	.2byte	0x0000
	.2byte	0x2498
	.2byte	0x0000
	.2byte	0x2584
	.2byte	0x0000
	.2byte	0x24a8
	.2byte	0x0000
	.2byte	0x2470
	.2byte	0x0000
	.2byte	0x2470
	.2byte	0x0000
	.2byte	0x2470
	.2byte	0x0000
	.2byte	0x24b0
	.2byte	0x0000
	.2byte	0x5958
	.2byte	0x0000
	.2byte	0x5944
	.2byte	0x0000
	.2byte	0x56fc
	.2byte	0x0000
	.2byte	0x5944
	.2byte	0x0000
	.2byte	0x56dc
	.2byte	0x0000
	.2byte	0x5944
	.2byte	0x0000
	.2byte	0x56fc
	.2byte	0x0000
	.2byte	0x5958
	.2byte	0x0000
	.2byte	0x5958
	.2byte	0x0000
	.2byte	0x56dc
	.2byte	0x0000
	.2byte	0x56fc
	.2byte	0x0000
	.2byte	0x5698
	.2byte	0x0000
	.2byte	0x5698
	.2byte	0x0000
	.2byte	0x5698
	.2byte	0x0000
	.2byte	0x56dc
	.2byte	0x0000
__clz_tab:
	.2byte	0x100
	.2byte	0x202
	.4byte	0x03030303
	.2byte	0x404
	.2byte	0x404
	.2byte	0x404
	.2byte	0x404
	.2byte	0x505
	.2byte	0x505
	.2byte	0x505
	.2byte	0x505
	.2byte	0x505
	.2byte	0x505
	.2byte	0x505
	.2byte	0x505
	.2byte	0x606
	.2byte	0x606
	.2byte	0x606
	.2byte	0x606
	.2byte	0x606
	.2byte	0x606
	.2byte	0x606
	.2byte	0x606
	.2byte	0x606
	.2byte	0x606
	.2byte	0x606
	.2byte	0x606
	.2byte	0x606
	.2byte	0x606
	.2byte	0x606
	.2byte	0x606
	.4byte	0x7070707
	.4byte	0x7070707
	.4byte	0x7070707
	.4byte	0x7070707
	.4byte	0x7070707
	.4byte	0x7070707
	.4byte	0x7070707
	.4byte	0x7070707
	.4byte	0x7070707
	.4byte	0x7070707
	.4byte	0x7070707
	.4byte	0x7070707
	.4byte	0x7070707
	.4byte	0x7070707
	.4byte	0x7070707
	.4byte	0x7070707
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x808
	.2byte	0x0000
	.2byte	0x0000
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
	.2byte	0x0000
	.2byte	0x0000
PIo2:
	.2byte	0x0000
	.2byte	0x4000
	.4byte	0x3ff921fb
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x442d
	.2byte	0x3e74
	.2byte	0x0000
	.2byte	0x8000
	.2byte	0x4698
	.2byte	0x3cf8
	.2byte	0x0000
	.2byte	0x6000
	.2byte	0xcc51
	.2byte	0x3b78
	.2byte	0x0000
	.2byte	0x8000
	.4byte	0x39f01b83
	.2byte	0x0000
	.2byte	0x4000
	.2byte	0x2520
	.2byte	0x387a
	.2byte	0x0000
	.2byte	0x8000
	.2byte	0x8222
	.4byte	0x36e3
	.2byte	0x0000
	.2byte	0xf31d
	.2byte	0x3569
init_jk:
	.2byte	0x2
	.2byte	0x0000
	.4byte	0x00000003
	.2byte	0x4
	.2byte	0x0000
	.2byte	0x6
	.2byte	0x0000


	.data

impure_data:
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x964
	.2byte	0x10
	.2byte	0x9cc
	.2byte	0x10
	.2byte	0xa34
	.2byte	0x10
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x1
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x330e
	.2byte	0xabcd
	.2byte	0x1234
	.2byte	0xe66d
	.2byte	0xdeec
	.2byte	0x5
	.4byte	0xb
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000


	.bss

res0:
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
res1:
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
soln_cnt1:
	.2byte	0x0000
	.2byte	0x0000
soln_cnt0:
	.2byte	0x0000
	.2byte	0x0000
