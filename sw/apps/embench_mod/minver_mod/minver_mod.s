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
lab1: 	addi	a5,a5,1
	addi	a4,a4,4
	bne	a5,s3,lab1
	lui	a5,0x100
	lw	a5,188(a5) # 1000bc <config_mem_words+0x28>
	lw	s10,4(sp)
	lui	s8,0x100
	mv	s7,s8
	mv	s1,s8
	mv	s5,s8
	sw	a5,8(sp)
	mv	s8,s8
	li	s0,0
	li	s6,0
	li	s2,0
	li	s11,1
lab19: 	lw	s0,0(s7)
	li	a1,0
	mv	a0,s0
	jal	ra,__gesf2
	bgez	a0,lab3
	lui	a5,0x80000
	xor	s0,a5,s0
lab3: 	li	a1,0
	mv	a0,s0
	jal	ra,__gtsf2
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
	jal	ra,__ltsf2
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
	jal	ra,__gtsf2
	blez	a0,lab2
	mv	s6,s9
lab2: 	slli	s9,s6,0x1
	add	a5,s9,s6
	add	a5,a5,s2
	slli	a5,a5,0x2
	add	a5,s5,a5
	lw	s4,0(a5) # 80000000 <_stack+0x7fef8000>
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
lab23: 	mv	a1,s4
	jal	ra,__divsf3
	sw	a0,0(s1)
	mv	s9,a0
	beq	s3,s11,lab11
lab25: 	mv	a1,s4
	jal	ra,__divsf3
	sw	a0,4(s1)
	li	a5,2
	bge	a5,s3,lab11
	lw	a0,8(s1)
	mv	a1,s4
	jal	ra,__divsf3
	sw	a0,8(s1)
lab11: 	beqz	s2,lab12
	lw	s0,0(s8) # 100000 <a>
	li	a1,0
	mv	a0,s0
	jal	ra,__nesf2
	bnez	a0,lab13
lab22: 	beq	s2,s11,lab15
	lw	s0,12(s8)
	li	a1,0
	mv	a0,s0
	jal	ra,__nesf2
	bnez	a0,lab16
lab26: 	bge	a5,s3,lab14
	beq	s2,a5,lab14
	lw	s0,24(s8)
	li	a1,0
	mv	a0,s0
	jal	ra,__nesf2
	bnez	a0,lab17
lab14: 	lui	a5,0x100
	lw	a0,188(a5) # 1000bc <config_mem_words+0x28>
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
	lw	a2,0(a5) # 80000000 <_stack+0x7fef8000>
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
	jal	ra,__nesf2
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
lab29: 	mv	a0,s0
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
	jal	ra,__nesf2
	beqz	a0,lab14
lab30: 	mv	a0,s0
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,24(s5)
	jal	ra,__subsf3
	sw	a0,24(s5)
	beq	s2,s11,lab28
lab31: 	mv	a0,s0
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
lab37: 	lui	a5,0x100
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
lab18: 	li	a7,0
	li	t3,1
	li	t4,3
lab36: 	lw	a1,0(a5)
lab33: lab34: 	add	a5,a5,a1
	slli	a4,a1,0x4
	slli	a2,a1,0x2
	add	a5,a5,a7
	mv	a3,a1
	add	a4,s5,a4
	addi	a1,sp,16
	slli	a5,a5,0x2
	addi	a2,a2,2000
	lw	t1,0(a4) # 80000000 <_stack+0x7fef8000>
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
	lw	a5,188(a5) # 1000bc <config_mem_words+0x28>
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
	lw	a5,188(a5) # 1000bc <config_mem_words+0x28>
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
	lw	a5,192(a5) # 1000c0 <config_mem_words+0x2c>
	lui	s0,0x100
	addi	s11,sp,16
	sw	a5,12(sp)
	li	a5,1
	sw	a5,20(sp)
	li	a5,2
	mv	s6,s0
	mv	s8,s0
	mv	s3,s0
	sw	s11,0(sp)
	sw	zero,16(sp)
	sw	a5,24(sp)
	mv	s0,s0
	li	s4,0
	li	s7,0
	j	lab38
lab54: 	mv	a1,s2
	jal	ra,__mulsf3
	sw	a0,4(sp)
lab55: 	mv	a1,s2
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
	jal	ra,__nesf2
	bnez	a0,lab40
lab60: 	beq	s4,a5,lab41
	lw	s5,12(s8)
	li	a1,0
	mv	a0,s5
	jal	ra,__nesf2
	bnez	a0,lab42
lab58: 	beq	s4,a5,lab43
lab57: 	li	a1,0
	mv	a0,s1
	jal	ra,__nesf2
	bnez	a0,lab44
