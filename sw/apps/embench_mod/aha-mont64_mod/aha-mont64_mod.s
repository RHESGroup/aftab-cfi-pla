	.text
	.globl  main
	.type  main, @function

mulul64:
	mul	a6,a1,a2
	mulhu	t1,a0,a2
	mul	a7,a0,a3
	add	t1,a6,t1
	sltu	a6,t1,a6
	mulhu	t3,a1,a2
	add	t1,a7,t1
	sw	t1,4(a5)
	sltu	a7,t1,a7
	add	a6,a6,t3
	mul	t1,a1,a3
	mulhu	t3,a0,a3
	add	a6,t1,a6
	sltu	t1,a6,t1
	mulhu	a1,a1,a3
	add	a7,a7,t3
	add	a7,a6,a7
	sltu	a6,a7,a6
	mul	a0,a0,a2
	add	t1,t1,a1
	add	a6,a6,t1
	sw	a0,0(a5)
	sw	a7,0(a4)
	sw	a6,4(a4)
	ret
modul64:
	addi	sp,sp,-16
	sw	s0,12(sp)
	li	t3,0
	li	t0,64
lab2: 	srli	a7,a0,0x1f
	slli	a6,a1,0x1
	or	a6,a7,a6
	srai	t1,a1,0x1f
	srli	t4,a2,0x1f
	srli	t5,a3,0x1f
	slli	a7,a3,0x1
	slli	a0,a0,0x1
	or	a7,t4,a7
	or	a0,t5,a0
	or	t4,t1,a6
	mv	a1,a6
	addi	t3,t3,1
	slli	a2,a2,0x1
	or	t1,t1,a0
	mv	a3,a7
	bltu	t4,a5,lab0
	sub	t6,a0,a4
	addi	t5,a2,1
	sltu	s0,a0,t6
	sltu	t2,t5,a2
	sub	a6,a6,a5
	bne	a5,t4,lab1
	bltu	t1,a4,lab0
lab1: 	mv	a0,t6
	sub	a1,a6,s0
	mv	a2,t5
	add	a3,t2,a7
lab0: 	bne	t3,t0,lab2
	lw	s0,12(sp)
	addi	sp,sp,16
	ret
montmul:
	mul	t3,a1,a2
	mv	t0,a3
	addi	sp,sp,-16
	sw	s0,12(sp)
	mulhu	t4,a0,a2
	mul	a3,a0,a3
	add	t4,t3,t4
	sltu	t3,t4,t3
	mul	t5,a0,a2
	add	t4,a3,t4
	sltu	a3,t4,a3
	mul	t6,t4,a6
	mulhu	a2,a1,a2
	mul	t1,a7,t5
	add	t3,t3,a2
	mulhu	a7,a6,t5
	add	t1,t1,t6
	mul	a6,a6,t5
	add	t1,t1,a7
	mulhu	a0,a0,t0
	mul	a2,a1,t0
	add	a3,a3,a0
	mul	a7,t1,a4
	add	a2,t3,a2
	add	a0,a2,a3
	sltu	t3,a2,t3
	sltu	t6,a0,a2
	mulhu	a1,a1,t0
	mulhu	s0,a6,a4
	add	t3,t3,a1
	add	t3,t6,t3
	mul	a3,a6,a5
	add	s0,a7,s0
	sltu	a2,s0,a7
	mul	t2,t1,a5
	add	s0,a3,s0
	sltu	a3,s0,a3
	mulhu	t6,t1,a4
	add	a1,t2,a0
	sltu	t2,a1,t2
	mul	a7,a6,a4
	add	a2,a2,t6
	add	a2,a1,a2
	sltu	t6,a2,a1
	mulhu	a6,a6,a5
	add	t0,a7,t5
	sltu	a7,t0,a7
	add	a7,a7,t4
	add	a7,a7,s0
	mulhu	t1,t1,a5
	add	a3,a3,a6
	add	a3,a2,a3
	sltu	a2,a3,a2
	add	t1,t1,t3
	add	t2,t2,t1
	add	a6,t6,t2
	add	a2,a2,a6
	bltu	a7,t4,lab3
	mv	a1,a3
	mv	a6,a2
	beq	t4,a7,lab4
