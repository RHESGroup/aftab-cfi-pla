	.text
	.globl  main
	.type  main, @function

minver.part.0:
	addi	sp,sp,-2032
	sw	ra,2028(sp)
	sw	s0,2024(sp)
	sw	s1,2020(sp)
	sw	s2,2016(sp)
	sw	s3,2012(sp)
	sw	s4,2008(sp)
	sw	s5,2004(sp)
	sw	s6,2000(sp)
	sw	s7,1996(sp)
	sw	s8,1992(sp)
	sw	s9,1988(sp)
	sw	s10,1984(sp)
	sw	s11,1980(sp)
	addi	sp,sp,-48
	sw	a1,12(sp)
	blez	a0,lab0
	addi	a4,sp,16
	mv	s3,a0
	sw	a4,4(sp)
	li	a5,0
lab1: 	sw	a5,0(a4)
	addi	a5,a5,1
	addi	a4,a4,4
	bne	a5,s3,lab1
	lui	a5,0x100
	lw	a5,352(a5) # 100160 <__clz_tab+0x100>
	lw	s10,4(sp)
	lui	s8,0x100
	addi	s7,s8,480 # 1001e0 <a>
	addi	s1,s8,480
	addi	s5,s8,480
	sw	a5,8(sp)
	addi	s8,s8,480
	li	s0,0
	li	s6,0
	li	s2,0
	li	s11,1
lab19: 	bge	s2,s3,lab2
	lw	s0,0(s7)
	li	a1,0
	mv	a0,s0
	jal	ra,__gesf2
	bgez	a0,lab3
	lui	a5,0x80000
	xor	s0,a5,s0
lab3: 	li	a1,0
	mv	a0,s0
	jal	ra,__gesf2
	li	s4,0
	blez	a0,lab4
	mv	s4,s0
	mv	s6,s2
lab4: 	addi	s9,s2,1
	bge	s9,s3,lab2
	lw	s0,12(s7)
	li	a1,0
	mv	a0,s0
	jal	ra,__gesf2
	bgez	a0,lab5
	lui	a5,0x80000
	xor	s0,a5,s0
lab5: 	mv	a1,s0
	mv	a0,s4
	jal	ra,__lesf2
	bgez	a0,lab6
	mv	s4,s0
	mv	s6,s9
lab6: 	addi	s9,s2,2
	bge	s9,s3,lab2
	lw	s0,24(s7)
	li	a1,0
	mv	a0,s0
	jal	ra,__gesf2
	bgez	a0,lab7
	lui	a5,0x80000
	xor	s0,a5,s0
lab7: 	mv	a1,s4
	mv	a0,s0
	jal	ra,__gesf2
	blez	a0,lab2
	mv	s6,s9
lab2: 	slli	s9,s6,0x1
	add	a5,s9,s6
	add	a5,a5,s2
	slli	a5,a5,0x2
	add	a5,s5,a5
	lw	s4,0(a5) # 80000000 <_stack+0x7fef0000>
	li	a1,0
	mv	a0,s4
	jal	ra,__gesf2
	mv	a1,s4
	bgez	a0,lab8
	lui	a5,0x80000
	xor	a1,a5,s4
lab8: 	lw	a0,12(sp)
	jal	ra,__gesf2
	bgez	a0,lab9
	bne	s2,s6,lab10
	lw	a0,8(sp)
	mv	a1,s4
	jal	ra,__mulsf3
	sw	a0,8(sp)
lab23: 	lw	a0,0(s1)
	mv	a1,s4
	jal	ra,__divsf3
	sw	a0,0(s1)
	mv	s9,a0
	beq	s3,s11,lab11
lab25: 	lw	a0,4(s1)
	mv	a1,s4
	jal	ra,__divsf3
	sw	a0,4(s1)
	li	a5,2
	bge	a5,s3,lab11
	lw	a0,8(s1)
	mv	a1,s4
	jal	ra,__divsf3
	sw	a0,8(s1)
lab11: 	beqz	s2,lab12
	lw	s0,0(s8)
	li	a1,0
	mv	a0,s0
	jal	ra,__eqsf2
	bnez	a0,lab13
lab22: 	beq	s3,s11,lab14
	beq	s2,s11,lab15
	lw	s0,12(s8)
	li	a1,0
	mv	a0,s0
	jal	ra,__eqsf2
	bnez	a0,lab16
lab26: 	li	a5,2
	bge	a5,s3,lab14
	beq	s2,a5,lab14
	lw	s0,24(s8)
	li	a1,0
	mv	a0,s0
	jal	ra,__eqsf2
	bnez	a0,lab17
lab14: 	lui	a5,0x100
	lw	a0,352(a5) # 100160 <__clz_tab+0x100>
	mv	a1,s4
	addi	s7,s7,16
	jal	ra,__divsf3
	sw	a0,-16(s7)
	addi	a0,s2,1
	addi	s8,s8,4
	addi	s1,s1,12
	addi	s10,s10,4
	beq	s3,a0,lab18
	mv	s2,a0
	j	lab19
lab13: 	mv	a1,s0
	mv	a0,s9
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,0(s5)
	jal	ra,__subsf3
	sw	a0,0(s5)
	beq	s3,s11,lab20
	beq	s2,s11,lab21
	lw	a1,4(s1)
	mv	a0,s0
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,4(s5)
	jal	ra,__subsf3
	sw	a0,4(s5)
lab20: 	lui	a5,0x80000
	mv	a1,s4
	xor	a0,a5,s0
	jal	ra,__divsf3
	sw	a0,0(s8)
	j	lab22
lab10: 	add	a5,s9,s6
	slli	a4,s6,0x2
	addi	a3,sp,16
	slli	a5,a5,0x2
	addi	a4,a4,2000
	add	a4,a4,a3
	add	a5,s5,a5
	lw	a1,-2000(a4)
	lw	a2,0(a5) # 80000000 <_stack+0x7fef0000>
	lui	a0,0x80000
	lw	a3,0(s10)
	xor	a0,a0,s0
	lw	s0,0(s1)
	sw	a1,0(s10)
	sw	a2,0(s1)
	sw	a0,8(sp)
	sw	a3,-2000(a4)
	sw	s0,0(a5)
	beq	s3,s11,lab23
	lw	a4,4(a5)
	lw	s0,4(s1)
	sw	a4,4(s1)
	sw	s0,4(a5)
	li	a4,2
	beq	s3,a4,lab24
	lw	a4,8(a5)
	lw	s0,8(s1)
	sw	a4,8(s1)
	sw	s0,8(a5)
lab24: 	lw	a0,0(s1)
	mv	a1,s4
	jal	ra,__divsf3
	mv	s9,a0
	sw	a0,0(s1)
	j	lab25
lab12: 	beq	s3,s11,lab14
	lw	s0,12(s8)
	li	a1,0
	mv	a0,s0
	jal	ra,__eqsf2
	beqz	a0,lab26
	lw	a1,4(s1)
	mv	a0,s0
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,16(s5)
	jal	ra,__subsf3
	sw	a0,16(s5)
	li	a5,2
	bge	a5,s3,lab27
lab29: 	lw	a1,8(s1)
	mv	a0,s0
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,20(s5)
	jal	ra,__subsf3
	sw	a0,20(s5)
lab27: 	lui	a5,0x80000
	mv	a1,s4
	xor	a0,a5,s0
	jal	ra,__divsf3
	sw	a0,12(s8)
	j	lab26
lab15: 	li	a5,2
	beq	s3,a5,lab14
	lw	s0,24(s8)
	li	a1,0
	mv	a0,s0
	jal	ra,__eqsf2
	beqz	a0,lab14
lab30: 	lw	a1,0(s1)
	mv	a0,s0
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,24(s5)
	jal	ra,__subsf3
	sw	a0,24(s5)
	beq	s2,s11,lab28
lab31: 	lw	a1,4(s1)
	mv	a0,s0
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,28(s5)
	jal	ra,__subsf3
	sw	a0,28(s5)
lab28: 	lw	a1,8(s1)
	mv	a0,s0
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,32(s5)
	jal	ra,__subsf3
	lui	a4,0x80000
	mv	a5,a0
	mv	a1,s4
	xor	a0,a4,s0
	sw	a5,32(s5)
	jal	ra,__divsf3
	sw	a0,24(s8)
	j	lab14
lab16: 	lw	a1,0(s1)
	mv	a0,s0
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,12(s5)
	jal	ra,__subsf3
	sw	a0,12(s5)
	lw	a1,4(s1)
	mv	a0,s0
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,16(s5)
	jal	ra,__subsf3
	sw	a0,16(s5)
	li	a5,2
	bge	a5,s3,lab27
	li	a5,2
	bne	s2,a5,lab29
	j	lab27
lab17: 	bnez	s2,lab30
	j	lab31
lab9: 	li	a0,1
lab37: 	lw	a4,8(sp)
	lui	a5,0x100
	sw	a4,588(a5) # 10024c <det>
	addi	sp,sp,48
	lw	ra,2028(sp)
	lw	s0,2024(sp)
	lw	s1,2020(sp)
	lw	s2,2016(sp)
	lw	s3,2012(sp)
	lw	s4,2008(sp)
	lw	s5,2004(sp)
	lw	s6,2000(sp)
	lw	s7,1996(sp)
	lw	s8,1992(sp)
	lw	s9,1988(sp)
	lw	s10,1984(sp)
	lw	s11,1980(sp)
	addi	sp,sp,2032
	ret
lab18: 	li	a7,0
	li	t3,1
	li	t4,3
lab36: 	lw	a5,4(sp)
	lw	a1,0(a5)
lab33: 	beq	a1,a7,lab32
lab34: 	slli	a5,a1,0x1
	add	a5,a5,a1
	slli	a4,a1,0x4
	slli	a2,a1,0x2
	add	a5,a5,a7
	mv	a3,a1
	add	a4,s5,a4
	addi	a1,sp,16
	slli	a5,a5,0x2
	addi	a2,a2,2000
	lw	t1,0(a4) # 80000000 <_stack+0x7fef0000>
	add	a5,s5,a5
	add	a2,a2,a1
	lw	a6,0(a5)
	lw	a1,-2000(a2)
	sw	a3,-2000(a2)
	lw	a3,4(sp)
	sw	t1,0(a5)
	sw	a6,0(a4)
	sw	a1,0(a3)
	beq	a0,t3,lab33
	lw	a3,0(a5)
	sw	a6,0(a5)
	sw	a3,0(a4)
	bne	a0,t4,lab33
	lw	a2,0(a5)
	sw	a3,0(a5)
	sw	a2,0(a4)
	bne	a1,a7,lab34
lab32: 	lw	a4,4(sp)
	addi	a5,a7,1
	addi	a4,a4,4
	sw	a4,4(sp)
	beq	s2,a7,lab35
	mv	a7,a5
	j	lab36
lab0: 	lui	a5,0x100
	lw	a5,352(a5) # 100160 <__clz_tab+0x100>
	sw	a5,8(sp)
lab35: 	li	a0,0
	j	lab37
lab21: 	li	a5,2
	beq	s3,a5,lab20
	lw	a1,8(s1)
	mv	a0,s0
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,8(s5)
	jal	ra,__subsf3
	sw	a0,8(s5)
	j	lab20
minver.part.0.constprop.0.isra.0:
	lui	a5,0x100
	lw	a5,352(a5) # 100160 <__clz_tab+0x100>
	addi	sp,sp,-2032
	sw	s0,2024(sp)
	sw	s3,2012(sp)
	sw	s4,2008(sp)
	sw	s6,2000(sp)
	sw	s7,1996(sp)
	sw	s8,1992(sp)
	sw	s11,1980(sp)
	sw	ra,2028(sp)
	sw	s1,2020(sp)
	sw	s2,2016(sp)
	sw	s5,2004(sp)
	sw	s9,1988(sp)
	sw	s10,1984(sp)
	addi	sp,sp,-48
	sw	a5,4(sp)
	lui	a5,0x100
	lw	a5,356(a5) # 100164 <__clz_tab+0x104>
	lui	s0,0x100
	addi	s11,sp,16
	sw	a5,12(sp)
	li	a5,1
	sw	a5,20(sp)
	li	a5,2
	addi	s6,s0,480 # 1001e0 <a>
	addi	s8,s0,480
	addi	s3,s0,480
	sw	s11,0(sp)
	sw	zero,16(sp)
	sw	a5,24(sp)
	addi	s0,s0,480
	li	s4,0
	li	s7,0
	j	lab38
