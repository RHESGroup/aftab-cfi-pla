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
	sw	a1,8(sp)
	blez	a0,lab0
	addi	s11,sp,16
	mv	s3,a0
	mv	a4,s11
	li	a5,0
lab1: 	sw	a5,0(a4)
	addi	a5,a5,1
	addi	a4,a4,4
	bne	a5,s3,lab1
	lui	a5,0x100
	lw	a5,148(a5) # 100094 <a_ref+0x24>
	lui	s9,0x100
	mv	s8,s9
	mv	s2,s9
	mv	s7,s9
	sw	a5,4(sp)
	mv	s10,s11
	mv	s9,s9
	li	s0,0
	li	s6,0
	li	s1,0
lab21: 	bge	s1,s3,lab2
	lw	s0,0(s8)
	li	a1,0
	mv	a0,s0
	jal	ra,__gesf2
	bgez	a0,lab3
	lui	a5,0x80000
	xor	s0,a5,s0
lab3: 	li	a1,0
	mv	a0,s0
	jal	ra,__gtsf2
	li	s5,0
	blez	a0,lab4
	mv	s5,s0
	mv	s6,s1
lab4: 	addi	s4,s1,1
	bge	s4,s3,lab2
	lw	s0,12(s8)
	li	a1,0
	mv	a0,s0
	jal	ra,__gesf2
	bgez	a0,lab5
	lui	a5,0x80000
	xor	s0,a5,s0
lab5: 	mv	a1,s0
	mv	a0,s5
	jal	ra,__ltsf2
	bltz	a0,lab6
	mv	s4,s6
lab25: 	addi	s6,s1,2
	bge	s6,s3,lab7
	lw	s0,24(s8)
	li	a1,0
	mv	a0,s0
	jal	ra,__gesf2
	bgez	a0,lab8
	lui	a5,0x80000
	xor	s0,a5,s0
lab8: 	mv	a1,s5
	mv	a0,s0
	jal	ra,__gtsf2
	blez	a0,lab7
lab2: 	slli	s5,s6,0x1
	add	a5,s5,s6
	add	a5,a5,s1
	slli	a5,a5,0x2
	add	a5,s7,a5
	lw	s4,0(a5) # 80000000 <_stack+0x7fef8000>
	li	a1,0
	mv	a0,s4
	jal	ra,__gesf2
	mv	a1,s4
	bgez	a0,lab9
	lui	a5,0x80000
	xor	a1,a5,s4
lab9: 	lw	a0,8(sp)
	jal	ra,__gesf2
	bgez	a0,lab10
	bne	s1,s6,lab11
	lw	a0,4(sp)
	mv	a1,s4
	jal	ra,__mulsf3
	mv	a5,a0
	lw	a0,0(s2)
	mv	a1,s4
	sw	a5,4(sp)
	jal	ra,__divsf3
	sw	a0,0(s2)
	li	a4,1
	mv	s5,a0
	beq	s3,a4,lab12
lab24: 	lw	a0,4(s2)
	mv	a1,s4
	jal	ra,__divsf3
	sw	a0,4(s2)
	li	a5,2
	bge	a5,s3,lab13
	lw	a0,8(s2)
	mv	a1,s4
	jal	ra,__divsf3
	sw	a0,8(s2)
lab13: 	beqz	s1,lab14
	lw	s0,0(s9) # 100000 <a>
	li	a1,0
	mv	a0,s0
	jal	ra,__nesf2
	bnez	a0,lab15
	li	a5,1
	beq	s3,a5,lab16
	li	a5,1
	beq	s1,a5,lab17
lab30: 	lw	s0,12(s9)
	li	a1,0
	mv	a0,s0
	jal	ra,__nesf2
	bnez	a0,lab18
lab32: 	li	a5,2
	bge	a5,s3,lab16
	beq	s1,a5,lab16
	lw	s0,24(s9)
	li	a1,0
	mv	a0,s0
	jal	ra,__nesf2
	bnez	a0,lab19
lab16: 	lui	a5,0x100
	lw	a0,148(a5) # 100094 <a_ref+0x24>
	mv	a1,s4
	addi	s8,s8,16
	jal	ra,__divsf3
	sw	a0,-16(s8)
	addi	a0,s1,1
	addi	s9,s9,4
	addi	s2,s2,12
	addi	s10,s10,4
	beq	s3,a0,lab20
	mv	s1,a0
	j	lab21
lab7: 	mv	s6,s4
	j	lab2
lab11: 	add	s5,s5,s6
	slli	a5,s6,0x2
	addi	a4,sp,16
	slli	s5,s5,0x2
	addi	a5,a5,2000
	add	a5,a5,a4
	add	s5,s7,s5
	lw	a2,-2000(a5)
	lw	a3,0(s5)
	lui	a1,0x80000
	lw	a4,0(s10)
	xor	a1,a1,s0
	lw	s0,0(s2)
	sw	a2,0(s10)
	sw	a3,0(s2)
	sw	a4,-2000(a5)
	sw	a1,4(sp)
	sw	s0,0(s5)
	li	a5,1
	beq	s3,a5,lab22
	lw	a4,4(s5)
	lw	a5,4(s2)
	sw	a4,4(s2)
	sw	a5,4(s5)
	li	a5,2
	beq	s3,a5,lab23
	lw	a4,8(s5)
	lw	a5,8(s2)
	sw	a4,8(s2)
	sw	a5,8(s5)