lab12: 	xor	a2,a6,t3
	xor	a3,a1,a0
	or	a3,a3,a2
	seqz	a3,a3
	li	a2,1
	bltu	a7,t4,lab5
	beq	t4,a7,lab6
	li	a2,0
lab5: 	and	a3,a3,a2
	li	a2,1
	bltu	a6,t3,lab7
	beq	t3,a6,lab8
	li	a2,0
lab7: 	li	a0,1
	bltu	a6,a5,lab9
	beq	a5,a6,lab10
lab11: 	or	a2,a2,a0
	or	a3,a3,a2
	zext.b	a3,a3
	neg	a0,a3
	lw	s0,12(sp)
	mv	a3,a0
	and	a0,a0,a4
	sub	a0,a1,a0
	and	a5,a3,a5
	sltu	a1,a1,a0
	sub	a5,a6,a5
	sub	a1,a5,a1
	addi	sp,sp,16
	ret
lab10: 	bgeu	a1,a4,lab11
lab9: 	li	a0,0
	j	lab11
lab4: 	bgeu	t0,t5,lab12
lab3: 	addi	a1,a3,1
	sltu	a3,a1,a3
	add	a6,a3,a2
	j	lab12
lab6: 	bltu	t0,t5,lab5
	li	a2,0
	j	lab5
lab8: 	bltu	a1,a0,lab7
	li	a2,0
	j	lab7
benchmark_body.constprop.0:
	addi	sp,sp,-112
	lui	a5,0x100
	lui	a4,0x100
	lw	a0,8(a5) # 100008 <in_b>
	lw	a6,16(a4) # 100010 <in_a>
	sw	s8,72(sp)
	lw	s8,20(a4)
	sw	s5,84(sp)
	lw	s5,12(a5)
	lui	a5,0x100
	mulhu	a3,a6,a0
	sw	s0,104(sp)
	sw	s11,60(sp)
	lw	s0,4(a5) # 100004 <in_m+0x4>
	lw	s11,0(a5)
	sw	s3,92(sp)
	sw	s9,68(sp)
	sw	s10,64(sp)
	sw	ra,108(sp)
	sw	s1,100(sp)
	mul	a5,s8,a0
	sw	s2,96(sp)
	sw	s4,88(sp)
	sw	s6,80(sp)
	sw	s7,76(sp)
	sw	a0,16(sp)
	sw	a6,20(sp)
	li	s10,423
	li	s3,64
	lui	s9,0x80000
	mul	a4,a6,s5
	add	a3,a5,a3
	sltu	a5,a3,a5
	mulhu	a1,s8,a0
	add	a3,a4,a3
	sw	a3,24(sp)
	sltu	a3,a3,a4
	mulhu	a2,a6,s5
	add	a5,a5,a1
	mul	a4,s8,s5
	add	a3,a3,a2
	add	a4,a5,a4
	mulhu	a2,s8,s5
	add	a3,a4,a3
	sltu	a5,a4,a5
	sw	a3,28(sp)
	sltu	a4,a3,a4
	mul	a3,a6,a0
	add	a5,a5,a2
	add	a5,a4,a5
	sw	a5,12(sp)
	sw	a3,8(sp)
lab35: 	lw	a2,8(sp)
	lw	a6,24(sp)
	lw	a4,28(sp)
	lw	a3,12(sp)
	li	a7,0
lab15: 	srli	a1,a4,0x1f
	slli	a5,a3,0x1
	or	a5,a1,a5
	srai	a0,a3,0x1f
	srli	t1,a2,0x1f
	srli	t3,a6,0x1f
	slli	a1,a6,0x1
	slli	a4,a4,0x1
	or	a1,t1,a1
	or	a4,t3,a4
	or	t1,a0,a5
	mv	a3,a5
	addi	a7,a7,1
	slli	a2,a2,0x1
	or	a0,a0,a4
	mv	a6,a1
	bltu	t1,s0,lab13
	sub	t4,a4,s11
	addi	t3,a2,1
	sltu	t6,a4,t4
	sltu	t5,t3,a2
	sub	a5,a5,s0
	bne	s0,t1,lab14
	bltu	a0,s11,lab13