lab54: 	lw	a0,4(sp)
	mv	a1,s2
	jal	ra,__mulsf3
	sw	a0,4(sp)
lab55: 	lw	a0,0(s0)
	mv	a1,s2
	jal	ra,__divsf3
	mv	s5,a0
	lw	a0,4(s0)
	mv	a1,s2
	sw	s5,0(s0)
	jal	ra,__divsf3
	mv	s1,a0
	lw	a0,8(s0)
	mv	a1,s2
	sw	s1,4(s0)
	jal	ra,__divsf3
	sw	a0,8(s0)
	sw	a0,8(sp)
	beqz	s4,lab39
	lw	s10,0(s8)
	li	a1,0
	mv	a0,s10
	jal	ra,__eqsf2
	bnez	a0,lab40
lab60: 	li	a5,1
	beq	s4,a5,lab41
	lw	s5,12(s8)
	li	a1,0
	mv	a0,s5
	jal	ra,__eqsf2
	bnez	a0,lab42
lab58: 	li	a5,2
	beq	s4,a5,lab43
lab57: 	lw	s1,24(s8)
	li	a1,0
	mv	a0,s1
	jal	ra,__eqsf2
	bnez	a0,lab44
lab43: 	lui	a5,0x100
	lw	a0,352(a5) # 100160 <__clz_tab+0x100>
	mv	a1,s2
	addi	s0,s0,12
	jal	ra,__divsf3
	sw	a0,0(s6)
	li	a5,3
	addi	s6,s6,16
	addi	s8,s8,4
	addi	s11,s11,4
	beq	s9,a5,lab45
	mv	s4,s9
lab38: 	lw	s1,0(s6)
	li	a1,0
	mv	a0,s1
	jal	ra,__gesf2
	bgez	a0,lab46
	lui	a5,0x80000
	xor	s1,a5,s1
lab46: 	li	a1,0
	mv	a0,s1
	jal	ra,__gesf2
	li	s2,0
	blez	a0,lab47
	mv	s2,s1
	mv	s7,s4
lab47: 	addi	s9,s4,1
	li	a5,3
	beq	s9,a5,lab48
	lw	s1,12(s6)
	li	a1,0
	mv	a0,s1
	jal	ra,__gesf2
	bgez	a0,lab49
	lui	a5,0x80000
	xor	s1,a5,s1
lab49: 	mv	a1,s2
	mv	a0,s1
	jal	ra,__gesf2
	blez	a0,lab50
	mv	s2,s1
	mv	s7,s9
lab50: 	li	a5,1
	beq	s4,a5,lab48
	lw	s1,24(s6)
	li	a1,0
	mv	a0,s1
	jal	ra,__gesf2
	bgez	a0,lab51
	lui	a5,0x80000
	xor	s1,a5,s1
lab51: 	mv	a1,s1
	mv	a0,s2
	jal	ra,__lesf2
	bgez	a0,lab48
	li	s7,2
lab48: 	slli	s5,s7,0x1
	add	a5,s5,s7
	add	a5,a5,s4
	slli	a5,a5,0x2
	add	a5,s3,a5
	lw	s2,0(a5) # 80000000 <_stack+0x7fef0000>
	li	a1,0
	mv	a0,s2
	jal	ra,__gesf2
	mv	a5,s2
	bgez	a0,lab52
	lui	a5,0x80000
	xor	a5,a5,s2
lab52: 	lw	a1,12(sp)
	mv	a0,a5
	jal	ra,__lesf2
	blez	a0,lab53
	beq	s7,s4,lab54
	add	s5,s5,s7
	slli	s5,s5,0x2
	add	s5,s3,s5
	lw	a3,0(s5)
	lw	a4,0(s0)
	slli	a5,s7,0x2
	sw	a3,0(s0)
	lw	a3,4(s5)
	sw	a4,0(s5)
	lw	a4,4(s0)
	addi	a2,sp,16
	sw	a3,4(s0)
	addi	a5,a5,2000 # 800007d0 <_stack+0x7fef07d0>
	add	a5,a5,a2
	lw	a2,8(s5)
	lw	a1,-2000(a5)
	sw	a4,4(s5)
	lw	a3,0(s11)
	lw	a4,8(s0)
	sw	a2,8(s0)
	lui	a2,0x80000
	sw	a1,0(s11)
	xor	a2,a2,s1
	sw	a2,4(sp)
	sw	a3,-2000(a5)
	sw	a4,8(s5)
	j	lab55
lab41: 	lw	s1,24(s8)
	li	a1,0
	mv	a0,s1
	jal	ra,__eqsf2
	beqz	a0,lab43
lab63: 	lw	a1,12(s3)
	mv	a0,s1
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,24(s3)
	jal	ra,__subsf3
	sw	a0,24(s3)
	li	a5,1
	beq	s4,a5,lab56
lab64: 	lw	a1,4(s3)
	mv	a0,s1
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,28(s3)
	jal	ra,__subsf3
	sw	a0,28(s3)
lab56: 	lw	a1,8(s0)
	mv	a0,s1
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,32(s3)
	jal	ra,__subsf3
	lui	a4,0x80000
	mv	a5,a0
	mv	a1,s2
	xor	a0,a4,s1
	sw	a5,32(s3)
	jal	ra,__divsf3
	sw	a0,24(s8)
	j	lab43
lab39: 	lw	s5,12(s8)
	li	a1,0
	mv	a0,s5
	jal	ra,__eqsf2
	beqz	a0,lab57
	mv	a1,s1
	mv	a0,s5
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,16(s3)
	jal	ra,__subsf3
	sw	a0,16(s3)
	lw	a1,8(s0)
	mv	a0,s5
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,20(s3)
	jal	ra,__subsf3
	sw	a0,20(s3)
lab61: 	lui	a5,0x80000
	mv	a1,s2
	xor	a0,a5,s5
	jal	ra,__divsf3
	sw	a0,12(s8)
	j	lab58
lab40: 	mv	a1,s10
	mv	a0,s5
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,0(s3)
	jal	ra,__subsf3
	sw	a0,0(s3)
	li	a4,1
	lw	a5,8(sp)
	mv	a1,s10
	beq	s4,a4,lab59
	mv	a0,s1
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,4(s3)
	jal	ra,__subsf3
	sw	a0,4(s3)
lab62: 	lui	a5,0x80000
	mv	a1,s2
	xor	a0,a5,s10
	jal	ra,__divsf3
	sw	a0,0(s8)
	j	lab60
lab42: 	lw	a1,0(s0)
	mv	a0,s5
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,12(s3)
	jal	ra,__subsf3
	sw	a0,12(s3)
	lw	a1,4(s0)
	mv	a0,s5
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,16(s3)
	jal	ra,__subsf3
	sw	a0,16(s3)
	j	lab61
lab59: 	mv	a0,a5
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,8(s3)
	jal	ra,__subsf3
	sw	a0,8(s3)
	j	lab62
lab44: 	bnez	s4,lab63
	j	lab64
lab45: 	li	a6,0
	li	t1,3
lab67: 	lw	a5,0(sp)
	lw	a1,0(a5) # 80000000 <_stack+0x7fef0000>
	beq	a1,a6,lab65
lab66: 	slli	a5,a1,0x1
	add	a5,a5,a1
	slli	a4,a1,0x4
	add	a5,a5,a6
	add	a4,s3,a4
	slli	a5,a5,0x2
	lw	a2,0(a4) # 80000000 <_stack+0x7fef0000>
	add	a5,s3,a5
	mv	a3,a1
	lw	a1,0(a5)
	sw	a2,0(a5)
	slli	a2,a3,0x2
	sw	a1,0(a4)
	lw	a0,0(a5)
	addi	a2,a2,2000 # 800007d0 <_stack+0x7fef07d0>
	sw	a1,0(a5)
	addi	a1,sp,16
	sw	a0,0(a4)
	add	a2,a2,a1
	lw	a7,0(a5)
	lw	a1,-2000(a2)
	sw	a0,0(a5)
	lw	a5,0(sp)
	sw	a3,-2000(a2)
	sw	a7,0(a4)
	sw	a1,0(a5)
	bne	a1,a6,lab66
lab65: 	lw	a5,0(sp)
	addi	a6,a6,1
	addi	a5,a5,4
	sw	a5,0(sp)
	bne	a6,t1,lab67
lab53: 	lw	a4,4(sp)
	lui	a5,0x100
	sw	a4,588(a5) # 10024c <det>
	addi	sp,sp,48
	lw	ra,2028(sp)
	lw	s0,2024(sp)
	lw	s1,2020(sp)
	lw	s2,2016(sp)
	lw	s3,2012(sp)
	lw	s4,2008(sp)
	lw	s5,2004(sp)
	lw	s6,2000(sp)
	lw	s7,1996(sp)
	lw	s8,1992(sp)
	lw	s9,1988(sp)
	lw	s10,1984(sp)
	lw	s11,1980(sp)
	addi	sp,sp,2032
	ret
benchmark_body.isra.0:
	addi	sp,sp,-112
	sw	ra,108(sp)
	sw	s0,104(sp)
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
	sw	a0,16(sp)
	blez	a0,lab68
	lui	a5,0x100
	lw	s6,360(a5) # 100168 <__clz_tab+0x108>
	lui	a5,0x100
	lw	a5,364(a5) # 10016c <__clz_tab+0x10c>
	lui	s1,0x100
	mv	s1,s1
	sw	a5,20(sp)
	lui	a5,0x100
	lw	a5,368(a5) # 100170 <__clz_tab+0x110>
	lw	s8,4(s1) # 100004 <a_ref+0x4>
	lw	s7,8(s1)
	sw	a5,24(sp)
	lui	a5,0x100
	lw	a5,372(a5) # 100174 <__clz_tab+0x114>
	lw	s9,0(s1)
	li	s5,0
	sw	a5,28(sp)
	lui	a5,0x100
	lw	a5,376(a5) # 100178 <__clz_tab+0x118>
	lui	s0,0x100
	mv	s11,s8
	sw	a5,32(sp)
	lui	a5,0x100
	lw	a5,380(a5) # 10017c <__clz_tab+0x11c>
	addi	s0,s0,480 # 1001e0 <a>
	mv	s8,s5
	sw	a5,36(sp)
	lui	a5,0x100
	lw	a5,384(a5) # 100180 <__clz_tab+0x120>
	mv	a4,s7
	sw	a5,40(sp)
	lui	a5,0x100
	lw	a5,388(a5) # 100184 <__clz_tab+0x124>
	sw	a5,44(sp)
lab69: 	lw	s7,12(s1)
	lw	s5,16(s1)
	lw	s10,20(s1)
	lw	s4,24(s1)
	lw	s3,28(s1)
	lw	s2,32(s1)
	sw	a4,8(s0)
	sw	a4,12(sp)
	sw	s9,0(s0)
	sw	s11,4(s0)
	sw	s7,12(s0)
	sw	s5,16(s0)
	sw	s10,20(s0)
	sw	s4,24(s0)
	sw	s3,28(s0)
	sw	s2,32(s0)
	jal	ra,minver.part.0.constprop.0.isra.0
	lw	a5,20(sp)
	lw	t4,0(s0)
	lw	t3,4(s0)
	lw	t1,8(s0)
	lw	a7,12(s0)
	lw	a6,16(s0)
	lw	a0,20(s0)
	lw	a1,24(s0)
	lw	a2,28(s0)
	lw	a3,32(s0)
	lw	a4,12(sp)
	sw	a5,76(s0)
	lw	a5,24(sp)
	sw	t4,36(s0)
	sw	t3,40(s0)
	sw	t1,44(s0)
	sw	a7,48(s0)
	sw	a6,52(s0)
	sw	a0,56(s0)
	sw	a1,60(s0)
	sw	a2,64(s0)
	sw	a3,68(s0)
	sw	s9,0(s0)
	sw	s11,4(s0)
	sw	a4,8(s0)
	sw	s7,12(s0)
	sw	s5,16(s0)
	sw	s10,20(s0)
	sw	s4,24(s0)
	sw	s3,28(s0)
	sw	s2,32(s0)
	sw	s6,72(s0)
	sw	a5,80(s0)
	lw	a5,28(sp)
	sw	s6,84(s0)
	addi	s8,s8,1
	sw	a5,88(s0)
	lw	a5,32(sp)
	sw	a5,92(s0)
	lw	a5,36(sp)
	sw	a5,96(s0)
	lw	a5,40(sp)
	sw	a5,100(s0)
	lw	a5,44(sp)
	sw	a5,104(s0)
	lw	a5,16(sp)
	bne	s8,a5,lab69