lab43: 	lui	a5,0x100
	lw	a0,188(a5) # 1000bc <config_mem_words+0x28>
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
	jal	ra,__gtsf2
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
	jal	ra,__gtsf2
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
	jal	ra,__ltsf2
	bgez	a0,lab48
	li	s7,2
lab48: 	slli	s5,s7,0x1
	add	a5,s5,s7
	add	a5,a5,s4
	slli	a5,a5,0x2
	add	a5,s3,a5
	lw	s2,0(a5) # 80000000 <_stack+0x7fef8000>
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
	addi	a5,a5,2000 # 800007d0 <_stack+0x7fef87d0>
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
	jal	ra,__nesf2
	beqz	a0,lab43
lab63: 	mv	a0,s1
	jal	ra,__mulsf3
	mv	a1,a0
	lw	a0,24(s3)
	jal	ra,__subsf3
	sw	a0,24(s3)
	li	a5,1
	beq	s4,a5,lab56
lab64: 	mv	a0,s1
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
	jal	ra,__nesf2
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
lab61: 	mv	a1,s2
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
lab62: 	mv	a1,s2
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
lab67: 	lw	a1,0(a5) # 80000000 <_stack+0x7fef8000>
	beq	a1,a6,lab65
lab66: 	add	a5,a5,a1
	slli	a4,a1,0x4
	add	a5,a5,a6
	add	a4,s3,a4
	slli	a5,a5,0x2
	lw	a2,0(a4) # 80000000 <_stack+0x7fef8000>
	add	a5,s3,a5
	mv	a3,a1
	lw	a1,0(a5)
	sw	a2,0(a5)
	slli	a2,a3,0x2
	sw	a1,0(a4)
	lw	a0,0(a5)
	addi	a2,a2,2000 # 800007d0 <_stack+0x7fef87d0>
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
	lw	s6,196(a5) # 1000c4 <config_mem_words+0x30>
	lui	a5,0x100
	lw	a5,200(a5) # 1000c8 <config_mem_words+0x34>
	lui	s1,0x100
	addi	s1,s1,112 # 100070 <a_ref>
	sw	a5,20(sp)
	lui	a5,0x100
	lw	a5,204(a5) # 1000cc <config_mem_words+0x38>
	lw	s8,4(s1)
	lw	s7,8(s1)
	sw	a5,24(sp)
	lui	a5,0x100
	lw	a5,208(a5) # 1000d0 <config_mem_words+0x3c>
	lw	s9,0(s1)
	li	s5,0
	sw	a5,28(sp)
	lui	a5,0x100
	lw	a5,212(a5) # 1000d4 <config_mem_words+0x40>
	lui	s0,0x100
	mv	s11,s8
	sw	a5,32(sp)
	lui	a5,0x100
	lw	a5,216(a5) # 1000d8 <config_mem_words+0x44>
	mv	s0,s0
	mv	s8,s5
	sw	a5,36(sp)
	lui	a5,0x100
	lw	a5,220(a5) # 1000dc <config_mem_words+0x48>
	mv	a4,s7
	sw	a5,40(sp)
	lui	a5,0x100
	lw	a5,224(a5) # 1000e0 <config_mem_words+0x4c>
	sw	a5,44(sp)