lab23: 	lw	a0,0(s2)
	mv	a1,s4
	jal	ra,__divsf3
	mv	s5,a0
	sw	a0,0(s2)
	j	lab24
lab6: 	mv	s5,s0
	j	lab25
lab22: 	lw	a0,0(s2)
	mv	a1,s4
	jal	ra,__divsf3
	sw	a0,0(s2)
	mv	s5,a0
	beqz	s1,lab16
	lw	s0,0(s9)
	li	a1,0
	mv	a0,s0
	jal	ra,__nesf2
	beqz	a0,lab16
lab15: 	mv	a1,s0
	mv	a0,s5
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,0(s7)
	jal	ra,__subsf3
	sw	a0,0(s7)
	li	a5,1
	beq	s3,a5,lab26
	beq	s1,a5,lab27
	lw	a1,4(s2)
	mv	a0,s0
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,4(s7)
	jal	ra,__subsf3
	sw	a0,4(s7)
	li	a5,2
	beq	s3,a5,lab28
	beq	s1,a5,lab29
lab39: 	lw	a1,8(s2)
	mv	a0,s0
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,8(s7)
	jal	ra,__subsf3
	mv	a5,a0
	lui	a0,0x80000
	sw	a5,8(s7)
	mv	a1,s4
	xor	a0,a0,s0
	jal	ra,__divsf3
	sw	a0,0(s9)
	li	a5,1
	bne	s1,a5,lab30
lab17: 	li	a5,2
	bge	a5,s3,lab16
	lw	s0,24(s9)
	li	a1,0
	mv	a0,s0
	jal	ra,__nesf2
	beqz	a0,lab16
lab37: 	lw	a1,0(s2)
	mv	a0,s0
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,24(s7)
	jal	ra,__subsf3
	sw	a0,24(s7)
	li	a5,1
	beq	s1,a5,lab31
lab38: 	lw	a1,4(s2)
	mv	a0,s0
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,28(s7)
	jal	ra,__subsf3
	sw	a0,28(s7)
lab31: 	lw	a1,8(s2)
	mv	a0,s0
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,32(s7)
	jal	ra,__subsf3
	mv	a5,a0
	lui	a0,0x80000
	mv	a1,s4
	xor	a0,a0,s0
	sw	a5,32(s7)
	jal	ra,__divsf3
	sw	a0,24(s9)
	j	lab16
lab14: 	lw	s0,12(s9)
	li	a1,0
	mv	a0,s0
	jal	ra,__nesf2
	beqz	a0,lab32
lab35: 	lw	a1,4(s2)
	mv	a0,s0
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,16(s7)
	jal	ra,__subsf3
	sw	a0,16(s7)
	li	a5,2
	bge	a5,s3,lab33
lab36: 	lw	a1,8(s2)
	mv	a0,s0
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,20(s7)
	jal	ra,__subsf3
	mv	a5,a0
	lui	a0,0x80000
	mv	a1,s4
	xor	a0,a0,s0
	sw	a5,20(s7)
	jal	ra,__divsf3
	sw	a0,12(s9)
	j	lab32
lab12: 	sw	a0,12(sp)
	beqz	s6,lab16
	lw	s0,0(s9)
	li	a1,0
	mv	a0,s0
	jal	ra,__nesf2
	bnez	a0,lab34
	lui	a5,0x100
	lw	a0,148(a5) # 100094 <a_ref+0x24>
	mv	a1,s4
	addi	s8,s8,16
	jal	ra,__divsf3
	sw	a0,-16(s8)
	addi	a0,s6,1
	addi	s9,s9,4
	addi	s2,s2,12
	addi	s10,s10,4
	mv	s1,a0
	j	lab21
lab18: 	beqz	s1,lab35
lab40: 	lw	a1,0(s2)
	mv	a0,s0
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,12(s7)
	jal	ra,__subsf3
	sw	a0,12(s7)
	lw	a1,4(s2)
	mv	a0,s0
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,16(s7)
	jal	ra,__subsf3
	sw	a0,16(s7)
	li	a5,2
	bge	a5,s3,lab33
	bne	s1,a5,lab36
lab33: 	lui	a0,0x80000
	mv	a1,s4
	xor	a0,a0,s0
	jal	ra,__divsf3
	sw	a0,12(s9)
	j	lab16
lab19: 	bnez	s1,lab37
	j	lab38
lab10: 	li	a0,1
lab45: 	lw	a4,4(sp)
	lui	a5,0x100
	sw	a4,108(a5) # 10006c <det>
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
lab34: 	mv	a1,s0
	mv	a0,s5
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,0(s7)
	jal	ra,__subsf3
	sw	a0,0(s7)
lab26: 	lui	a0,0x80000
	mv	a1,s4
	xor	a0,a0,s0
	jal	ra,__divsf3
	sw	a0,0(s9)
	j	lab16
lab27: 	li	a5,2
	bne	s3,a5,lab39
	lui	a0,0x80000
	mv	a1,s4
	xor	a0,a0,s0
	jal	ra,__divsf3
	sw	a0,0(s9)
	j	lab17
lab29: 	lui	a0,0x80000
	mv	a1,s4
	xor	a0,a0,s0
	jal	ra,__divsf3
	lw	s0,12(s9)
	sw	a0,0(s9)
	li	a1,0
	mv	a0,s0
	jal	ra,__nesf2
	beqz	a0,lab16
	j	lab40