lab14: 	mv	a4,t4
	sub	a3,a5,t6
	mv	a2,t3
	add	a6,t5,a1
lab13: 	bne	a7,s3,lab15
	mul	a2,a3,a4
	li	a7,0
	mulhu	a1,a4,a4
	mulhu	t1,a3,a4
	add	a5,a1,a2
	add	a6,a2,a5
	sltu	a5,a5,a1
	sltu	a1,a6,a2
	mul	a0,a3,a3
	add	a2,a5,t1
	add	a5,a1,t1
	mulhu	a3,a3,a3
	add	a1,a2,a0
	sltu	a2,a1,a2
	add	a5,a1,a5
	sltu	a1,a5,a1
	mul	a4,a4,a4
	add	a3,a2,a3
	add	a2,a1,a3
lab18: 	srli	a1,a5,0x1f
	slli	a3,a2,0x1
	or	a3,a1,a3
	srai	a0,a2,0x1f
	srli	t1,a4,0x1f
	srli	t3,a6,0x1f
	slli	a1,a6,0x1
	slli	a5,a5,0x1
	or	a1,t1,a1
	or	a5,t3,a5
	or	t1,a0,a3
	mv	a2,a3
	addi	a7,a7,1
	slli	a4,a4,0x1
	or	a0,a0,a5
	mv	a6,a1
	bltu	t1,s0,lab16
	sub	t4,a5,s11
	addi	t3,a4,1
	sltu	t6,a5,t4
	sltu	t5,t3,a4
	sub	a3,a3,s0
	bne	s0,t1,lab17
	bltu	a0,s11,lab16
lab17: 	mv	a5,t4
	sub	a2,a3,t6
	mv	a4,t3
	add	a6,t5,a1
lab16: 	bne	a7,s3,lab18
	mul	a3,a2,a5
	li	s2,0
	mulhu	a6,a5,a5
	add	a4,a6,a3
	mulhu	a0,a2,a5
	add	a1,a3,a4
	sltu	s1,a1,a3
	sltu	a4,a4,a6
	mul	a3,a2,a2
	add	a4,a4,a0
	add	s1,s1,a0
	mulhu	a2,a2,a2
	add	a3,a4,a3
	sltu	a4,a3,a4
	add	s1,a3,s1
	sltu	a3,s1,a3
	mul	a5,a5,a5
	add	a4,a4,a2
	add	s4,a3,a4
lab21: 	srli	a3,s1,0x1f
	slli	a4,s4,0x1
	or	a4,a3,a4
	srai	a2,s4,0x1f
	srli	a0,a5,0x1f
	srli	a6,a1,0x1f
	slli	a3,a1,0x1
	slli	s1,s1,0x1
	or	a3,a0,a3
	or	s1,a6,s1
	or	a0,a2,a4
	mv	s4,a4
	addi	s2,s2,1
	slli	a5,a5,0x1
	or	a2,a2,s1
	mv	a1,a3
	bltu	a0,s0,lab19
	sub	a7,s1,s11
	addi	a6,a5,1
	sltu	t3,s1,a7
	sltu	t1,a6,a5
	sub	a4,a4,s0
	bne	s0,a0,lab20
	bltu	a2,s11,lab19
lab20: 	mv	s1,a7
	sub	s4,a4,t3
	mv	a5,a6
	add	a1,t1,a3
lab19: 	bne	s2,s3,lab21
	li	a2,0
	li	a3,0
	li	a4,1
	li	a5,0
	j	lab22
lab24: 	addi	s2,s2,-1
	or	a4,t6,t5
	mv	a5,t4
	beqz	s2,lab23