lab69: 	lw	s5,16(s1)
	lw	s10,20(s1)
	lw	s4,24(s1)
	lw	s3,28(s1)
	lw	s2,32(s1)
	sw	a4,8(s0) # 100008 <a+0x8>
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
	lw	s6,196(a5) # 1000c4 <config_mem_words+0x30>
	lui	a5,0x100
	lw	a5,200(a5) # 1000c8 <config_mem_words+0x34>
	sw	s1,84(sp)
	lui	s1,0x100
	sw	a5,4(sp)
	lui	a5,0x100
	lw	a5,204(a5) # 1000cc <config_mem_words+0x38>
	addi	s1,s1,112 # 100070 <a_ref>
	sw	s7,60(sp)
	sw	a5,8(sp)
	lui	a5,0x100
	lw	a5,208(a5) # 1000d0 <config_mem_words+0x3c>
	lw	s7,8(s1)
	sw	s8,56(sp)
	sw	a5,12(sp)
	lui	a5,0x100
	lw	a5,212(a5) # 1000d4 <config_mem_words+0x40>
	sw	s9,52(sp)
	lw	s8,4(s1)
	sw	a5,16(sp)
	lui	a5,0x100
	lw	a5,216(a5) # 1000d8 <config_mem_words+0x44>
	lw	s9,0(s1)
	sw	s0,88(sp)
	sw	a5,20(sp)
	lui	a5,0x100
	lw	a5,220(a5) # 1000dc <config_mem_words+0x48>
	sw	s5,68(sp)
	lui	s0,0x100
	sw	a5,24(sp)
	lui	a5,0x100
	lw	a5,224(a5) # 1000e0 <config_mem_words+0x4c>
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
lab70: 	lw	s11,16(s1)
	lw	s10,20(s1)
	lw	s4,24(s1)
	lw	s3,28(s1)
	lw	s2,32(s1)
	sw	a5,8(s0) # 100008 <a+0x8>
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
	mv	s1,s1
	lw	s6,0(s1) # 100000 <a>
	lui	s5,0x100
	lw	a1,228(s5) # 1000e4 <config_mem_words+0x50>
	mv	a0,s6
	jal	ra,__mulsf3
	li	a1,0
	jal	ra,__addsf3
	li	a5,1
	mv	s4,a0
	bge	a5,s0,lab74
	lui	a5,0x100
	lw	a1,232(a5) # 1000e8 <config_mem_words+0x54>
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
	lw	a1,236(a5) # 1000ec <config_mem_words+0x58>
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
	lw	a1,228(s5)
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
	lw	a1,228(s5)
	mv	a0,s7
	jal	ra,__mulsf3
	li	a1,0
	jal	ra,__addsf3
	mv	s6,a0
	bge	s4,s0,lab79
	lui	a5,0x100
	lw	a1,232(a5) # 1000e8 <config_mem_words+0x54>
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
	lw	a1,236(a5) # 1000ec <config_mem_words+0x58>
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
	lw	a1,228(s5)
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
	lw	a1,228(s5)
	mv	a0,s6
	jal	ra,__mulsf3
	li	a1,0
	jal	ra,__addsf3
	li	a5,1
	mv	s3,a0
	bge	a5,s0,lab85
	lui	a5,0x100
	lw	a1,232(a5) # 1000e8 <config_mem_words+0x54>
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
	lw	a1,236(a5) # 1000ec <config_mem_words+0x58>
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
	lw	a1,228(s5)
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
	addi	a4,a0,-2 # 7ffffffe <_stack+0x7fef7ffe>
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
	mv	s0,s0
	lui	s2,0x100
	lw	a1,240(s2) # 1000f0 <config_mem_words+0x5c>
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
	lw	s4,296(s3) # 100128 <config_mem_words+0x94>
	lw	s5,300(s3)
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,244(a5) # 1000f4 <config_mem_words+0x60>
	lw	a0,36(s0)
	jal	ra,__subsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,200(a5) # 1000c8 <config_mem_words+0x34>
	lw	a0,76(s0)
	jal	ra,__subsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,248(a5) # 1000f8 <config_mem_words+0x64>
	lw	a0,40(s0)
	jal	ra,__addsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,252(a5) # 1000fc <config_mem_words+0x68>
	lw	a0,80(s0)
	jal	ra,__addsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,256(a5) # 100100 <config_mem_words+0x6c>
	lw	a0,44(s0)
	jal	ra,__subsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab91
	lw	a1,240(s2)
	lw	a0,84(s0)
	jal	ra,__addsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,260(a5) # 100104 <config_mem_words+0x70>
	lw	a0,48(s0)
	jal	ra,__addsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,264(a5) # 100108 <config_mem_words+0x74>
	lw	a0,88(s0)
	jal	ra,__addsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,268(a5) # 10010c <config_mem_words+0x78>
	lw	a0,52(s0)
	jal	ra,__subsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,212(a5) # 1000d4 <config_mem_words+0x40>
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
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,272(a5) # 100110 <config_mem_words+0x7c>
	lw	a0,56(s0)
	jal	ra,__subsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,276(a5) # 100114 <config_mem_words+0x80>
	lw	a0,96(s0)
	jal	ra,__addsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,280(a5) # 100118 <config_mem_words+0x84>
	lw	a0,60(s0)
	jal	ra,__subsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,220(a5) # 1000dc <config_mem_words+0x48>
	lw	a0,100(s0)
	jal	ra,__subsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,284(a5) # 10011c <config_mem_words+0x88>
	lw	a0,64(s0)
	jal	ra,__addsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,288(a5) # 100120 <config_mem_words+0x8c>
	lw	a0,104(s0)
	jal	ra,__addsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a1,292(a5) # 100124 <config_mem_words+0x90>
	lw	a0,68(s0)
	jal	ra,__subsf3
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s4
	mv	a3,s5
	jal	ra,__ltdf2
	bgez	a0,lab91
	lui	a5,0x100
	lw	a0,108(a5) # 10006c <det>
	jal	ra,__extendsfdf2
	lui	a5,0x100
	lw	a2,304(a5) # 100130 <config_mem_words+0x9c>
	lw	a3,308(a5)
	jal	ra,__adddf3
	jal	ra,__truncdfsf2
	and	a0,s1,a0
	jal	ra,__extendsfdf2
	mv	a2,s2
	mv	a3,s3
	jal	ra,__ltdf2
	slti	a0,a0,0
lab92: 	lw	s0,24(sp)
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