lab20: 	lw	a1,0(s11)
	li	a7,0
	li	t3,1
	li	t4,3
lab42: 	beq	a1,a7,lab41
lab43: 	slli	a5,a1,0x1
	add	a5,a5,a1
	slli	a4,a1,0x4
	slli	a2,a1,0x2
	add	a5,a5,a7
	mv	a3,a1
	add	a4,s7,a4
	addi	a1,sp,16
	slli	a5,a5,0x2
	addi	a2,a2,2000
	lw	t1,0(a4)
	add	a5,s7,a5
	add	a2,a2,a1
	lw	a6,0(a5)
	lw	a1,-2000(a2)
	sw	t1,0(a5)
	sw	a3,-2000(a2)
	sw	a6,0(a4)
	sw	a1,0(s11)
	beq	a0,t3,lab42
	lw	a3,0(a5)
	sw	a6,0(a5)
	sw	a3,0(a4)
	bne	a0,t4,lab42
	lw	a2,0(a5)
	sw	a3,0(a5)
	sw	a2,0(a4)
	bne	a1,a7,lab43
lab41: 	addi	a5,a7,1
	addi	s11,s11,4
	beq	s1,a7,lab44
	lw	a1,0(s11)
	mv	a7,a5
	j	lab42
lab0: 	lui	a5,0x100
	lw	a5,148(a5) # 100094 <a_ref+0x24>
	sw	a5,4(sp)
lab44: 	li	a0,0
	j	lab45
lab28: 	lui	a0,0x80000
	mv	a1,s4
	xor	a0,a0,s0
	jal	ra,__divsf3
	sw	a0,0(s9)
	j	lab30
minver.part.0.constprop.0.isra.0:
	lui	a5,0x100
	lw	a5,148(a5) # 100094 <a_ref+0x24>
	addi	sp,sp,-2032
	sw	s0,2024(sp)
	sw	s1,2020(sp)
	sw	s2,2016(sp)
	sw	s4,2008(sp)
	sw	s5,2004(sp)
	sw	s7,1996(sp)
	sw	s9,1988(sp)
	sw	s10,1984(sp)
	sw	s11,1980(sp)
	sw	ra,2028(sp)
	sw	s3,2012(sp)
	sw	s6,2000(sp)
	sw	s8,1992(sp)
	addi	sp,sp,-64
	sw	a5,12(sp)
	lui	a5,0x100
	lw	a5,152(a5) # 100098 <a_ref+0x28>
	lui	s0,0x100
	addi	s11,sp,32
	sw	a5,24(sp)
	li	a5,1
	sw	a5,36(sp)
	li	a5,2
	mv	s5,s0
	mv	s7,s0
	mv	s1,s0
	sw	zero,32(sp)
	sw	a5,40(sp)
	mv	s9,s11
	mv	s0,s0
	li	s4,0
	li	s2,0
	lui	s10,0x80000
lab66: 	lw	s6,0(s5)
	li	a1,0
	mv	a0,s6
	jal	ra,__gesf2
	bgez	a0,lab46
	xor	s6,s10,s6
lab46: 	li	a1,0
	mv	a0,s6
	jal	ra,__gtsf2
	li	s3,0
	blez	a0,lab47
	mv	s3,s6
	mv	s4,s2
lab47: 	addi	s8,s2,1
	li	a5,3
	beq	s8,a5,lab48
	lw	s6,12(s5)
	li	a1,0
	mv	a0,s6
	jal	ra,__gesf2
	bgez	a0,lab49
	xor	s6,s10,s6
lab49: 	mv	a1,s6
	mv	a0,s3
	jal	ra,__ltsf2
	bgez	a0,lab50
	mv	s4,s8
	mv	s3,s6
lab50: 	li	a5,1
	beq	s2,a5,lab48
	lw	s6,24(s5)
	li	a1,0
	mv	a0,s6
	jal	ra,__gesf2
	bgez	a0,lab51
	xor	s6,s10,s6
lab51: 	mv	a1,s6
	mv	a0,s3
	jal	ra,__ltsf2
	bgez	a0,lab48
	addi	a5,s2,6
	slli	a5,a5,0x2
	add	a5,s1,a5
	lw	s3,0(a5)
	li	a1,0
	mv	a0,s3
	jal	ra,__gesf2
	bltz	a0,lab52
	lw	a1,24(sp)
	mv	a0,s3
	jal	ra,__lesf2
	blez	a0,lab53
	li	s4,2
lab62: 	slli	a5,s4,0x1
	add	a5,a5,s4
	slli	a5,a5,0x2
	add	a5,s1,a5
	lw	a4,0(a5)
	lw	a1,0(s0) # 100000 <a>
	lw	a6,4(s0)
	sw	a4,0(s0)
	lw	a2,4(a5)
	lw	a3,8(s0)
	slli	a4,s4,0x2
	sw	a1,0(a5)
	sw	a2,4(s0)
	addi	a4,a4,2000
	addi	a2,sp,32
	add	a4,a4,a2
	lw	a1,8(a5)
	lw	a0,-2000(a4)
	lw	a2,0(s9)
	sw	a6,4(a5)
	sw	a1,8(s0)
	sw	a0,0(s9)
	xor	a1,s10,s6
	sw	a1,12(sp)
	sw	a2,-2000(a4)
	sw	a3,8(a5)