lab22: 	xor	a0,s0,a5
	xor	a1,s11,a4
	slli	a7,a0,0x1f
	srli	a1,a1,0x1
	and	a6,s11,a4
	or	a1,a7,a1
	slli	t5,a3,0x1f
	srli	a0,a0,0x1
	srli	t3,a3,0x1
	srli	t4,a2,0x1
	and	a7,s0,a5
	add	a1,a6,a1
	andi	t1,a4,1
	or	a2,t5,t4
	add	a7,a7,a0
	srli	t4,a5,0x1
	slli	t6,a5,0x1f
	srli	t5,a4,0x1
	sltu	a6,a1,a6
	mv	a3,t3
	add	a0,t3,s9
	beqz	t1,lab24
	addi	s2,s2,-1
	mv	a4,a1
	add	a5,a6,a7
	mv	a3,a0
	bnez	s2,lab22
lab23: 	sw	a4,32(sp)
	sw	a5,36(sp)
	sw	a2,40(sp)
	sw	a3,44(sp)
	lw	a4,32(sp)
	lw	a0,20(sp)
	lw	a5,36(sp)
	lw	s6,40(sp)
	lw	s7,44(sp)
	li	a7,0
	mv	a1,s8
	li	a4,0
	li	a6,0
lab27: 	srli	a3,a0,0x1f
	slli	a5,a1,0x1
	or	a5,a3,a5
	srli	a2,a4,0x1f
	srai	a3,a1,0x1f
	srli	t3,a6,0x1f
	slli	t1,a6,0x1
	slli	a0,a0,0x1
	or	t1,a2,t1
	or	a0,t3,a0
	or	a2,a3,a5
	mv	a1,a5
	addi	a7,a7,1
	slli	a4,a4,0x1
	or	a3,a3,a0
	mv	a6,t1
	bltu	a2,s0,lab25
	sub	t4,a0,s11
	addi	t3,a4,1
	sltu	t6,a0,t4
	sltu	t5,t3,a4
	sub	a5,a5,s0
	bne	s0,a2,lab26
	bltu	a3,s11,lab25
lab26: 	mv	a0,t4
	sub	a1,a5,t6
	mv	a4,t3
	add	a6,t5,t1
lab25: 	bne	a7,s3,lab27
	lw	a2,16(sp)
	li	t3,0
	mv	a3,s5
	li	a4,0
	li	t1,0
lab30: 	srli	a6,a2,0x1f
	slli	a5,a3,0x1
	or	a5,a6,a5
	srli	a7,a4,0x1f
	srai	a6,a3,0x1f
	srli	t5,t1,0x1f
	slli	t4,t1,0x1
	slli	a2,a2,0x1
	or	t4,a7,t4
	or	a2,t5,a2
	or	a7,a6,a5
	mv	a3,a5
	addi	t3,t3,1
	slli	a4,a4,0x1
	or	a6,a6,a2
	mv	t1,t4
	bltu	a7,s0,lab28
	sub	t6,a2,s11
	addi	t5,a4,1
	sltu	t2,a2,t6
	sltu	t0,t5,a4
	sub	a5,a5,s0
	bne	s0,a7,lab29
	bltu	a6,s11,lab28
lab29: 	mv	a2,t6
	sub	a3,a5,t2
	mv	a4,t5
	add	t1,t0,t4
lab28: 	bne	t3,s3,lab30
	lw	a6,40(sp)
	lw	a7,44(sp)
	mv	a4,s11
	mv	a5,s0
	jal	ra,montmul
	lw	a6,40(sp)
	lw	a7,44(sp)
	mv	a2,a0
	mv	a3,a1
	mv	a4,s11
	mv	a5,s0
	jal	ra,montmul
	lw	a6,40(sp)
	lw	a7,44(sp)
	mv	a2,a0
	mv	a3,a1
	mv	a5,s0
	mv	a4,s11
	jal	ra,montmul
	lw	t3,32(sp)
	lw	t4,36(sp)
	mul	a2,a1,t3
	mulhu	a6,a0,t3
	mulhu	a3,a1,t3
	add	a6,a2,a6
	sltu	a2,a6,a2
	mul	t1,a0,t4
	add	a3,a2,a3
	mulhu	a7,a0,t4
	add	a6,t1,a6
	sltu	t1,a6,t1
	mul	a2,a1,t4
	add	a7,t1,a7
	mulhu	a1,a1,t4
	add	a2,a3,a2
	sltu	a3,a2,a3
	add	a5,a2,a7
	sltu	a2,a5,a2
	mul	a0,a0,t3
	add	a3,a3,a1
	add	a3,a2,a3