lab68: 	lw	ra,108(sp)
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
benchmark_body.constprop.0:
	addi	sp,sp,-96
	lui	a5,0x100
	sw	s6,64(sp)
	lw	s6,360(a5) # 100168 <__clz_tab+0x108>
	lui	a5,0x100
	lw	a5,364(a5) # 10016c <__clz_tab+0x10c>
	sw	s1,84(sp)
	lui	s1,0x100
	sw	a5,4(sp)
	lui	a5,0x100
	lw	a5,368(a5) # 100170 <__clz_tab+0x110>
	mv	s1,s1
	sw	s7,60(sp)
	sw	a5,8(sp)
	lui	a5,0x100
	lw	a5,372(a5) # 100174 <__clz_tab+0x114>
	lw	s7,8(s1) # 100008 <a_ref+0x8>
	sw	s8,56(sp)
	sw	a5,12(sp)
	lui	a5,0x100
	lw	a5,376(a5) # 100178 <__clz_tab+0x118>
	sw	s9,52(sp)
	lw	s8,4(s1)
	sw	a5,16(sp)
	lui	a5,0x100
	lw	a5,380(a5) # 10017c <__clz_tab+0x11c>
	lw	s9,0(s1)
	sw	s0,88(sp)
	sw	a5,20(sp)
	lui	a5,0x100
	lw	a5,384(a5) # 100180 <__clz_tab+0x120>
	sw	s5,68(sp)
	lui	s0,0x100
	sw	a5,24(sp)
	lui	a5,0x100
	lw	a5,388(a5) # 100184 <__clz_tab+0x124>
	li	s5,555
	sw	ra,92(sp)
	sw	a5,28(sp)
	sw	s2,80(sp)
	mv	a5,s7
	sw	s3,76(sp)
	sw	s4,72(sp)
	sw	s10,48(sp)
	sw	s11,44(sp)
	addi	s0,s0,480 # 1001e0 <a>
	mv	s7,s5
lab70: 	lw	s5,12(s1)
	lw	s11,16(s1)
	lw	s10,20(s1)
	lw	s4,24(s1)
	lw	s3,28(s1)
	lw	s2,32(s1)
	sw	a5,8(s0)
	sw	a5,0(sp)
	sw	s9,0(s0)
	sw	s8,4(s0)
	sw	s5,12(s0)
	sw	s11,16(s0)
	sw	s10,20(s0)
	sw	s4,24(s0)
	sw	s3,28(s0)
	sw	s2,32(s0)
	jal	ra,minver.part.0.constprop.0.isra.0
	lw	a4,32(s0)
	lw	t3,0(s0)
	lw	t1,4(s0)
	sw	a4,68(s0)
	lw	a4,4(sp)
	lw	a7,8(s0)
	lw	a6,12(s0)
	lw	a0,16(s0)
	lw	a1,20(s0)
	lw	a2,24(s0)
	lw	a3,28(s0)
	lw	a5,0(sp)
	sw	a4,76(s0)
	lw	a4,8(sp)
	sw	t3,36(s0)
	sw	t1,40(s0)
	sw	a7,44(s0)
	sw	a6,48(s0)
	sw	a0,52(s0)
	sw	a1,56(s0)
	sw	a2,60(s0)
	sw	a3,64(s0)
	sw	s9,0(s0)
	sw	s8,4(s0)
	sw	a5,8(s0)
	sw	s5,12(s0)
	sw	s11,16(s0)
	sw	s10,20(s0)
	sw	s4,24(s0)
	sw	s3,28(s0)
	sw	s2,32(s0)
	sw	s6,72(s0)
	sw	a4,80(s0)
	lw	a4,12(sp)
	sw	s6,84(s0)
	addi	s7,s7,-1
	sw	a4,88(s0)
	lw	a4,16(sp)
	sw	a4,92(s0)
	lw	a4,20(sp)
	sw	a4,96(s0)
	lw	a4,24(sp)
	sw	a4,100(s0)
	lw	a4,28(sp)
	sw	a4,104(s0)
	bnez	s7,lab70
	lw	ra,92(sp)
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
	lw	s10,48(sp)
	lw	s11,44(sp)
	li	a0,0
	addi	sp,sp,96
	ret