lab63: 	lw	a0,0(s0)
	mv	a1,s3
	jal	ra,__divsf3
	mv	s6,a0
	lw	a0,4(s0)
	mv	a1,s3
	sw	s6,0(s0)
	jal	ra,__divsf3
	mv	a5,a0
	lw	a0,8(s0)
	mv	a1,s3
	sw	a5,4(s0)
	sw	a5,28(sp)
	jal	ra,__divsf3
	sw	a0,8(s0)
	sw	a0,16(sp)
	beqz	s2,lab54
	lw	a5,0(s7)
	li	a1,0
	mv	a0,a5
	sw	a5,20(sp)
	jal	ra,__nesf2
	lw	a5,16(sp)
	bnez	a0,lab55
	li	a5,1
	beq	s2,a5,lab56
	lw	s6,20(s1)
	li	a1,0
	mv	a0,s6
	jal	ra,__nesf2
	bnez	a0,lab57
lab71: 	lui	a5,0x100
	lw	a0,148(a5) # 100094 <a_ref+0x24>
	mv	a1,s3
	jal	ra,__divsf3
	sw	a0,32(s1)
lab67: 	li	a6,0
	li	t1,3
lab60: 	lw	a1,0(s11)
	beq	a6,a1,lab58
lab59: 	slli	a5,a1,0x1
	add	a5,a5,a1
	slli	a4,a1,0x4
	add	a5,a5,a6
	add	a4,s1,a4
	slli	a5,a5,0x2
	lw	a2,0(a4)
	add	a5,s1,a5
	mv	a3,a1
	lw	a1,0(a5)
	sw	a2,0(a5)
	slli	a2,a3,0x2
	sw	a1,0(a4)
	lw	a0,0(a5)
	addi	a2,a2,2000
	sw	a1,0(a5)
	addi	a1,sp,32
	sw	a0,0(a4)
	add	a2,a2,a1
	lw	a1,-2000(a2)
	lw	a7,0(a5)
	sw	a3,-2000(a2)
	sw	a0,0(a5)
	sw	a1,0(s11)
	sw	a7,0(a4)
	bne	a1,a6,lab59
lab58: 	addi	a6,a6,1
	addi	s11,s11,4
	bne	a6,t1,lab60
lab53: 	lw	a4,12(sp)
	lui	a5,0x100
	sw	a4,108(a5) # 10006c <det>
	addi	sp,sp,64
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
lab48: 	slli	a5,s4,0x1
	add	a5,a5,s4
	add	a5,a5,s2
	slli	a5,a5,0x2
	add	a5,s1,a5
	lw	a5,0(a5)
	li	a1,0
	mv	a0,a5
	sw	a5,16(sp)
	jal	ra,__gesf2
	lw	a5,16(sp)
	mv	s3,a5
	bltz	a0,lab61
lab64: 	lw	a1,24(sp)
	mv	a0,a5
	jal	ra,__lesf2
	blez	a0,lab53
	bne	s2,s4,lab62
	lw	a0,12(sp)
	mv	a1,s3
	jal	ra,__mulsf3
	sw	a0,12(sp)
	j	lab63
lab52: 	mv	a5,s3
	li	s4,2
lab61: 	mv	s3,a5
	xor	a5,s10,a5
	j	lab64
lab70: 	mv	a0,a5
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,8(s1)
	jal	ra,__subsf3
	sw	a0,8(s1)
	sw	s6,4(s1)
lab56: 	lw	s2,28(s1)
	li	a1,0
	mv	a0,s2
	jal	ra,__nesf2
	bnez	a0,lab65
lab69: 	lui	a5,0x100
	lw	a0,148(a5) # 100094 <a_ref+0x24>
	mv	a1,s3
	mv	s2,s8
	jal	ra,__divsf3
	sw	a0,0(s5)
	li	a5,3
	addi	s5,s5,16
	addi	s0,s0,12
	addi	s7,s7,4
	addi	s9,s9,4
	bne	s8,a5,lab66
	j	lab67
lab54: 	lw	s2,12(s1)
	li	a1,0
	mv	a0,s2
	jal	ra,__nesf2
	beqz	a0,lab68
	lw	a1,4(s1)
	mv	a0,s2
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,16(s1)
	jal	ra,__subsf3
	lw	a1,8(s1)
	mv	a5,a0
	sw	a5,16(s1)
	mv	a0,s2
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,20(s1)
	jal	ra,__subsf3
	mv	a5,a0
	mv	a1,s3
	xor	a0,s10,s2
	sw	a5,20(s1)
	jal	ra,__divsf3
	sw	a0,12(s7)
lab68: 	lw	s2,24(s7)
	li	a1,0
	mv	a0,s2
	jal	ra,__nesf2
	beqz	a0,lab69
	lw	a1,4(s0)
	mv	a0,s2
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,28(s1)
	jal	ra,__subsf3
	sw	a0,28(s1)
lab72: 	lw	a1,8(s0)
	mv	a0,s2
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,32(s1)
	jal	ra,__subsf3
	mv	a5,a0
	mv	a1,s3
	xor	a0,s10,s2
	sw	a5,32(s1)
	jal	ra,__divsf3
	sw	a0,24(s7)
	j	lab69