lab33: 	srli	a2,a5,0x1f
	slli	a4,a3,0x1
	or	a4,a2,a4
	srli	a1,a0,0x1f
	srai	a2,a3,0x1f
	srli	t1,a6,0x1f
	slli	a7,a6,0x1
	slli	a5,a5,0x1
	or	a7,a1,a7
	or	a5,t1,a5
	or	a1,a2,a4
	mv	a3,a4
	addi	s2,s2,1
	slli	a0,a0,0x1
	or	a2,a2,a5
	mv	a6,a7
	bltu	a1,s0,lab31
	sub	t3,a5,s11
	addi	t1,a0,1
	sltu	t5,a5,t3
	sltu	t4,t1,a0
	sub	a4,a4,s0
	bne	s0,a1,lab32
	bltu	a2,s11,lab31
lab32: 	mv	a5,t3
	sub	a3,a4,t5
	mv	a0,t1
	add	a6,t4,a7
lab31: 	bne	s2,s3,lab33
	beq	s1,a5,lab34
lab36: 	li	a0,1
lab37: 	addi	s10,s10,-1
	bnez	s10,lab35
	lw	ra,108(sp)
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
lab34: 	bne	s4,a3,lab36
	mul	a5,s7,s11
	mul	a4,s0,s6
	mulhu	a3,s11,s6
	add	a4,a4,a5
	mul	a5,s11,s6
	add	a4,a4,a3
	neg	a4,a4
	neg	a0,a5
	snez	a5,a5
	sub	a5,a4,a5
	xori	a0,a0,1
	or	a0,a0,a5
	snez	a0,a0
	j	lab37
benchmark_body.isra.0:
	blez	a0,lab38
	lui	a5,0x100
	lw	t3,0(a5) # 100000 <in_m>
	lw	t1,4(a5)
	addi	sp,sp,-32
	sw	s0,28(sp)
	sw	s1,24(sp)
	sw	s2,20(sp)
	sw	s3,16(sp)
	mv	s2,a0
	li	s1,0
	lui	s0,0x80000
lab42: 	li	a7,64
	li	a2,0
	li	a3,0
	li	a4,1
	li	a5,0
	j	lab39
lab41: 	addi	a7,a7,-1
	mv	a4,a6
	add	a5,a1,a0
	mv	a3,t5
	beqz	a7,lab40
lab39: 	xor	a0,t1,a5
	xor	a1,t3,a4
	slli	a6,a0,0x1f
	srli	a1,a1,0x1
	or	a1,a6,a1
	and	a6,t3,a4
	slli	t2,a3,0x1f
	and	t6,t1,a5
	srli	t5,a3,0x1
	srli	t0,a2,0x1
	add	a6,a1,a6
	srli	a0,a0,0x1
	andi	t4,a4,1
	or	a2,t2,t0
	add	a0,a0,t6
	mv	a3,t5
	sltu	a1,a6,a1
	srli	t6,a5,0x1
	slli	t2,a5,0x1f
	srli	t0,a4,0x1
	add	t5,t5,s0
	bnez	t4,lab41
	addi	a7,a7,-1
	or	a4,t2,t0
	mv	a5,t6
	bnez	a7,lab39