mmul:
	blez	a0,lab71
	addi	sp,sp,-48
	sw	s0,40(sp)
	sw	ra,44(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	mv	s0,a2
	blez	a2,lab72
	mv	s2,a3
	blez	a3,lab72
	mv	s3,a0
	li	a0,999
	bne	a2,a1,lab73
	lui	s1,0x100
	addi	s1,s1,480 # 1001e0 <a>
	lw	s6,0(s1)
	lui	s5,0x100
	lw	a1,392(s5) # 100188 <__clz_tab+0x128>
	mv	a0,s6
	jal	ra,__mulsf3
	li	a1,0
	jal	ra,__addsf3
	li	a5,1
	mv	s4,a0
	bge	a5,s0,lab74
	lui	a5,0x100
	lw	a1,396(a5) # 10018c <__clz_tab+0x12c>
	lw	a0,4(s1)
	jal	ra,__mulsf3
	mv	a1,s4
	jal	ra,__addsf3
	li	a5,2
	mv	s4,a0
	beq	s0,a5,lab75
	lw	a0,8(s1)
	li	a1,0
	jal	ra,__mulsf3
	mv	a1,a0
	mv	a0,s4
	jal	ra,__addsf3
	mv	s4,a0
lab75: 	sw	s4,72(s1)
	li	a5,1
	beq	s2,a5,lab76
	li	a1,0
	mv	a0,s6
	jal	ra,__mulsf3
	li	a1,0
	jal	ra,__addsf3
	lui	a5,0x100
	lw	a1,400(a5) # 100190 <__clz_tab+0x130>
	mv	s4,a0
	lw	a0,4(s1)
	jal	ra,__mulsf3
	mv	a1,s4
	jal	ra,__addsf3
	li	a5,2
	mv	s4,a0
	bge	a5,s0,lab77
	lw	a1,8(s1)
	mv	a0,a1
	jal	ra,__addsf3
	mv	a1,a0
	mv	a0,s4
	jal	ra,__addsf3
	mv	s4,a0
lab77: 	sw	s4,76(s1)
	li	s7,2
	bge	s7,s2,lab76
	mv	a1,s6
	mv	a0,s6
	jal	ra,__addsf3
	li	a1,0
	jal	ra,__addsf3
	mv	s4,a0
	lw	a0,4(s1)
	li	a1,0
	jal	ra,__mulsf3
	mv	a1,s4
	jal	ra,__addsf3
	mv	s4,a0
	bge	s7,s0,lab78
	lw	a1,392(s5)
	lw	a0,8(s1)
	jal	ra,__mulsf3
	mv	a1,a0
	mv	a0,s4
	jal	ra,__addsf3
	mv	s4,a0
lab78: 	sw	s4,80(s1)
lab76: 	li	s4,1
	li	a0,0
	beq	s3,s4,lab73
	lw	s7,12(s1)
	lw	a1,392(s5)
	mv	a0,s7
	jal	ra,__mulsf3
	li	a1,0
	jal	ra,__addsf3
	mv	s6,a0
	bge	s4,s0,lab79
	lui	a5,0x100
	lw	a1,396(a5) # 10018c <__clz_tab+0x12c>
	lw	a0,16(s1)
	jal	ra,__mulsf3
	mv	a1,s6
	jal	ra,__addsf3
	li	a5,2
	mv	s4,a0
	beq	s0,a5,lab80
	lw	a0,20(s1)
	li	a1,0
	jal	ra,__mulsf3
	mv	a1,a0
	mv	a0,s4
	jal	ra,__addsf3
	mv	s4,a0
lab80: 	sw	s4,84(s1)
	li	a5,1
	beq	s2,a5,lab81
	li	a1,0
	mv	a0,s7
	jal	ra,__mulsf3
	li	a1,0
	jal	ra,__addsf3
	lui	a5,0x100
	lw	a1,400(a5) # 100190 <__clz_tab+0x130>
	mv	s4,a0
	lw	a0,16(s1)
	jal	ra,__mulsf3
	mv	a1,s4
	jal	ra,__addsf3
	li	a5,2
	mv	s4,a0
	bge	a5,s0,lab82
	lw	a1,20(s1)
	mv	a0,a1
	jal	ra,__addsf3
	mv	a1,a0
	mv	a0,s4
	jal	ra,__addsf3
	mv	s4,a0
lab82: 	sw	s4,88(s1)
	li	s6,2
	bge	s6,s2,lab81
	mv	a1,s7
	mv	a0,s7
	jal	ra,__addsf3
	li	a1,0
	jal	ra,__addsf3
	mv	s4,a0
	lw	a0,16(s1)
	li	a1,0
	jal	ra,__mulsf3
	mv	a1,s4
	jal	ra,__addsf3
	mv	s4,a0
	bge	s6,s0,lab83
	lw	a1,392(s5)
	lw	a0,20(s1)
	jal	ra,__mulsf3
	mv	a1,a0
	mv	a0,s4
	jal	ra,__addsf3
	mv	s4,a0
lab83: 	sw	s4,92(s1)
lab81: 	li	s4,2
	beq	s3,s4,lab84
	lw	s6,24(s1)
	lw	a1,392(s5)
	mv	a0,s6
	jal	ra,__mulsf3
	li	a1,0
	jal	ra,__addsf3
	li	a5,1
	mv	s3,a0
	bge	a5,s0,lab85
	lui	a5,0x100
	lw	a1,396(a5) # 10018c <__clz_tab+0x12c>
	lw	a0,28(s1)
	jal	ra,__mulsf3
	mv	a1,s3
	jal	ra,__addsf3
	mv	s3,a0
	beq	s0,s4,lab86
	lw	a0,32(s1)
	li	a1,0
	jal	ra,__mulsf3
	mv	a1,a0
	mv	a0,s3
	jal	ra,__addsf3
	mv	s3,a0
lab86: 	sw	s3,96(s1)
	li	a5,1
	beq	s2,a5,lab84
	li	a1,0
	mv	a0,s6
	jal	ra,__mulsf3
	li	a1,0
	jal	ra,__addsf3
	lui	a5,0x100
	lw	a1,400(a5) # 100190 <__clz_tab+0x130>
	mv	s3,a0
	lw	a0,28(s1)
	jal	ra,__mulsf3
	mv	a1,s3
	jal	ra,__addsf3
	li	a5,2
	mv	s3,a0
	bge	a5,s0,lab87
	lw	a1,32(s1)
	mv	a0,a1
	jal	ra,__addsf3
	mv	a1,a0
	mv	a0,s3
	jal	ra,__addsf3
	mv	s3,a0
lab87: 	sw	s3,100(s1)
	li	s3,2
	bge	s3,s2,lab84
	mv	a1,s6
	mv	a0,s6
	jal	ra,__addsf3
	li	a1,0
	jal	ra,__addsf3
	mv	s2,a0
	lw	a0,28(s1)
	li	a1,0
	jal	ra,__mulsf3
	mv	a1,s2
	jal	ra,__addsf3
	mv	s2,a0
	bge	s3,s0,lab88
	lw	a1,392(s5)
	lw	a0,32(s1)
	jal	ra,__mulsf3
	mv	a1,a0
	mv	a0,s2
	jal	ra,__addsf3
	mv	s2,a0
lab88: 	sw	s2,104(s1)
lab84: 	li	a0,0
lab73: 	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	lw	s5,20(sp)
	lw	s6,16(sp)
	lw	s7,12(sp)
	addi	sp,sp,48
	ret
lab72: 	li	a0,999
	j	lab73
lab79: 	sw	a0,84(s1)
	beq	s2,s4,lab81
	li	a1,0
	mv	a0,s7
	jal	ra,__mulsf3
	li	a1,0
	jal	ra,__addsf3
	sw	a0,88(s1)
	li	a5,2
	beq	s2,a5,lab81
	mv	a1,s7
	mv	a0,s7
	jal	ra,__addsf3
	li	a1,0
	jal	ra,__addsf3
	mv	s4,a0
	j	lab83
lab71: 	li	a0,999
	ret
lab74: 	sw	a0,72(s1)
	beq	s2,a5,lab76
	li	a1,0
	mv	a0,s6
	jal	ra,__mulsf3
	li	a1,0
	jal	ra,__addsf3
	sw	a0,76(s1)
	li	a5,2
	beq	s2,a5,lab76
	mv	a1,s6
	mv	a0,s6
	jal	ra,__addsf3
	li	a1,0
	jal	ra,__addsf3
	mv	s4,a0
	sw	s4,80(s1)
	j	lab76
lab85: 	sw	a0,96(s1)
	beq	s2,a5,lab84
	li	a1,0
	mv	a0,s6
	jal	ra,__mulsf3
	li	a1,0
	jal	ra,__addsf3
	sw	a0,100(s1)
	beq	s2,s4,lab84
	mv	a1,s6
	mv	a0,s6
	jal	ra,__addsf3
	li	a1,0
	jal	ra,__addsf3
	mv	s2,a0
	sw	s2,104(s1)
	j	lab84
minver:
	addi	a4,a0,-2 # 7ffffffe <_stack+0x7feefffe>
	li	a5,498
	bltu	a5,a4,lab89
	addi	sp,sp,-16
	sw	s0,8(sp)
	li	a1,0
	mv	s0,a0
	mv	a0,a2
	sw	s1,4(sp)
	sw	ra,12(sp)
	mv	s1,a2
	jal	ra,__lesf2
	blez	a0,lab90
	mv	a0,s0
	lw	s0,8(sp)
	lw	ra,12(sp)
	mv	a1,s1
	lw	s1,4(sp)
	addi	sp,sp,16
	j	minver.part.0
lab90: 	lw	ra,12(sp)
	lw	s0,8(sp)
	lw	s1,4(sp)
	li	a0,999
	addi	sp,sp,16
	ret
lab89: 	li	a0,999
	ret
verify_benchmark:
	addi	sp,sp,-32
	sw	s0,24(sp)
	lui	s0,0x100
	sw	s2,16(sp)
	addi	s0,s0,480 # 1001e0 <a>
	lui	s2,0x100
	lw	a1,404(s2) # 100194 <__clz_tab+0x134>
	lw	a0,72(s0)
	sw	s1,20(sp)
	lui	s1,0x80000
	sw	ra,28(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	not	s1,s1
	jal	ra,__addsf3
	lui	s3,0x100
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	lw	s4,464(s3) # 1001d0 <__clz_tab+0x170>
	lw	s5,468(s3)
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ledf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,408(a5) # 100198 <__clz_tab+0x138>
	lw	a0,36(s0)
	jal	ra,__subsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ledf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,364(a5) # 10016c <__clz_tab+0x10c>
	lw	a0,76(s0)
	jal	ra,__subsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ledf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,412(a5) # 10019c <__clz_tab+0x13c>
	lw	a0,40(s0)
	jal	ra,__addsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ledf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,416(a5) # 1001a0 <__clz_tab+0x140>
	lw	a0,80(s0)
	jal	ra,__addsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ledf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,420(a5) # 1001a4 <__clz_tab+0x144>
	lw	a0,44(s0)
	jal	ra,__subsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ledf2
	bgez	a0,lab91
	lw	a1,404(s2)
	lw	a0,84(s0)
	jal	ra,__addsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ledf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,424(a5) # 1001a8 <__clz_tab+0x148>
	lw	a0,48(s0)
	jal	ra,__addsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ledf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,428(a5) # 1001ac <__clz_tab+0x14c>
	lw	a0,88(s0)
	jal	ra,__addsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ledf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,432(a5) # 1001b0 <__clz_tab+0x150>
	lw	a0,52(s0)
	jal	ra,__subsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ledf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,376(a5) # 100178 <__clz_tab+0x118>
	lw	a0,92(s0)
	lui	s1,0x80000
	not	s1,s1
	jal	ra,__subsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	mv	s2,s4
	mv	s3,s5
	jal	ra,__ledf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,436(a5) # 1001b4 <__clz_tab+0x154>
	lw	a0,56(s0)
	jal	ra,__subsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ledf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,440(a5) # 1001b8 <__clz_tab+0x158>
	lw	a0,96(s0)
	jal	ra,__addsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ledf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,444(a5) # 1001bc <__clz_tab+0x15c>
	lw	a0,60(s0)
	jal	ra,__subsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ledf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,384(a5) # 100180 <__clz_tab+0x120>
	lw	a0,100(s0)
	jal	ra,__subsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ledf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,448(a5) # 1001c0 <__clz_tab+0x160>
	lw	a0,64(s0)
	jal	ra,__addsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ledf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,452(a5) # 1001c4 <__clz_tab+0x164>
	lw	a0,104(s0)
	jal	ra,__addsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ledf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,456(a5) # 1001c8 <__clz_tab+0x168>
	lw	a0,68(s0)
	jal	ra,__subsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ledf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a0,588(a5) # 10024c <det>
	jal	ra,__extendsfdf2
	lui	a5,0x100
	lw	a2,472(a5) # 1001d8 <__clz_tab+0x178>
	lw	a3,476(a5)
	jal	ra,__adddf3
	jal	ra,__truncdfsf2
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s2
	mv	a3,s3
	jal	ra,__ledf2
	slti	a0,a0,0
lab92: 	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	lw	s2,16(sp)
	lw	s3,12(sp)
	lw	s4,8(sp)
	lw	s5,4(sp)
	addi	sp,sp,32
	ret
lab91: 	li	a0,0
	j	lab92
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
__adddf3:
	lui	a6,0x100
	addi	a6,a6,-1 # fffff <_min_stack+0xf7fff>
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
	bne	s1,a3,lab93
	blez	a6,lab94
	bnez	a7,lab95
	or	a3,a4,a2
	beqz	a3,lab96
	addi	a1,a6,-1
	bnez	a1,lab97
	add	a2,a0,a2
	add	a4,a5,a4
	sltu	a5,a2,a0
	add	a5,a4,a5
	mv	a0,a2
lab111: 	li	s0,1
	j	lab98
lab97: 	li	a3,2047
	bne	a6,a3,lab99
lab113: 	li	s0,2047
	j	lab100
lab95: 	li	a3,2047
	beq	s0,a3,lab100
	lui	a3,0x800
	or	a4,a4,a3
	mv	a1,a6
lab99: 	li	a3,56
	blt	a3,a1,lab101
	li	a3,31
	blt	a3,a1,lab102
	li	a6,32
	sub	a6,a6,a1
	sll	a3,a4,a6
	srl	a7,a2,a1
	sll	a6,a2,a6
	or	a3,a3,a7
	snez	a6,a6
	or	a3,a3,a6
	srl	a1,a4,a1
lab105: 	add	a3,a3,a0
	add	a1,a1,a5
	sltu	a5,a3,a0
	add	a5,a1,a5
	mv	a0,a3
lab98: 	lui	a4,0x800
	and	a4,a5,a4
	beqz	a4,lab100
	addi	s0,s0,1
	li	a4,2047
	beq	s0,a4,lab103
	lui	a4,0xff800
	addi	a4,a4,-1 # ff7fffff <_stack+0xff6effff>
	and	a5,a5,a4
	srli	a4,a0,0x1
	andi	a0,a0,1
	or	a4,a4,a0
	slli	a0,a5,0x1f
	or	a0,a0,a4
	srli	a5,a5,0x1
	j	lab100
lab102: 	addi	a3,a1,-32
	li	a7,32
	srl	a3,a4,a3
	li	a6,0
	beq	a1,a7,lab104
	li	a6,64
	sub	a6,a6,a1
	sll	a6,a4,a6
lab104: 	or	a6,a6,a2
	snez	a6,a6
	or	a3,a3,a6
lab106: 	li	a1,0
	j	lab105
lab101: 	or	a3,a4,a2
	snez	a3,a3
	j	lab106
lab94: 	beqz	a6,lab107
	sub	a1,a7,s0
	bnez	s0,lab108
	or	a3,a5,a0
	beqz	a3,lab109
	addi	a3,a1,-1
	bnez	a3,lab110
	add	a0,a0,a2
	add	a4,a5,a4
	sltu	a2,a0,a2
	add	a5,a4,a2
	j	lab111
lab110: 	li	a6,2047
	bne	a1,a6,lab112
lab114: 	mv	a5,a4
	mv	a0,a2
	j	lab113
lab108: 	li	a3,2047
	beq	a7,a3,lab114
	lui	a3,0x800
	or	a5,a5,a3
	mv	a3,a1
lab112: 	li	a1,56
	blt	a1,a3,lab115
	li	a1,31
	blt	a1,a3,lab116
	li	a6,32
	sub	a6,a6,a3
	sll	a1,a5,a6
	srl	t1,a0,a3
	sll	a6,a0,a6
	or	a1,a1,t1
	snez	a6,a6
	or	a1,a1,a6
	srl	a3,a5,a3
lab118: 	add	a0,a1,a2
	add	a3,a3,a4
	sltu	a2,a0,a2
	add	a5,a3,a2
	mv	s0,a7
	j	lab98
lab116: 	addi	a1,a3,-32 # 7fffe0 <_stack+0x6effe0>
	li	t1,32
	srl	a1,a5,a1
	li	a6,0
	beq	a3,t1,lab117
	li	a6,64
	sub	a6,a6,a3
	sll	a6,a5,a6
lab117: 	or	a6,a6,a0
	snez	a6,a6
	or	a1,a1,a6
lab119: 	li	a3,0
	j	lab118
lab115: 	or	a1,a5,a0
	snez	a1,a1
	j	lab119
lab107: 	addi	a3,s0,1
	andi	a1,a3,2046
	bnez	a1,lab120
	or	a3,a5,a0
	bnez	s0,lab121
	beqz	a3,lab122
	or	a3,a4,a2
	beqz	a3,lab100
	add	a2,a0,a2
	add	a4,a5,a4
	sltu	a5,a2,a0
	add	a5,a4,a5
	lui	a4,0x800
	and	a4,a5,a4
	mv	a0,a2
	beqz	a4,lab100
	lui	a4,0xff800
	addi	a4,a4,-1 # ff7fffff <_stack+0xff6effff>
	and	a5,a5,a4
	li	s0,1
lab100: 	andi	a4,a0,7
	beqz	a4,lab123
	andi	a4,a0,15
	li	a3,4
	beq	a4,a3,lab123
	addi	a4,a0,4
	sltu	a0,a4,a0
	add	a5,a5,a0
	mv	a0,a4
	j	lab123
lab121: 	beqz	a3,lab114
	or	a4,a4,a2
	beqz	a4,lab113
lab157: 	li	s1,0
	lui	a5,0x400
	li	a0,0
lab171: 	li	s0,2047
	j	lab123
lab120: 	li	a1,2047
	beq	a3,a1,lab124
	add	a2,a0,a2
	sltu	a0,a2,a0
	add	a4,a5,a4
	add	a4,a4,a0
	slli	a0,a4,0x1f
	srli	a2,a2,0x1
	or	a0,a0,a2
	srli	a5,a4,0x1
	mv	s0,a3
	j	lab100
lab93: 	blez	a6,lab125
	bnez	a7,lab126
	or	a3,a4,a2
	beqz	a3,lab96
	addi	a1,a6,-1
	bnez	a1,lab127
	sub	a2,a0,a2
	sub	a4,a5,a4
	sltu	a5,a0,a2
	sub	a5,a4,a5
	mv	a0,a2
lab140: 	li	s0,1
	j	lab128
lab127: 	li	a3,2047
	beq	a6,a3,lab113
lab132: 	li	a3,56
	blt	a3,a1,lab129
	li	a3,31
	blt	a3,a1,lab130
	li	a6,32
	sub	a6,a6,a1
	sll	a3,a4,a6
	srl	a7,a2,a1
	sll	a6,a2,a6
	or	a3,a3,a7
	snez	a6,a6
	or	a3,a3,a6
	srl	a1,a4,a1
lab134: 	sub	a3,a0,a3
	sub	a1,a5,a1
	sltu	a5,a0,a3
	sub	a5,a1,a5
	mv	a0,a3
lab128: 	lui	s2,0x800
	and	a4,a5,s2
	beqz	a4,lab100
	addi	s2,s2,-1 # 7fffff <_stack+0x6effff>
	and	s2,a5,s2
	mv	s3,a0
	j	lab131
lab126: 	li	a3,2047
	beq	s0,a3,lab100
	lui	a3,0x800
	or	a4,a4,a3
	mv	a1,a6
	j	lab132
lab130: 	addi	a3,a1,-32
	li	a7,32
	srl	a3,a4,a3
	li	a6,0
	beq	a1,a7,lab133
	li	a6,64
	sub	a6,a6,a1
	sll	a6,a4,a6
lab133: 	or	a6,a6,a2
	snez	a6,a6
	or	a3,a3,a6
lab135: 	li	a1,0
	j	lab134
lab129: 	or	a3,a4,a2
	snez	a3,a3
	j	lab135
lab125: 	beqz	a6,lab136
	sub	a6,a7,s0
	bnez	s0,lab137
	or	a1,a5,a0
	beqz	a1,lab138
	addi	a1,a6,-1
	bnez	a1,lab139
	sub	a0,a2,a0
	sub	a4,a4,a5
	sltu	a2,a2,a0
	sub	a5,a4,a2
	mv	s1,a3
	j	lab140
lab139: 	li	t1,2047
	bne	a6,t1,lab141
lab143: 	mv	a5,a4
	mv	a0,a2
	li	s0,2047
	j	lab142
lab137: 	li	a1,2047
	beq	a7,a1,lab143
	lui	a1,0x800
	or	a5,a5,a1
	mv	a1,a6
lab141: 	li	a6,56
	blt	a6,a1,lab144
	li	a6,31
	blt	a6,a1,lab145
	li	t1,32
	sub	t1,t1,a1
	srl	t3,a0,a1
	sll	a6,a5,t1
	sll	t1,a0,t1
	or	a6,a6,t3
	snez	t1,t1
	or	a0,a6,t1
	srl	a1,a5,a1
lab147: 	sub	a0,a2,a0
	sub	a1,a4,a1
	sltu	a2,a2,a0
	sub	a5,a1,a2
	mv	s0,a7
	mv	s1,a3
	j	lab128
lab145: 	addi	a6,a1,-32 # 7fffe0 <_stack+0x6effe0>
	li	t3,32
	srl	a6,a5,a6
	li	t1,0
	beq	a1,t3,lab146
	li	t1,64
	sub	t1,t1,a1
	sll	t1,a5,t1
lab146: 	or	t1,t1,a0
	snez	t1,t1
	or	a0,a6,t1
lab148: 	li	a1,0
	j	lab147
lab144: 	or	a0,a5,a0
	snez	a0,a0
	j	lab148
lab136: 	addi	a1,s0,1
	andi	a1,a1,2046
	bnez	a1,lab149
	or	a6,a5,a0
	or	a1,a4,a2
	bnez	s0,lab150
	bnez	a6,lab151
	beqz	a1,lab152
	mv	a5,a4
	mv	a0,a2
lab142: 	mv	s1,a3
	j	lab100
lab151: 	beqz	a1,lab100
	sub	a6,a0,a2
	sltu	a7,a0,a6
	sub	a1,a5,a4
	sub	a1,a1,a7
	lui	a7,0x800
	and	a7,a1,a7
	beqz	a7,lab153
	sub	a0,a2,a0
	sub	a4,a4,a5
	sltu	a2,a2,a0
	sub	a5,a4,a2
	j	lab142
lab153: 	or	a0,a6,a1
	beqz	a0,lab154
	mv	a5,a1
	mv	a0,a6
	j	lab100
lab150: 	bnez	a6,lab155
	beqz	a1,lab156
	mv	a5,a4
	mv	a0,a2
	mv	s1,a3
	j	lab113
lab155: 	beqz	a1,lab113
	j	lab157
lab149: 	sub	s3,a0,a2
	sltu	a1,a0,s3
	sub	s2,a5,a4
	sub	s2,s2,a1
	lui	a1,0x800
	and	a1,s2,a1
	beqz	a1,lab158
	sub	s3,a2,a0
	sub	s2,a4,a5
	sltu	a2,a2,s3
	sub	s2,s2,a2
	mv	s1,a3
lab131: 	beqz	s2,lab159
	mv	a0,s2
	jal	ra,__clzsi2
lab164: 	addi	a4,a0,-8
	li	a5,31
	blt	a5,a4,lab160
	li	a5,32
	sub	a5,a5,a4
	sll	s2,s2,a4
	srl	a5,s3,a5
	or	a5,a5,s2
	sll	a0,s3,a4
lab165: 	blt	a4,s0,lab161
	sub	a4,a4,s0
	addi	a2,a4,1
	li	a3,31
	blt	a3,a2,lab162
	li	a4,32
	sub	a4,a4,a2
	sll	a3,a5,a4
	srl	a1,a0,a2
	sll	a4,a0,a4
	or	a3,a3,a1
	snez	a4,a4
	or	a0,a3,a4
	srl	a5,a5,a2
lab167: 	li	s0,0
	j	lab100
lab158: 	or	a0,s3,s2
	bnez	a0,lab131
	li	a5,0
	li	s0,0
	j	lab163
lab159: 	mv	a0,s3
	jal	ra,__clzsi2
	addi	a0,a0,32
	j	lab164
lab160: 	addi	a5,a0,-40
	sll	a5,s3,a5
	li	a0,0
	j	lab165
lab162: 	addi	a4,a4,-31
	li	a1,32
	srl	a4,a5,a4
	li	a3,0
	beq	a2,a1,lab166
	li	a3,64
	sub	a3,a3,a2
	sll	a3,a5,a3
lab166: 	or	a3,a0,a3
	snez	a3,a3
	or	a0,a4,a3
	li	a5,0
	j	lab167
lab161: 	sub	s0,s0,a4
	lui	a4,0xff800
	addi	a4,a4,-1 # ff7fffff <_stack+0xff6effff>
	and	a5,a5,a4
	j	lab100
lab109: 	mv	a5,a4
	mv	a0,a2
	mv	s0,a1
	j	lab100
lab122: 	mv	a5,a4
	mv	a0,a2
	j	lab100
lab124: 	li	s0,2047
lab103: 	li	a5,0
	li	a0,0
lab123: 	lui	a4,0x800
	and	a4,a5,a4
	beqz	a4,lab168
	addi	s0,s0,1
	li	a4,2047
	beq	s0,a4,lab169
	lui	a4,0xff800
	addi	a4,a4,-1 # ff7fffff <_stack+0xff6effff>
	and	a5,a5,a4
lab168: 	slli	a3,a5,0x1d
	srli	a0,a0,0x3
	li	a4,2047
	or	a3,a3,a0
	srli	a5,a5,0x3
	bne	s0,a4,lab170
	or	a3,a3,a5
	li	a5,0
	beqz	a3,lab170
	lui	a5,0x80
	li	a3,0
	li	s1,0
lab170: 	slli	a4,s0,0x14
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
lab96: 	mv	s0,a6
	j	lab100
lab138: 	mv	a5,a4
	mv	a0,a2
	mv	s0,a6
	j	lab142
lab152: 	li	a5,0
	li	a0,0
lab163: 	li	s1,0
	j	lab123
lab154: 	li	a5,0
	j	lab163
lab156: 	li	a0,0
	li	s1,0
	lui	a5,0x400
	j	lab171
lab169: 	li	a5,0
	li	a0,0
	j	lab168
__ledf2:
	lui	a4,0x100
	addi	a4,a4,-1 # fffff <_min_stack+0xf7fff>
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
	bne	a6,t4,lab172
	or	t4,a7,a5
	beqz	t4,lab173
lab175: 	li	a0,2
	ret
lab172: 	bne	a1,t4,lab174
lab189: 	or	t4,a4,a2
	bnez	t4,lab175
lab174: 	bnez	a6,lab176
	or	a5,a7,a5
	seqz	a5,a5
	bnez	a1,lab177
lab191: 	or	a2,a4,a2
	beqz	a2,lab178
lab177: 	bnez	a5,lab179
lab190: 	bne	a0,a3,lab180
	bge	a1,a6,lab181
lab180: 	beqz	a0,lab182
lab185: 	li	a0,-1
	ret
lab179: 	li	a0,-1
	beqz	a3,lab183
	mv	a0,a3
	ret
lab181: 	bge	a6,a1,lab184
lab187: 	beqz	a0,lab185
lab183: 	ret
lab184: 	bltu	a4,a7,lab180
	bne	a7,a4,lab186
	bltu	t3,t1,lab180
	bltu	t1,t3,lab187
lab188: 	li	a0,0
	ret
lab182: 	li	a0,1
	ret
lab178: 	bnez	a5,lab188
	j	lab180
lab186: 	bltu	a7,a4,lab187
	j	lab188
lab173: 	beq	a1,a6,lab189
lab176: 	bnez	a1,lab190
	li	a5,0
	j	lab191
__addsf3:
	lui	a4,0x800
	addi	sp,sp,-16
	addi	a4,a4,-1 # 7fffff <_stack+0x6effff>
	and	a5,a4,a0
	sw	s0,8(sp)
	sw	s1,4(sp)
	srli	s0,a0,0x17
	srli	s1,a0,0x1f
	srli	a0,a1,0x17
	and	a4,a4,a1
	zext.b	s0,s0
	zext.b	a0,a0
	sw	ra,12(sp)
	sw	s2,0(sp)
	srli	a1,a1,0x1f
	slli	a5,a5,0x3
	slli	a4,a4,0x3
	sub	a3,s0,a0
	bne	s1,a1,lab192
	blez	a3,lab193
	bnez	a0,lab194
	beqz	a4,lab195
	addi	a3,s0,-1
	bnez	a3,lab196
lab205: 	add	a5,a5,a4
	li	s0,1
	j	lab197
lab196: 	li	a2,255
	bne	s0,a2,lab198
lab195: 	andi	a4,a5,7
	beqz	a4,lab199
	andi	a4,a5,15
	li	a3,4
	beq	a4,a3,lab199
	addi	a5,a5,4 # 400004 <_stack+0x2f0004>
	j	lab199
lab194: 	li	a2,255
	beq	s0,a2,lab195
	lui	a2,0x4000
	or	a4,a4,a2
lab198: 	li	a1,27
	li	a2,1
	blt	a1,a3,lab200
	li	a2,32
	srl	a1,a4,a3
	sub	a3,a2,a3
	sll	a4,a4,a3
	snez	a4,a4
	or	a2,a1,a4
lab200: 	add	a5,a5,a2
lab197: 	lui	a4,0x4000
	and	a4,a5,a4
	beqz	a4,lab195
	addi	s0,s0,1
	li	a4,255
	beq	s0,a4,lab201
	lui	a4,0x7e000
	andi	a3,a5,1
	addi	a4,a4,-1 # 7dffffff <_stack+0x7deeffff>
	srli	a5,a5,0x1
	and	a5,a5,a4
	or	a5,a5,a3
	j	lab195
lab193: 	beqz	a3,lab202
	sub	a3,a0,s0
	bnez	s0,lab203
	beqz	a5,lab204
	addi	a2,a3,-1 # 7fffff <_stack+0x6effff>
	beqz	a2,lab205
	li	a1,255
	bne	a3,a1,lab206
lab208: 	mv	a5,a4
	j	lab207
lab203: 	li	a2,255
	beq	a0,a2,lab208
	lui	a2,0x4000
	or	a5,a5,a2
	mv	a2,a3
lab206: 	li	a1,27
	li	a3,1
	blt	a1,a2,lab209
	li	a3,32
	sub	a3,a3,a2
	srl	a1,a5,a2
	sll	a5,a5,a3
	snez	a5,a5
	or	a3,a1,a5
lab209: 	add	a5,a3,a4
	mv	s0,a0
	j	lab197
lab202: 	addi	a3,s0,1
	andi	a2,a3,254
	bnez	a2,lab210
	bnez	s0,lab211
	beqz	a5,lab212
	beqz	a4,lab195
	add	a5,a5,a4
	lui	a4,0x4000
	and	a4,a5,a4
	beqz	a4,lab195
	lui	a4,0xfc000
	addi	a4,a4,-1 # fbffffff <_stack+0xfbeeffff>
	and	a5,a5,a4
	li	s0,1
	j	lab195
lab211: 	beqz	a5,lab208
lab234: 	beqz	a4,lab207
lab235: 	li	s1,0
	lui	a5,0x2000
	li	s0,255
	j	lab199
lab210: 	li	a2,255
	beq	a3,a2,lab213
	add	a4,a5,a4
	srli	a5,a4,0x1
lab238: 	mv	s0,a3
	j	lab195
lab192: 	blez	a3,lab214
	bnez	a0,lab215
	beqz	a4,lab195
	addi	a3,s0,-1
	bnez	a3,lab216
	sub	a5,a5,a4
lab225: 	li	s0,1
	j	lab217
lab216: 	li	a2,255
	beq	s0,a2,lab195
lab220: 	li	a1,27
	li	a2,1
	blt	a1,a3,lab218
	li	a2,32
	srl	a1,a4,a3
	sub	a3,a2,a3
	sll	a4,a4,a3
	snez	a4,a4
	or	a2,a1,a4
lab218: 	sub	a5,a5,a2
lab217: 	lui	s2,0x4000
	and	a4,a5,s2
	beqz	a4,lab195
	addi	s2,s2,-1 # 3ffffff <_stack+0x3eeffff>
	and	s2,a5,s2
	j	lab219
lab215: 	li	a2,255
	beq	s0,a2,lab195
	lui	a2,0x4000
	or	a4,a4,a2
	j	lab220
lab214: 	beqz	a3,lab221
	sub	a3,a0,s0
	bnez	s0,lab222
	beqz	a5,lab223
	addi	a2,a3,-1
	bnez	a2,lab224
	sub	a5,a4,a5
	mv	s1,a1
	j	lab225
lab224: 	li	a6,255
	bne	a3,a6,lab226
lab228: 	mv	a5,a4
	li	s0,255
	j	lab227
lab222: 	li	a2,255
	beq	a0,a2,lab228
	lui	a2,0x4000
	or	a5,a5,a2
	mv	a2,a3
lab226: 	li	a6,27
	li	a3,1
	blt	a6,a2,lab229
	li	a3,32
	sub	a3,a3,a2
	srl	a6,a5,a2
	sll	a5,a5,a3
	snez	a5,a5
	or	a3,a6,a5
lab229: 	sub	a5,a4,a3
	mv	s0,a0
	mv	s1,a1
	j	lab217
lab221: 	addi	a3,s0,1
	andi	a3,a3,254
	bnez	a3,lab230
	bnez	s0,lab231
	bnez	a5,lab232
	li	s1,0
	beqz	a4,lab199
	mv	a5,a4
lab227: 	mv	s1,a1
	j	lab195
lab232: 	beqz	a4,lab195
	sub	a3,a5,a4
	lui	a2,0x4000
	and	a2,a3,a2
	sub	a5,a4,a5
	bnez	a2,lab227
	li	a5,0
	beqz	a3,lab233
	mv	a5,a3
	j	lab195
lab231: 	bnez	a5,lab234
	beqz	a4,lab235
	mv	a5,a4
	mv	s1,a1
lab207: 	li	s0,255
	j	lab195
lab230: 	sub	s2,a5,a4
	lui	a3,0x4000
	and	a3,s2,a3
	beqz	a3,lab236
	sub	s2,a4,a5
	mv	s1,a1
lab219: 	mv	a0,s2
	jal	ra,__clzsi2
	addi	a0,a0,-5
	sll	s2,s2,a0
	blt	a0,s0,lab237
	sub	a0,a0,s0
	addi	a0,a0,1
	li	a4,32
	sub	a4,a4,a0
	srl	a5,s2,a0
	sll	s2,s2,a4
	snez	s2,s2
	or	a5,a5,s2
	li	s0,0
	j	lab195
lab236: 	bnez	s2,lab219
	li	a5,0
	li	s0,0
lab233: 	li	s1,0
	j	lab199
lab237: 	lui	a5,0xfc000
	addi	a5,a5,-1 # fbffffff <_stack+0xfbeeffff>
	sub	s0,s0,a0
	and	a5,s2,a5
	j	lab195
lab204: 	mv	a5,a4
	j	lab238
lab212: 	mv	a5,a4
	j	lab195
lab213: 	li	s0,255
lab201: 	li	a5,0
lab199: 	lui	a4,0x4000
	and	a4,a5,a4
	beqz	a4,lab239
	addi	s0,s0,1
	li	a4,255
	beq	s0,a4,lab240
	lui	a4,0xfc000
	addi	a4,a4,-1 # fbffffff <_stack+0xfbeeffff>
	and	a5,a5,a4
lab239: 	li	a4,255
	srli	a5,a5,0x3
	bne	s0,a4,lab241
	beqz	a5,lab241
	lui	a5,0x400
	li	s1,0
lab241: 	slli	s0,s0,0x17
	lui	a4,0x7f800
	slli	a5,a5,0x9
	and	s0,s0,a4
	srli	a5,a5,0x9
	or	s0,s0,a5
	slli	a0,s1,0x1f
	lw	ra,12(sp)
	or	a0,s0,a0
	lw	s0,8(sp)
	lw	s1,4(sp)
	lw	s2,0(sp)
	addi	sp,sp,16
	ret
lab223: 	mv	a5,a4
	mv	s0,a3
	j	lab227
lab240: 	li	a5,0
	j	lab239
__divsf3:
	addi	sp,sp,-32
	sw	s1,20(sp)
	srli	s1,a0,0x17
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	slli	s3,a0,0x9
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s5,4(sp)
	zext.b	s1,s1
	mv	s4,a1
	srli	s3,s3,0x9
	srli	s2,a0,0x1f
	beqz	s1,lab242
	li	a5,255
	beq	s1,a5,lab243
	slli	s3,s3,0x3
	lui	a5,0x4000
	or	s3,s3,a5
	addi	s1,s1,-127 # 7fffff81 <_stack+0x7feeff81>
lab248: 	li	s5,0
lab249: 	srli	a5,s4,0x17
	slli	s0,s4,0x9
	zext.b	a5,a5
	srli	s0,s0,0x9
	srli	s4,s4,0x1f
	beqz	a5,lab244
	li	a4,255
	beq	a5,a4,lab245
	slli	s0,s0,0x3
	lui	a4,0x4000
	or	s0,s0,a4
	addi	a5,a5,-127 # 3ffff81 <_stack+0x3eeff81>
lab251: 	li	a4,0
lab252: 	sub	s1,s1,a5
	slli	a5,s5,0x2
	or	a5,a5,a4
	addi	a5,a5,-1
	li	a2,14
	xor	a3,s2,s4
	bltu	a2,a5,lab246
	lui	a2,0x100
	slli	a5,a5,0x2
	addi	a2,a2,36 # 100024 <a_ref+0x24>
	add	a5,a5,a2
	lw	a5,0(a5)
	jr	a5
lab242: 	beqz	s3,lab247
	mv	a0,s3
	jal	ra,__clzsi2
	addi	a5,a0,-5
	li	s1,-118
	sll	s3,s3,a5
	sub	s1,s1,a0
	j	lab248
lab243: 	li	s1,255
	li	s5,2
	beqz	s3,lab249
	li	s5,3
	j	lab249
lab247: 	li	s1,0
	li	s5,1
	j	lab249
lab244: 	beqz	s0,lab250
	mv	a0,s0
	jal	ra,__clzsi2
	addi	a5,a0,-5
	sll	s0,s0,a5
	li	a5,-118
	sub	a5,a5,a0
	j	lab251
lab245: 	li	a5,255
	li	a4,2
	beqz	s0,lab252
	li	a4,3
	j	lab252
lab250: 	li	a5,0
	li	a4,1
	j	lab252
lab246: 	slli	a2,s0,0x5
	bgeu	s3,s0,lab253
	addi	s1,s1,-1
	li	a5,0
lab260: 	srli	a1,a2,0x10
	divu	a6,s3,a1
	lui	a4,0x10
	addi	a4,a4,-1 # ffff <_min_stack+0x7fff>
	and	a4,a2,a4
	srli	a5,a5,0x10
	remu	s3,s3,a1
	mv	s0,a6
	mul	a0,a4,a6
	slli	s3,s3,0x10
	or	a5,a5,s3
	bgeu	a5,a0,lab254
	add	a5,a5,a2
	addi	s0,a6,-1
	bltu	a5,a2,lab254
	bgeu	a5,a0,lab254
	addi	s0,a6,-2
	add	a5,a5,a2
lab254: 	sub	a5,a5,a0
	divu	a0,a5,a1
	remu	a5,a5,a1
	mv	a1,a0
	mul	a4,a4,a0
	slli	a5,a5,0x10
	bgeu	a5,a4,lab255
	add	a5,a5,a2
	addi	a1,a0,-1
	bltu	a5,a2,lab255
	bgeu	a5,a4,lab255
	addi	a1,a0,-2
	add	a5,a5,a2
lab255: 	slli	s0,s0,0x10
	sub	a5,a5,a4
	or	s0,s0,a1
	snez	a5,a5
	or	s0,s0,a5
lab263: 	addi	a4,s1,127
	blez	a4,lab256
	andi	a5,s0,7
	beqz	a5,lab257
	andi	a5,s0,15
	li	a2,4
	beq	a5,a2,lab257
	addi	s0,s0,4
lab257: 	lui	a5,0x8000
	and	a5,s0,a5
	beqz	a5,lab258
	lui	a5,0xf8000
	addi	a5,a5,-1 # f7ffffff <_stack+0xf7eeffff>
	and	s0,s0,a5
	addi	a4,s1,128
lab258: 	li	a5,254
	blt	a5,a4,lab259
	srli	a5,s0,0x3
lab264: 	lw	ra,28(sp)
	lw	s0,24(sp)
	slli	a4,a4,0x17
	lui	a2,0x7f800
	slli	a5,a5,0x9
	and	a4,a4,a2
	srli	a5,a5,0x9
	or	a4,a4,a5
	slli	a0,a3,0x1f
	lw	s1,20(sp)
	lw	s2,16(sp)
	lw	s3,12(sp)
	lw	s4,8(sp)
	lw	s5,4(sp)
	or	a0,a4,a0
	addi	sp,sp,32
	ret
lab253: 	slli	a5,s3,0x1f
	srli	s3,s3,0x1
	j	lab260
	mv	a3,s2
	mv	s0,s3
	mv	a4,s5
lab265: 	li	a5,3
	beq	a4,a5,lab261
	li	a5,1
	beq	a4,a5,lab262
	li	a5,2
	bne	a4,a5,lab263
lab259: 	li	a5,0
	li	a4,255
	j	lab264
	mv	a3,s4
	j	lab265
	lui	s0,0x400
	li	a3,0
	li	a4,3
	j	lab265
lab256: 	li	a5,1
	sub	a5,a5,a4
	li	a4,27
	blt	a4,a5,lab262
	addi	s1,s1,158
	srl	a5,s0,a5
	sll	s0,s0,s1
	snez	s0,s0
	or	a5,a5,s0
	andi	a4,a5,7
	beqz	a4,lab266
	andi	a4,a5,15
	li	a2,4
	beq	a4,a2,lab266
	addi	a5,a5,4
lab266: 	lui	a4,0x4000
	and	a4,a5,a4
	srli	a5,a5,0x3
	beqz	a4,lab264
	li	a5,0
	li	a4,1
	j	lab264
lab261: 	lui	a5,0x400
	li	a4,255
	li	a3,0
	j	lab264
lab262: 	li	a5,0
	li	a4,0
	j	lab264
__eqsf2:
	srli	a3,a0,0x17
	lui	a5,0x800
	addi	a5,a5,-1 # 7fffff <_stack+0x6effff>
	srli	a2,a1,0x17
	zext.b	a3,a3
	li	a7,255
	and	a6,a5,a0
	srli	a4,a0,0x1f
	and	a5,a5,a1
	zext.b	a2,a2
	srli	a1,a1,0x1f
	li	a0,1
	bne	a3,a7,lab267
	bnez	a6,lab268
	bne	a2,a3,lab268
	beqz	a5,lab269
lab268: 	ret
lab267: 	beq	a2,a7,lab268
	bne	a3,a2,lab268
	bne	a6,a5,lab268
lab269: 	li	a0,0
	beq	a4,a1,lab268
	li	a0,1
	bnez	a3,lab268
	snez	a0,a6
	ret
__gesf2:
	lui	a4,0x800
	addi	a4,a4,-1 # 7fffff <_stack+0x6effff>
	srli	a3,a0,0x17
	and	a2,a4,a0
	srli	a5,a0,0x1f
	zext.b	a3,a3
	srli	a0,a1,0x17
	li	a6,255
	and	a4,a4,a1
	zext.b	a0,a0
	srli	a1,a1,0x1f
	bne	a3,a6,lab270
	beqz	a2,lab271
lab273: 	li	a0,-2
	ret
lab270: 	bne	a0,a6,lab272
lab283: 	bnez	a4,lab273
lab272: 	bnez	a3,lab274
	bnez	a0,lab275
	beqz	a4,lab276
lab275: 	beqz	a2,lab277
lab284: 	bne	a5,a1,lab278
	bge	a0,a3,lab279
lab278: 	li	a0,1
	beqz	a5,lab280
	li	a0,-1
	ret
lab277: 	li	a0,-1
	beqz	a1,lab280
	mv	a0,a1
	ret
lab279: 	bge	a3,a0,lab281
lab282: 	li	a0,-1
	beqz	a5,lab280
	mv	a0,a5
	ret
lab281: 	bltu	a4,a2,lab278
	li	a0,0
	bltu	a2,a4,lab282
lab280: 	ret
lab276: 	beqz	a2,lab280
	j	lab278
lab271: 	beq	a0,a3,lab283
lab274: 	bnez	a0,lab284
	beqz	a4,lab278
	j	lab284
__lesf2:
	lui	a4,0x800
	addi	a4,a4,-1 # 7fffff <_stack+0x6effff>
	srli	a3,a0,0x17
	and	a2,a4,a0
	srli	a5,a0,0x1f
	zext.b	a3,a3
	srli	a0,a1,0x17
	li	a6,255
	and	a4,a4,a1
	zext.b	a0,a0
	srli	a1,a1,0x1f
	bne	a3,a6,lab285
	beqz	a2,lab286
lab288: 	li	a0,2
	ret
lab285: 	bne	a0,a6,lab287
lab298: 	bnez	a4,lab288
lab287: 	bnez	a3,lab289
	bnez	a0,lab290
	beqz	a4,lab291
lab290: 	beqz	a2,lab292
lab299: 	bne	a5,a1,lab293
	bge	a0,a3,lab294
lab293: 	li	a0,1
	beqz	a5,lab295
	li	a0,-1
	ret
lab292: 	li	a0,-1
	beqz	a1,lab295
	mv	a0,a1
	ret
lab294: 	bge	a3,a0,lab296
lab297: 	li	a0,-1
	beqz	a5,lab295
	mv	a0,a5
	ret
lab296: 	bltu	a4,a2,lab293
	li	a0,0
	bltu	a2,a4,lab297
lab295: 	ret
lab291: 	beqz	a2,lab295
	j	lab293
lab286: 	beq	a0,a3,lab298
lab289: 	bnez	a0,lab299
	beqz	a4,lab293
	j	lab299
__mulsf3:
	addi	sp,sp,-32
	sw	s2,16(sp)
	srli	s2,a0,0x17
	sw	s1,20(sp)
	sw	s3,12(sp)
	sw	s5,4(sp)
	slli	s1,a0,0x9
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s4,8(sp)
	zext.b	s2,s2
	mv	s5,a1
	srli	s1,s1,0x9
	srli	s3,a0,0x1f
	beqz	s2,lab300
	li	a5,255
	beq	s2,a5,lab301
	slli	s1,s1,0x3
	lui	a5,0x4000
	or	s1,s1,a5
	addi	s2,s2,-127
lab314: 	li	s4,0
lab315: 	srli	a5,s5,0x17
	slli	s0,s5,0x9
	zext.b	a5,a5
	srli	s0,s0,0x9
	srli	s5,s5,0x1f
	beqz	a5,lab302
	li	a4,255
	beq	a5,a4,lab303
	slli	s0,s0,0x3
	lui	a4,0x4000
	or	s0,s0,a4
	addi	a5,a5,-127 # 3ffff81 <_stack+0x3eeff81>
lab317: 	li	a3,0
lab318: 	add	s2,s2,a5
	slli	a5,s4,0x2
	or	a5,a5,a3
	li	a4,10
	xor	a0,s3,s5
	addi	a2,s2,1
	blt	a4,a5,lab304
	li	a4,2
	blt	a4,a5,lab305
	addi	a5,a5,-1
	li	a4,1
	bgeu	a4,a5,lab306
lab321: 	lui	a7,0x10
	addi	a6,a7,-1 # ffff <_min_stack+0x7fff>
	srli	a4,s1,0x10
	srli	a5,s0,0x10
	and	a3,s0,a6
	and	s1,s1,a6
	mul	a1,a3,s1
	mul	a3,a4,a3
	srli	s0,a1,0x10
	mul	a4,a4,a5
	mul	a5,a5,s1
	add	a5,a5,a3
	add	s0,s0,a5
	bgeu	s0,a3,lab307
	add	a4,a4,a7
lab307: 	and	a5,s0,a6
	slli	a5,a5,0x10
	and	a1,a1,a6
	add	a5,a5,a1
	slli	a3,a5,0x6
	srli	s0,s0,0x10
	snez	a3,a3
	srli	a5,a5,0x1a
	add	s0,s0,a4
	or	a5,a3,a5
	slli	s0,s0,0x6
	or	s0,s0,a5
	lui	a5,0x8000
	and	a5,s0,a5
	beqz	a5,lab308
	srli	a5,s0,0x1
	andi	s0,s0,1
	or	s0,a5,s0
lab323: 	addi	a4,a2,127 # 7f80007f <_stack+0x7f6f007f>
	blez	a4,lab309
	andi	a5,s0,7
	beqz	a5,lab310
	andi	a5,s0,15
	li	a3,4
	beq	a5,a3,lab310
	addi	s0,s0,4 # 400004 <_stack+0x2f0004>
lab310: 	lui	a5,0x8000
	and	a5,s0,a5
	beqz	a5,lab311
	lui	a5,0xf8000
	addi	a5,a5,-1 # f7ffffff <_stack+0xf7eeffff>
	and	s0,s0,a5
	addi	a4,a2,128
lab311: 	li	a5,254
	blt	a5,a4,lab312
	srli	a5,s0,0x3
lab322: 	lw	ra,28(sp)
	lw	s0,24(sp)
	slli	a4,a4,0x17
	lui	a3,0x7f800
	slli	a5,a5,0x9
	and	a4,a4,a3
	srli	a5,a5,0x9
	or	a4,a4,a5
	slli	a0,a0,0x1f
	lw	s1,20(sp)
	lw	s2,16(sp)
	lw	s3,12(sp)
	lw	s4,8(sp)
	lw	s5,4(sp)
	or	a0,a4,a0
	addi	sp,sp,32
	ret
lab300: 	beqz	s1,lab313
	mv	a0,s1
	jal	ra,__clzsi2
	addi	a5,a0,-5
	li	s2,-118
	sll	s1,s1,a5
	sub	s2,s2,a0
	j	lab314
lab301: 	li	s2,255
	li	s4,2
	beqz	s1,lab315
	li	s4,3
	j	lab315
lab313: 	li	s2,0
	li	s4,1
	j	lab315
lab302: 	beqz	s0,lab316
	mv	a0,s0
	jal	ra,__clzsi2
	addi	a5,a0,-5
	sll	s0,s0,a5
	li	a5,-118
	sub	a5,a5,a0
	j	lab317
lab303: 	li	a5,255
	li	a3,2
	beqz	s0,lab318
	li	a3,3
	j	lab318
lab316: 	li	a5,0
	li	a3,1
	j	lab318
lab305: 	li	a4,1
	sll	a5,a4,a5
	andi	a4,a5,1328
	bnez	a4,lab319
	andi	a4,a5,576
	bnez	a4,lab320
	andi	a5,a5,136
	beqz	a5,lab321
lab325: 	mv	a0,s5
lab306: 	li	a1,2
	li	a5,0
	li	a4,255
	beq	a3,a1,lab322
lab326: 	li	a5,3
	beq	a3,a5,lab320
	li	a5,1
	bne	a3,a5,lab323
lab327: 	li	a5,0
	li	a4,0
	j	lab322
lab304: 	li	a4,15
	beq	a5,a4,lab324
	li	a4,11
	beq	a5,a4,lab325
	mv	a0,s3
lab319: 	mv	s0,s1
	mv	a3,s4
	j	lab306
lab324: 	lui	s0,0x400
	li	a0,0
	li	a3,3
	j	lab326
lab308: 	mv	a2,s2
	j	lab323
lab309: 	li	a5,1
	sub	a5,a5,a4
	li	a4,27
	blt	a4,a5,lab327
	addi	a2,a2,158
	srl	a5,s0,a5
	sll	s0,s0,a2
	snez	s0,s0
	or	a5,a5,s0
	andi	a4,a5,7
	beqz	a4,lab328
	andi	a4,a5,15
	li	a3,4
	beq	a4,a3,lab328
	addi	a5,a5,4
lab328: 	lui	a4,0x4000
	and	a4,a5,a4
	srli	a5,a5,0x3
	beqz	a4,lab322
	li	a5,0
	li	a4,1
	j	lab322
lab320: 	lui	a5,0x400
	li	a4,255
	li	a0,0
	j	lab322
lab312: 	li	a5,0
	li	a4,255
	j	lab322
__subsf3:
	lui	a4,0x800
	addi	sp,sp,-16
	addi	a4,a4,-1 # 7fffff <_stack+0x6effff>
	srli	a2,a1,0x17
	and	a5,a4,a0
	sw	s0,8(sp)
	and	a4,a4,a1
	sw	s1,4(sp)
	srli	s0,a0,0x17
	sw	ra,12(sp)
	sw	s2,0(sp)
	zext.b	a2,a2
	li	a3,255
	zext.b	s0,s0
	srli	s1,a0,0x1f
	slli	a5,a5,0x3
	srli	a1,a1,0x1f
	slli	a4,a4,0x3
	bne	a2,a3,lab329
	bnez	a4,lab330
lab329: 	xori	a1,a1,1
lab330: 	sub	a3,s0,a2
	bne	a1,s1,lab331
	blez	a3,lab332
	bnez	a2,lab333
	beqz	a4,lab334
	addi	a2,a3,-1 # 7f7fffff <_stack+0x7f6effff>
	bnez	a2,lab335
lab344: 	add	a5,a5,a4
	li	s0,1
	j	lab336
lab335: 	li	a1,255
	bne	a3,a1,lab337
lab346: 	li	s0,255
	j	lab338
lab333: 	li	a2,255
	beq	s0,a2,lab338
	lui	a2,0x4000
	or	a4,a4,a2
	mv	a2,a3
lab337: 	li	a1,27
	li	a3,1
	blt	a1,a2,lab339
	li	a3,32
	sub	a3,a3,a2
	srl	a1,a4,a2
	sll	a4,a4,a3
	snez	a4,a4
	or	a3,a1,a4
lab339: 	add	a5,a5,a3
lab336: 	lui	a4,0x4000
	and	a4,a5,a4
	beqz	a4,lab338
	addi	s0,s0,1 # 400001 <_stack+0x2f0001>
	li	a4,255
	beq	s0,a4,lab340
	lui	a4,0x7e000
	andi	a3,a5,1
	addi	a4,a4,-1 # 7dffffff <_stack+0x7deeffff>
	srli	a5,a5,0x1
	and	a5,a5,a4
	or	a5,a5,a3
	j	lab338
lab332: 	beqz	a3,lab341
	sub	a3,a2,s0
	bnez	s0,lab342
	beqz	a5,lab343
	addi	a1,a3,-1
	beqz	a1,lab344
	li	a0,255
	bne	a3,a0,lab345
lab347: 	mv	a5,a4
	j	lab346
lab342: 	li	a1,255
	beq	a2,a1,lab347
	lui	a1,0x4000
	or	a5,a5,a1
	mv	a1,a3
lab345: 	li	a0,27
	li	a3,1
	blt	a0,a1,lab348
	li	a3,32
	sub	a3,a3,a1
	srl	a0,a5,a1
	sll	a5,a5,a3
	snez	a5,a5
	or	a3,a0,a5
lab348: 	add	a5,a3,a4
	mv	s0,a2
	j	lab336
lab341: 	addi	a3,s0,1
	andi	a2,a3,254
	bnez	a2,lab349
	bnez	s0,lab350
	beqz	a5,lab351
	beqz	a4,lab338
	add	a5,a5,a4
	lui	a4,0x4000
	and	a4,a5,a4
	beqz	a4,lab338
	lui	a4,0xfc000
	addi	a4,a4,-1 # fbffffff <_stack+0xfbeeffff>
	and	a5,a5,a4
	li	s0,1
lab338: 	andi	a4,a5,7
	beqz	a4,lab352
	andi	a4,a5,15
	li	a3,4
	beq	a4,a3,lab352
	addi	a5,a5,4 # 400004 <_stack+0x2f0004>
	j	lab352
lab350: 	beqz	a5,lab347
lab374: 	beqz	a4,lab346
lab375: 	li	s1,0
	lui	a5,0x2000
	li	s0,255
	j	lab352
lab349: 	li	a2,255
	beq	a3,a2,lab353
	add	a4,a5,a4
	srli	a5,a4,0x1
lab334: 	mv	s0,a3
	j	lab338
lab331: 	blez	a3,lab354
	bnez	a2,lab355
	beqz	a4,lab334
	addi	a2,a3,-1
	bnez	a2,lab356
	sub	a5,a5,a4
lab365: 	li	s0,1
	j	lab357
lab356: 	li	a1,255
	beq	a3,a1,lab346
lab360: 	li	a1,27
	li	a3,1
	blt	a1,a2,lab358
	li	a3,32
	sub	a3,a3,a2
	srl	a1,a4,a2
	sll	a4,a4,a3
	snez	a4,a4
	or	a3,a1,a4
lab358: 	sub	a5,a5,a3
lab357: 	lui	s2,0x4000
	and	a4,a5,s2
	beqz	a4,lab338
	addi	s2,s2,-1 # 3ffffff <_stack+0x3eeffff>
	and	s2,a5,s2
	j	lab359
lab355: 	li	a2,255
	beq	s0,a2,lab338
	lui	a2,0x4000
	or	a4,a4,a2
	mv	a2,a3
	j	lab360
lab354: 	beqz	a3,lab361
	sub	a3,a2,s0
	bnez	s0,lab362
	beqz	a5,lab363
	addi	a0,a3,-1
	bnez	a0,lab364
	sub	a5,a4,a5
	mv	s1,a1
	j	lab365
lab364: 	li	a6,255
	bne	a3,a6,lab366
lab368: 	mv	a5,a4
	li	s0,255
	j	lab367
lab362: 	li	a0,255
	beq	a2,a0,lab368
	lui	a0,0x4000
	or	a5,a5,a0
	mv	a0,a3
lab366: 	li	a6,27
	li	a3,1
	blt	a6,a0,lab369
	li	a3,32
	sub	a3,a3,a0
	srl	a6,a5,a0
	sll	a5,a5,a3
	snez	a5,a5
	or	a3,a6,a5
lab369: 	sub	a5,a4,a3
	mv	s0,a2
	mv	s1,a1
	j	lab357
lab361: 	addi	a3,s0,1
	andi	a3,a3,254
	bnez	a3,lab370
	bnez	s0,lab371
	bnez	a5,lab372
	li	s1,0
	beqz	a4,lab352
	mv	a5,a4
lab367: 	mv	s1,a1
	j	lab338
lab372: 	beqz	a4,lab338
	sub	a3,a5,a4
	lui	a2,0x4000
	and	a2,a3,a2
	sub	a5,a4,a5
	bnez	a2,lab367
	li	a5,0
	beqz	a3,lab373
	mv	a5,a3
	j	lab338
lab371: 	bnez	a5,lab374
	beqz	a4,lab375
	mv	a5,a4
	mv	s1,a1
	j	lab346
lab370: 	sub	s2,a5,a4
	lui	a3,0x4000
	and	a3,s2,a3
	beqz	a3,lab376
	sub	s2,a4,a5
	mv	s1,a1
lab359: 	mv	a0,s2
	jal	ra,__clzsi2
	addi	a0,a0,-5 # 3fffffb <_stack+0x3eefffb>
	sll	s2,s2,a0
	blt	a0,s0,lab377
	sub	a0,a0,s0
	addi	a0,a0,1
	li	a4,32
	sub	a4,a4,a0
	srl	a5,s2,a0
	sll	s2,s2,a4
	snez	s2,s2
	or	a5,a5,s2
	li	s0,0
	j	lab338
lab376: 	bnez	s2,lab359
	li	a5,0
	li	s0,0
lab373: 	li	s1,0
	j	lab352
lab377: 	lui	a5,0xfc000
	addi	a5,a5,-1 # fbffffff <_stack+0xfbeeffff>
	sub	s0,s0,a0
	and	a5,s2,a5
	j	lab338
lab343: 	mv	a5,a4
	j	lab334
lab351: 	mv	a5,a4
	j	lab338
lab353: 	li	s0,255
lab340: 	li	a5,0
lab352: 	lui	a4,0x4000
	and	a4,a5,a4
	beqz	a4,lab378
	addi	s0,s0,1
	li	a4,255
	beq	s0,a4,lab379
	lui	a4,0xfc000
	addi	a4,a4,-1 # fbffffff <_stack+0xfbeeffff>
	and	a5,a5,a4
lab378: 	li	a4,255
	srli	a5,a5,0x3
	bne	s0,a4,lab380
	beqz	a5,lab380
	lui	a5,0x400
	li	s1,0
lab380: 	slli	s0,s0,0x17
	lui	a4,0x7f800
	slli	a5,a5,0x9
	and	s0,s0,a4
	srli	a5,a5,0x9
	or	s0,s0,a5
	slli	a0,s1,0x1f
	lw	ra,12(sp)
	or	a0,s0,a0
	lw	s0,8(sp)
	lw	s1,4(sp)
	lw	s2,0(sp)
	addi	sp,sp,16
	ret
lab363: 	mv	a5,a4
	mv	s0,a3
	j	lab367
lab379: 	li	a5,0
	j	lab378
__extendsfdf2:
	srli	a4,a0,0x17
	zext.b	a4,a4
	addi	sp,sp,-16
	addi	a5,a4,1 # 7f800001 <_stack+0x7f6f0001>
	sw	s0,8(sp)
	sw	s1,4(sp)
	slli	s0,a0,0x9
	sw	ra,12(sp)
	andi	a5,a5,254
	srli	s0,s0,0x9
	srli	s1,a0,0x1f
	beqz	a5,lab381
	srli	a5,s0,0x3
	addi	a4,a4,896
	slli	s0,s0,0x1d
lab383: 	slli	a5,a5,0xc
	srli	a5,a5,0xc
	slli	a4,a4,0x14
	slli	a0,s1,0x1f
	or	a4,a4,a5
	lw	ra,12(sp)
	or	a5,a4,a0
	mv	a0,s0
	lw	s0,8(sp)
	lw	s1,4(sp)
	mv	a1,a5
	addi	sp,sp,16
	ret
lab381: 	bnez	a4,lab382
	li	a5,0
	beqz	s0,lab383
	mv	a0,s0
	jal	ra,__clzsi2
	li	a5,10
	blt	a5,a0,lab384
	li	a5,11
	sub	a5,a5,a0
	addi	a4,a0,21
	srl	a5,s0,a5
	sll	s0,s0,a4
lab385: 	li	a4,905
	sub	a4,a4,a0
	j	lab383
lab384: 	addi	a5,a0,-11
	sll	a5,s0,a5
	li	s0,0
	j	lab385
lab382: 	li	a5,0
	beqz	s0,lab386
	srli	a5,s0,0x3
	lui	a4,0x80
	slli	s0,s0,0x1d
	or	a5,a5,a4
lab386: 	li	a4,2047
	j	lab383
__truncdfsf2:
	srli	a2,a1,0x14
	andi	a2,a2,2047
	slli	a5,a1,0xc
	addi	a4,a2,1 # 4000001 <_stack+0x3ef0001>
	srli	a5,a5,0x9
	srli	a3,a0,0x1d
	andi	a4,a4,2046
	or	a3,a3,a5
	srli	a1,a1,0x1f
	slli	a5,a0,0x3
	beqz	a4,lab387
	addi	a4,a2,-896
	li	a6,254
	blt	a6,a4,lab388
	bgtz	a4,lab389
	li	a0,-23
	blt	a4,a0,lab390
	lui	a0,0x800
	or	a3,a3,a0
	li	a0,30
	sub	a0,a0,a4
	li	a6,31
	blt	a6,a0,lab391
	addi	a2,a2,-894
	srl	a0,a5,a0
	sll	a5,a5,a2
	snez	a5,a5
	sll	a3,a3,a2
	or	a5,a5,a3
	or	a5,a0,a5
lab395: 	li	a4,0
lab396: 	andi	a3,a5,7
	beqz	a3,lab392
	j	lab393
lab391: 	li	a6,-2
	sub	a6,a6,a4
	li	a7,32
	srl	a6,a3,a6
	li	a4,0
	beq	a0,a7,lab394
	addi	a2,a2,-862
	sll	a4,a3,a2
lab394: 	or	a4,a4,a5
	snez	a4,a4
	or	a5,a6,a4
	j	lab395
lab389: 	slli	a0,a0,0x6
	snez	a0,a0
	slli	a3,a3,0x3
	srli	a5,a5,0x1d
	or	a3,a0,a3
lab398: 	or	a5,a3,a5
	j	lab396
lab387: 	or	a5,a3,a5
	bnez	a2,lab397
	snez	a5,a5
	j	lab395
lab397: 	li	a4,255
	beqz	a5,lab392
	slli	a3,a3,0x3
	lui	a5,0x2000
	j	lab398
lab388: 	li	a5,0
	li	a4,255
lab392: 	lui	a3,0x4000
	and	a3,a5,a3
	beqz	a3,lab399
	addi	a4,a4,1 # 80001 <_min_stack+0x78001>
	li	a3,255
	beq	a4,a3,lab400
	lui	a3,0xfc000
	addi	a3,a3,-1 # fbffffff <_stack+0xfbeeffff>
	and	a5,a5,a3
lab399: 	li	a3,255
	srli	a5,a5,0x3
	bne	a4,a3,lab401
	beqz	a5,lab401
	lui	a5,0x400
	li	a1,0
lab401: 	lui	a3,0x7f800
	slli	a4,a4,0x17
	slli	a5,a5,0x9
	and	a4,a4,a3
	srli	a5,a5,0x9
	or	a4,a4,a5
	slli	a0,a1,0x1f
	or	a0,a4,a0
	ret
lab390: 	li	a5,1
	li	a4,0
lab393: 	andi	a3,a5,15
	li	a2,4
	beq	a3,a2,lab392
	addi	a5,a5,4 # 400004 <_stack+0x2f0004>
	j	lab392
lab400: 	li	a5,0
	j	lab399
__clzsi2:
	lui	a5,0x10
	bgeu	a0,a5,lab402
	sltiu	a5,a0,256
	xori	a5,a5,1
	slli	a5,a5,0x3
lab403: 	lui	a4,0x100
	li	a3,32
	sub	a3,a3,a5
	srl	a0,a0,a5
	addi	a5,a4,96 # 100060 <__clz_tab>
	add	a5,a5,a0
	lbu	a0,0(a5) # 10000 <_min_stack+0x8000>
	sub	a0,a3,a0
	ret
lab402: 	lui	a4,0x1000
	li	a5,16
	bltu	a0,a4,lab403
	li	a5,24
	j	lab403
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

a_ref:
	.2byte	0x0000
	.2byte	0x4040
	.2byte	0x0000
	.2byte	0xc0c0
	.2byte	0x0000
	.2byte	0x40e0
	.2byte	0x0000
	.2byte	0x4110
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0xc0a0
	.2byte	0x0000
	.2byte	0x40a0
	.2byte	0x0000
	.2byte	0xc100
	.2byte	0x0000
	.2byte	0x40c0
	.2byte	0x2acc
	.2byte	0x0000
	.2byte	0x2b58
	.2byte	0x0000
	.2byte	0x2ad8
	.2byte	0x0000
	.2byte	0x2b58
	.2byte	0x0000
	.2byte	0x2b48
	.2byte	0x0000
	.2byte	0x2b58
	.2byte	0x0000
	.2byte	0x2ad8
	.2byte	0x0000
	.2byte	0x2acc
	.2byte	0x0000
	.2byte	0x2acc
	.2byte	0x0000
	.2byte	0x2b48
	.2byte	0x0000
	.2byte	0x2ad8
	.2byte	0x0000
	.2byte	0x2aa8
	.2byte	0x0000
	.2byte	0x2aa8
	.2byte	0x0000
	.2byte	0x2aa8
	.2byte	0x0000
	.2byte	0x2ae0
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


	.bss

a:
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
d:
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
c:
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
det:
	.2byte	0x0000
	.2byte	0x0000