lab55: 	lw	a1,20(sp)
	mv	a0,s6
	sw	a5,16(sp)
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,0(s1)
	jal	ra,__subsf3
	lw	a5,20(sp)
	mv	a4,a0
	mv	a1,s3
	xor	a0,s10,a5
	sw	a4,0(s1)
	jal	ra,__divsf3
	li	a4,1
	lw	a5,16(sp)
	lw	a1,20(sp)
	mv	s6,a0
	beq	s2,a4,lab70
	lw	a0,28(sp)
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,4(s1)
	jal	ra,__subsf3
	sw	a0,4(s1)
	sw	s6,0(s7)
	lw	s6,20(s1)
	li	a1,0
	mv	a0,s6
	jal	ra,__nesf2
	beqz	a0,lab71
lab57: 	lw	a1,0(s0)
	mv	a0,s6
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,12(s1)
	jal	ra,__subsf3
	sw	a0,12(s1)
	lw	a1,4(s0)
	mv	a0,s6
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,16(s1)
	jal	ra,__subsf3
	mv	a5,a0
	sw	a5,16(s1)
	mv	a1,s3
	xor	a0,s10,s6
	jal	ra,__divsf3
	sw	a0,12(s7)
	li	a5,2
	beq	s2,a5,lab71
	j	lab68
lab65: 	lw	a1,12(s1)
	mv	a0,s2
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,24(s1)
	jal	ra,__subsf3
	sw	a0,24(s1)
	j	lab72
benchmark_body.isra.0:
	blez	a0,lab73
	addi	sp,sp,-112
	lui	a5,0x100
	sw	s6,80(sp)
	lw	s6,156(a5) # 10009c <a_ref+0x2c>
	lui	a5,0x100
	lw	a5,160(a5) # 1000a0 <a_ref+0x30>
	sw	s1,100(sp)
	lui	s1,0x100
	sw	a5,16(sp)
	lui	a5,0x100
	lw	a5,164(a5) # 1000a4 <a_ref+0x34>
	addi	s1,s1,112 # 100070 <a_ref>
	sw	s7,76(sp)
	sw	a5,20(sp)
	lui	a5,0x100
	lw	a5,168(a5) # 1000a8 <a_ref+0x38>
	lw	s7,8(s1)
	sw	s8,72(sp)
	sw	a5,24(sp)
	lui	a5,0x100
	lw	a5,172(a5) # 1000ac <a_ref+0x3c>
	lw	s8,4(s1)
	sw	s9,68(sp)
	sw	a5,28(sp)
	lui	a5,0x100
	lw	a5,176(a5) # 1000b0 <a_ref+0x40>
	lw	s9,0(s1)
	sw	s0,104(sp)
	sw	a5,32(sp)
	lui	a5,0x100
	lw	a5,180(a5) # 1000b4 <a_ref+0x44>
	sw	s5,84(sp)
	lui	s0,0x100
	sw	a5,36(sp)
	lui	a5,0x100
	lw	a5,184(a5) # 1000b8 <a_ref+0x48>
	li	s5,0
	sw	s11,60(sp)
	sw	ra,108(sp)
	mv	s11,s8
	sw	s2,96(sp)
	sw	s3,92(sp)
	sw	s4,88(sp)
	sw	s10,64(sp)
	sw	a5,40(sp)
	mv	s0,s0
	sw	a0,44(sp)
	mv	s8,s5
	mv	a4,s7
lab74: 	lw	s7,12(s1)
	lw	s5,16(s1)
	lw	s10,20(s1)
	lw	s4,24(s1)
	lw	s3,28(s1)
	lw	s2,32(s1)
	sw	a4,8(s0) # 100008 <a+0x8>
	sw	s9,0(s0)
	sw	s11,4(s0)
	sw	s7,12(s0)
	sw	s5,16(s0)
	sw	s10,20(s0)
	sw	s4,24(s0)
	sw	s3,28(s0)
	sw	s2,32(s0)
	sw	a4,12(sp)
	jal	ra,minver.part.0.constprop.0.isra.0
	lw	a5,16(sp)
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
	lw	a5,20(sp)
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
	lw	a5,24(sp)
	sw	s6,84(s0)
	addi	s8,s8,1
	sw	a5,88(s0)
	lw	a5,28(sp)
	sw	a5,92(s0)
	lw	a5,32(sp)
	sw	a5,96(s0)
	lw	a5,36(sp)
	sw	a5,100(s0)
	lw	a5,40(sp)
	sw	a5,104(s0)
	lw	a5,44(sp)
	bne	s8,a5,lab74
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
lab73: 	ret
benchmark_body.constprop.0:
	addi	sp,sp,-96
	lui	a5,0x100
	sw	s6,64(sp)
	lw	s6,156(a5) # 10009c <a_ref+0x2c>
	lui	a5,0x100
	lw	a5,160(a5) # 1000a0 <a_ref+0x30>
	sw	s1,84(sp)
	lui	s1,0x100
	sw	a5,4(sp)
	lui	a5,0x100
	lw	a5,164(a5) # 1000a4 <a_ref+0x34>
	addi	s1,s1,112 # 100070 <a_ref>
	sw	s7,60(sp)
	sw	a5,8(sp)
	lui	a5,0x100
	lw	a5,168(a5) # 1000a8 <a_ref+0x38>
	lw	s7,8(s1)
	sw	s8,56(sp)
	sw	a5,12(sp)
	lui	a5,0x100
	lw	a5,172(a5) # 1000ac <a_ref+0x3c>
	sw	s9,52(sp)
	lw	s8,4(s1)
	sw	a5,16(sp)
	lui	a5,0x100
	lw	a5,176(a5) # 1000b0 <a_ref+0x40>
	lw	s9,0(s1)
	sw	s0,88(sp)
	sw	a5,20(sp)
	lui	a5,0x100
	lw	a5,180(a5) # 1000b4 <a_ref+0x44>
	sw	s5,68(sp)
	lui	s0,0x100
	sw	a5,24(sp)
	lui	a5,0x100
	lw	a5,184(a5) # 1000b8 <a_ref+0x48>
	li	s5,555
	sw	ra,92(sp)
	sw	a5,28(sp)
	sw	s2,80(sp)
	mv	a5,s7
	sw	s3,76(sp)
	sw	s4,72(sp)
	sw	s10,48(sp)
	sw	s11,44(sp)
	mv	s0,s0
	mv	s7,s5
