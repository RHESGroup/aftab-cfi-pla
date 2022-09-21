	.text
	.globl  main
	.type  main, @function

TestCompare:
	addi	sp,sp,-16
	slt	a0,a0,a2
	addi	sp,sp,16
	ret
TestingAscending:
	ret
TestingDescending:
	sub	a0,a1,a0
	ret
TestingEqual:
	li	a0,1000
	ret
TestingRandom:
	j	rand_beebs
TestingMostlyDescending:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	mv	s0,a0
	mv	s2,a1
	jal	ra,rand_beebs
	jal	ra,__floatsidf
	lui	a5,0x102
	lw	a2,-1592(a5) # 1019c8 <__func__.0+0x6c>
	lw	a3,-1588(a5)
	jal	ra,__divdf3
	lui	a5,0x102
	lw	a2,-1584(a5) # 1019d0 <__func__.0+0x74>
	lw	a3,-1580(a5)
	jal	ra,__muldf3
	mv	s1,a0
	sub	a0,s2,s0
	mv	s0,a1
	jal	ra,__floatsidf
	mv	a2,a0
	mv	a3,a1
	mv	a0,s1
	mv	a1,s0
	jal	ra,__adddf3
	lui	a5,0x102
	lw	a2,-1576(a5) # 1019d8 <__func__.0+0x7c>
	lw	a3,-1572(a5)
	jal	ra,__subdf3
	jal	ra,__fixdfsi
	lw	ra,12(sp)
	lw	s0,8(sp)
	lw	s1,4(sp)
	lw	s2,0(sp)
	addi	sp,sp,16
	ret
TestingMostlyAscending:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	mv	s0,a0
	jal	ra,rand_beebs
	jal	ra,__floatsidf
	lui	a5,0x102
	lw	a2,-1592(a5) # 1019c8 <__func__.0+0x6c>
	lw	a3,-1588(a5)
	jal	ra,__divdf3
	lui	a5,0x102
	lw	a2,-1584(a5) # 1019d0 <__func__.0+0x74>
	lw	a3,-1580(a5)
	jal	ra,__muldf3
	mv	s1,a0
	mv	a0,s0
	mv	s0,a1
	jal	ra,__floatsidf
	mv	a2,a0
	mv	a3,a1
	mv	a0,s1
	mv	a1,s0
	jal	ra,__adddf3
	lui	a5,0x102
	lw	a2,-1576(a5) # 1019d8 <__func__.0+0x7c>
	lw	a3,-1572(a5)
	jal	ra,__subdf3
	jal	ra,__fixdfsi
	lw	ra,12(sp)
	lw	s0,8(sp)
	lw	s1,4(sp)
	addi	sp,sp,16
	ret
TestingJittered:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	mv	s0,a0
	jal	ra,rand_beebs
	jal	ra,__floatsidf
	lui	a5,0x102
	lw	a2,-1592(a5) # 1019c8 <__func__.0+0x6c>
	lw	a3,-1588(a5)
	jal	ra,__divdf3
	lui	a5,0x102
	lw	a2,-1568(a5) # 1019e0 <__func__.0+0x84>
	lw	a3,-1564(a5)
	jal	ra,__ledf2
	blez	a0,lab0
	addi	s0,s0,-2
lab0: 	lw	ra,12(sp)
	mv	a0,s0
	lw	s0,8(sp)
	addi	sp,sp,16
	ret
TestingMostlyEqual:
	addi	sp,sp,-16
	sw	ra,12(sp)
	jal	ra,rand_beebs
	srai	a5,a0,0x1f
	srli	a5,a5,0x1e
	lw	ra,12(sp)
	add	a0,a0,a5
	andi	a0,a0,3
	sub	a0,a0,a5
	addi	a0,a0,1000
	addi	sp,sp,16
	ret
TestingPathological:
	mv	a5,a0
	beqz	a0,lab1
	srli	a4,a1,0x1f
	add	a4,a4,a1
	srai	a4,a4,0x1
	li	a0,11
	blt	a5,a4,lab2
	addi	a1,a1,-1
	sub	a0,a5,a1
	seqz	a0,a0
	addi	a0,a0,9
	ret
lab1: 	li	a0,10
lab2: 	ret
WikiMerge.constprop.1:
	addi	sp,sp,-112
	sw	s5,84(sp)
	mv	s5,a5
	sw	s11,60(sp)
	sw	a4,36(sp)
	sub	s11,a4,a3
	sub	a4,a6,s5
	sw	s0,104(sp)
	sw	s2,96(sp)
	sw	s6,80(sp)
	sw	a5,24(sp)
	sw	ra,108(sp)
	sw	s1,100(sp)
	sw	s3,92(sp)
	sw	s4,88(sp)
	sw	s7,76(sp)
	sw	s8,72(sp)
	sw	s9,68(sp)
	sw	s10,64(sp)
	sw	a3,20(sp)
	sw	a1,40(sp)
	sw	a2,44(sp)
	sw	a3,32(sp)
	sw	a6,28(sp)
	li	a5,512
	sw	a1,12(sp)
	sw	a4,16(sp)
	lw	s2,112(sp)
	mv	s0,a0
	mv	s6,a7
	blt	a5,s11,lab3
	slli	s4,a3,0x3
	slli	s1,s11,0x3
	add	s4,a0,s4
	add	s1,s2,s1
	blez	a4,lab4
	blez	s11,lab4
	slli	s5,s5,0x3
	slli	t1,a6,0x3
	add	s5,a0,s5
	add	s0,a0,t1
lab6: 	lw	a2,0(s2)
	lw	a3,4(s2)
	lw	a0,0(s5)
	lw	a1,4(s5)
	addi	s4,s4,8
	jalr	s6
	bnez	a0,lab5
	lw	a5,0(s2)
	addi	s2,s2,8
	sw	a5,-8(s4)
	lw	a5,-4(s2)
	sw	a5,-4(s4)
	bne	s1,s2,lab6
lab4: 	lw	s0,104(sp)
	lw	ra,108(sp)
	lw	s3,92(sp)
	lw	s5,84(sp)
	lw	s6,80(sp)
	lw	s7,76(sp)
	lw	s8,72(sp)
	lw	s9,68(sp)
	lw	s10,64(sp)
	lw	s11,60(sp)
	sub	a2,s1,s2
	mv	a1,s2
	lw	s1,100(sp)
	lw	s2,96(sp)
	mv	a0,s4
	lw	s4,88(sp)
	addi	sp,sp,112
	j	memcpy
lab3: 	blez	a4,lab7
	slli	s10,a3,0x3
	mv	s7,a1
	add	s10,a0,s10
	li	s1,0
	li	s4,0
	li	s9,0
	mv	s8,s5
lab10: 	slli	s2,s8,0x3
	slli	s3,s7,0x3
	add	s2,s0,s2
	add	s3,s0,s3
	lw	a2,0(s3)
	lw	a3,4(s3)
	lw	a0,0(s2)
	lw	a1,4(s2)
	addi	s1,s1,1
	jalr	s6
	bnez	a0,lab8
	lw	a1,0(s3)
	lw	a2,0(s10)
	lw	a3,4(s10)
	sw	a1,0(s10)
	lw	a1,4(s3)
	lw	a5,12(sp)
	addi	s9,s9,1
	sw	a1,4(s10)
	sw	a2,0(s3)
	sw	a3,4(s3)
	add	s7,a5,s9
	bge	s9,s11,lab9
lab13: 	addi	s10,s10,8
	j	lab10
lab9: 	sw	s7,12(sp)
lab14: 	lw	a5,20(sp)
	sub	s11,s11,s9
	add	a5,a5,s1
	sw	a5,20(sp)
	blez	s11,lab11
lab7: 	lw	a5,12(sp)
	slli	a1,a5,0x3
	lw	a5,20(sp)
	add	a1,s0,a1
	slli	s4,a5,0x3
	add	a0,s0,s4
	li	a5,0
lab12: 	lw	a2,0(a0)
	lw	a3,0(a1)
	lw	a4,4(a1)
	sw	a2,0(a1)
	lw	a2,4(a0)
	addi	a5,a5,1
	addi	a1,a1,8
	sw	a2,-4(a1)
	sw	a3,0(a0)
	sw	a4,4(a0)
	addi	a0,a0,8
	blt	a5,s11,lab12
lab11: 	lw	ra,108(sp)
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
lab8: 	lw	a1,0(s2)
	lw	a2,0(s10)
	lw	a3,4(s10)
	sw	a1,0(s10)
	lw	a1,4(s2)
	lw	a5,16(sp)
	addi	s4,s4,1
	sw	a1,4(s10)
	sw	a2,0(s2)
	sw	a3,4(s2)
	add	s8,s5,s4
	blt	s4,a5,lab13
	sw	s7,12(sp)
	j	lab14
lab5: 	lw	a5,0(s5)
	addi	s5,s5,8
	sw	a5,-8(s4)
	lw	a5,-4(s5)
	sw	a5,-4(s4)
	bne	s0,s5,lab6
	j	lab4
WikiMerge.constprop.0:
	addi	sp,sp,-48
	sw	s1,40(sp)
	sw	s0,44(sp)
	sw	s2,36(sp)
	sub	a4,a4,a3
	li	a2,512
	lw	a7,48(sp)
	sub	s1,a6,a5
	blt	a2,a4,lab15
	slli	a0,a3,0x3
	lui	a3,0x100
	mv	a3,a3
	slli	a2,a4,0x3
	add	a0,a0,a3
	add	a2,a7,a2
	blez	s1,lab16
	blez	a4,lab16
	slli	a5,a5,0x3
	slli	a6,a6,0x3
	add	a5,a5,a3
	add	a6,a6,a3
lab18: 	lw	a3,0(a7)
	lw	a4,0(a5)
	addi	a0,a0,8
	blt	a4,a3,lab17
	sw	a3,-8(a0)
	lw	a4,4(a7)
	addi	a7,a7,8
	sw	a4,-4(a0)
	bne	a2,a7,lab18
lab16: 	lw	s0,44(sp)
	lw	s1,40(sp)
	lw	s2,36(sp)
	sub	a2,a2,a7
	mv	a1,a7
	addi	sp,sp,48
	j	memcpy
lab15: 	mv	a0,a1
	blez	s1,lab19
	lui	a2,0x100
	slli	a7,a3,0x3
	mv	a2,a2
	add	a7,a2,a7
	li	t5,0
	li	t6,0
	li	t4,0
	mv	s2,a5
	mv	s0,a1
lab22: 	slli	a1,s2,0x3
	slli	a6,s0,0x3
	add	a1,a2,a1
	add	a6,a2,a6
	lw	t3,0(a6)
	lw	t1,0(a1)
	lw	t2,0(a7)
	lw	t0,4(a7)
	addi	t5,t5,1
	blt	t1,t3,lab20
	sw	t3,0(a7)
	lw	a1,4(a6)
	addi	t4,t4,1
	add	s0,a0,t4
	sw	a1,4(a7)
	sw	t2,0(a6)
	sw	t0,4(a6)
	bge	t4,a4,lab21
lab24: 	addi	a7,a7,8
	j	lab22
lab19: 	lui	a2,0x100
	mv	a2,a2
lab25: 	slli	a1,a0,0x3
	slli	a3,a3,0x3
	add	a1,a2,a1
	add	a3,a2,a3
	li	a5,0
lab23: 	lw	a6,0(a3) # 100000 <array1>
	lw	a0,0(a1)
	lw	a2,4(a1)
	sw	a6,0(a1)
	lw	a6,4(a3)
	addi	a5,a5,1
	addi	a1,a1,8
	sw	a6,-4(a1)
	sw	a0,0(a3)
	sw	a2,4(a3)
	addi	a3,a3,8
	blt	a5,a4,lab23
lab26: 	lw	s0,44(sp)
	lw	s1,40(sp)
	lw	s2,36(sp)
	addi	sp,sp,48
	ret
lab20: 	sw	t1,0(a7)
	lw	a6,4(a1)
	addi	t6,t6,1
	add	s2,a5,t6
	sw	a6,4(a7)
	sw	t2,0(a1)
	sw	t0,4(a1)
	blt	t6,s1,lab24
lab21: 	sub	a4,a4,t4
	mv	a0,s0
	add	a3,a3,t5
	bgtz	a4,lab25
	j	lab26
lab17: 	sw	a4,-8(a0)
	lw	a4,4(a5)
	addi	a5,a5,8
	sw	a4,-4(a0)
	bne	a6,a5,lab18
	j	lab16