lab40: 	sw	a4,0(sp)
	sw	a5,4(sp)
	sw	a2,8(sp)
	sw	a3,12(sp)
	lw	a4,0(sp)
	lw	a5,4(sp)
	lw	a4,8(sp)
	lw	a5,12(sp)
	lw	a4,8(sp)
	lw	a5,12(sp)
	lw	a4,8(sp)
	lw	a5,12(sp)
	lw	a4,8(sp)
	lw	a5,12(sp)
	lw	a4,0(sp)
	lw	a5,4(sp)
	addi	s1,s1,1
	bne	s1,s2,lab42
	lw	s0,28(sp)
	lw	s1,24(sp)
	lw	s2,20(sp)
	lw	s3,16(sp)
	addi	sp,sp,32
	ret
lab38: 	ret
xbinGCD:
	or	a6,a0,a1
	beqz	a6,lab43
	addi	sp,sp,-48
	sw	s0,44(sp)
	sw	s1,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	sw	s4,28(sp)
	sw	s5,24(sp)
	sw	s6,20(sp)
	sw	s7,16(sp)
	sw	s8,12(sp)
	mv	s0,a0
	mv	s1,a1
	li	t1,0
	li	t2,0
	li	a6,1
	li	a7,0
	j	lab44
lab46: 	or	t3,s3,t5
	or	a6,s7,s6
	mv	a7,s5
	beqz	t3,lab45
lab44: 	xor	t4,a7,a3
	xor	t3,a6,a2
	slli	t5,t4,0x1f
	srli	t3,t3,0x1
	or	t3,t5,t3
	srli	s3,s0,0x1
	slli	t5,s1,0x1f
	slli	s2,t2,0x1f
	and	t6,a6,a2
	or	s3,t5,s3
	srli	t5,s1,0x1
	srli	s1,t1,0x1
	or	t1,s2,s1
	add	s4,t3,t6
	srli	t6,t2,0x1
	and	s0,a7,a3
	mv	t2,t6
	srli	t4,t4,0x1
	add	t6,t1,a0
	andi	t0,a6,1
	add	t4,t4,s0
	srli	s5,a7,0x1
	slli	s7,a7,0x1f
	srli	s6,a6,0x1
	sltu	t3,s4,t3
	sltu	s8,t6,t1
	add	s2,t2,a1
	mv	s0,s3
	mv	s1,t5
	beqz	t0,lab46
	add	a7,t3,t4
	or	t3,s3,t5
	mv	a6,s4
	mv	t1,t6
	add	t2,s8,s2
	bnez	t3,lab44
lab45: 	sw	a6,0(a4)
	sw	a7,4(a4)
	lw	s0,44(sp)
	sw	t1,0(a5)
	sw	t2,4(a5)
	lw	s1,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	lw	s4,28(sp)
	lw	s5,24(sp)
	lw	s6,20(sp)
	lw	s7,16(sp)
	lw	s8,12(sp)
	addi	sp,sp,48
	ret
lab43: 	li	a6,1
	sw	a6,0(a4)
	li	a7,0
	sw	a7,4(a4)
	sw	a0,0(a5)
	sw	a1,4(a5)
	ret
warm_caches:
	j	benchmark_body.isra.0
benchmark:
	j	benchmark_body.constprop.0
initialise_benchmark:
	lui	a2,0x100
	lw	a0,64(a2) # 100040 <_bss_end+0x28>
	lw	a1,68(a2)
	lui	a3,0x100
	lw	a2,72(a3) # 100048 <_bss_end+0x30>
	lw	a3,76(a3)
	lui	a5,0x100
	lui	a4,0x100
	sw	a0,0(a5) # 100000 <in_m>
	sw	a1,4(a5)
	lui	a5,0x100
	sw	a2,8(a5) # 100008 <in_b>
	sw	a3,12(a5)
	lw	a2,80(a4) # 100050 <_bss_end+0x38>
	lw	a3,84(a4)
	lui	a5,0x100
	sw	a2,16(a5) # 100010 <in_a>
	sw	a3,20(a5)
	ret
verify_benchmark:
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


	.bss

in_m:
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
in_b:
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
in_a:
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000


	.section .rodata

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