lab75: 	lw	s5,12(s1)
	lw	s11,16(s1)
	lw	s10,20(s1)
	lw	s4,24(s1)
	lw	s3,28(s1)
	lw	s2,32(s1)
	sw	a5,8(s0) # 100008 <a+0x8>
	sw	s9,0(s0)
	sw	s8,4(s0)
	sw	s5,12(s0)
	sw	s11,16(s0)
	sw	s10,20(s0)
	sw	s4,24(s0)
	sw	s3,28(s0)
	sw	s2,32(s0)
	sw	a5,0(sp)
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
	bnez	s7,lab75
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
	blez	a0,lab76
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
	sw	s8,8(sp)
	sw	s9,4(sp)
	mv	s0,a2
	blez	a2,lab77
	mv	s2,a3
	blez	a3,lab77
	mv	s3,a0
	li	a0,999
	bne	a2,a1,lab78
	lui	s1,0x100
	mv	s1,s1
	lw	s6,0(s1) # 100000 <a>
	lui	s5,0x100
	lw	a1,188(s5) # 1000bc <a_ref+0x4c>
	mv	a0,s6
	jal	ra,__mulsf3
	li	a1,0
	jal	ra,__addsf3
	li	a5,1
	mv	s4,a0
	beq	s0,a5,lab79
	lw	s8,4(s1)
	lui	s7,0x100
	lw	a1,192(s7) # 1000c0 <a_ref+0x50>
	mv	a0,s8
	jal	ra,__mulsf3
	mv	a1,s4
	jal	ra,__addsf3
	li	a5,2
	mv	s4,a0
	beq	s0,a5,lab80
	lw	a0,8(s1)
	li	a1,0
	jal	ra,__mulsf3
	mv	a1,a0
	mv	a0,s4
	jal	ra,__addsf3
	mv	s4,a0
lab80: 	sw	s4,72(s1)
	li	a5,1
	beq	s2,a5,lab81
	li	a1,0
	mv	a0,s6
	jal	ra,__mulsf3
	li	a1,0
	jal	ra,__addsf3
	lui	a5,0x100
	lw	a1,196(a5) # 1000c4 <a_ref+0x54>
	mv	s4,a0
	mv	a0,s8
	jal	ra,__mulsf3
	mv	a1,s4
	jal	ra,__addsf3
	li	a5,2
	mv	s4,a0
	beq	s0,a5,lab82
	lw	a1,8(s1)
	mv	a0,a1
	jal	ra,__addsf3
	mv	a1,a0
	mv	a0,s4
	jal	ra,__addsf3
	mv	s4,a0
lab82: 	sw	s4,76(s1)
	li	s8,2
	beq	s2,s8,lab81
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
	beq	s0,s8,lab83
	lw	a1,188(s5)
	lw	a0,8(s1)
	jal	ra,__mulsf3
	mv	a1,a0
	mv	a0,s4
	jal	ra,__addsf3
	mv	s4,a0
lab83: 	sw	s4,80(s1)
lab81: 	li	a5,1
	beq	s3,a5,lab84
	lw	s8,12(s1)
	lw	a1,188(s5)
	mv	a0,s8
	jal	ra,__mulsf3
	li	a1,0
	jal	ra,__addsf3
	lw	s6,16(s1)
	lw	a1,192(s7)
	mv	s4,a0
	mv	a0,s6
	jal	ra,__mulsf3
	mv	a1,s4
	jal	ra,__addsf3
	li	a5,2
	mv	s4,a0
	beq	s0,a5,lab85
	lw	a0,20(s1)
	li	a1,0
	jal	ra,__mulsf3
	mv	a1,a0
	mv	a0,s4
	jal	ra,__addsf3
	mv	s4,a0
lab85: 	sw	s4,84(s1)
	li	a5,1
	beq	s2,a5,lab86
	li	a1,0
	mv	a0,s8
	jal	ra,__mulsf3
	li	a1,0
	jal	ra,__addsf3
	lui	a5,0x100
	lw	a1,196(a5) # 1000c4 <a_ref+0x54>
	mv	s4,a0
	mv	a0,s6
	jal	ra,__mulsf3
	mv	a1,s4
	jal	ra,__addsf3
	li	a5,2
	mv	s4,a0
	beq	s0,a5,lab87
	lw	a1,20(s1)
	mv	a0,a1
	jal	ra,__addsf3
	mv	a1,a0
	mv	a0,s4
	jal	ra,__addsf3
	mv	s4,a0