Rotate.constprop.0:
	beq	a3,a2,lab27
	addi	sp,sp,-48
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	ra,44(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	mv	s1,a2
	mv	s0,a3
	mv	s3,a1
	add	s2,a1,a2
	bltz	a1,lab28
	sub	s4,s0,s2
	bge	s4,s3,lab29
lab38: 	bge	a5,s4,lab30
lab37: 	srli	a4,s3,0x1f
	add	a4,a4,s3
	li	a5,1
	srai	a4,a4,0x1
	bge	a5,s3,lab31
	add	a5,a4,s1
	lui	a3,0x100
	sub	a4,s2,a4
	mv	a3,a3
	slli	a5,a5,0x3
	slli	a4,a4,0x3
	slli	a0,s1,0x3
	add	a5,a5,a3
	add	a4,a4,a3
	add	a0,a0,a3
lab32: 	lw	a1,0(a4)
	lw	a2,-8(a5)
	lw	a3,-4(a5)
	sw	a1,-8(a5)
	lw	a1,4(a4)
	addi	a4,a4,8
	addi	a5,a5,-8
	sw	a1,4(a5)
	sw	a2,-8(a4)
	sw	a3,-4(a4)
	bne	a0,a5,lab32
lab31: 	srli	a4,s4,0x1f
	add	a4,a4,s4
	li	a5,1
	srai	a4,a4,0x1
	bge	a5,s4,lab33
	add	a5,s2,a4
	lui	a2,0x100
	sub	a4,s0,a4
	mv	a2,a2
	slli	a5,a5,0x3
	slli	a4,a4,0x3
	slli	a3,s2,0x3
	add	a5,a5,a2
	add	a4,a4,a2
	add	a3,a3,a2
lab34: 	lw	a0,0(a4)
	lw	a1,-8(a5)
	lw	a2,-4(a5)
	sw	a0,-8(a5)
	lw	a0,4(a4)
	addi	a4,a4,8
	addi	a5,a5,-8
	sw	a0,4(a5)
	sw	a1,-8(a4)
	sw	a2,-4(a4)
	bne	a3,a5,lab34
lab33: 	sub	a5,s0,s1
	srli	a4,a5,0x1f
	add	a4,a4,a5
	li	a3,1
	srai	a4,a4,0x1
	bge	a3,a5,lab35
	add	a5,a4,s1
	sub	a3,s0,a4
	lui	a4,0x100
	mv	a4,a4
	slli	a5,a5,0x3
	slli	a3,a3,0x3
	slli	s1,s1,0x3
	add	a5,a5,a4
	add	a3,a3,a4
	add	s1,s1,a4
lab36: 	lw	a1,0(a3) # 100000 <array1>
	lw	a2,-8(a5)
	lw	a4,-4(a5)
	sw	a1,-8(a5)
	lw	a1,4(a3)
	addi	a3,a3,8
	addi	a5,a5,-8
	sw	a1,4(a5)
	sw	a2,-8(a3)
	sw	a4,-4(a3)
	bne	s1,a5,lab36
lab35: 	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	lw	s5,20(sp)
	addi	sp,sp,48
	ret
lab29: 	blt	a5,s3,lab37
	lui	s0,0x100
	mv	s0,s0
	slli	s5,s1,0x3
	add	s5,s5,s0
	slli	s3,s3,0x3
	mv	a0,a4
	mv	a2,s3
	mv	a1,s5
	sw	a4,4(sp)
	jal	ra,memcpy
	slli	a1,s2,0x3
	slli	a2,s4,0x3
	add	a1,s0,a1
	mv	a0,s5
	jal	ra,memmove
	lw	a4,4(sp)
	add	a0,s4,s1
	slli	a0,a0,0x3
	mv	a2,s3
	mv	a1,a4
	add	a0,s0,a0
lab39: 	lw	s0,40(sp)
	lw	ra,44(sp)
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	lw	s5,20(sp)
	addi	sp,sp,48
	j	memcpy
lab28: 	add	s2,a1,a3
	sub	s3,s2,a2
	sub	s4,s0,s2
	blt	s4,s3,lab38
	j	lab29
lab27: 	ret
lab30: 	lui	s5,0x100
	mv	s5,s5
	slli	s4,s4,0x3
	slli	a1,s2,0x3
	mv	a0,a4
	mv	a2,s4
	add	a1,s5,a1
	sw	a4,4(sp)
	jal	ra,memcpy
	slli	s1,s1,0x3
	sub	a0,s0,s3
	add	s1,s1,s5
	slli	a0,a0,0x3
	slli	a2,s3,0x3
	mv	a1,s1
	add	a0,s5,a0
	jal	ra,memmove
	lw	a4,4(sp)
	mv	a2,s4
	mv	a0,s1
	mv	a1,a4
	j	lab39
WikiSort.constprop.0:
	addi	sp,sp,-320
	lui	t0,0xfffff
	lui	a5,0x100
	sw	s10,272(sp)
	sw	ra,316(sp)
	sw	s0,312(sp)
	sw	s1,308(sp)
	sw	s2,304(sp)
	sw	s3,300(sp)
	sw	s4,296(sp)
	sw	s5,292(sp)
	sw	s6,288(sp)
	sw	s7,284(sp)
	sw	s8,280(sp)
	sw	s9,276(sp)
	sw	s11,268(sp)
	li	t4,2
	add	sp,sp,t0
	li	t6,1
	li	a6,0
	li	t3,0
	mv	s10,a5
	li	t0,400
lab45: 	addi	t3,t3,25
	mv	t1,t6
	bge	a6,t6,lab40
lab75: 	slli	a7,t1,0x3
	add	a7,s10,a7
lab44: 	lw	a0,0(a7)
	lw	t5,4(a7)
	mv	a5,a7
	mv	a4,t1
	j	lab41
lab43: 	lw	a1,-4(a5) # ffffc <__DTOR_END__+0xfb800>
	sw	a3,0(a5)
	addi	a5,a5,-8
	sw	a1,12(a5)
	bge	a6,a4,lab42
lab41: 	lw	a3,-8(a5)
	addi	a4,a4,-1 # fffff <__DTOR_END__+0xfb803>
	mv	a2,a5
	blt	a0,a3,lab43
	sw	a0,0(a2) # 100000 <array1>
	sw	t5,4(a2)
	addi	t1,t1,1
	addi	a7,a7,8
	blt	t1,t3,lab44
lab82: 	addi	a6,a6,25
	addi	t6,t6,25
	addi	t4,t4,25
	bne	t3,t0,lab45
	li	a5,4
	sw	a5,120(sp)
	lui	a4,0x1
	li	a5,25
	sw	a5,88(sp)
	addi	a4,a4,128 # 1080 <WikiSort.constprop.0+0x4a0>
	lui	a5,0xfffff
	add	a4,a4,a5
	addi	a5,sp,128
	add	s9,a4,a5
	lui	a5,0x20000
	addi	a5,a5,-1 # 1fffffff <_stack+0x1fef7fff>
	sw	a5,64(sp)
lab74: 	lw	s0,88(sp)
	li	s11,0
	mv	a0,s0
	jal	ra,__floatsidf
	jal	ra,sqrt
	jal	ra,__fixdfsi
	div	a3,s0,a0
	slli	a5,s0,0x4
	sw	a5,100(sp)
	addi	a5,a5,-16
	slli	a4,s0,0x1
	add	a5,s10,a5
	sw	a4,88(sp)
	sw	a5,48(sp)
	addi	a4,a4,-1
	li	a5,1
	slli	a2,s0,0x3
	sw	a4,40(sp)
	sw	a5,72(sp)
	sw	a2,132(sp)
	add	a2,s10,a2
	mv	s8,a0
	sw	s0,24(sp)
	sw	s0,96(sp)
	slli	s7,a0,0x3
	sw	a2,56(sp)
	sw	s10,44(sp)
	sw	zero,124(sp)
	sw	zero,104(sp)
	sw	zero,116(sp)
	sw	zero,128(sp)
	sw	zero,68(sp)
	sw	zero,60(sp)
	sw	zero,36(sp)
	sw	zero,84(sp)
	addi	a4,a3,1
	slli	a5,a3,0x1
	sw	a4,108(sp)
	not	a5,a5
	slli	a4,a4,0x1
	sw	a3,112(sp)
	sw	a4,136(sp)
	sw	a5,140(sp)
lab72: 	lw	a2,40(sp)
	lw	a3,44(sp)
	lw	a4,48(sp)
	addi	a2,a2,1
	lw	a5,0(a3)
	sw	a2,52(sp)
	sw	a3,28(sp)
	lw	a2,36(sp)
	lw	a3,84(sp)
	lw	a4,8(a4)
	lw	s3,24(sp)
	sub	a3,a3,a2
	sw	a3,80(sp)
	mv	s4,s11
	blt	a4,a5,lab46
	lw	a3,56(sp)
	lw	a2,0(a3)
	lw	a3,-8(a3)
	bge	a2,a3,lab47
	lw	a3,96(sp)
	li	s0,512
	bge	s0,a3,lab48
	mv	s0,a3
	sw	a3,32(sp)
	lw	a3,80(sp)
	blez	a3,lab49
lab97: 	lw	a5,32(sp)
	rem	a2,a5,s8
	lw	a5,24(sp)
	add	s1,s4,a2
	addi	a3,s1,1
	bge	a3,a5,lab50
	mv	a7,a5
	lw	a5,36(sp)
	slli	a4,a5,0x3
	slli	a5,a3,0x3
	add	a4,s10,a4
	add	a5,s10,a5
lab51: 	lw	a6,0(a5)
	lw	a0,0(a4)
	lw	a1,4(a4)
	sw	a6,0(a4)
	lw	a6,4(a5)
	add	a3,a3,s8
	addi	a4,a4,8
	sw	a6,-4(a4)
	sw	a0,0(a5)
	sw	a1,4(a5)
	add	a5,a5,s7
	blt	a3,a7,lab51
lab50: 	mv	t4,s8
	bge	s0,s8,lab52
	mv	t4,s0
lab52: 	lw	a4,24(sp)
	slli	a0,s1,0x3
	add	a0,s10,a0
	li	a5,512
	lw	a6,0(a0)
	add	t4,t4,a4
	blt	a5,a2,lab53
	lw	a1,28(sp)
	slli	a2,a2,0x3
	mv	a0,s9
	sw	a6,76(sp)
	sw	t4,32(sp)
	jal	ra,memcpy
	lw	a5,60(sp)
	lw	a6,76(sp)
	lw	t4,32(sp)
	slli	a7,a5,0x3
lab99: 	lw	t6,24(sp)
	add	a5,s10,a7
	mv	t5,s4
	sw	a5,92(sp)
	mv	t3,s1
	mv	s5,s1
	li	s2,0
	li	s0,0
	li	s6,0
	mv	s4,a6
lab71: 	bge	s0,s2,lab54
lab68: 	lw	a5,64(sp)
	add	a5,s2,a5
	slli	a5,a5,0x3
	add	a5,s10,a5
	lw	a5,0(a5)
	blt	a5,s4,lab54
lab69: 	addi	a1,s2,-1
	bge	s0,a1,lab55
	slli	a5,s1,0x3
	add	a5,s10,a5
	lw	a2,0(a5)
	mv	a3,a1
lab57: 	sub	a5,a3,s0
	srai	a5,a5,0x1
	add	a5,a5,s0
	slli	a4,a5,0x3
	add	a4,s10,a4
	lw	a4,0(a4)
	bge	a4,a2,lab56
	addi	s0,a5,1
	blt	s0,a3,lab57
lab55: 	bne	a1,s0,lab58
	slli	a4,s0,0x3
	slli	a5,s1,0x3
	add	a4,s10,a4
	add	a5,s10,a5
	lw	a4,0(a4)
	lw	a5,0(a5)
	slt	a5,a4,a5
	add	s0,s0,a5
lab58: 	sub	s4,s2,s0
	add	s11,s8,s5
	blez	s8,lab59
	slli	a5,s5,0x3
	slli	s1,s1,0x3
	slli	a1,s11,0x3
	add	a5,s10,a5
	add	s1,s10,s1
	add	a1,s10,a1
lab60: 	lw	a2,0(s1)
	lw	a3,0(a5)
	lw	a4,4(a5)
	sw	a2,0(a5)
	lw	a2,4(s1)
	addi	s1,s1,8
	addi	a5,a5,8
	sw	a2,-4(a5)
	sw	a3,-8(s1)
	sw	a4,-4(s1)
	bne	a1,a5,lab60
lab59: 	lw	a5,36(sp)
	addi	s1,s5,1 # 100001 <array1+0x1>
	slli	s1,s1,0x3
	add	t1,a5,s6
	slli	t1,t1,0x3
	add	t1,s10,t1
	lw	a4,0(t1)
	add	a5,s10,s1
	lw	t2,0(a5)
	sw	a4,0(a5)
	lw	a4,4(t1)
	li	a3,512
	lw	t0,4(a5)
	lw	a1,60(sp)
	sw	a3,4(sp)
	lw	a2,68(sp)
	sw	a4,4(a5)
	sw	s9,0(sp)
	lui	a0,0x100
	li	a7,764
	mv	a5,t3
	mv	a6,s0
	mv	a3,t5
	mv	a4,t3
	mv	a0,a0
	sw	t2,0(t1)
	sw	t0,4(t1)
	sw	t3,-48(s9)
	sw	s0,-44(s9)
	sw	a1,-112(s9)
	sw	a2,-108(s9)
	sw	t5,-104(s9)
	sw	t3,-100(s9)
	sw	t6,32(sp)
	sw	t4,28(sp)
	jal	ra,WikiMerge.constprop.0
	li	a5,512
	lw	t4,28(sp)
	lw	t6,32(sp)
	addi	s6,s6,1
	blt	a5,s8,lab61
	addi	a1,s1,-8
	mv	a2,s7
	add	a1,s10,a1
	mv	a0,s9
	sw	t6,32(sp)
	sw	t4,28(sp)
	jal	ra,memcpy
	lw	t4,28(sp)
	lw	t6,32(sp)
lab77: 	sub	a5,s11,s4
	blez	s4,lab62
	slli	s0,s0,0x3
	slli	a5,a5,0x3
	slli	s2,s2,0x3
	add	s0,s10,s0
	add	a5,s10,a5
	add	s2,s10,s2
lab63: 	lw	a2,0(a5)
	lw	a3,0(s0) # 100000 <array1>
	lw	a4,4(s0)
	sw	a2,0(s0)
	lw	a2,4(a5)
	addi	a5,a5,8
	addi	s0,s0,8
	sw	a2,-4(s0)
	sw	a3,-8(a5)
	sw	a4,-4(a5)
	bne	s2,s0,lab63
lab62: 	sub	t5,s5,s4
	add	t3,s8,t5
	add	s2,s4,t3
	beq	s11,s3,lab64
	addi	s1,s11,1
	add	a5,s8,s1
	bge	a5,s3,lab65
	slli	a4,s1,0x3
	add	a4,s10,a4
	lw	a2,0(a4)
	slli	a4,a5,0x3
	add	a4,s10,a4
lab67: 	lw	a3,0(a4)
	add	a4,a4,s7
	bge	a3,a2,lab66
	mv	s1,a5
	mv	a2,a3
lab66: 	add	a5,a5,s8
	blt	a5,s3,lab67
	addi	s1,s1,-1
lab83: 	slli	a5,s1,0x3
	add	a5,s10,a5
	mv	s0,t3
	lw	s4,0(a5)
	mv	s5,s11
	blt	s0,s2,lab68
lab54: 	beq	t4,t6,lab69
	sub	s11,t4,t6
	bge	s11,s8,lab70
	lui	a0,0x100
	sub	a1,t6,t4
	mv	a2,s5
	mv	a3,t4
	li	a5,0
	mv	a4,s9
	mv	a0,a0
	sw	t5,76(sp)
	sw	t3,32(sp)
	sw	t6,28(sp)
	sw	s5,-56(s9)
	sw	t4,-52(s9)
	jal	ra,Rotate.constprop.0
	lw	t6,28(sp)
	add	s2,s11,s5
	mv	s0,s5
	lw	t3,32(sp)
	lw	t5,76(sp)
	add	s3,s3,s11
	add	s1,s1,s11
	mv	t4,t6
	mv	s5,s2
	j	lab71
lab56: 	bge	s0,a5,lab55
	mv	a3,a5
	j	lab57
lab46: 	lw	a3,52(sp)
	lw	a1,96(sp)
	lui	a0,0x100
	li	a5,512
	mv	a4,s9
	mv	a2,s11
	mv	a0,a0
	sw	s11,-8(s9)
	sw	a3,-4(s9)
	jal	ra,Rotate.constprop.0
lab47: 	lw	a3,100(sp)
	lw	a2,44(sp)
	lw	a4,88(sp)
	lw	a5,72(sp)
	add	a2,a2,a3
	sw	a2,44(sp)
	lw	a2,56(sp)
	add	a5,a5,a4
	sw	a5,72(sp)
	add	a2,a2,a3
	sw	a2,56(sp)
	lw	a2,24(sp)
	addi	s11,a5,-1
	li	a5,399
	add	a2,a2,a4
	sw	a2,24(sp)
	lw	a2,40(sp)
	add	a4,a2,a4
	sw	a4,40(sp)
	lw	a4,48(sp)
	add	a4,a4,a3
	sw	a4,48(sp)
	bge	a5,s11,lab72
	lw	a5,80(sp)
	bgtz	a5,lab73
lab145: 	lw	a5,120(sp)
	addi	a5,a5,-1
	sw	a5,120(sp)
	bnez	a5,lab74
	lui	t0,0x1
	add	sp,sp,t0
	lw	ra,316(sp)
	lw	s0,312(sp)
	lw	s1,308(sp)
	lw	s2,304(sp)
	lw	s3,300(sp)
	lw	s4,296(sp)
	lw	s5,292(sp)
	lw	s6,288(sp)
	lw	s7,284(sp)
	lw	s8,280(sp)
	lw	s9,276(sp)
	lw	s10,272(sp)
	lw	s11,268(sp)
	addi	sp,sp,320
	ret
lab40: 	mv	t1,t4
	blt	t4,t3,lab75
	addi	a6,a6,25
	addi	t6,t6,25
	addi	t4,t4,25
	j	lab45
lab61: 	lw	a5,92(sp)
	addi	s1,s1,-8
	slli	a1,s11,0x3
	add	s1,s10,s1
	add	a1,s10,a1
lab76: 	lw	a2,0(a5)
	lw	a3,0(s1)
	lw	a4,4(s1)
	sw	a2,0(s1)
	lw	a2,4(a5)
	addi	a5,a5,8
	addi	s1,s1,8
	sw	a2,-4(s1)
	sw	a3,-8(a5)
	sw	a4,-4(a5)
	bne	a1,s1,lab76
	j	lab77
lab70: 	add	s11,s8,s5
	blez	s8,lab78
	slli	a5,s5,0x3
	slli	a4,t6,0x3
	slli	a0,s11,0x3
	add	a5,s10,a5
	add	a4,s10,a4
	add	a0,s10,a0
lab79: 	lw	a1,0(a4)
	lw	a2,0(a5)
	lw	a3,4(a5)
	sw	a1,0(a5)
	lw	a1,4(a4)
	addi	a4,a4,8
	addi	a5,a5,8
	sw	a1,-4(a5)
	sw	a2,-8(a4)
	sw	a3,-4(a4)
	bne	a0,a5,lab79
lab78: 	mv	s2,s11
	bne	s1,s5,lab80
	mv	s1,s3
lab80: 	lw	a5,52(sp)
	add	t4,s8,t4
	add	s3,s3,s8
	add	t6,t6,s8
	bge	a5,t4,lab81
	mv	t4,a5
lab81: 	mv	s0,s5
	mv	s5,s11
	j	lab71
lab42: 	slli	a4,a4,0x3
	add	a2,s10,a4
	sw	a0,0(a2)
	sw	t5,4(a2)
	addi	t1,t1,1
	addi	a7,a7,8
	blt	t1,t3,lab44
	j	lab82
lab64: 	lw	a6,52(sp)
	lw	a1,-112(s9)
	lw	a2,-108(s9)
	li	a5,512
	sw	a5,4(sp)
	sw	s9,0(sp)
	lui	a0,0x100
	li	a7,764
	mv	a3,t5
	mv	a5,t3
	mv	a4,t3
	mv	a0,a0
	sw	t3,-64(s9)
	sw	a6,-60(s9)
	sw	t5,-104(s9)
	sw	t3,-100(s9)
	jal	ra,WikiMerge.constprop.0
	j	lab47
lab65: 	mv	s1,s11
	j	lab83
lab49: 	lw	a3,44(sp)
	lw	a6,72(sp)
	lw	a7,112(sp)
	mv	a0,s3
	addi	a3,a3,8
	li	s1,1
lab87: 	mv	a2,a5
	lw	a5,0(a3)
	addi	a1,s1,1
	blt	a2,a5,lab84
	bge	a5,a2,lab85
lab84: 	beq	a7,s1,lab86
	mv	s1,a1
lab85: 	addi	a6,a6,1
	addi	a3,a3,8
	blt	a6,a0,lab87
	lw	a3,108(sp)
	li	a5,512
	blt	a5,a3,lab88
lab100: 	bne	a3,s1,lab89
	lw	s5,52(sp)
	add	a5,a3,s11
	sw	a5,84(sp)
	sw	s5,104(sp)
	sw	a5,116(sp)
	sw	s11,68(sp)
	sw	s11,60(sp)
	li	s0,0
	mv	a4,a5
lab164: 	lw	a3,24(sp)
	slli	a5,a4,0x3
	add	a5,s10,a5
	sub	a4,a3,a4
	sw	a4,32(sp)
	sw	a5,28(sp)
	sw	s1,80(sp)
lab154: 	slli	s6,a6,0x3
	add	s6,s10,s6
	mv	s2,a6
	li	s4,0
lab92: 	addi	t1,a6,1
	addi	a7,s2,1
	lui	a0,0x100
	neg	a1,s4
	li	a5,512
	mv	a4,s9
	mv	a2,a7
	mv	a3,t1
	mv	a0,a0
	beq	s11,s2,lab90
	lw	t4,-8(s6)
	lw	t3,0(s6)
	blt	t4,t3,lab90
	bge	t3,t4,lab91
lab90: 	sw	a7,-32(s9)
	sw	t1,-28(s9)
	jal	ra,Rotate.constprop.0
	add	a6,s2,s4
	addi	s4,s4,1
lab91: 	addi	s2,s2,-1
	addi	s6,s6,-8
	blt	s4,s1,lab92
	sw	s11,36(sp)
lab156: 	blez	s0,lab93
	lw	s6,40(sp)
	slli	s4,s5,0x3
	add	s4,s10,s4
	mv	s1,s5
	li	s2,0
lab96: 	lui	a0,0x100
	mv	a2,s5
	mv	a1,s2
	li	a5,512
	mv	a4,s9
	mv	a3,s1
	mv	a0,a0
	beq	s6,s1,lab94
	lw	a7,0(s4)
	lw	a6,8(s4)
	blt	a7,a6,lab94
	bge	a6,a7,lab95
lab94: 	sw	s5,-40(s9)
	sw	s1,-36(s9)
	sub	s5,s1,s2
	jal	ra,Rotate.constprop.0
	addi	s2,s2,1
lab95: 	addi	s1,s1,1
	addi	s4,s4,8
	blt	s2,s0,lab96
lab93: 	lw	a5,52(sp)
	lw	s4,116(sp)
	sw	s11,128(sp)
	sw	a5,124(sp)
	lw	a5,96(sp)
	sub	s0,a5,s0
	lw	a5,104(sp)
	sw	a5,52(sp)
	j	lab97
lab53: 	lw	a4,60(sp)
	slli	a5,s4,0x3
	add	a5,s10,a5
	slli	a7,a4,0x3
	add	a4,s10,a7
lab98: 	lw	a1,0(a4)
	lw	a2,0(a5)
	lw	a3,4(a5)
	sw	a1,0(a5)
	lw	a1,4(a4)
	addi	a4,a4,8
	addi	a5,a5,8
	sw	a1,-4(a5)
	sw	a2,-8(a4)
	sw	a3,-4(a4)
	bne	a0,a5,lab98
	j	lab99
lab48: 	lw	a2,132(sp)
	lw	a1,44(sp)
	mv	a0,s9
	jal	ra,memcpy
	lw	t1,24(sp)
	lw	a6,52(sp)
	sw	s0,4(sp)
	sw	s9,0(sp)
	lui	a0,0x100
	li	a7,764
	mv	a3,s11
	mv	a5,t1
	mv	a4,t1
	li	a1,0
	li	a2,0
	mv	a0,a0
	sw	zero,-16(s9)
	sw	zero,-12(s9)
	sw	s11,-96(s9)
	sw	t1,-92(s9)
	sw	t1,-88(s9)
	sw	a6,-84(s9)
	jal	ra,WikiMerge.constprop.0
	j	lab47
lab86: 	lw	a3,108(sp)
	li	a5,512
	mv	s1,a1
	bge	a5,a3,lab100
lab88: 	lw	t1,24(sp)
	addi	a2,a6,1
	bge	a2,t1,lab101
	slli	a3,a6,0x3
	add	a5,s10,a3
	lw	a5,0(a5)
	lw	t3,112(sp)
	addi	a3,a3,8
	add	a3,s10,a3
	li	a1,0
lab105: 	mv	a0,a5
	lw	a5,0(a3)
	addi	a7,a1,1
	blt	a0,a5,lab102
	bge	a5,a0,lab103
lab102: 	beq	t3,a1,lab104
	mv	a1,a7
lab103: 	addi	a2,a2,1
	addi	a3,a3,8
	bne	t1,a2,lab105
lab157: 	lw	a5,108(sp)
	beq	a5,a1,lab106
lab101: 	lw	a5,40(sp)
	addi	a3,a5,-1
	lw	a5,108(sp)
	beq	a5,s1,lab107
	lw	a5,24(sp)
	blt	a3,a5,lab108
	lw	a2,48(sp)
	lw	a7,112(sp)
	li	a1,1
	addi	a0,a5,-1
lab111: 	mv	a5,a4
	lw	a4,0(a2)
	addi	a6,a1,1
	blt	a4,a5,lab109
	bge	a5,a4,lab110
lab109: 	beq	a7,a1,lab108
	mv	a1,a6
lab110: 	addi	a3,a3,-1
	addi	a2,a2,-8
	mv	a5,a0
	bne	a3,a0,lab111
lab159: 	lw	a1,24(sp)
	addi	a3,a5,-1
	blt	a3,a1,lab112
	slli	a5,a5,0x3
	add	a4,s10,a5
	lw	a4,0(a4)
	lw	a7,112(sp)
	addi	a5,a5,-8
	add	a5,s10,a5
	li	a2,0
	addi	a0,a1,-1
lab116: 	mv	a1,a4
	lw	a4,0(a5)
	addi	a6,a2,1
	blt	a4,a1,lab113
	bge	a1,a4,lab114
lab113: 	beq	a7,a2,lab115
	mv	a2,a6
lab114: 	addi	a3,a3,-1
	addi	a5,a5,-8
	mv	s5,a0
	bne	a3,a0,lab116
	lw	a5,108(sp)
	bne	a5,a2,lab112
lab158: 	lw	a3,136(sp)
	lw	a4,40(sp)
	lw	a5,112(sp)
	add	s0,a3,s5
	lw	a3,140(sp)
	sub	a5,a4,a5
	sw	a5,36(sp)
	add	a4,a3,a4
	sw	a4,60(sp)
	lw	a3,108(sp)
	sw	a5,68(sp)
	j	lab117
lab89: 	lw	a5,40(sp)
	lw	a1,24(sp)
	addi	a5,a5,-1
	blt	a5,a1,lab118
	lw	a2,48(sp)
	lw	a7,112(sp)
	li	a3,1
	addi	a0,a1,-1
lab122: 	mv	a1,a4
	lw	a4,0(a2)
	addi	a6,a3,1
	blt	a4,a1,lab119
	bge	a1,a4,lab120
lab119: 	beq	a7,a3,lab121
	mv	a3,a6
lab120: 	addi	a5,a5,-1
	addi	a2,a2,-8
	mv	s5,a0
	bne	a5,a0,lab122
lab166: 	lw	a5,108(sp)
	add	s0,a3,s5
	beq	a5,a3,lab123
lab155: 	bge	a3,a5,lab124
lab112: 	lw	s1,52(sp)
	lw	s2,40(sp)
	sw	s3,-88(s9)
	sw	s1,-84(s9)
	bge	s3,s2,lab125
lab133: 	slli	a5,s4,0x3
	add	a5,s10,a5
	lw	a4,0(a5)
	mv	s0,s3
	mv	a2,s2
lab127: 	sub	a5,a2,s0
	srai	a5,a5,0x1
	add	a5,a5,s0
	slli	a3,a5,0x3
	add	a3,s10,a3
	lw	a3,0(a3)
	bge	a3,a4,lab126
	addi	s0,a5,1
	blt	s0,a2,lab127
lab134: 	bne	s0,s2,lab128
	slli	a4,s0,0x3
	slli	a5,s4,0x3
	add	a4,s10,a4
	add	a5,s10,a5
	lw	a4,0(a4)
	lw	a5,0(a5)
	slt	a5,a4,a5
	add	s0,s0,a5
lab128: 	lui	a0,0x100
	sub	a1,s3,s0
	li	a5,512
	mv	a4,s9
	mv	a2,s4
	mv	a3,s0
	mv	a0,a0
	sub	s5,s0,s3
	sw	s4,-24(s9)
	sw	s0,-20(s9)
	jal	ra,Rotate.constprop.0
	sw	s3,-92(s9)
	sw	s4,-96(s9)
	addi	s3,s3,-1
	add	a1,s5,s4
	bge	s4,s3,lab129
	slli	a5,a1,0x3
	add	a5,s10,a5
	lw	a4,0(a5)
	mv	a2,s3
lab131: 	sub	a5,a2,s4
	srai	a5,a5,0x1
	add	a5,a5,s4
	slli	a3,a5,0x3
	add	a3,s10,a3
	lw	a3,0(a3)
	blt	a4,a3,lab130
	addi	s4,a5,1
	blt	s4,a2,lab131
lab129: 	beq	s3,s4,lab132
lab135: 	bge	s4,s0,lab47
	bge	s0,s1,lab47
	mv	s3,s0
	sw	s3,-88(s9)
	sw	s1,-84(s9)
	blt	s3,s2,lab133
lab125: 	mv	s0,s3
	j	lab134
lab132: 	slli	a4,s4,0x3
	slli	a5,a1,0x3
	add	a5,s10,a5
	add	a4,s10,a4
	lw	a5,0(a5)
	lw	a4,0(a4)
	slt	a5,a5,a4
	xori	a5,a5,1
	add	s4,s4,a5
	j	lab135
lab130: 	bge	s4,a5,lab129
	mv	a2,a5
	j	lab131
lab126: 	bge	s0,a5,lab134
	mv	a2,a5
	j	lab127
lab73: 	lw	a5,60(sp)
	addi	a7,a5,1
	lw	a5,68(sp)
	slli	a6,a7,0x3
	add	a6,s10,a6
	bge	a7,a5,lab136
	lw	t1,60(sp)
	mv	t4,a5
lab140: 	lw	a0,0(a6)
	lw	t3,4(a6)
	mv	a5,a6
	mv	a4,a7
	j	lab137
lab139: 	lw	a1,-4(a5)
	sw	a3,0(a5)
	addi	a5,a5,-8
	sw	a1,12(a5)
	bge	t1,a4,lab138
lab137: 	lw	a3,-8(a5)
	addi	a4,a4,-1
	mv	a2,a5
	blt	a0,a3,lab139
	sw	a0,0(a2)
	sw	t3,4(a2)
	addi	a7,a7,1
	addi	a6,a6,8
	blt	a7,t4,lab140
lab136: 	lw	a5,116(sp)
	lw	a4,128(sp)
	mv	s0,a5
	mv	s2,a4
	mv	a6,a5
	bge	a4,a5,lab141
lab144: 	lw	a3,104(sp)
	slli	a4,s2,0x3
	slli	a5,s0,0x3
	add	a4,s10,a4
	add	a5,s10,a5
	beq	a3,s0,lab142
lab151: 	lw	t1,0(a4)
	lw	a7,0(a5)
	lui	a0,0x100
	sub	s1,s0,a6
	mv	a2,s2
	sub	a1,a6,s0
	li	a5,512
	mv	a4,s9
	mv	a3,s0
	mv	a0,a0
	bge	a7,t1,lab143
	addi	s0,s0,1
	blt	s2,a6,lab144
lab141: 	lw	a5,104(sp)
	lw	a4,124(sp)
	mv	a6,a5
	bge	a5,a4,lab145
	lw	s2,128(sp)
	mv	s1,a4
	mv	s0,a5
lab150: 	lw	a5,64(sp)
	add	a4,s0,a5
	add	a5,s1,a5
	slli	a4,a4,0x3
	slli	a5,a5,0x3
	add	a4,s10,a4
	add	a5,s10,a5
	beq	s2,s0,lab146
lab148: 	lw	t1,0(a4)
	lw	a7,0(a5)
	sub	s3,a6,s0
	lui	a0,0x100
	mv	a3,s1
	li	a5,512
	mv	a4,s9
	mv	a2,s0
	mv	a1,s3
	mv	a0,a0
	bge	a7,t1,lab147
	addi	s0,s0,-1
	bge	a6,s1,lab145
	lw	a5,64(sp)
	add	a4,s0,a5
	add	a5,s1,a5
	slli	a4,a4,0x3
	slli	a5,a5,0x3
	add	a4,s10,a4
	add	a5,s10,a5
	bne	s2,s0,lab148
lab146: 	mv	a2,s0
	sw	s0,104(sp)
	sub	s0,a6,s0
	mv	s2,s1
	mv	a1,s0
	lui	a0,0x100
	addi	s0,s0,1
	mv	a3,s1
	li	a5,512
	mv	a4,s9
	mv	a0,a0
	mv	s1,a2
	sub	s0,s2,s0
	sw	a2,-80(s9)
	sw	s2,-76(s9)
	jal	ra,Rotate.constprop.0
	bge	s1,s0,lab145
	lw	s1,104(sp)
lab149: 	lui	a0,0x100
	sw	s0,-76(s9)
	mv	a3,s0
	li	a5,512
	addi	s0,s0,-1
	mv	a4,s9
	mv	a2,s1
	li	a1,0
	mv	a0,a0
	sw	s1,-80(s9)
	jal	ra,Rotate.constprop.0
	blt	s1,s0,lab149
	j	lab145
lab138: 	slli	a4,a4,0x3
	add	a2,s10,a4
	sw	a0,0(a2)
	sw	t3,4(a2)
	addi	a7,a7,1
	addi	a6,a6,8
	blt	a7,t4,lab140
	j	lab136
lab147: 	addi	s3,s3,1
	sw	s1,-76(s9)
	sub	s1,s1,s3
	sw	s0,-80(s9)
	jal	ra,Rotate.constprop.0
	bge	s0,s1,lab145
	mv	a6,s0
	j	lab150
lab143: 	addi	s1,s1,1
	sw	s2,-72(s9)
	add	s2,s2,s1
	sw	s0,-68(s9)
	jal	ra,Rotate.constprop.0
	bge	s2,s0,lab141
	lw	a3,104(sp)
	slli	a4,s2,0x3
	slli	a5,s0,0x3
	mv	a6,s0
	add	a4,s10,a4
	add	a5,s10,a5
	bne	a3,s0,lab151
lab142: 	sub	s1,a3,a6
	lui	a0,0x100
	addi	s1,s1,1
	mv	s3,a3
	li	a5,512
	mv	a4,s9
	mv	a2,s2
	sub	a1,a6,a3
	mv	a0,a0
	add	s1,s1,s2
	sw	s2,-72(s9)
	sw	a3,-68(s9)
	jal	ra,Rotate.constprop.0
	bge	s1,s3,lab141
lab152: 	lui	a0,0x100
	sw	s1,-72(s9)
	mv	a2,s1
	li	a5,512
	addi	s1,s1,1
	mv	a4,s9
	mv	a3,s0
	li	a1,0
	mv	a0,a0
	sw	s0,-68(s9)
	jal	ra,Rotate.constprop.0
	blt	s1,s0,lab152
	j	lab141
lab106: 	lw	a3,136(sp)
	lw	a1,72(sp)
	lw	a0,112(sp)
	addi	a5,a3,-1
	add	a4,a5,a1
	add	a1,a0,a1
	sw	a1,60(sp)
	lw	a1,24(sp)
	slli	a5,a4,0x3
	sw	a4,116(sp)
	add	a5,s10,a5
	sub	a4,a1,a4
	sw	a4,32(sp)
	sw	a5,28(sp)
	blez	a3,lab153
	lw	a4,60(sp)
	lw	a5,52(sp)
	mv	s1,a3
	sw	a4,84(sp)
	lw	a4,116(sp)
	mv	a6,a2
	mv	s5,a5
	sw	a4,68(sp)
	lw	a4,108(sp)
	sw	a5,104(sp)
	li	s0,0
	sw	a4,80(sp)
	j	lab154
lab121: 	mv	s5,a5
	lw	a5,108(sp)
	mv	a3,a6
	add	s0,a3,s5
	bne	a5,a3,lab155
lab123: 	mv	a4,a5
	lw	a5,52(sp)
	sw	s11,68(sp)
	sw	s11,60(sp)
	sub	a5,a5,a4
	sw	a5,36(sp)
lab117: 	lw	a5,52(sp)
	sw	a5,84(sp)
lab167: 	sub	s0,s0,s5
	sub	a5,a5,s0
	sw	a5,104(sp)
	lw	a5,96(sp)
	sw	a3,80(sp)
	sw	s11,116(sp)
	sw	a5,32(sp)
	j	lab156
lab104: 	mv	a1,a7
	j	lab157
lab115: 	lw	a5,108(sp)
	mv	a2,a6
	mv	s5,a3
	bne	a5,a2,lab112
	j	lab158
lab108: 	mv	a5,a3
	j	lab159
lab107: 	lw	a0,24(sp)
	lw	a2,48(sp)
	li	a5,1
	addi	a1,a0,-1 # fffff <__DTOR_END__+0xfb803>
	blt	a3,a0,lab112
	lw	t1,112(sp)
lab163: 	mv	a0,a4
	lw	a4,0(a2)
	addi	a7,a5,1
	blt	a4,a0,lab160
	bge	a0,a4,lab161
lab160: 	beq	t1,a5,lab162
	mv	a5,a7
lab161: 	addi	a3,a3,-1
	addi	a2,a2,-8
	mv	s5,a1
	bne	a3,a1,lab163
	bne	s1,a5,lab112
lab165: 	lw	a3,52(sp)
	add	a5,s1,s11
	sw	a5,84(sp)
	sub	a4,a3,s1
	sw	a4,60(sp)
	sw	a4,104(sp)
	mv	s0,s1
	sw	a5,116(sp)
	sw	a3,68(sp)
	mv	a4,a5
	j	lab164
lab162: 	mv	a5,a7
	mv	s5,a3
	bne	s1,a5,lab112
	j	lab165
lab118: 	mv	s5,a5
	li	a3,1
	j	lab166
lab153: 	lw	a5,108(sp)
	sw	s11,36(sp)
	li	s0,0
	sw	a5,80(sp)
	lw	a5,52(sp)
	sw	a5,104(sp)
	lw	a5,116(sp)
	sw	a5,68(sp)
	lw	a5,60(sp)
	sw	a5,84(sp)
	j	lab93
lab124: 	lw	a5,52(sp)
	sw	s0,84(sp)
	sw	s11,60(sp)
	sw	s11,68(sp)
	sw	s5,36(sp)
	j	lab167
benchmark_body.constprop.0:
	lui	a5,0x101
	addi	a5,a5,-880 # 100c90 <_bss_end>
	lw	t3,0(a5)
	lw	t1,4(a5)
	lw	a7,8(a5)
	lw	a6,12(a5)
	lw	a1,16(a5)
	lw	a2,20(a5)
	lw	a3,24(a5)
	lw	a4,28(a5)
	lw	a5,32(a5)
	addi	sp,sp,-80
	sw	s4,56(sp)
	li	a0,0
	lui	s4,0x100
	sw	s3,60(sp)
	sw	s5,52(sp)
	sw	s6,48(sp)
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	t3,12(sp)
	sw	t1,16(sp)
	sw	a7,20(sp)
	sw	a6,24(sp)
	sw	a1,28(sp)
	sw	a2,32(sp)
	sw	a3,36(sp)
	sw	a4,40(sp)
	sw	a5,44(sp)
	addi	s3,sp,12
	jal	ra,srand_beebs
	mv	s6,s4
lab169: 	lw	s2,0(s3)
	mv	s1,s6
	li	s0,0
lab168: 	mv	a0,s0
	li	a1,400
	jalr	s2
	sw	a0,0(s1)
	sw	s0,4(s1)
	li	a5,400
	addi	s0,s0,1
	addi	s1,s1,8
	bne	s0,a5,lab168
	li	a2,764
	li	a1,400
	mv	a0,s4
	jal	ra,WikiSort.constprop.0
	addi	s3,s3,4
	addi	a5,sp,48
	bne	s3,a5,lab169
	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s1,68(sp)
	lw	s2,64(sp)
	lw	s3,60(sp)
	lw	s4,56(sp)
	lw	s5,52(sp)
	lw	s6,48(sp)
	li	a0,0
	addi	sp,sp,80
	ret
benchmark_body.isra.0:
	lui	a5,0x101
	addi	a5,a5,-880 # 100c90 <_bss_end>
	lw	t3,0(a5)
	lw	t1,4(a5)
	lw	a7,8(a5)
	lw	a6,12(a5)
	lw	a1,16(a5)
	lw	a2,20(a5)
	lw	a3,24(a5)
	lw	a4,28(a5)
	lw	a5,32(a5)
	addi	sp,sp,-96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	sw	s2,80(sp)
	sw	s3,76(sp)
	sw	s4,72(sp)
	sw	s5,68(sp)
	sw	s6,64(sp)
	sw	s7,60(sp)
	sw	s8,56(sp)
	sw	s9,52(sp)
	sw	t3,12(sp)
	sw	t1,16(sp)
	sw	a7,20(sp)
	sw	a6,24(sp)
	sw	a1,28(sp)
	sw	a2,32(sp)
	sw	a3,36(sp)
	sw	a4,40(sp)
	sw	a5,44(sp)
	blez	a0,lab170
	lui	s4,0x100
	mv	s8,a0
	li	s9,0
	mv	s6,s4
	addi	s5,sp,48
lab173: 	li	a0,0
	jal	ra,srand_beebs
	addi	s3,sp,12
lab172: 	lw	s2,0(s3)
	mv	s1,s6
	li	s0,0
lab171: 	mv	a0,s0
	li	a1,400
	jalr	s2
	sw	a0,0(s1)
	sw	s0,4(s1)
	li	a5,400
	addi	s0,s0,1
	addi	s1,s1,8
	bne	s0,a5,lab171
	addi	s3,s3,4
	li	a2,764
	li	a1,400
	mv	a0,s4
	jal	ra,WikiSort.constprop.0
	bne	s3,s5,lab172
	addi	s9,s9,1
	bne	s9,s8,lab173
lab170: 	lw	ra,92(sp)
	lw	s0,88(sp)
	lw	s1,84(sp)
	lw	s2,80(sp)
	lw	s3,76(sp)
	lw	s4,72(sp)
	lw	s5,68(sp)
	lw	s6,64(sp)
	lw	s7,60(sp)
	lw	s8,56(sp)
	lw	s9,52(sp)
	addi	sp,sp,96
	ret
Rotate.constprop.1:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	a2,8(sp)
	sw	a3,12(sp)
	beq	a3,a2,lab174
	mv	s2,a2
	mv	s0,a3
	mv	s1,a0
	mv	s4,a1
	add	s3,a1,a2
	bltz	a1,lab175
	sub	s5,s0,s3
	li	a5,512
	bge	s5,s4,lab176
lab184: 	bge	a5,s5,lab177
lab183: 	srli	a4,s4,0x1f
	add	a4,a4,s4
	li	a5,1
	srai	a4,a4,0x1
	bge	a5,s4,lab178
	add	a5,a4,s2
	sub	a4,s3,a4
	slli	a5,a5,0x3
	slli	a4,a4,0x3
	slli	a0,s2,0x3
	add	a5,s1,a5
	add	a4,s1,a4
	add	a0,s1,a0
lab179: 	lw	a1,0(a4)
	lw	a2,-8(a5)
	lw	a3,-4(a5)
	sw	a1,-8(a5)
	lw	a1,4(a4)
	addi	a4,a4,8
	addi	a5,a5,-8
	sw	a1,4(a5)
	sw	a2,-8(a4)
	sw	a3,-4(a4)
	bne	a0,a5,lab179
lab178: 	srli	a4,s5,0x1f
	add	a4,a4,s5
	li	a5,1
	srai	a4,a4,0x1
	bge	a5,s5,lab180
	add	a5,s3,a4
	sub	a4,s0,a4
	slli	a5,a5,0x3
	slli	a4,a4,0x3
	slli	a3,s3,0x3
	add	a5,s1,a5
	add	a4,s1,a4
	add	a3,s1,a3
lab181: 	lw	a0,0(a4)
	lw	a1,-8(a5)
	lw	a2,-4(a5)
	sw	a0,-8(a5)
	lw	a0,4(a4)
	addi	a4,a4,8
	addi	a5,a5,-8
	sw	a0,4(a5)
	sw	a1,-8(a4)
	sw	a2,-4(a4)
	bne	a3,a5,lab181
lab180: 	sub	a5,s0,s2
	srli	a4,a5,0x1f
	add	a4,a4,a5
	li	a3,1
	srai	a4,a4,0x1
	bge	a3,a5,lab174
	add	a5,a4,s2
	sub	a4,s0,a4
	slli	a5,a5,0x3
	slli	a4,a4,0x3
	slli	s2,s2,0x3
	add	a5,s1,a5
	add	a4,s1,a4
	add	s1,s1,s2
lab182: 	lw	a1,0(a4)
	lw	a2,-8(a5)
	lw	a3,-4(a5)
	sw	a1,-8(a5)
	lw	a1,4(a4)
	addi	a4,a4,8
	addi	a5,a5,-8
	sw	a1,4(a5)
	sw	a2,-8(a4)
	sw	a3,-4(a4)
	bne	s1,a5,lab182
lab174: 	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	lw	s5,20(sp)
	addi	sp,sp,48
	ret
lab176: 	blt	a5,s4,lab183
	slli	s0,s2,0x3
	add	s0,s1,s0
	slli	s4,s4,0x3
	mv	a0,a4
	mv	a2,s4
	mv	a1,s0
	sw	a4,4(sp)
	jal	ra,memcpy
	slli	a1,s3,0x3
	slli	a2,s5,0x3
	add	a1,s1,a1
	mv	a0,s0
	jal	ra,memmove
	lw	a4,4(sp)
	add	a0,s5,s2
	slli	a0,a0,0x3
	mv	a2,s4
	mv	a1,a4
	add	a0,s1,a0
lab185: 	lw	s0,40(sp)
	lw	ra,44(sp)
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	lw	s5,20(sp)
	addi	sp,sp,48
	j	memcpy
lab175: 	add	s3,a1,a3
	sub	s4,s3,a2
	sub	s5,s0,s3
	li	a5,512
	blt	s5,s4,lab184
	j	lab176
lab177: 	slli	s5,s5,0x3
	slli	a1,s3,0x3
	mv	a0,a4
	mv	a2,s5
	add	a1,s1,a1
	sw	a4,4(sp)
	jal	ra,memcpy
	slli	s2,s2,0x3
	sub	a0,s0,s4
	add	s2,s1,s2
	slli	a0,a0,0x3
	slli	a2,s4,0x3
	mv	a1,s2
	add	a0,s1,a0
	jal	ra,memmove
	lw	a4,4(sp)
	mv	a2,s5
	mv	a0,s2
	mv	a1,a4
	j	lab185
Min:
	bge	a1,a0,lab186
	mv	a0,a1
lab186: 	ret
Max:
	bge	a0,a1,lab187
	mv	a0,a1
lab187: 	ret
Range_length:
	addi	sp,sp,-16
	sub	a0,a1,a0
	addi	sp,sp,16
	ret
MakeRange:
	addi	sp,sp,-16
	addi	sp,sp,16
	ret
FloorPowerOfTwo:
	srai	a5,a0,0x1
	or	a0,a5,a0
	srai	a5,a0,0x2
	or	a5,a5,a0
	srai	a0,a5,0x4
	or	a0,a0,a5
	srai	a4,a0,0x8
	or	a4,a4,a0
	srai	a5,a4,0x10
	or	a5,a5,a4
	srai	a0,a5,0x1
	sub	a0,a5,a0
	ret
BinaryFirst:
	addi	sp,sp,-64
	sw	s1,52(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s6,32(sp)
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s2,48(sp)
	sw	s7,28(sp)
	addi	s6,a3,-1
	mv	s1,a2
	mv	s3,a0
	mv	s5,a1
	mv	s4,a4
	bge	a2,s6,lab188
	slli	s2,a1,0x3
	add	s2,a0,s2
	mv	s7,s6
lab190: 	sub	s0,s7,s1
	srai	s0,s0,0x1
	add	s0,s0,s1
	slli	a5,s0,0x3
	add	a5,s3,a5
	lw	a2,0(s2)
	lw	a3,4(s2)
	lw	a0,0(a5)
	lw	a1,4(a5)
	jalr	s4 # 100000 <array1>
	beqz	a0,lab189
	addi	s1,s0,1
	blt	s1,s7,lab190
lab188: 	bne	s6,s1,lab191
	slli	a5,s1,0x3
	slli	s5,s5,0x3
	add	s5,s3,s5
	add	s3,s3,a5
	lw	a2,0(s5)
	lw	a3,4(s5)
	lw	a0,0(s3)
	lw	a1,4(s3)
	jalr	s4
	snez	a0,a0
	add	s1,s1,a0
lab191: 	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s2,48(sp)
	lw	s3,44(sp)
	lw	s4,40(sp)
	lw	s5,36(sp)
	lw	s6,32(sp)
	lw	s7,28(sp)
	mv	a0,s1
	lw	s1,52(sp)
	addi	sp,sp,64
	ret
lab189: 	bge	s1,s0,lab188
	mv	s7,s0
	j	lab190
BinaryLast:
	addi	sp,sp,-64
	sw	s1,52(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s6,32(sp)
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s2,48(sp)
	sw	s7,28(sp)
	addi	s5,a3,-1
	mv	s1,a2
	mv	s3,a0
	mv	s6,a1
	mv	s4,a4
	bge	a2,s5,lab192
	slli	s2,a1,0x3
	add	s2,a0,s2
	mv	s7,s5
lab194: 	sub	s0,s7,s1
	srai	s0,s0,0x1
	add	s0,s0,s1
	slli	a5,s0,0x3
	add	a5,s3,a5
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a0,0(s2)
	lw	a1,4(s2)
	jalr	s4
	bnez	a0,lab193
	addi	s1,s0,1
	blt	s1,s7,lab194
lab192: 	bne	s5,s1,lab195
	slli	a5,s1,0x3
	slli	s6,s6,0x3
	add	a5,s3,a5
	add	s3,s3,s6
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a0,0(s3)
	lw	a1,4(s3)
	jalr	s4
	seqz	a0,a0
	add	s1,s1,a0
lab195: 	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s2,48(sp)
	lw	s3,44(sp)
	lw	s4,40(sp)
	lw	s5,36(sp)
	lw	s6,32(sp)
	lw	s7,28(sp)
	mv	a0,s1
	lw	s1,52(sp)
	addi	sp,sp,64
	ret
lab193: 	bge	s1,s0,lab192
	mv	s7,s0
	j	lab194
InsertionSort:
	addi	sp,sp,-80
	sw	s6,48(sp)
	addi	s6,a1,1
	sw	s5,52(sp)
	sw	ra,76(sp)
	slli	s5,s6,0x3
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	s7,44(sp)
	sw	s8,40(sp)
	sw	a1,8(sp)
	sw	a2,12(sp)
	add	s5,a0,s5
	bge	s6,a2,lab196
	mv	s4,a1
	mv	s8,a0
	mv	s7,a2
	mv	s3,a3
lab200: 	lw	a4,0(s5)
	lw	a5,4(s5)
	mv	s1,s5
	sw	a4,24(sp)
	sw	a5,28(sp)
	mv	s2,s6
	j	lab197
lab199: 	lw	a4,-8(s0)
	lw	a5,-4(s0)
	sw	a4,0(s0)
	sw	a5,4(s0)
	bge	s4,s2,lab198
lab197: 	lw	a2,-8(s1)
	lw	a3,-4(s1)
	lw	a0,24(sp)
	lw	a1,28(sp)
	mv	s0,s1
	addi	s2,s2,-1
	jalr	s3
	addi	s1,s1,-8
	mv	a5,s0
	bnez	a0,lab199
	lw	a4,24(sp)
	addi	s6,s6,1
	addi	s5,s5,8
	sw	a4,0(a5)
	lw	a4,28(sp)
	sw	a4,4(a5)
	blt	s6,s7,lab200
lab196: 	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s1,68(sp)
	lw	s2,64(sp)
	lw	s3,60(sp)
	lw	s4,56(sp)
	lw	s5,52(sp)
	lw	s6,48(sp)
	lw	s7,44(sp)
	lw	s8,40(sp)
	addi	sp,sp,80
	ret
lab198: 	lw	a4,24(sp)
	slli	s2,s2,0x3
	add	a5,s8,s2
	sw	a4,0(a5)
	lw	a4,28(sp)
	addi	s6,s6,1
	addi	s5,s5,8
	sw	a4,4(a5)
	blt	s6,s7,lab200
	j	lab196
Reverse:
	sub	a6,a2,a1
	addi	sp,sp,-16
	mv	a3,a1
	srli	a5,a6,0x1f
	sw	a1,8(sp)
	sw	a2,12(sp)
	li	a1,1
	add	a5,a5,a6
	bge	a1,a6,lab201
	mv	a4,a2
	srai	a2,a5,0x1
	add	a5,a2,a3
	sub	a4,a4,a2
	slli	a5,a5,0x3
	slli	a4,a4,0x3
	slli	a3,a3,0x3
	add	a5,a0,a5
	add	a4,a0,a4
	add	a0,a0,a3
lab202: 	lw	a1,0(a4)
	lw	a2,-8(a5)
	lw	a3,-4(a5)
	sw	a1,-8(a5)
	lw	a1,4(a4)
	addi	a4,a4,8
	addi	a5,a5,-8
	sw	a1,4(a5)
	sw	a2,-8(a4)
	sw	a3,-4(a4)
	bne	a5,a0,lab202
lab201: 	addi	sp,sp,16
	ret
BlockSwap:
	blez	a3,lab203
	add	a3,a3,a1
	slli	a2,a2,0x3
	slli	a1,a1,0x3
	slli	a3,a3,0x3
	add	a5,a0,a1
	add	a4,a0,a2
	add	a0,a0,a3
lab204: 	lw	a1,0(a4)
	lw	a2,0(a5)
	lw	a3,4(a5)
	sw	a1,0(a5)
	lw	a1,4(a4)
	addi	a4,a4,8
	addi	a5,a5,8
	sw	a1,-4(a5)
	sw	a2,-8(a4)
	sw	a3,-4(a4)
	bne	a5,a0,lab204
lab203: 	ret
Rotate:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	a2,8(sp)
	sw	a3,12(sp)
	beq	a3,a2,lab205
	mv	s2,a2
	mv	s0,a3
	mv	s1,a0
	mv	s4,a1
	add	s3,a1,a2
	bltz	a1,lab206
	sub	s5,s0,s3
	bge	s5,s4,lab207
lab215: 	bge	a5,s5,lab208
lab214: 	srli	a4,s4,0x1f
	add	a4,a4,s4
	li	a5,1
	srai	a4,a4,0x1
	bge	a5,s4,lab209
	add	a5,a4,s2
	sub	a4,s3,a4
	slli	a5,a5,0x3
	slli	a4,a4,0x3
	slli	a0,s2,0x3
	add	a5,s1,a5
	add	a4,s1,a4
	add	a0,s1,a0
lab210: 	lw	a1,0(a4)
	lw	a2,-8(a5)
	lw	a3,-4(a5)
	sw	a1,-8(a5)
	lw	a1,4(a4)
	addi	a4,a4,8
	addi	a5,a5,-8
	sw	a1,4(a5)
	sw	a2,-8(a4)
	sw	a3,-4(a4)
	bne	a0,a5,lab210
lab209: 	srli	a4,s5,0x1f
	add	a4,a4,s5
	li	a5,1
	srai	a4,a4,0x1
	bge	a5,s5,lab211
	add	a5,s3,a4
	sub	a4,s0,a4
	slli	a5,a5,0x3
	slli	a4,a4,0x3
	slli	a3,s3,0x3
	add	a5,s1,a5
	add	a4,s1,a4
	add	a3,s1,a3
lab212: 	lw	a0,0(a4)
	lw	a1,-8(a5)
	lw	a2,-4(a5)
	sw	a0,-8(a5)
	lw	a0,4(a4)
	addi	a4,a4,8
	addi	a5,a5,-8
	sw	a0,4(a5)
	sw	a1,-8(a4)
	sw	a2,-4(a4)
	bne	a3,a5,lab212
lab211: 	sub	a5,s0,s2
	srli	a4,a5,0x1f
	add	a4,a4,a5
	li	a3,1
	srai	a4,a4,0x1
	bge	a3,a5,lab205
	add	a5,a4,s2
	sub	a4,s0,a4
	slli	a5,a5,0x3
	slli	a4,a4,0x3
	slli	s2,s2,0x3
	add	a5,s1,a5
	add	a4,s1,a4
	add	s1,s1,s2
lab213: 	lw	a1,0(a4)
	lw	a2,-8(a5)
	lw	a3,-4(a5)
	sw	a1,-8(a5)
	lw	a1,4(a4)
	addi	a4,a4,8
	addi	a5,a5,-8
	sw	a1,4(a5)
	sw	a2,-8(a4)
	sw	a3,-4(a4)
	bne	s1,a5,lab213
lab205: 	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	lw	s5,20(sp)
	addi	sp,sp,48
	ret
lab207: 	blt	a5,s4,lab214
	slli	s0,s2,0x3
	add	s0,s1,s0
	slli	s4,s4,0x3
	mv	a0,a4
	mv	a2,s4
	mv	a1,s0
	sw	a4,4(sp)
	jal	ra,memcpy
	slli	a1,s3,0x3
	slli	a2,s5,0x3
	add	a1,s1,a1
	mv	a0,s0
	jal	ra,memmove
	lw	a4,4(sp)
	add	a0,s5,s2
	slli	a0,a0,0x3
	mv	a2,s4
	mv	a1,a4
	add	a0,s1,a0
lab216: 	lw	s0,40(sp)
	lw	ra,44(sp)
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	lw	s5,20(sp)
	addi	sp,sp,48
	j	memcpy
lab206: 	add	s3,a1,a3
	sub	s4,s3,a2
	sub	s5,s0,s3
	blt	s5,s4,lab215
	j	lab207
lab208: 	slli	s5,s5,0x3
	slli	a1,s3,0x3
	mv	a0,a4
	mv	a2,s5
	add	a1,s1,a1
	sw	a4,4(sp)
	jal	ra,memcpy
	slli	s2,s2,0x3
	sub	a0,s0,s4
	add	s2,s1,s2
	slli	a0,a0,0x3
	slli	a2,s4,0x3
	mv	a1,s2
	add	a0,s1,a0
	jal	ra,memmove
	lw	a4,4(sp)
	mv	a2,s5
	mv	a0,s2
	mv	a1,a4
	j	lab216
WikiMerge:
	addi	sp,sp,-112
	lw	t3,116(sp)
	sw	s5,84(sp)
	sw	a4,36(sp)
	sub	s5,a4,a3
	sub	a4,a6,a5
	sw	s2,96(sp)
	sw	s4,88(sp)
	sw	s6,80(sp)
	sw	s11,60(sp)
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s1,100(sp)
	sw	s3,92(sp)
	sw	s7,76(sp)
	sw	s8,72(sp)
	sw	s9,68(sp)
	sw	s10,64(sp)
	sw	a3,20(sp)
	sw	a1,40(sp)
	sw	a2,44(sp)
	sw	a3,32(sp)
	sw	a5,24(sp)
	sw	a6,28(sp)
	sw	a1,12(sp)
	sw	a4,16(sp)
	lw	s2,112(sp)
	mv	s4,a5
	mv	s11,a0
	mv	s6,a7
	blt	t3,s5,lab217
	slli	s1,a3,0x3
	slli	s0,s5,0x3
	add	s1,a0,s1
	add	s0,s2,s0
	blez	a4,lab218
	blez	s5,lab218
	slli	s4,s4,0x3
	slli	t1,a6,0x3
	add	s4,a0,s4
	add	s11,a0,t1
lab220: 	lw	a2,0(s2)
	lw	a3,4(s2)
	lw	a0,0(s4)
	lw	a1,4(s4)
	addi	s1,s1,8
	jalr	s6
	bnez	a0,lab219
	lw	a5,0(s2)
	addi	s2,s2,8
	sw	a5,-8(s1)
	lw	a5,-4(s2)
	sw	a5,-4(s1)
	bne	s0,s2,lab220
lab218: 	sub	a2,s0,s2
	lw	s0,104(sp)
	lw	ra,108(sp)
	lw	s3,92(sp)
	lw	s4,88(sp)
	lw	s5,84(sp)
	lw	s6,80(sp)
	lw	s7,76(sp)
	lw	s8,72(sp)
	lw	s9,68(sp)
	lw	s10,64(sp)
	lw	s11,60(sp)
	mv	a1,s2
	mv	a0,s1
	lw	s2,96(sp)
	lw	s1,100(sp)
	addi	sp,sp,112
	j	memcpy
lab217: 	blez	a4,lab221
	blez	s5,lab222
	slli	s10,a3,0x3
	mv	s7,a1
	add	s10,a0,s10
	li	s9,0
	li	s0,0
	li	s1,0
	mv	s8,s4
lab225: 	slli	s2,s8,0x3
	slli	s3,s7,0x3
	add	s2,s11,s2
	add	s3,s11,s3
	lw	a2,0(s3)
	lw	a3,4(s3)
	lw	a0,0(s2)
	lw	a1,4(s2)
	addi	s9,s9,1
	jalr	s6
	bnez	a0,lab223
	lw	a1,0(s3)
	lw	a2,0(s10)
	lw	a3,4(s10)
	sw	a1,0(s10)
	lw	a1,4(s3)
	lw	a5,12(sp)
	addi	s1,s1,1
	sw	a1,4(s10)
	sw	a2,0(s3)
	sw	a3,4(s3)
	add	s7,s1,a5
	bge	s1,s5,lab224
lab226: 	addi	s10,s10,8
	j	lab225
lab223: 	lw	a1,0(s2)
	lw	a2,0(s10)
	lw	a3,4(s10)
	sw	a1,0(s10)
	lw	a1,4(s2)
	lw	a5,16(sp)
	addi	s0,s0,1
	sw	a1,4(s10)
	sw	a2,0(s2)
	sw	a3,4(s2)
	add	s8,s0,s4
	blt	s0,a5,lab226
	lw	a5,20(sp)
	sub	s5,s5,s1
	sw	s7,12(sp)
	add	a5,a5,s9
	sw	a5,20(sp)
lab221: 	blez	s5,lab222
	lw	a5,12(sp)
	add	s5,s5,a5
	slli	a1,a5,0x3
	lw	a5,20(sp)
	slli	s5,s5,0x3
	add	a1,s11,a1
	slli	a3,a5,0x3
	add	a3,s11,a3
	add	s11,s11,s5
lab227: 	lw	a2,0(a3)
	lw	a4,0(a1)
	lw	a5,4(a1)
	sw	a2,0(a1)
	lw	a2,4(a3)
	addi	a3,a3,8
	addi	a1,a1,8
	sw	a2,-4(a1)
	sw	a4,-8(a3)
	sw	a5,-4(a3)
	bne	a1,s11,lab227
lab222: 	lw	ra,108(sp)
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
lab224: 	lw	a5,20(sp)
	sw	s7,12(sp)
	sub	s5,s5,s1
	add	a5,a5,s9
	sw	a5,20(sp)
	j	lab221
lab219: 	lw	a5,0(s4)
	addi	s4,s4,8
	sw	a5,-8(s1)
	lw	a5,-4(s4)
	sw	a5,-4(s1)
	bne	s11,s4,lab220
	j	lab218
WikiSort:
	addi	sp,sp,-352
	lui	t0,0xfffff
	sw	s9,308(sp)
	sw	ra,348(sp)
	sw	s0,344(sp)
	sw	s1,340(sp)
	sw	s2,336(sp)
	sw	s3,332(sp)
	sw	s4,328(sp)
	sw	s5,324(sp)
	sw	s6,320(sp)
	sw	s7,316(sp)
	sw	s8,312(sp)
	sw	s10,304(sp)
	sw	s11,300(sp)
	add	sp,sp,t0
	sw	a1,96(sp)
	li	a5,32
	mv	s9,a2
	blt	a5,a1,lab228
	j	lab229
lab228: 	srai	a5,a1,0x1
	or	a5,a5,a1
	srai	a4,a5,0x2
	or	a4,a4,a5
	srai	a5,a4,0x4
	or	a5,a5,a4
	srai	a4,a5,0x8
	or	a4,a4,a5
	srai	a5,a4,0x10
	or	a5,a5,a4
	srai	a4,a5,0x1
	sub	a4,a5,a4
	srai	a5,a4,0x1f
	andi	a5,a5,15
	add	a5,a5,a4
	mv	a3,a1
	sw	a4,132(sp)
	srai	a4,a5,0x4
	rem	s4,a1,a4
	lui	a2,0x1
	li	a5,0
	lui	s2,0xfffff
	li	s1,0
	addi	a2,a2,160 # 10a0 <WikiSort.constprop.0+0x4c0>
	add	a2,a2,s2
	addi	a1,sp,128
	mv	s10,a0
	sw	a4,72(sp)
	mv	s3,a4
	add	s2,a2,a1
	mv	s6,a3
	mv	a1,a5
	mv	a0,s10
	div	s5,a3,a4
	sw	s4,68(sp)
	add	s1,s1,s4
	mv	a3,s9
	add	s0,s5,a5
	sw	s5,60(sp)
	mv	a2,s0
	blt	s1,s3,lab230
lab232: 	addi	s0,s0,1
	mv	a2,s0
	sw	a5,-80(s2) # ffffefb0 <_stack+0xffef6fb0>
	sub	s1,s1,s3
	sw	s0,-76(s2)
	jal	ra,InsertionSort
	bge	s0,s6,lab231
lab233: 	mv	a5,s0
	add	s0,s5,a5
	add	s1,s1,s4
	mv	a1,a5
	mv	a3,s9
	mv	a0,s10
	mv	a2,s0
	bge	s1,s3,lab232
lab230: 	sw	a5,-80(s2)
	sw	s0,-76(s2)
	jal	ra,InsertionSort
	blt	s0,s6,lab233
lab231: 	lw	a4,132(sp)
	li	a5,16
	sw	a5,116(sp)
	bge	a5,a4,lab234
	lui	a5,0x20000
	addi	a5,a5,-1 # 1fffffff <_stack+0x1fef7fff>
	lui	a4,0x1
	sw	a5,48(sp)
	addi	a4,a4,160 # 10a0 <WikiSort.constprop.0+0x4c0>
	lui	a5,0xfffff
	add	a4,a4,a5
	addi	a5,sp,128
	add	s11,a4,a5
	mv	s8,s11
	mv	s11,s10
	mv	s10,s9
lab280: 	lw	s0,60(sp)
	li	s9,0
	mv	a0,s0
	jal	ra,__floatsidf
	jal	ra,sqrt
	jal	ra,__fixdfsi
	div	a5,s0,a0
	slli	a4,a0,0x3
	mv	s7,a0
	sw	a4,80(sp)
	sw	zero,52(sp)
	sw	zero,88(sp)
	sw	zero,124(sp)
	sw	zero,64(sp)
	sw	zero,56(sp)
	sw	zero,100(sp)
	sw	zero,108(sp)
	sw	zero,44(sp)
	sw	zero,120(sp)
	sw	a5,112(sp)
	addi	a5,a5,1 # fffff001 <_stack+0xffef7001>
	sw	a5,104(sp)
	slli	a5,a5,0x1
	sw	a5,128(sp)
lab270: 	lw	a4,56(sp)
	lw	a5,68(sp)
	add	a5,a5,a4
	lw	a4,60(sp)
	add	s3,a4,s9
	lw	a4,72(sp)
	blt	a5,a4,lab235
	sub	a5,a5,a4
	addi	s3,s3,1
lab235: 	lw	a4,68(sp)
	lw	a3,72(sp)
	add	a5,a5,a4
	lw	a4,60(sp)
	sw	a5,56(sp)
	add	a4,s3,a4
	sw	a4,32(sp)
	blt	a5,a3,lab236
	sub	a5,a5,a3
	sw	a5,56(sp)
	addi	a5,a4,1
	sw	a5,32(sp)
lab236: 	lw	a4,48(sp)
	lw	a5,32(sp)
	slli	s2,s9,0x3
	add	s2,s11,s2
	add	a5,a5,a4
	slli	a5,a5,0x3
	add	a5,s11,a5
	lw	a0,0(a5)
	lw	a1,4(a5)
	lw	a4,44(sp)
	lw	a5,88(sp)
	lw	a2,0(s2)
	lw	a3,4(s2)
	sub	a5,a5,a4
	sw	a5,84(sp)
	jalr	s10
	bnez	a0,lab237
	slli	a5,s3,0x3
	add	a5,s11,a5
	lw	a2,-8(a5)
	lw	a3,-4(a5)
	lw	a0,0(a5)
	lw	a1,4(a5)
	jalr	s10
	beqz	a0,lab238
	sub	a5,s3,s9
	sw	a5,28(sp)
	li	a4,512
	bge	a4,a5,lab239
	lw	a5,32(sp)
	sw	a5,76(sp)
	lw	a5,84(sp)
	blez	a5,lab240
	lw	a5,28(sp)
	rem	a2,a5,s7
	add	a6,a2,s9
	addi	a3,a6,1
	bge	a3,s3,lab241
lab296: 	lw	a5,44(sp)
	lw	t1,80(sp)
	slli	t3,a6,0x3
	slli	a5,a5,0x3
	add	a5,s11,a5
	add	a4,s11,t3
lab242: 	lw	a7,8(a4)
	lw	a0,0(a5)
	lw	a1,4(a5)
	sw	a7,0(a5)
	lw	a7,12(a4)
	add	a3,a3,s7
	addi	a5,a5,8
	sw	a7,-4(a5)
	sw	a0,8(a4)
	sw	a1,12(a4)
	add	a4,a4,t1
	blt	a3,s3,lab242
lab297: 	lw	a5,76(sp)
	sub	s1,a5,s3
	bge	s7,s1,lab243
	mv	s1,s7
lab243: 	add	a3,s11,t3
	lw	a5,4(a3)
	lw	a4,0(a3)
	add	s1,s1,s3
	sw	a5,-100(s8)
	sw	a4,-104(s8)
	li	a5,512
	blt	a5,a2,lab244
	slli	a2,a2,0x3
	mv	a1,s2
	mv	a0,s8
	sw	a6,28(sp)
	jal	ra,memcpy
	lw	a5,52(sp)
	lw	a6,28(sp)
	slli	a2,a5,0x3
lab299: 	add	a5,s11,a2
	li	a7,0
	sw	s9,36(sp)
	sw	a5,92(sp)
	mv	s5,a6
	sw	s3,28(sp)
	li	s2,0
	sw	zero,40(sp)
	mv	s0,a6
	mv	s6,a7
	mv	s9,a6
lab267: 	bge	s6,s2,lab245
lab255: 	lw	a5,48(sp)
	lw	a2,-104(s8)
	lw	a3,-100(s8)
	add	a5,s2,a5
	slli	a5,a5,0x3
	add	a5,s11,a5
	lw	a0,0(a5)
	lw	a1,4(a5)
	jalr	s10
	bnez	a0,lab245
lab256: 	mv	a2,s6
	sw	s6,-112(s8)
	mv	a4,s10
	mv	a3,s2
	mv	a1,s9
	mv	a0,s11
	sw	s2,-108(s8)
	jal	ra,BinaryFirst
	mv	a6,a0
	sub	s6,s2,a0
	add	s4,s7,s0
	blez	s7,lab246
	slli	a5,s0,0x3
	slli	a4,s9,0x3
	slli	a0,s4,0x3
	add	a5,s11,a5
	add	a4,s11,a4
	add	a0,s11,a0
lab247: 	lw	a1,0(a4)
	lw	a2,0(a5)
	lw	a3,4(a5)
	sw	a1,0(a5)
	lw	a1,4(a4)
	addi	a4,a4,8
	addi	a5,a5,8
	sw	a1,-4(a5)
	sw	a2,-8(a4)
	sw	a3,-4(a4)
	bne	a0,a5,lab247
lab246: 	lw	t1,40(sp)
	lw	a5,44(sp)
	addi	t6,s0,1
	slli	s9,t6,0x3
	add	a4,t1,a5
	slli	a4,a4,0x3
	add	a4,s11,a4
	lw	a3,0(a4)
	add	a5,s11,s9
	lw	a2,0(a5)
	sw	a3,0(a5)
	lw	a1,4(a4)
	lw	a3,4(a5)
	li	a0,512
	sw	a0,4(sp)
	sw	a1,4(a5)
	sw	a2,0(a4)
	sw	a3,4(a4)
	lw	a1,52(sp)
	lw	a3,36(sp)
	lw	a2,64(sp)
	sw	s8,0(sp)
	mv	a5,s5
	addi	t1,t1,1
	sw	a6,-28(s8)
	mv	a7,s10
	mv	a4,s5
	mv	a0,s11
	sw	s5,-32(s8)
	sw	a1,-128(s8)
	sw	a2,-124(s8)
	sw	a3,-120(s8)
	sw	s5,-116(s8)
	sw	a6,36(sp)
	sw	t1,40(sp)
	jal	ra,WikiMerge.constprop.1
	li	a5,512
	lw	a6,36(sp)
	blt	a5,s7,lab248
	lw	a2,80(sp)
	addi	a1,s9,-8
	add	a1,s11,a1
	mv	a0,s8
	sw	a6,36(sp)
	jal	ra,memcpy
	lw	a6,36(sp)
lab272: 	sub	a4,s4,s6
	blez	s6,lab249
	slli	a5,a6,0x3
	slli	a4,a4,0x3
	slli	s2,s2,0x3
	add	a5,s11,a5
	add	a4,s11,a4
	add	s2,s11,s2
lab250: 	lw	a1,0(a4)
	lw	a2,0(a5)
	lw	a3,4(a5)
	sw	a1,0(a5)
	lw	a1,4(a4)
	addi	a4,a4,8
	addi	a5,a5,8
	sw	a1,-4(a5)
	sw	a2,-8(a4)
	sw	a3,-4(a4)
	bne	a5,s2,lab250
lab249: 	sub	a5,s0,s6
	add	s5,a5,s7
	sw	a5,36(sp)
	add	s2,s5,s6
	beq	s4,s3,lab251
	addi	s9,s4,1
	add	s0,s7,s9
	bge	s0,s3,lab252
lab254: 	slli	a4,s9,0x3
	slli	a5,s0,0x3
	add	a4,s11,a4
	add	a5,s11,a5
	lw	a2,0(a4)
	lw	a3,4(a4)
	lw	a0,0(a5)
	lw	a1,4(a5)
	jalr	s10
	beqz	a0,lab253
	mv	s9,s0
lab253: 	add	s0,s0,s7
	blt	s0,s3,lab254
	addi	s9,s9,-1
lab281: 	slli	a5,s9,0x3
	add	a5,s11,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	mv	s6,s5
	sw	a4,-104(s8)
	sw	a5,-100(s8)
	mv	s0,s4
	blt	s6,s2,lab255
lab245: 	lw	a5,28(sp)
	beq	a5,s1,lab256
	sub	s4,s1,a5
	bge	s4,s7,lab257
	mv	a3,a5
	sub	s6,a5,s1
	add	s2,s0,s4
	beq	s0,s1,lab258
	bltz	s6,lab259
	add	a3,s6,s0
	sub	a2,s1,a3
	blt	a2,s6,lab260
lab268: 	srli	a4,s6,0x1f
	add	a4,a4,s6
	li	a5,1
	srai	a4,a4,0x1
	bge	a5,s6,lab261
	add	a5,s0,a4
	sub	a4,a3,a4
	slli	a5,a5,0x3
	slli	a4,a4,0x3
	slli	t1,s0,0x3
	add	a5,s11,a5
	add	a4,s11,a4
	add	t1,s11,t1
lab262: 	lw	a6,0(a4)
	lw	a0,-8(a5)
	lw	a1,-4(a5)
	sw	a6,-8(a5)
	lw	a6,4(a4)
	addi	a4,a4,8
	addi	a5,a5,-8
	sw	a6,4(a5)
	sw	a0,-8(a4)
	sw	a1,-4(a4)
	bne	t1,a5,lab262
lab261: 	srli	a4,a2,0x1f
	add	a4,a4,a2
	li	a5,1
	srai	a4,a4,0x1
	bge	a5,a2,lab263
	add	a5,a4,a3
	sub	a4,s1,a4
	slli	a5,a5,0x3
	slli	a4,a4,0x3
	slli	a3,a3,0x3
	add	a5,s11,a5
	add	a4,s11,a4
	add	a3,s11,a3
lab264: 	lw	a0,0(a4)
	lw	a1,-8(a5)
	lw	a2,-4(a5)
	sw	a0,-8(a5)
	lw	a0,4(a4)
	addi	a4,a4,8
	addi	a5,a5,-8
	sw	a0,4(a5)
	sw	a1,-8(a4)
	sw	a2,-4(a4)
	bne	a3,a5,lab264
lab263: 	sub	a5,s1,s0
	srli	a4,a5,0x1f
	add	a4,a4,a5
	li	a3,1
	srai	a4,a4,0x1
	bge	a3,a5,lab265
	add	a5,s0,a4
	sub	a4,s1,a4
	slli	a5,a5,0x3
	slli	a4,a4,0x3
	slli	a0,s0,0x3
	add	a5,s11,a5
	add	a4,s11,a4
	add	a0,s11,a0
lab266: 	lw	a1,0(a4)
	lw	a2,-8(a5)
	lw	a3,-4(a5)
	sw	a1,-8(a5)
	lw	a1,4(a4)
	addi	a4,a4,8
	addi	a5,a5,-8
	sw	a1,4(a5)
	sw	a2,-8(a4)
	sw	a3,-4(a4)
	bne	a0,a5,lab266
lab265: 	add	s2,s0,s4
lab258: 	mv	s6,s0
	lw	s1,28(sp)
	add	s3,s3,s4
	add	s9,s9,s4
	mv	s0,s2
	j	lab267
lab260: 	bgtz	a2,lab268
	slli	a5,a2,0x3
	slli	a3,a3,0x3
	mv	a2,a5
	add	a1,s11,a3
	mv	a0,s8
	sw	a5,136(sp)
	jal	ra,memcpy
	slli	s2,s0,0x3
	sub	a0,s1,s6
	add	s2,s11,s2
	slli	a0,a0,0x3
	mv	a1,s2
	slli	a2,s6,0x3
	add	a0,s11,a0
	jal	ra,memmove
	lw	a5,136(sp)
	mv	a0,s2
	mv	a1,s8
	mv	a2,a5
	jal	ra,memcpy
	add	s2,s0,s4
	j	lab258
lab237: 	lw	a3,32(sp)
	li	a5,512
	mv	a4,s8
	mv	a2,s9
	sub	a1,s3,s9
	mv	a0,s11
	sw	s9,-72(s8)
	sw	a3,-68(s8)
	jal	ra,Rotate.constprop.1
lab238: 	lw	a5,32(sp)
	lw	a4,96(sp)
	bge	a5,a4,lab269
lab277: 	mv	s9,a5
	j	lab270
lab248: 	lw	a4,92(sp)
	addi	a5,s9,-8
	slli	a0,s4,0x3
	add	a5,s11,a5
	add	a0,s11,a0
lab271: 	lw	a1,0(a4)
	lw	a2,0(a5)
	lw	a3,4(a5)
	sw	a1,0(a5)
	lw	a1,4(a4)
	addi	a4,a4,8
	addi	a5,a5,8
	sw	a1,-4(a5)
	sw	a2,-8(a4)
	sw	a3,-4(a4)
	bne	a0,a5,lab271
	j	lab272
lab257: 	blez	s7,lab273
	mv	a4,a5
	add	s4,s7,s0
	slli	a5,s0,0x3
	slli	a4,a4,0x3
	slli	a0,s4,0x3
	add	a5,s11,a5
	add	a4,s11,a4
	add	a0,s11,a0
lab274: 	lw	a1,0(a4)
	lw	a2,0(a5)
	lw	a3,4(a5)
	sw	a1,0(a5)
	lw	a1,4(a4)
	addi	a4,a4,8
	addi	a5,a5,8
	sw	a1,-4(a5)
	sw	a2,-8(a4)
	sw	a3,-4(a4)
	bne	a0,a5,lab274
lab300: 	mv	s2,s4
	bne	s9,s0,lab275
	mv	s9,s3
lab275: 	lw	a5,28(sp)
	add	s1,s7,s1
	add	s3,s3,s7
	add	a5,a5,s7
	sw	a5,28(sp)
	lw	a5,76(sp)
	bge	a5,s1,lab276
	mv	s1,a5
lab276: 	mv	s6,s0
	mv	s0,s4
	j	lab267
lab259: 	sub	s6,a5,s0
	mv	a2,s4
	blt	s4,s6,lab260
	bgtz	s6,lab268
	slli	s1,s0,0x3
	add	s1,s11,s1
	slli	s6,s6,0x3
	mv	a2,s6
	mv	a1,s1
	mv	a0,s8
	jal	ra,memcpy
	lw	a5,28(sp)
	slli	a2,s4,0x3
	mv	a0,s1
	slli	a1,a5,0x3
	add	a1,s11,a1
	jal	ra,memmove
	slli	a0,s2,0x3
	mv	a2,s6
	mv	a1,s8
	add	a0,s11,a0
	jal	ra,memcpy
	j	lab258
lab251: 	lw	a6,76(sp)
	lw	a1,-128(s8)
	lw	a2,-124(s8)
	mv	s9,a5
	li	a5,512
	sw	a5,4(sp)
	sw	s8,0(sp)
	mv	a5,s5
	mv	a4,s5
	mv	a7,s10
	mv	a3,s9
	mv	a0,s11
	sw	s5,-24(s8)
	sw	a6,-20(s8)
	sw	s9,-120(s8)
	sw	s5,-116(s8)
	jal	ra,WikiMerge.constprop.1
	lw	a5,32(sp)
	lw	a4,96(sp)
	blt	a5,a4,lab277
lab269: 	lw	a5,84(sp)
	bgtz	a5,lab278
lab332: 	lw	a4,60(sp)
	lw	a5,68(sp)
	slli	a4,a4,0x1
	sw	a4,60(sp)
	lw	a4,72(sp)
	slli	a5,a5,0x1
	sw	a5,68(sp)
	blt	a5,a4,lab279
	sub	a5,a5,a4
	sw	a5,68(sp)
	lw	a5,60(sp)
	addi	a5,a5,1
	sw	a5,60(sp)
lab279: 	lw	a5,116(sp)
	lw	a4,132(sp)
	slli	a5,a5,0x1
	sw	a5,116(sp)
	blt	a5,a4,lab280
lab234: 	lui	t0,0x1
	add	sp,sp,t0
	lw	ra,348(sp)
	lw	s0,344(sp)
	lw	s1,340(sp)
	lw	s2,336(sp)
	lw	s3,332(sp)
	lw	s4,328(sp)
	lw	s5,324(sp)
	lw	s6,320(sp)
	lw	s7,316(sp)
	lw	s8,312(sp)
	lw	s9,308(sp)
	lw	s10,304(sp)
	lw	s11,300(sp)
	addi	sp,sp,352
	ret
lab252: 	mv	s9,s4
	j	lab281
lab240: 	addi	s0,s9,1
	bge	s0,s3,lab282
	lw	s6,112(sp)
	mv	s4,s2
	li	s1,1
lab286: 	lw	a1,4(s4)
	lw	a2,8(s4)
	lw	a3,12(s4)
	lw	a0,0(s4)
	mv	s5,s4
	addi	s4,s4,8
	jalr	s10
	bnez	a0,lab283
	lw	a2,0(s5)
	lw	a3,4(s5)
	lw	a0,0(s4)
	lw	a1,4(s4)
	jalr	s10
	beqz	a0,lab284
lab283: 	addi	a5,s1,1
	beq	s6,s1,lab285
	mv	s1,a5
lab284: 	addi	s0,s0,1
	bne	s0,s3,lab286
lab350: 	lw	a5,104(sp)
	li	a4,512
	blt	a4,a5,lab287
lab301: 	bne	s1,a5,lab288
	lw	s1,32(sp)
	add	a5,a5,s9
	sw	a5,88(sp)
	sw	s1,100(sp)
	sw	a5,108(sp)
	sw	s9,64(sp)
	sw	s9,52(sp)
	sw	zero,36(sp)
lab349: 	slli	s2,a5,0x3
	sub	a5,s3,a5
	sw	a5,28(sp)
	lw	a5,104(sp)
	add	s2,s11,s2
	mv	a4,a5
lab341: 	slli	a5,s0,0x3
	li	s6,0
	add	a5,s11,a5
	sw	s1,40(sp)
	sw	s2,44(sp)
	mv	s1,s6
	mv	s4,a5
	mv	s6,a4
	mv	s2,s0
lab291: 	addi	s5,s4,-8
	beq	s2,s9,lab289
	lw	a2,0(s4)
	lw	a3,4(s4)
	lw	a1,4(s5)
	lw	a0,-8(s4)
	jalr	s10
	bnez	a0,lab289
	lw	a2,-8(s4)
	lw	a1,4(s4)
	lw	a3,4(s5)
	lw	a0,0(s4)
	jalr	s10
	beqz	a0,lab290
lab289: 	addi	a3,s0,1
	addi	a2,s2,1
	neg	a1,s1
	li	a5,512
	mv	a4,s8
	mv	a0,s11
	sw	a2,-48(s8)
	sw	a3,-44(s8)
	add	s0,s2,s1
	jal	ra,Rotate.constprop.1
	addi	s1,s1,1
lab290: 	addi	s2,s2,-1
	mv	s4,s5
	blt	s1,s6,lab291
	lw	a5,104(sp)
	lw	s1,40(sp)
	lw	s2,44(sp)
	sw	a5,84(sp)
	sw	s9,44(sp)
lab318: 	lw	a5,36(sp)
	blez	a5,lab292
	lw	a5,32(sp)
	li	s4,0
	sw	s2,76(sp)
	mv	s2,s4
	lw	s4,36(sp)
	slli	s5,s1,0x3
	addi	a5,a5,-1
	sw	s3,40(sp)
	add	s5,s11,s5
	mv	s3,s1
	mv	s6,a5
lab295: 	addi	s0,s5,8
	beq	s3,s6,lab293
	lw	a2,8(s5)
	lw	a1,4(s5)
	lw	a3,4(s0)
	lw	a0,0(s5)
	jalr	s10
	bnez	a0,lab293
	lw	a2,0(s5)
	lw	a3,4(s5)
	lw	a0,8(s5)
	lw	a1,4(s0)
	jalr	s10
	beqz	a0,lab294
lab293: 	mv	a2,s1
	mv	a1,s2
	li	a5,512
	mv	a4,s8
	mv	a3,s3
	mv	a0,s11
	sw	s1,-40(s8)
	sw	s3,-36(s8)
	sub	s1,s3,s2
	jal	ra,Rotate.constprop.1
	addi	s2,s2,1
lab294: 	addi	s3,s3,1
	mv	s5,s0
	blt	s2,s4,lab295
	lw	s3,40(sp)
	lw	s2,76(sp)
lab292: 	lw	a5,100(sp)
	sw	s9,124(sp)
	lw	s9,108(sp)
	sw	a5,76(sp)
	lw	a5,32(sp)
	sw	a5,120(sp)
	lw	a5,28(sp)
	rem	a2,a5,s7
	add	a6,a2,s9
	addi	a3,a6,1
	blt	a3,s3,lab296
lab241: 	slli	t3,a6,0x3
	j	lab297
lab244: 	lw	a4,52(sp)
	slli	a5,s9,0x3
	add	a5,s11,a5
	slli	a2,a4,0x3
	add	a4,s11,a2
lab298: 	lw	a7,0(a4)
	lw	a0,0(a5)
	lw	a1,4(a5)
	sw	a7,0(a5)
	lw	a7,4(a4)
	addi	a4,a4,8
	addi	a5,a5,8
	sw	a7,-4(a5)
	sw	a0,-8(a4)
	sw	a1,-4(a4)
	bne	a3,a5,lab298
	j	lab299
lab273: 	add	s4,s7,s0
	j	lab300
lab239: 	slli	a2,a5,0x3
	mv	a1,s2
	mv	a0,s8
	jal	ra,memcpy
	lw	a6,32(sp)
	li	a5,512
	sw	a5,4(sp)
	sw	s8,0(sp)
	mv	a7,s10
	mv	a5,s3
	mv	a3,s9
	mv	a4,s3
	li	a1,0
	li	a2,0
	mv	a0,s11
	sw	zero,-64(s8)
	sw	zero,-60(s8)
	sw	s9,-96(s8)
	sw	s3,-92(s8)
	sw	s3,-88(s8)
	sw	a6,-84(s8)
	jal	ra,WikiMerge.constprop.1
	j	lab238
lab285: 	mv	s1,a5
	lw	a5,104(sp)
	li	a4,512
	bge	a4,a5,lab301
lab287: 	addi	s6,s0,1
	bge	s6,s3,lab302
	slli	s5,s0,0x3
	sw	s0,40(sp)
	lw	s0,112(sp)
	sw	s1,36(sp)
	add	s5,s11,s5
	mv	s1,s6
	li	s4,0
	mv	s6,s2
lab306: 	lw	a1,4(s5)
	lw	a2,8(s5)
	lw	a3,12(s5)
	lw	a0,0(s5)
	mv	s2,s5
	addi	s5,s5,8
	jalr	s10
	bnez	a0,lab303
	lw	a2,0(s2)
	lw	a3,4(s2)
	lw	a0,0(s5)
	lw	a1,4(s5)
	jalr	s10
	beqz	a0,lab304
lab303: 	addi	a4,s4,1
	beq	s0,s4,lab305
	mv	s4,a4
lab304: 	addi	s1,s1,1
	bne	s1,s3,lab306
	mv	s2,s6
	lw	s0,40(sp)
	mv	s6,s1
	lw	s1,36(sp)
lab343: 	lw	a5,104(sp)
	beq	s4,a5,lab307
lab302: 	lw	a5,32(sp)
	addi	s4,a5,-2
	lw	a5,104(sp)
	beq	s1,a5,lab308
	blt	s4,s3,lab309
	lw	s6,112(sp)
	slli	s5,s4,0x3
	add	s5,s11,s5
	li	s0,1
lab312: 	lw	a2,8(s5)
	lw	a1,4(s5)
	lw	a0,0(s5)
	lw	a3,12(s5)
	addi	s1,s5,8
	jalr	s10
	bnez	a0,lab310
	lw	a2,0(s5)
	lw	a3,4(s5)
	lw	a0,8(s5)
	lw	a1,4(s1)
	jalr	s10
	beqz	a0,lab311
lab310: 	addi	a5,s0,1
	beq	s6,s0,lab309
	mv	s0,a5
lab311: 	addi	s4,s4,-1
	addi	s5,s5,-8
	bge	s4,s3,lab312
lab309: 	addi	s1,s4,-1
	blt	s1,s3,lab313
	lw	s6,112(sp)
	slli	s4,s4,0x3
	add	s4,s11,s4
	li	s0,0
lab317: 	lw	a2,0(s4)
	lw	a3,4(s4)
	lw	a1,-4(s4)
	lw	a0,-8(s4)
	mv	s5,s4
	addi	s4,s4,-8
	jalr	s10
	bnez	a0,lab314
	lw	a2,0(s4)
	lw	a3,4(s4)
	lw	a0,0(s5)
	lw	a1,4(s5)
	jalr	s10
	beqz	a0,lab315
lab314: 	addi	a5,s0,1
	beq	s6,s0,lab316
	mv	s0,a5
lab315: 	addi	s1,s1,-1
	bge	s1,s3,lab317
	lw	a5,104(sp)
	bne	s0,a5,lab313
lab344: 	mv	a4,a5
	lw	a5,32(sp)
	lw	a3,128(sp)
	sub	a5,a5,a4
	sub	a4,a5,a4
	sw	a5,44(sp)
	sw	a5,64(sp)
	lw	a5,104(sp)
	add	a3,a3,s1
	sw	a4,52(sp)
	sw	a5,84(sp)
	lw	a5,32(sp)
	sw	a3,140(sp)
	sw	a5,88(sp)
	mv	a4,a5
lab353: 	lw	a5,140(sp)
	sw	s9,108(sp)
	sub	a5,a5,s1
	sw	a5,36(sp)
	sub	a5,a4,a5
	sw	a5,100(sp)
	j	lab318
lab288: 	lw	a5,32(sp)
	addi	s1,a5,-2
	blt	s1,s3,lab319
	lw	s6,112(sp)
	slli	s5,s1,0x3
	add	s5,s11,s5
	li	s0,1
lab323: 	lw	a2,8(s5)
	lw	a1,4(s5)
	lw	a0,0(s5)
	lw	a3,12(s5)
	addi	s4,s5,8
	jalr	s10
	bnez	a0,lab320
	lw	a2,0(s5)
	lw	a3,4(s5)
	lw	a0,8(s5)
	lw	a1,4(s4)
	jalr	s10
	beqz	a0,lab321
lab320: 	addi	a5,s0,1
	beq	s6,s0,lab322
	mv	s0,a5
lab321: 	addi	s1,s1,-1
	addi	s5,s5,-8
	bge	s1,s3,lab323
lab352: 	lw	a5,104(sp)
	beq	s0,a5,lab324
lab342: 	mv	a4,a5
	add	a5,s0,s1
	bge	s0,a4,lab325
lab313: 	lw	a5,32(sp)
	mv	s1,a5
	blt	s3,a5,lab326
	j	lab238
lab327: 	bge	s3,s1,lab238
lab326: 	mv	a2,s3
	mv	a1,s9
	mv	a4,s10
	mv	a3,s1
	mv	a0,s11
	mv	s0,s3
	sw	s3,-88(s8)
	sw	s1,-84(s8)
	jal	ra,BinaryFirst
	mv	s3,a0
	mv	a2,s9
	mv	a3,a0
	sub	a1,s0,a0
	li	a5,512
	mv	a4,s8
	mv	a0,s11
	sw	s9,-56(s8)
	sub	s2,s3,s0
	sw	s3,-52(s8)
	jal	ra,Rotate.constprop.1
	mv	a2,s9
	add	a1,s2,s9
	mv	a4,s10
	mv	a3,s0
	mv	a0,s11
	sw	s9,-96(s8)
	sw	s0,-92(s8)
	jal	ra,BinaryLast
	mv	s9,a0
	blt	a0,s3,lab327
	j	lab238
lab278: 	lw	a1,52(sp)
	lw	a2,64(sp)
	mv	a3,s10
	mv	a0,s11
	sw	a1,-136(s8)
	sw	a2,-132(s8)
	lw	s0,124(sp)
	jal	ra,InsertionSort
	lw	a5,108(sp)
	mv	s2,s0
	mv	s1,a5
	bge	s0,a5,lab328
	mv	s0,a5
lab331: 	lw	a3,100(sp)
	slli	a4,s2,0x3
	slli	a5,s1,0x3
	add	a4,s11,a4
	add	a5,s11,a5
	beq	a3,s1,lab329
lab337: 	lw	a2,0(a4)
	lw	a3,4(a4)
	lw	a1,4(a5)
	lw	a0,0(a5)
	sub	s3,s1,s0
	jalr	s10
	mv	a6,a0
	mv	a2,s2
	sub	a1,s0,s1
	li	a5,512
	mv	a4,s8
	mv	a3,s1
	mv	a0,s11
	beqz	a6,lab330
	addi	s1,s1,1
	blt	s2,s0,lab331
lab328: 	lw	a5,100(sp)
	lw	a4,120(sp)
	mv	s0,a5
	bge	a5,a4,lab332
	lw	s3,124(sp)
	mv	s2,a4
	mv	s1,a5
lab339: 	lw	a5,48(sp)
	add	a4,s1,a5
	add	a5,s2,a5
	slli	a4,a4,0x3
	slli	a5,a5,0x3
	add	a4,s11,a4
	add	a5,s11,a5
	beq	s3,s1,lab333
lab335: 	lw	a2,0(a4)
	lw	a3,4(a4)
	lw	a1,4(a5)
	lw	a0,0(a5)
	sub	s4,s0,s1
	jalr	s10
	mv	a6,a0
	mv	a3,s2
	li	a5,512
	mv	a4,s8
	mv	a2,s1
	mv	a1,s4
	mv	a0,s11
	beqz	a6,lab334
	addi	s1,s1,-1
	bge	s0,s2,lab332
	lw	a5,48(sp)
	add	a4,s1,a5
	add	a5,s2,a5
	slli	a4,a4,0x3
	slli	a5,a5,0x3
	add	a4,s11,a4
	add	a5,s11,a5
	bne	s3,s1,lab335
lab333: 	sub	s0,s0,s1
	mv	a1,s0
	addi	s0,s0,1
	li	a5,512
	mv	a4,s8
	mv	a2,s1
	mv	a3,s2
	mv	a0,s11
	sub	s0,s2,s0
	sw	s1,100(sp)
	sw	s1,-8(s8)
	sw	s2,-4(s8)
	jal	ra,Rotate.constprop.1
	bge	s1,s0,lab332
	lw	s1,100(sp)
lab336: 	sw	s0,-4(s8)
	mv	a3,s0
	li	a5,512
	addi	s0,s0,-1
	mv	a4,s8
	mv	a2,s1
	li	a1,0
	mv	a0,s11
	sw	s1,-8(s8)
	jal	ra,Rotate.constprop.1
	blt	s1,s0,lab336
	j	lab332
lab330: 	addi	s3,s3,1
	sw	s2,-16(s8)
	add	s2,s2,s3
	sw	s1,-12(s8)
	jal	ra,Rotate.constprop.1
	bge	s2,s1,lab328
	lw	a3,100(sp)
	slli	a4,s2,0x3
	slli	a5,s1,0x3
	mv	s0,s1
	add	a4,s11,a4
	add	a5,s11,a5
	bne	a3,s1,lab337
lab329: 	mv	a1,s0
	sub	s0,a3,s0
	addi	s0,s0,1
	mv	s3,a3
	li	a5,512
	mv	a4,s8
	mv	a2,s2
	sub	a1,a1,a3
	mv	a0,s11
	add	s0,s0,s2
	sw	s2,-16(s8)
	sw	a3,-12(s8)
	jal	ra,Rotate.constprop.1
	bge	s0,s3,lab328
lab338: 	sw	s0,-16(s8)
	mv	a2,s0
	li	a5,512
	addi	s0,s0,1
	mv	a4,s8
	mv	a3,s1
	li	a1,0
	mv	a0,s11
	sw	s1,-12(s8)
	jal	ra,Rotate.constprop.1
	blt	s0,s1,lab338
	j	lab328
lab334: 	addi	s4,s4,1
	sw	s2,-4(s8)
	sub	s2,s2,s4
	sw	s1,-8(s8)
	jal	ra,Rotate.constprop.1
	bge	s1,s2,lab332
	mv	s0,s1
	j	lab339
lab307: 	lw	a4,128(sp)
	mv	a3,a5
	add	a3,a3,s9
	add	a5,a4,s9
	slli	s2,a5,0x3
	sw	a5,64(sp)
	sub	a5,s3,a5
	sw	a3,88(sp)
	sw	a5,28(sp)
	add	s2,s11,s2
	blez	a4,lab340
	lw	a5,64(sp)
	lw	s1,32(sp)
	mv	s0,s6
	sw	a5,108(sp)
	lw	a5,128(sp)
	sw	s1,100(sp)
	sw	zero,36(sp)
	mv	a4,a5
	lw	a5,88(sp)
	sw	a5,52(sp)
	j	lab341
lab322: 	mv	s0,a5
	lw	a5,104(sp)
	bne	s0,a5,lab342
lab324: 	add	a4,a5,s1
	sw	a4,140(sp)
	lw	a4,32(sp)
	sw	s9,64(sp)
	sw	s9,52(sp)
	sub	a5,a4,a5
	sw	a5,44(sp)
	lw	a5,104(sp)
	sw	s9,108(sp)
	sw	a5,84(sp)
	lw	a5,32(sp)
	mv	a4,a5
	sw	a5,88(sp)
	lw	a5,140(sp)
	sub	a5,a5,s1
	sw	a5,36(sp)
	sub	a5,a4,a5
	sw	a5,100(sp)
	j	lab318
lab305: 	mv	s2,s6
	lw	s0,40(sp)
	mv	s6,s1
	mv	s4,a4
	lw	s1,36(sp)
	j	lab343
lab316: 	mv	s0,a5
	lw	a5,104(sp)
	bne	s0,a5,lab313
	j	lab344
lab308: 	slli	s2,s4,0x3
	add	s2,s11,s2
	li	s5,1
	blt	s4,s3,lab313
	lw	s6,112(sp)
lab348: 	lw	a2,8(s2)
	lw	a1,4(s2)
	lw	a0,0(s2)
	lw	a3,12(s2)
	addi	s1,s2,8
	jalr	s10
	bnez	a0,lab345
	lw	a2,0(s2)
	lw	a3,4(s2)
	lw	a0,8(s2)
	lw	a1,4(s1)
	jalr	s10
	beqz	a0,lab346
lab345: 	addi	a5,s5,1
	beq	s6,s5,lab347
	mv	s5,a5
lab346: 	addi	s4,s4,-1
	addi	s2,s2,-8
	bge	s4,s3,lab348
	lw	a5,104(sp)
	bne	s5,a5,lab313
lab351: 	lw	a2,32(sp)
	add	a4,a5,s9
	sw	a5,36(sp)
	sub	a3,a2,a5
	sw	a4,88(sp)
	sw	a3,52(sp)
	sw	a3,100(sp)
	sw	a4,108(sp)
	sw	a2,64(sp)
	mv	s1,s4
	mv	a5,a4
	j	lab349
lab282: 	li	s1,1
	j	lab350
lab229: 	lui	a4,0x1
	lui	a5,0xfffff
	addi	a4,a4,160 # 10a0 <WikiSort.constprop.0+0x4c0>
	add	a4,a4,a5
	addi	a5,sp,128
	add	a5,a4,a5
	mv	a2,a1
	sw	a5,28(sp)
	sw	zero,0(a5) # fffff000 <_stack+0xffef7000>
	sw	a2,4(a5)
	lui	t0,0x1
	add	sp,sp,t0
	lw	ra,348(sp)
	lw	s0,344(sp)
	lw	s1,340(sp)
	lw	s2,336(sp)
	lw	s3,332(sp)
	lw	s4,328(sp)
	lw	s5,324(sp)
	lw	s6,320(sp)
	lw	s7,316(sp)
	lw	s8,312(sp)
	lw	s10,304(sp)
	lw	s11,300(sp)
	mv	a3,s9
	lw	s9,308(sp)
	li	a1,0
	addi	sp,sp,352
	j	InsertionSort
lab347: 	mv	s5,a5
	lw	a5,104(sp)
	bne	s5,a5,lab313
	j	lab351
lab319: 	li	s0,1
	j	lab352
lab325: 	lw	a4,32(sp)
	sw	s0,84(sp)
	sw	s9,52(sp)
	sw	s9,64(sp)
	sw	s1,44(sp)
	sw	a5,88(sp)
	j	lab353
lab340: 	lw	a5,104(sp)
	sw	s9,44(sp)
	sw	a3,52(sp)
	sw	a5,84(sp)
	lw	a5,32(sp)
	sw	a5,100(sp)
	lw	a5,64(sp)
	sw	a5,108(sp)
	j	lab292
verify_benchmark:
	addi	sp,sp,-2032
	lui	a3,0x1
	lui	a4,0xfffff
	sw	ra,2028(sp)
	addi	a3,a3,-896 # c80 <WikiSort.constprop.0+0xa0>
	addi	sp,sp,-1200
	add	a3,a3,a4
	addi	a4,sp,16
	add	a4,a3,a4
	lui	a5,0x101
	lui	a3,0x1
	addi	a5,a5,-844 # 100cb4 <_bss_end+0x24>
	addi	a3,a3,-896 # c80 <WikiSort.constprop.0+0xa0>
	sw	a4,12(sp)
	add	a3,a5,a3
	addi	a4,a4,896 # fffff380 <_stack+0xffef7380>
lab354: 	lw	a6,0(a5)
	lw	a0,4(a5)
	lw	a1,8(a5)
	lw	a2,12(a5)
	sw	a6,0(a4)
	sw	a0,4(a4)
	sw	a1,8(a4)
	sw	a2,12(a4)
	addi	a5,a5,16
	addi	a4,a4,16
	bne	a5,a3,lab354
	lui	a2,0x1
	lui	a1,0xfffff
	addi	a2,a2,-896 # c80 <WikiSort.constprop.0+0xa0>
	addi	a1,a1,896 # fffff380 <_stack+0xffef7380>
	addi	a4,sp,16
	add	a5,a2,a1
	lui	a0,0x100
	add	a1,a5,a4
	mv	a0,a0
	jal	ra,memcmp
	addi	sp,sp,1200
	lw	ra,2028(sp)
	seqz	a0,a0
	addi	sp,sp,2032
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
rand_beebs:
	lui	a4,0x101
	lw	a0,-884(a4) # 100c8c <seed>
	lui	a5,0x41c65
	addi	a5,a5,-403 # 41c64e6d <_stack+0x41b5ce6d>
	mul	a0,a0,a5
	lui	a5,0x3
	addi	a5,a5,57 # 3039 <WikiSort+0x505>
	add	a0,a0,a5
	slli	a0,a0,0x1
	srli	a0,a0,0x1
	sw	a0,-884(a4)
	srli	a0,a0,0x10
	ret
srand_beebs:
	lui	a5,0x101
	sw	a0,-884(a5) # 100c8c <seed>
	ret
init_heap_beebs:
	andi	a5,a1,3
	bnez	a5,lab355
	lui	a5,0x101
	add	a1,a0,a1
	sw	a0,-888(a5) # 100c88 <heap_ptr>
	lui	a5,0x101
	sw	a1,-892(a5) # 100c84 <heap_end>
	lui	a5,0x101
	sw	zero,-896(a5) # 100c80 <heap_requested>
	ret
lab355: 	lui	a3,0x102
	lui	a2,0x102
	lui	a0,0x102
	addi	sp,sp,-16
	addi	a3,a3,-1684 # 10196c <__func__.0+0x10>
	addi	a2,a2,-1700 # 10195c <__func__.0>
	li	a1,65
	addi	a0,a0,-1652 # 10198c <__func__.0+0x30>
	sw	ra,12(sp)
	jal	ra,__assert_func
check_heap_beebs:
	lui	a5,0x101
	lw	a4,-896(a5) # 100c80 <heap_requested>
	lui	a5,0x101
	lw	a5,-892(a5) # 100c84 <heap_end>
	add	a0,a0,a4
	sltu	a0,a5,a0
	xori	a0,a0,1
	ret
malloc_beebs:
	mv	a5,a0
	beqz	a0,lab356
	lui	a2,0x101
	lw	a0,-888(a2) # 100c88 <heap_ptr>
	lui	a3,0x101
	lw	a1,-896(a3) # 100c80 <heap_requested>
	add	a4,a0,a5
	andi	a6,a4,3
	add	a5,a5,a1
	bnez	a6,lab357
	sw	a5,-896(a3)
	lui	a5,0x101
	lw	a5,-892(a5) # 100c84 <heap_end>
	bltu	a5,a4,lab356
lab358: 	sw	a4,-888(a2)
	ret
lab357: 	li	a1,4
	sub	a1,a1,a6
	add	a5,a5,a1
	sw	a5,-896(a3)
	lui	a5,0x101
	lw	a5,-892(a5) # 100c84 <heap_end>
	add	a4,a4,a1
	bgeu	a5,a4,lab358
lab356: 	li	a0,0
	ret
calloc_beebs:
	mul	a2,a0,a1
	beqz	a2,lab359
	lui	a0,0x101
	lw	a5,-888(a0) # 100c88 <heap_ptr>
	lui	a1,0x101
	lw	a4,-896(a1) # 100c80 <heap_requested>
	add	a3,a5,a2
	andi	a7,a3,3
	add	a4,a2,a4
	bnez	a7,lab360
	sw	a4,-896(a1)
	lui	a4,0x101
	lw	a4,-892(a4) # 100c84 <heap_end>
	bltu	a4,a3,lab359
lab362: 	sw	a3,-888(a0)
	beqz	a5,lab361
	addi	sp,sp,-16
	li	a1,0
	mv	a0,a5
	sw	ra,12(sp)
	jal	ra,memset
	lw	ra,12(sp)
	addi	sp,sp,16
	ret
lab360: 	li	a6,4
	sub	a6,a6,a7
	add	a4,a4,a6
	sw	a4,-896(a1)
	lui	a4,0x101
	lw	a4,-892(a4) # 100c84 <heap_end>
	add	a3,a3,a6
	bgeu	a4,a3,lab362
lab359: 	li	a5,0
lab361: 	mv	a0,a5
	ret
realloc_beebs:
	mv	a5,a0
	beqz	a0,lab363
	beqz	a1,lab363
	lui	a6,0x101
	lw	a0,-888(a6) # 100c88 <heap_ptr>
	lui	a2,0x101
	lw	a4,-896(a2) # 100c80 <heap_requested>
	add	a3,a0,a1
	andi	a7,a3,3
	add	a4,a1,a4
	bnez	a7,lab364
	sw	a4,-896(a2)
	lui	a4,0x101
	lw	a4,-892(a4) # 100c84 <heap_end>
	bltu	a4,a3,lab363
lab368: 	sw	a3,-888(a6)
	beqz	a0,lab363
	addi	a4,a5,1
	sub	a4,a0,a4
	or	a3,a5,a0
	sltiu	a4,a4,3
	andi	a3,a3,3
	xori	a4,a4,1
	seqz	a3,a3
	and	a4,a4,a3
	beqz	a4,lab365
	addi	a4,a1,-1
	sltiu	a4,a4,7
	bnez	a4,lab365
	andi	a6,a1,-4
	mv	a4,a5
	mv	a3,a0
	add	a6,a6,a5
lab366: 	lw	a2,0(a4)
	addi	a4,a4,4
	addi	a3,a3,4
	sw	a2,-4(a3)
	bne	a4,a6,lab366
	andi	a4,a1,-4
	beq	a1,a4,lab367
	add	a3,a5,a4
	lbu	a6,0(a3)
	add	a2,a0,a4
	addi	a3,a4,1
	sb	a6,0(a2)
	bgeu	a3,a1,lab367
	add	a2,a5,a3
	lbu	a2,0(a2)
	add	a3,a0,a3
	addi	a4,a4,2
	sb	a2,0(a3)
	bgeu	a4,a1,lab367
	add	a5,a5,a4
	lbu	a5,0(a5)
	add	a4,a0,a4
	sb	a5,0(a4)
	ret
lab364: 	li	t1,4
	sub	a7,t1,a7
	add	a4,a4,a7
	sw	a4,-896(a2)
	lui	a4,0x101
	lw	a4,-892(a4) # 100c84 <heap_end>
	add	a3,a3,a7
	bgeu	a4,a3,lab368
lab363: 	li	a0,0
lab367: 	ret
lab365: 	mv	a4,a0
	add	a1,a5,a1
lab369: 	lbu	a3,0(a5)
	addi	a5,a5,1
	addi	a4,a4,1
	sb	a3,-1(a4)
	bne	a5,a1,lab369
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
acos:
	li	a0,0
	li	a1,0
	ret
atan:
	li	a0,0
	li	a1,0
	ret
cos:
	li	a0,0
	li	a1,0
	ret
sin:
	li	a0,0
	li	a1,0
	ret
pow:
	li	a0,0
	li	a1,0
	ret
sqrt:
	li	a0,0
	li	a1,0
	ret
sqrtf:
	li	a0,0
	ret
floor:
	li	a0,0
	li	a1,0
	ret
floorf:
	li	a0,0
	ret
exp:
	li	a0,0
	li	a1,0
	ret
log:
	li	a0,0
	li	a1,0
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

array1:
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
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
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

config_mem_words_ca4:
	.2byte	0x4c4
	.4byte	0x0000
	.2byte	0x320
	.4byte	0x0000
	.2byte	0x324
	.4byte	0x0000
	.2byte	0x3b8
	.4byte	0x0000
	.2byte	0x30c
	.4byte	0x0000
	.2byte	0x310
	.4byte	0x0000
	.2byte	0x318
	.4byte	0x0000
	.2byte	0x440
	.4byte	0x0000
	.2byte	0x494
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x1
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x2
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0xd
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x12
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.4byte	0x00000013
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x1a
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.byte	0x1f, 0x00, 0x00, 0x00, 0xe8, 0x03
	.4byte	0x0000
	.2byte	0x20
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.4byte	0x00000023
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x24
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x25
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x2e
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x31
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.4byte	0x00000037
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x3d
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x3e
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x42
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x48
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x49
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x4a
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.4byte	0x4b
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x4c
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x4d
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x51
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x52
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.4byte	0x53
	.2byte	0x3e8
	.4byte	0x0000
	.4byte	0x57
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x59
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.4byte	0x5b
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x5c
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.byte	0x5f, 0x00, 0x00, 0x00, 0xe8, 0x03
	.4byte	0x0000
	.4byte	0x00000063
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x65
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x69
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x6c
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x6d
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x72
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.4byte	0x77
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x78
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x80
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x89
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.4byte	0x8f
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x90
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.4byte	0x00000097
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x9e
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0xa1
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0xa2
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0xa5
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0xa9
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0xb5
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0xb6
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.4byte	0xbb
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0xbc
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0xbe
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.4byte	0xc3
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0xc4
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0xc6
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0xc8
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0xc9
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0xcd
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0xce
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.4byte	0xd3
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0xd4
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0xd5
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0xd6
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.4byte	0xd7
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0xd9
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0xdd
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.byte	0xdf, 0x00, 0x00, 0x00, 0xe8, 0x03
	.4byte	0x0000
	.2byte	0xe1
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0xe2
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.4byte	0x000000e3
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0xe9
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0xf2
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0xf5
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0xf9
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0xfa
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x10a
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x10e
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.4byte	0x10f
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x111
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x112
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x118
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.byte	0x1f, 0x01, 0x00, 0x00, 0xe8, 0x03
	.4byte	0x0000
	.4byte	0x00000123
	.2byte	0x3e8
	.4byte	0x0000
	.4byte	0x127
	.2byte	0x3e8
	.4byte	0x0000
	.4byte	0x12b
	.2byte	0x3e8
	.4byte	0x0000
	.4byte	0x12f
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x130
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x138
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x148
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x14a
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x14d
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.4byte	0x153
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x156
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x15a
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x15e
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x169
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.4byte	0x173
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x178
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x17a
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x17e
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x180
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x181
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x186
	.4byte	0x0000
	.2byte	0x3e8
	.4byte	0x0000
	.2byte	0x18c
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x5
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.4byte	0x7
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x8
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.4byte	0xb
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x10
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x14
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x15
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x16
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x1d
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x22
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.4byte	0x27
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x28
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x29
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x2a
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.4byte	0x2f
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x36
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.8byte	0x3e90000003f
	.2byte	0x44
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.4byte	0x47
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x4e
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x54
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x55
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x5d
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x60
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x61
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.4byte	0x00000067
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x68
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.4byte	0x0000006b
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x75
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x81
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.4byte	0x8b
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x8c
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x94
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x9c
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0xa0
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.4byte	0xa7
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0xac
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0xae
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.4byte	0xaf
	.2byte	0x3e9
	.4byte	0x0000
	.4byte	0x000000b3
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0xb9
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0xba
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0xc1
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0xc2
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.4byte	0xcf
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0xd0
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0xd8
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.4byte	0xdb
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0xe0
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0xe4
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0xe5
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.4byte	0xeb
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0xed
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0xf0
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0xf6
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0xfc
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0xff
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x100
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x101
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.4byte	0x00000103
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x104
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x105
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x109
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.4byte	0x10b
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x10d
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.4byte	0x00000113
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x11e
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x120
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x121
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x126
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x12d
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x12e
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x134
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x135
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x13a
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x142
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.4byte	0x143
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x145
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x146
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.4byte	0x147
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x14e
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x151
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x155
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.4byte	0x15b
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x160
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x165
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x168
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.4byte	0x16b
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x16d
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x16e
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x171
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.4byte	0x177
	.2byte	0x3e9
	.4byte	0x0000
	.4byte	0x17b
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x17d
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x189
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x18a
	.4byte	0x0000
	.2byte	0x3e9
	.4byte	0x0000
	.2byte	0x18e
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x9
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x11
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.4byte	0x00000017
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x18
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x1e
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x21
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x26
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.4byte	0x2b
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x2d
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x35
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x39
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.4byte	0x3b
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x3c
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x40
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x45
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x46
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.4byte	0x4f
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x58
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x5e
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x62
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x64
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x6e
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.4byte	0x0000006f
	.2byte	0x3ea
	.4byte	0x0000
	.4byte	0x00000073
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x76
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.4byte	0x0000007b
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x7d
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x7f
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x82
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.4byte	0x00000083
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x86
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x88
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x8a
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x8e
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x92
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x95
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x96
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x98
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x99
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x9d
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.4byte	0x000000a3
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0xa6
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0xa8
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0xaa
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.4byte	0xab
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0xad
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0xb0
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0xb1
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0xb4
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.4byte	0x000000b7
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0xb8
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0xbd
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.8byte	0x3ea000000bf
	.2byte	0xc5
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0xca
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.4byte	0xcb
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0xcc
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0xd2
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0xda
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0xdc
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0xe8
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0xec
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0xee
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0xf1
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.4byte	0xf3
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0xf4
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.4byte	0xfb
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0xfd
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0xfe
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x102
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x108
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x110
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x115
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.4byte	0x00000117
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x11a
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.4byte	0x11b
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x11c
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x122
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x124
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x128
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x129
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x12a
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x12c
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x132
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.4byte	0x00000133
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x136
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.4byte	0x00000137
	.2byte	0x3ea
	.4byte	0x0000
	.4byte	0x13b
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x13c
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.8byte	0x3ea0000013f
	.2byte	0x141
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x144
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.4byte	0x14b
	.2byte	0x3ea
	.4byte	0x0000
	.4byte	0x14f
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x154
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x158
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x15d
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x161
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x162
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x166
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x16a
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x16c
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x172
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x176
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x17c
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x17f
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x182
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x185
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.4byte	0x187
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x188
	.4byte	0x0000
	.2byte	0x3ea
	.4byte	0x0000
	.2byte	0x18d
	.4byte	0x0000
	.4byte	0x3eb
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x3eb
	.4byte	0x00000003
	.4byte	0x3eb
	.2byte	0x4
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x6
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0xa
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0xc
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0xe
	.4byte	0x0000
	.4byte	0x3eb
	.4byte	0x0000000f
	.4byte	0x3eb
	.2byte	0x19
	.4byte	0x0000
	.4byte	0x3eb
	.4byte	0x1b
	.4byte	0x3eb
	.2byte	0x1c
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x2c
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x30
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x32
	.4byte	0x0000
	.4byte	0x3eb
	.4byte	0x00000033
	.4byte	0x3eb
	.2byte	0x34
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x38
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x3a
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x41
	.4byte	0x0000
	.4byte	0x3eb
	.4byte	0x43
	.4byte	0x3eb
	.2byte	0x50
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x56
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x5a
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x66
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x6a
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x70
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x71
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x74
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x79
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x7a
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x7c
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x7e
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x84
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x85
	.4byte	0x0000
	.4byte	0x3eb
	.4byte	0x87
	.4byte	0x3eb
	.2byte	0x8d
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x91
	.4byte	0x0000
	.4byte	0x3eb
	.4byte	0x00000093
	.4byte	0x3eb
	.2byte	0x9a
	.4byte	0x0000
	.4byte	0x3eb
	.4byte	0x9b
	.4byte	0x3eb
	.byte	0x9f, 0x00, 0x00, 0x00, 0xeb, 0x03
	.4byte	0x0000
	.2byte	0xa4
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0xb2
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0xc0
	.4byte	0x0000
	.4byte	0x3eb
	.4byte	0xc7
	.4byte	0x3eb
	.2byte	0xd1
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0xde
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0xe6
	.4byte	0x0000
	.4byte	0x3eb
	.4byte	0x000000e7
	.4byte	0x3eb
	.2byte	0xea
	.4byte	0x0000
	.4byte	0x3eb
	.4byte	0x000000ef
	.4byte	0x3eb
	.4byte	0xf7
	.4byte	0x3eb
	.2byte	0xf8
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x106
	.4byte	0x0000
	.4byte	0x3eb
	.4byte	0x107
	.4byte	0x3eb
	.2byte	0x10c
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x114
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x116
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x119
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x11d
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x125
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x131
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x139
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x13d
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x13e
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x140
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x149
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x14c
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x150
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x152
	.4byte	0x0000
	.4byte	0x3eb
	.4byte	0x157
	.4byte	0x3eb
	.2byte	0x159
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x15c
	.4byte	0x0000
	.4byte	0x3eb
	.byte	0x5f, 0x01, 0x00, 0x00, 0xeb, 0x03
	.4byte	0x0000
	.4byte	0x00000163
	.4byte	0x3eb
	.2byte	0x164
	.4byte	0x0000
	.4byte	0x3eb
	.4byte	0x00000167
	.4byte	0x3eb
	.4byte	0x0000016f
	.4byte	0x3eb
	.2byte	0x170
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x174
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x175
	.4byte	0x0000
	.4byte	0x3eb
	.2byte	0x179
	.4byte	0x0000
	.4byte	0x3eb
	.4byte	0x00000183
	.4byte	0x3eb
	.2byte	0x184
	.4byte	0x0000
	.4byte	0x3eb
	.4byte	0x18b
	.4byte	0x3eb
	.4byte	0x18f
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