lab87: 	sw	s4,88(s1)
	li	s9,2
	beq	s2,s9,lab86
	mv	a1,s8
	mv	a0,s8
	jal	ra,__addsf3
	li	a1,0
	jal	ra,__addsf3
	mv	s4,a0
	li	a1,0
	mv	a0,s6
	jal	ra,__mulsf3
	mv	a1,s4
	jal	ra,__addsf3
	mv	s4,a0
	beq	s0,s9,lab88
	lw	a1,188(s5)
	lw	a0,20(s1)
	jal	ra,__mulsf3
	mv	a1,a0
	mv	a0,s4
	jal	ra,__addsf3
	mv	s4,a0
lab88: 	sw	s4,92(s1)
lab86: 	li	s8,2
	bge	s8,s3,lab84
	lw	s4,24(s1)
	lw	a1,188(s5)
	mv	a0,s4
	jal	ra,__mulsf3
	li	a1,0
	jal	ra,__addsf3
	lw	s6,28(s1)
	lw	a1,192(s7)
	mv	s3,a0
	mv	a0,s6
	jal	ra,__mulsf3
	mv	a1,s3
	jal	ra,__addsf3
	mv	s3,a0
	bge	s8,s0,lab89
	lw	a0,32(s1)
	li	a1,0
	jal	ra,__mulsf3
	mv	a1,a0
	mv	a0,s3
	jal	ra,__addsf3
	mv	s3,a0
lab89: 	sw	s3,96(s1)
	li	a5,1
	beq	s2,a5,lab84
	li	a1,0
	mv	a0,s4
	jal	ra,__mulsf3
	li	a1,0
	jal	ra,__addsf3
	lui	a5,0x100
	lw	a1,196(a5) # 1000c4 <a_ref+0x54>
	mv	s3,a0
	mv	a0,s6
	jal	ra,__mulsf3
	mv	a1,s3
	jal	ra,__addsf3
	li	a5,2
	mv	s3,a0
	bge	a5,s0,lab90
	lw	a1,32(s1)
	mv	a0,a1
	jal	ra,__addsf3
	mv	a1,a0
	mv	a0,s3
	jal	ra,__addsf3
	mv	s3,a0
lab90: 	sw	s3,100(s1)
	li	s3,2
	beq	s2,s3,lab84
	mv	a1,s4
	mv	a0,s4
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
	bge	s3,s0,lab91
	lw	a1,188(s5)
	lw	a0,32(s1)
	jal	ra,__mulsf3
	mv	a1,a0
	mv	a0,s2
	jal	ra,__addsf3
	mv	s2,a0
lab91: 	sw	s2,104(s1)
lab84: 	li	a0,0
lab78: 	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	lw	s5,20(sp)
	lw	s6,16(sp)
	lw	s7,12(sp)
	lw	s8,8(sp)
	lw	s9,4(sp)
	addi	sp,sp,48
	ret
lab77: 	li	a0,999
	j	lab78
lab76: 	li	a0,999
	ret
lab79: 	sw	a0,72(s1)
	beq	s2,s0,lab92
	li	a1,0
	mv	a0,s6
	jal	ra,__mulsf3
	li	a1,0
	jal	ra,__addsf3
	sw	a0,76(s1)
	li	a5,2
	beq	s2,a5,lab93
	mv	a1,s6
	mv	a0,s6
	jal	ra,__addsf3
	li	a1,0
	jal	ra,__addsf3
	sw	a0,80(s1)
	beq	s3,s0,lab84
lab96: 	lw	s0,12(s1)
	lw	a1,188(s5)
	li	s4,2
	mv	a0,s0
	jal	ra,__mulsf3
	li	a1,0
	jal	ra,__addsf3
	mv	a5,a0
	li	a1,0
	sw	a5,84(s1)
	mv	a0,s0
	jal	ra,__mulsf3
	li	a1,0
	jal	ra,__addsf3
	sw	a0,88(s1)
	beq	s2,s4,lab94
	mv	a1,s0
	mv	a0,s0
	jal	ra,__addsf3
	li	a1,0
	jal	ra,__addsf3
	sw	a0,92(s1)
	bge	s4,s3,lab84
	lw	s0,24(s1)
	lw	a1,188(s5)
	mv	a0,s0
	jal	ra,__mulsf3
	li	a1,0
	jal	ra,__addsf3
	sw	a0,96(s1)
lab95: 	li	a1,0
	mv	a0,s0
	jal	ra,__mulsf3
	li	a1,0
	jal	ra,__addsf3
	sw	a0,100(s1)
	li	a5,2
	bge	a5,s2,lab84
	mv	a1,s0
	mv	a0,s0
	jal	ra,__addsf3
	li	a1,0
	jal	ra,__addsf3
	mv	s2,a0
	sw	s2,104(s1)
	j	lab84
lab92: 	beq	s3,s2,lab84
	lw	a1,188(s5)
	lw	a0,12(s1)
	jal	ra,__mulsf3
	li	a1,0
	jal	ra,__addsf3
	sw	a0,84(s1)
lab94: 	li	a5,2
	bge	a5,s3,lab84
	lw	s0,24(s1)
	lw	a1,188(s5)
	mv	a0,s0
	jal	ra,__mulsf3
	li	a1,0
	jal	ra,__addsf3
	sw	a0,96(s1)
	li	a5,1
	bne	s2,a5,lab95
	li	a0,0
	j	lab78
lab93: 	bne	s3,s0,lab96
	j	lab84
minver:
	addi	a4,a0,-2 # 7ffffffe <_stack+0x7fef7ffe>
	li	a5,498
	bltu	a5,a4,lab97
	addi	sp,sp,-16
	sw	s0,8(sp)
	li	a1,0
	mv	s0,a0
	mv	a0,a2
	sw	s1,4(sp)
	sw	ra,12(sp)
	mv	s1,a2
	jal	ra,__lesf2
	blez	a0,lab98
	mv	a0,s0
	lw	s0,8(sp)
	lw	ra,12(sp)
	mv	a1,s1
	lw	s1,4(sp)
	addi	sp,sp,16
	j	minver.part.0
lab98: 	lw	ra,12(sp)
	lw	s0,8(sp)
	lw	s1,4(sp)
	li	a0,999
	addi	sp,sp,16
	ret
lab97: 	li	a0,999
	ret
verify_benchmark:
	addi	sp,sp,-32
	sw	s0,24(sp)
	lui	s0,0x100
	sw	s2,16(sp)
	mv	s0,s0
	lui	s2,0x100
	lw	a1,200(s2) # 1000c8 <a_ref+0x58>
	lw	a0,72(s0) # 100048 <c>
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
	lw	s4,256(s3) # 100100 <a_ref+0x90>
	lw	s5,260(s3)
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab99
	lui	a5,0x100
	lw	a1,204(a5) # 1000cc <a_ref+0x5c>
	lw	a0,36(s0)
	jal	ra,__subsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab99
	lui	a5,0x100
	lw	a1,160(a5) # 1000a0 <a_ref+0x30>
	lw	a0,76(s0)
	jal	ra,__subsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab99
	lui	a5,0x100
	lw	a1,208(a5) # 1000d0 <a_ref+0x60>
	lw	a0,40(s0)
	jal	ra,__addsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab99
	lui	a5,0x100
	lw	a1,212(a5) # 1000d4 <a_ref+0x64>
	lw	a0,80(s0)
	jal	ra,__addsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab99
	lui	a5,0x100
	lw	a1,216(a5) # 1000d8 <a_ref+0x68>
	lw	a0,44(s0)
	jal	ra,__subsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab99
	lw	a1,200(s2)
	lw	a0,84(s0)
	jal	ra,__addsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab99
	lui	a5,0x100
	lw	a1,220(a5) # 1000dc <a_ref+0x6c>
	lw	a0,48(s0)
	jal	ra,__addsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab99
	lui	a5,0x100
	lw	a1,224(a5) # 1000e0 <a_ref+0x70>
	lw	a0,88(s0)
	jal	ra,__addsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab99
	lui	a5,0x100
	lw	a1,228(a5) # 1000e4 <a_ref+0x74>
	lw	a0,52(s0)
	jal	ra,__subsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab99
	lui	a5,0x100
	lw	a1,172(a5) # 1000ac <a_ref+0x3c>
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
	jal	ra,__ltdf2
	bgez	a0,lab99
	lui	a5,0x100
	lw	a1,232(a5) # 1000e8 <a_ref+0x78>
	lw	a0,56(s0)
	jal	ra,__subsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab99
	lui	a5,0x100
	lw	a1,236(a5) # 1000ec <a_ref+0x7c>
	lw	a0,96(s0)
	jal	ra,__addsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab99
	lui	a5,0x100
	lw	a1,240(a5) # 1000f0 <a_ref+0x80>
	lw	a0,60(s0)
	jal	ra,__subsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab99
	lui	a5,0x100
	lw	a1,180(a5) # 1000b4 <a_ref+0x44>
	lw	a0,100(s0)
	jal	ra,__subsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab99
	lui	a5,0x100
	lw	a1,244(a5) # 1000f4 <a_ref+0x84>
	lw	a0,64(s0)
	jal	ra,__addsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab99
	lui	a5,0x100
	lw	a1,248(a5) # 1000f8 <a_ref+0x88>
	lw	a0,104(s0)
	jal	ra,__addsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab99
	lui	a5,0x100
	lw	a1,252(a5) # 1000fc <a_ref+0x8c>
	lw	a0,68(s0)
	jal	ra,__subsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab99
	lui	a5,0x100
	lw	a0,108(a5) # 10006c <det>
	jal	ra,__extendsfdf2
	lui	a5,0x100
	lw	a2,264(a5) # 100108 <a_ref+0x98>
	lw	a3,268(a5)
	jal	ra,__adddf3
	jal	ra,__truncdfsf2
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s2
	mv	a3,s3
	jal	ra,__ltdf2
	slti	a0,a0,0
lab100: 	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	lw	s2,16(sp)
	lw	s3,12(sp)
	lw	s4,8(sp)
	lw	s5,4(sp)
	addi	sp,sp,32
	ret
lab99: 	li	a0,0
	j	lab100
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

a:
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
d:
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
c:
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
det:
	.4byte	0x0000
	.4byte	0x0000


	.section .rodata

a_ref:
	.4byte	0x0000
	.2byte	0x4040
	.4byte	0x0000
	.2byte	0xc0c0
	.4byte	0x0000
	.2byte	0x40e0
	.4byte	0x0000
	.2byte	0x4110
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.2byte	0xc0a0
	.4byte	0x0000
	.2byte	0x40a0
	.4byte	0x0000
	.2byte	0xc100
	.4byte	0x0000
	.2byte	0x40c0
