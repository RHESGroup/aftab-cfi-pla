	.text
	.globl  main
	.type  main, @function

match_op:
	lbu	a5,0(a0)
	li	a4,92
	beq	a5,a4,lab0
	bltu	a4,a5,lab1
	li	a4,36
	li	a0,-1
	beq	a5,a4,lab2
	li	a4,46
	li	a0,1
	bne	a5,a4,lab3
lab2: 	ret
lab1: 	li	a4,124
	li	a0,-4
	beq	a5,a4,lab2
lab3: 	lui	a4,0x1
	add	a2,a2,a4
	lw	a0,-1680(a2)
	lbu	a3,0(a1)
	andi	a0,a0,1
	beqz	a0,lab4
	lui	a4,0x100
	addi	a4,a4,73 # 100049 <_ctype_+0x1>
	add	a2,a4,a5
	lbu	a2,0(a2)
	li	a1,1
	andi	a2,a2,3
	bne	a2,a1,lab5
	addi	a5,a5,32
lab5: 	add	a4,a4,a3
	lbu	a4,0(a4)
	li	a2,1
	andi	a4,a4,3
	beq	a4,a2,lab6
	beq	a5,a3,lab2
lab10: 	ret
lab0: 	lbu	a5,1(a0)
	li	a4,115
	lbu	a3,0(a1)
	beq	a5,a4,lab7
	bltu	a4,a5,lab8
	li	a4,83
	beq	a5,a4,lab9
	li	a4,100
	bne	a5,a4,lab4
	lui	a5,0x100
	addi	a5,a5,73 # 100049 <_ctype_+0x1>
	add	a5,a3,a5
	lbu	a5,0(a5)
	li	a0,1
	andi	a5,a5,4
	beqz	a5,lab10
	ret
lab8: 	li	a4,120
	bne	a5,a4,lab4
	lbu	a2,2(a0)
	lui	a4,0x100
	addi	a4,a4,73 # 100049 <_ctype_+0x1>
	add	a5,a4,a2
	lbu	a5,0(a5)
	li	a6,1
	mv	a1,a2
	andi	a7,a5,3
	bne	a7,a6,lab11
	lui	a5,0x100
	addi	a5,a5,105 # 100069 <_bss_end+0x15>
	add	a2,a2,a5
	lbu	a5,0(a2)
	addi	a1,a1,32
lab11: 	andi	a2,a5,4
	addi	a5,a1,-87
	beqz	a2,lab12
	addi	a5,a1,-48
lab12: 	lbu	a2,3(a0)
	li	a0,1
	slli	a5,a5,0x4
	add	a4,a4,a2
	lbu	a4,0(a4)
	mv	a1,a2
	andi	a6,a4,3
	bne	a6,a0,lab13
	lui	a4,0x100
	addi	a4,a4,105 # 100069 <_bss_end+0x15>
	add	a2,a2,a4
	lbu	a4,0(a2)
	addi	a1,a1,32
lab13: 	andi	a4,a4,4
	addi	a2,a1,-87
	beqz	a4,lab14
	addi	a2,a1,-48
lab14: 	or	a5,a5,a2
	li	a0,1
	bne	a3,a5,lab10
	ret
lab4: 	li	a0,1
	beq	a5,a3,lab2
	j	lab10
lab9: 	lui	a5,0x100
	addi	a5,a5,73 # 100049 <_ctype_+0x1>
	add	a5,a3,a5
	lbu	a5,0(a5)
	li	a0,1
	andi	a5,a5,8
	bnez	a5,lab10
	ret
lab7: 	lui	a5,0x100
	addi	a5,a5,73 # 100049 <_ctype_+0x1>
	add	a5,a3,a5
	lbu	a5,0(a5)
	li	a0,1
	andi	a5,a5,8
	beqz	a5,lab10
	ret
lab6: 	addi	a3,a3,32
	beq	a5,a3,lab2
	j	lab10
bar:
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
	sw	a2,12(sp)
	blez	a1,lab15
	mv	s0,a3
	bltz	a3,lab15
	lui	s6,0x100
	mv	s1,a5
	lui	s5,0x1
	addi	a5,s6,73 # 100049 <_ctype_+0x1>
	mv	s11,a1
	mv	s2,a0
	mv	s3,a4
	li	s4,0
	li	t4,0
	li	s7,45
	add	s5,a4,s5
	sw	a5,24(sp)
lab42: 	lbu	a1,0(t3)
	li	a5,40
	bne	a1,a5,lab16
	addi	a5,s1,1
	slli	a5,a5,0x4
	add	a5,s3,a5
	lw	a3,4(a5)
	addi	s6,a3,2
	blez	s6,lab17
lab56: 	bge	s8,s11,lab18
lab35: lab92: 	add	s9,s2,s9
	lbu	a4,0(s9)
	li	a3,1
	addi	a5,a4,-42
	zext.b	a5,a5
	bltu	a3,a5,lab19
lab28: 	sw	a5,20(sp)
	blt	a5,s11,lab20
lab78: 	sw	a5,28(sp)
	lw	a5,12(sp)
	sw	s4,24(sp)
	mv	s10,s4
	add	s5,a5,s4
	lw	a5,20(sp)
	sub	s7,s0,s4
	sub	a4,s11,a5
	add	a5,s2,a5
	sw	a4,32(sp)
	sw	a5,36(sp)
lab23: 	mv	a5,s1
	mv	a4,s3
	mv	a3,s7
	mv	a2,s5
	mv	a1,s6
	sw	t3,16(sp)
	jal	ra,bar
	cfed 2546
	lw	t3,16(sp)
	mv	s8,a0
	blez	a0,lab21
	lw	a4,20(sp)
	add	a5,a0,s10
	mv	s10,a5
	sub	s7,s0,a5
	blt	a4,s11,lab22
	lw	a4,12(sp)
	add	s5,a4,a5
lab60: 	j	lab23
lab16: 	li	a5,91
	beq	a1,a5,lab24
	li	a5,92
	beq	a1,a5,lab25
	addi	a5,a1,-42
	zext.b	a5,a5
	li	a4,1
	bgeu	a4,a5,lab26
	li	a5,63
	beq	a1,a5,lab26
	addi	s8,t4,1
	li	s6,1
	bge	s8,s11,lab27
	li	s9,1
	li	s6,1
lab54: 	add	s9,s2,s9
	lbu	a4,0(s9)
	li	a3,1
	addi	a5,a4,-42
	zext.b	a5,a5
	bgeu	a3,a5,lab28
lab19: 	li	a5,63
	bne	a4,a5,lab18
	lw	a5,12(sp)
	sub	a3,s0,s4
	mv	a4,s3
	add	a2,a5,s4
	mv	a1,s6
	mv	a5,s1
	mv	a0,t3
	sw	t4,16(sp)
	jal	ra,bar
	cfed 1104
	lw	t4,16(sp)
	not	a5,a0
	srai	a5,a5,0x1f
	and	a0,a0,a5
	addi	t4,t4,1
	add	s4,s4,a0
	add	a3,t4,s6
	j	lab29
lab24: 	sub	a0,s11,t4
	addi	a0,a0,-1
	li	a3,0
	li	a6,93
	li	t5,92
	li	t6,120
	bnez	a0,lab30
	j	lab31
lab34: 	bge	a3,a0,lab32
lab30: 	addi	a5,a3,1
	add	a5,t3,a5
	lbu	a4,0(a5)
	li	a2,1
	beq	a4,a6,lab33
	bne	a4,t5,lab34
	lbu	a5,1(a5)
	li	a2,4
	beq	a5,t6,lab34
	li	a2,2
	add	a3,a3,a2
	blt	a3,a0,lab30
lab32: 	bne	a0,a3,lab17
	addi	s6,a0,2
	add	s8,t4,s6
	blt	s8,s11,lab35
lab18: 	li	a5,91
	beq	a1,a5,lab36
	li	a5,40
	bne	a1,a5,lab27
	lw	a5,1600(s3)
	addi	s9,s1,1
	bge	s9,a5,lab37
	lw	a4,12(sp)
	sub	a5,s11,s8
	sub	a1,s0,s4
	sw	a5,20(sp)
	sw	a1,28(sp)
	add	s8,a4,s4
	bgtz	a5,lab38
	mv	a3,s9
	mv	a2,s3
	mv	a0,s8
	sw	t4,16(sp)
	jal	ra,doh
	mv	s10,a0
	bltz	a0,lab39
	lw	t4,16(sp)
	add	t6,a0,s4
	add	a3,t4,s6
lab76: lab93: 	beqz	a5,lab40
	slli	s1,s1,0x3
	add	a5,a5,s1
	sw	s8,0(a5)
	sw	s10,4(a5)
lab40: 	mv	s1,s9
lab29: 	mv	t4,a3
	bge	a3,s11,lab41
	bge	s0,s4,lab42
lab41: 	mv	s10,s4
	j	lab39
lab26: 	li	s10,-2
lab39: 	lw	ra,108(sp)
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
	lw	s11,60(sp)
	mv	a0,s10
	lw	s10,64(sp)
	addi	sp,sp,112
	cfes 3488
	ret
lab36: 	addi	s9,t4,2
lab91: 	add	a5,s2,s8
	lbu	a4,0(a5)
	sub	a3,s11,s9
	sw	a3,32(sp)
	lw	a3,12(sp)
	sw	a5,28(sp)
	sw	a4,36(sp)
	li	a5,94
	add	a1,a3,s4
	beq	a4,a5,lab43
	lw	a5,32(sp)
	bltz	a5,lab44
lab67: 	li	s8,0
lab50: 	add	s10,a5,s8
	lbu	s9,0(s10)
	li	a5,93
	beq	s9,a5,lab45
	bgtz	a0,lab46
	beq	s9,s7,lab47
	lbu	a3,1(s10)
	beq	a3,s7,lab48
lab69: 	mv	a0,s10
	sw	t4,20(sp)
	sw	a1,16(sp)
	jal	ra,match_op
	li	a5,92
	lw	a1,16(sp)
	lw	t4,20(sp)
	li	a3,1
	beq	s9,a5,lab49
lab66: lab72: 	bge	a5,s8,lab50
lab45: 	lw	a4,36(sp)
	li	a5,94
	beq	a4,a5,lab51
	bgtz	a0,lab52
lab44: 	li	s10,-1
	j	lab39
lab25: 	lbu	a4,1(t3)
	li	a5,120
	beq	a4,a5,lab53
	li	s9,2
	li	s6,2
lab77: 	blt	s8,s11,lab54
lab64: 	bge	s4,s0,lab44
	lw	a5,12(sp)
	mv	a2,s3
	mv	a0,t3
	add	a1,a5,s4
	jal	ra,match_op
	mv	s10,a0
	blez	a0,lab39
	lw	t4,16(sp)
	add	s4,s4,a0
	add	a3,t4,s6
	j	lab29
lab27: 	li	a5,94
	bne	a1,a5,lab55
	bnez	s4,lab44
lab65: 	blt	t4,s11,lab42
	mv	s10,s4
	j	lab39
lab33: 	addi	s6,a3,2
	j	lab56
lab21: 	lbu	a4,0(s9)
	li	a5,43
	beq	a4,a5,lab57
lab63: 	bge	a5,s11,lab58
lab94: 	lw	a0,36(sp)
	mv	a5,s1
	mv	a4,s3
	mv	a3,s7
	mv	a2,s5
	sw	t3,16(sp)
	jal	ra,bar
	cfed 2099
	sw	a0,28(sp)
	lw	a5,24(sp)
	lw	t3,16(sp)
	bltz	a0,lab59
	add	a5,s10,a0
lab59: 	bgtz	s8,lab60
	lbu	a4,0(s9)
	mv	s10,a5
lab58: 	bltz	s8,lab61
lab68: 	beq	a4,a5,lab62
	bne	s10,s4,lab39
	lw	a5,20(sp)
	bge	a5,s11,lab39
	lw	a5,28(sp)
	bgez	a5,lab39
	j	lab44
lab57: 	beqz	a0,lab63
	lw	s10,24(sp)
lab62: 	bne	s10,s4,lab39
	j	lab44
lab55: 	li	a5,36
	bne	a1,a5,lab64
	beq	s0,s4,lab65
	li	s10,-1
	j	lab39
lab49: 	lbu	a5,1(s10)
	li	a4,120
	li	a3,4
	beq	a5,a4,lab66
	li	a3,2
	j	lab66
lab43: 	lw	a5,32(sp)
	lw	a4,28(sp)
	addi	a5,a5,-1
	addi	a4,a4,1
	sw	a5,32(sp)
	sw	a4,28(sp)
	bgez	a5,lab67
lab52: 	addi	s4,s4,1
	add	a3,t4,s6
	j	lab29
lab61: 	li	a5,42
	bne	a4,a5,lab68
	lw	a0,20(sp)
	lw	a2,12(sp)
	mv	a4,s3
	sub	a1,s11,a0
	mv	a5,s1
	sub	a3,s0,s4
	add	a2,a2,s4
	add	a0,s2,a0
	jal	ra,bar
	cfed 3741
	sw	a0,28(sp)
	lbu	a4,0(s9)
	blez	a0,lab68
	add	s10,a0,s4
	j	lab68
lab48: 	lbu	a3,2(s10)
	li	a5,93
	beq	a3,a5,lab69
	beqz	a3,lab69
	lw	a0,-1680(s5)
	lbu	a5,0(a1)
	beqz	a0,lab70
	li	a0,0
	bltu	a5,s9,lab71
	sltu	a5,a3,a5
	xori	a0,a5,1
lab71: 	addi	s8,s8,3
	j	lab72
lab17: 	li	s10,-5
	j	lab39
lab15: 	li	s10,0
	j	lab39
lab47: 	mv	a2,s3
	mv	a0,s10
	sw	t4,20(sp)
	sw	a1,16(sp)
	jal	ra,match_op
	lw	a1,16(sp)
	lw	t4,20(sp)
	li	a3,1
	j	lab66
lab38: 	addi	a5,s0,1
	add	a4,s6,t4
	sub	a5,a5,s4
	sw	a5,36(sp)
	add	a5,s2,a4
	sw	a4,44(sp)
	li	t4,1
	sw	a5,40(sp)
lab74: 	mv	a3,s9
	mv	a2,s3
	sub	a1,a5,t4
	mv	a0,s8
	sw	t4,16(sp)
	jal	ra,doh
	mv	s10,a0
	lw	a2,12(sp)
	add	s6,s10,s4
	sw	s6,32(sp)
	lw	a1,20(sp)
	lw	a0,40(sp)
	lw	t4,16(sp)
	mv	a5,s9
	mv	a4,s3
	sub	a3,s0,s6
	add	a2,a2,s6
	bgez	s10,lab73
	lw	a5,28(sp)
	blt	a5,t4,lab39
	addi	t4,t4,1
	j	lab74
lab73: 	jal	ra,bar
	cfed 5341
	lw	a3,44(sp)
	bgez	a0,lab75
	lw	a5,28(sp)
	lw	t4,16(sp)
	lw	t6,32(sp)
	blt	a5,t4,lab76
	addi	t4,t4,1
	j	lab74
lab53: 	li	s9,4
	li	s6,4
	j	lab77
lab20: 	add	a5,s2,a5
	lbu	a4,0(a5)
	li	a5,63
	bne	a4,a5,lab78
	addi	a5,s8,2
	sw	a5,20(sp)
	li	a4,-1
	sub	s7,s11,a5
	add	a5,s2,a5
	mv	s10,s4
	mv	s5,s4
	sw	a4,28(sp)
	sw	a5,24(sp)
lab82: 	mv	a0,t3
	sub	a3,s0,s5
	add	a2,a5,s5
	mv	a4,s3
	mv	a5,s1
	mv	a1,s6
	sw	t3,16(sp)
	jal	ra,bar
	cfed 1927
	lw	t3,16(sp)
	mv	s8,a0
	blez	a0,lab79
	add	s5,s5,a0
lab88: 	blt	a5,s11,lab80
	mv	s10,s5
lab89: lab90: lab83: 	j	lab61
lab81: 	bgtz	s8,lab82
	lbu	a4,0(s9)
	j	lab83
lab46: 	lw	a4,36(sp)
	li	a5,94
	bne	a4,a5,lab52
	li	s10,-1
	j	lab39
lab70: 	lw	a4,24(sp)
	add	a2,a4,a5
	lbu	a2,0(a2)
	li	a4,1
	andi	a2,a2,3
	bne	a2,a4,lab84
	addi	a5,a5,32
lab84: 	lw	a2,24(sp)
	li	a6,1
	mv	a4,s9
	add	a2,a2,s9
	lbu	a2,0(a2)
	andi	a2,a2,3
	beq	a2,a6,lab85
lab87: 	lw	a4,24(sp)
	li	a2,1
	add	a4,a4,a3
	lbu	a4,0(a4)
	andi	a4,a4,3
	bne	a4,a2,lab86
	addi	a3,a3,32
lab86: 	slt	a5,a3,a5
	xori	a0,a5,1
	addi	s8,s8,3
	j	lab72
lab85: 	addi	a4,s9,32
	j	lab87
lab79: 	lbu	a4,0(s9)
	li	a5,43
	bne	a4,a5,lab88
	beqz	a0,lab88
	sw	s10,24(sp)
	lw	s10,24(sp)
	j	lab62
lab80: 	lw	a2,12(sp)
	lw	a0,24(sp)
	mv	a5,s1
	mv	a4,s3
	sub	a3,s0,s5
	add	a2,a2,s5
	mv	a1,s7
	sw	t3,16(sp)
	jal	ra,bar
	cfed 3765
	sw	a0,28(sp)
	lw	t3,16(sp)
	bltz	a0,lab89
	add	s10,a0,s5
	bge	s4,s10,lab81
	j	lab90
lab31: 	addi	s9,t4,2
	mv	s8,s9
	li	s6,2
	bge	s9,s11,lab91
	mv	s9,s6
	j	lab92
lab75: 	mv	s4,s6
	j	lab93
lab51: 	blez	a0,lab52
	li	s10,-1
	j	lab39
lab37: 	li	s10,-4
	j	lab39
lab22: 	lw	a5,12(sp)
	add	s5,a5,s10
	j	lab94
doh:
	addi	sp,sp,-32
	sw	s4,8(sp)
	slli	s4,a3,0x4
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s5,4(sp)
	add	s4,a2,s4
	sw	ra,28(sp)
	li	s0,0
	lw	a5,12(s4)
	mv	s1,a3
	mv	s5,a2
	mv	s3,a0
	mv	s2,a1
	beqz	s0,lab95
lab99: 	add	a6,s0,a7
	addi	a6,a6,199
	slli	a6,a6,0x3
	add	a6,s5,a6
	lw	a0,8(a6)
	addi	a0,a0,1
	beqz	a5,lab96
	bne	a5,s0,lab97
	lw	a1,0(s4)
	lw	a5,4(s4)
	add	a1,a1,a5
	sub	a1,a1,a0
lab101: 	mv	a4,s5
	mv	a3,s2
	mv	a2,s3
	jal	ra,bar
	cfed 4803
	bgtz	a0,lab98
lab100: 	addi	a4,s0,1
	bge	s0,a5,lab98
	mv	s0,a4
	bnez	s0,lab99
lab95: 	lw	a0,0(s4)
	beqz	a5,lab96
	lw	a7,8(s4)
lab97: 	add	a7,s0,a7
	addi	a7,a7,200
	slli	a7,a7,0x3
	add	a7,s5,a7
	lw	a1,8(a7)
	mv	a5,s1
	mv	a4,s5
	sub	a1,a1,a0
	mv	a3,s2
	mv	a2,s3
	jal	ra,bar
	cfed 908
	blez	a0,lab100
lab98: 	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	lw	s2,16(sp)
	lw	s3,12(sp)
	lw	s4,8(sp)
	lw	s5,4(sp)
	addi	sp,sp,32
	ret
lab96: 	lw	a1,4(s4)
	j	lab101
foo:
	addi	sp,sp,-80
	sw	s0,72(sp)
	sw	s2,64(sp)
	sw	s11,28(sp)
	sw	ra,76(sp)
	sw	s1,68(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	s5,52(sp)
	sw	s6,48(sp)
	sw	s7,44(sp)
	sw	s8,40(sp)
	sw	s9,36(sp)
	sw	s10,32(sp)
	li	a5,1
	sw	a0,0(a4)
	sw	a1,4(a4)
	sw	a5,1600(a4)
	sw	a2,4(sp)
	mv	s0,a4
	mv	s11,a0
	mv	s2,a3
	beqz	a1,lab102
	addi	a5,a1,-3
	sw	a5,8(sp)
	lui	a5,0x100
	lui	a2,0x1
	addi	a5,a5,73 # 100049 <_ctype_+0x1>
	mv	s9,a1
	li	s6,0
	li	s7,0
	li	a3,91
	li	s8,92
	li	t4,124
	li	t6,40
	li	s1,-1
	li	s3,99
	add	s4,a4,a2
	li	s10,120
	addi	s5,a1,-1
	sw	a5,12(sp)
lab108: 	lbu	a5,0(a0)
	beq	a5,a3,lab103
	beq	a5,s8,lab104
	bne	a5,t4,lab105
	lw	a5,-1692(s4)
	blt	s3,a5,lab106
	lw	a4,1600(s0)
	addi	a4,a4,-1
	slli	a1,a4,0x4
	add	a1,s0,a1
	lw	a1,4(a1)
	beq	a1,s1,lab107
	mv	a4,s6
lab107: 	slli	a1,a5,0x3
	add	a1,s0,a1
	sw	a4,1604(a1)
	sw	a0,1608(a1)
	addi	a5,a5,1
	sw	a5,-1692(s4)
	addi	s7,s7,1
lab135: lab136: 	lui	a5,0x1
	add	a5,s0,a5
	lw	a0,-1692(a5) # 964 <bar+0x498>
	lw	s11,0(s0)
	lw	t1,1600(s0)
	blez	a0,lab110
lab149: 	slli	a5,a0,0x3
	mv	a4,s0
	add	a1,a1,a5
	li	a7,0
lab114: 	mv	a5,a4
	bge	a7,a0,lab111
lab113: 	lw	a3,1604(a4)
	bge	a2,a3,lab112
	sw	a2,1604(a4)
	lw	a6,1616(a5)
	lw	a2,1608(a4)
	sw	a6,1608(a4)
	sw	a3,1612(a5)
	sw	a2,1616(a5)
lab112: 	addi	a5,a5,8
	bne	a5,a1,lab113
	addi	a4,a4,8
	addi	a7,a7,1
	mv	a5,a4
	blt	a7,a0,lab113
lab111: 	addi	a4,a4,8
	bne	a7,a0,lab114
lab110: 	blez	t1,lab115
lab150: 	sw	zero,12(s0)
	sw	a3,8(s0)
	addi	a2,s0,12
	li	a1,0
	bge	a3,a0,lab116
lab120: 	add	a4,s0,a4
	j	lab117
lab119: 	addi	a3,a3,1
	addi	a5,a5,1
	sw	a5,0(a2)
	beq	a3,a0,lab118
lab117: 	lw	a5,1604(a4)
	addi	a4,a4,8
	beq	a5,a1,lab119
lab118: 	addi	a1,a1,1
	beq	a1,t1,lab115
	sw	zero,16(a2)
	sw	a3,12(a2)
	addi	a2,a2,16
	blt	a3,a0,lab120
lab116: 	addi	a1,a1,1
	slli	a5,a1,0x4
	add	a5,s0,a5
	beq	a1,t1,lab115
lab121: 	sw	a3,8(a5)
	addi	a1,a1,1
	addi	a5,a5,16
	blt	a1,t1,lab121
lab115: 	lbu	s7,0(s11)
	bltz	s2,lab122
	lw	a3,12(s0)
	li	s5,0
	li	s6,94
lab148: 	li	s1,0
	sub	s4,s2,s5
	add	s8,a5,s5
	beqz	s1,lab123
lab128: 	add	a5,s1,a4
	addi	a5,a5,199
	slli	a5,a5,0x3
	add	a5,s0,a5
	lw	a0,8(a5)
	addi	a0,a0,1
	beqz	a3,lab124
	bne	s1,a3,lab125
	lw	a1,0(s0)
	lw	a5,4(s0)
	add	a1,a1,a5
	sub	a1,a1,a0
lab147: 	mv	a4,s0
	mv	a3,s4
	mv	a2,s8
	jal	ra,bar
	cfed 7560
	bgtz	a0,lab126
lab129: 	addi	a5,s1,1
	bge	s1,a3,lab127
	mv	s1,a5
	bnez	s1,lab128
lab123: 	lw	a0,0(s0)
	beqz	a3,lab124
	lw	a4,8(s0)
lab125: 	add	a5,s1,a4
	addi	a5,a5,200
	slli	a5,a5,0x3
	add	a5,s0,a5
	lw	a1,8(a5)
	mv	a4,s0
	li	a5,0
	sub	a1,a1,a0
	mv	a3,s4
	mv	a2,s8
	jal	ra,bar
	cfed 3001
	blez	a0,lab129
lab126: 	add	a0,a0,s5
lab139: 	lw	s0,72(sp)
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
	cfes 7006
	ret
lab103: 	sub	a1,s9,s7
	addi	a1,a1,-1
	li	a6,0
	li	t0,93
	bnez	a1,lab130
	j	lab131
lab134: 	bge	a6,a1,lab132
lab130: 	addi	a5,a6,1
	add	a5,a0,a5
	lbu	a4,0(a5)
	li	t2,1
	beq	a4,t0,lab133
	bne	a4,s8,lab134
	lbu	a5,1(a5)
	li	t2,4
	beq	a5,s10,lab134
	li	t2,2
	add	a6,a6,t2
	blt	a6,a1,lab130
lab132: 	bne	a1,a6,lab135
	addi	a6,a1,2
	add	s7,s7,a6
lab143: 	j	lab136
lab105: 	bne	a5,t6,lab137
	lw	a4,1600(s0)
	blt	s3,a4,lab138
	slli	a5,a4,0x4
	addi	s7,s7,1
	add	a5,s0,a5
	add	a1,s11,s7
	sw	a1,0(a5)
	sw	s1,4(a5)
	lw	a5,-1684(s4)
	addi	a1,a4,1
	sw	a1,1600(s0)
	addi	s6,s6,1
	blez	a5,lab135
	bge	a5,a4,lab135
	li	a0,-7
	j	lab139
lab104: 	lbu	a4,1(a0)
	li	a5,4
	beq	a4,s10,lab140
	li	a5,2
lab140: 	bge	s7,s5,lab141
	lbu	a1,1(a0)
	beq	a1,s10,lab142
	sw	a5,0(sp)
	lui	a5,0x100
	addi	a0,a5,124 # 10007c <_bss_end+0x28>
	jal	ra,strchr
	beqz	a0,lab141
	lw	a5,0(sp)
	li	a3,91
	li	t4,124
	add	s7,s7,a5
	li	t6,40
	blt	s7,s9,lab108
	j	lab136
lab133: 	addi	a6,a6,2
	add	s7,s7,a6
	j	lab143
lab137: 	li	a4,41
	bne	a5,a4,lab144
	lw	a5,1600(s0)
	addi	a5,a5,-1
	slli	a5,a5,0x4
	add	a4,s0,a5
	lw	a4,4(a4)
	beq	a4,s1,lab145
	slli	a5,s6,0x4
lab145: 	add	a5,s0,a5
	lw	a4,0(a5)
	addi	s6,s6,-1
	sub	a4,a0,a4
	sw	a4,4(a5)
	beq	s6,s1,lab109
	beqz	s7,lab146
	lbu	a5,-1(a0)
	beq	a5,t6,lab122
lab144: 	addi	s7,s7,1
	blt	s7,s9,lab108
	j	lab136
lab142: 	lw	a4,8(sp)
	bge	s7,a4,lab141
	lbu	a4,2(a0)
	lw	a2,12(sp)
	add	a4,a4,a2
	lbu	a4,0(a4)
	andi	a4,a4,68
	beqz	a4,lab141
	lbu	a4,3(a0)
	add	a4,a4,a2
	lbu	a4,0(a4)
	andi	a4,a4,68
	beqz	a4,lab141
	add	s7,s7,a5
	blt	s7,s9,lab108
	j	lab136
lab146: 	li	s7,1
	blt	s7,s9,lab108
	j	lab136
lab124: 	lw	a1,4(s0)
	j	lab147
lab127: 	beqz	a0,lab126
	beq	s7,s6,lab139
	addi	s5,s5,1
	bge	s2,s5,lab148
	j	lab139
lab131: 	li	a6,2
	add	s7,s7,a6
	j	lab143
lab141: 	li	a0,-6
	j	lab139
lab106: 	li	a0,-8
	j	lab139
lab138: 	li	a0,-9
	j	lab139
lab109: 	li	a0,-3
	j	lab139
lab122: 	li	a0,-1
	j	lab139
lab102: 	lui	a5,0x1
	add	a5,a4,a5
	lw	a0,-1692(a5) # 964 <bar+0x498>
	li	t1,1
	bgtz	a0,lab149
	j	lab150
slre_match.constprop.0:
	addi	sp,sp,-2032
	sw	s0,2024(sp)
	sw	s1,2020(sp)
	sw	ra,2028(sp)
	lui	a4,0x1
	addi	sp,sp,-416
	lbu	a3,0(a0)
	mv	s0,a0
	addi	a0,a4,-1680 # 970 <bar+0x4a4>
	add	a0,a0,sp
	sw	zero,0(a0)
	addi	a0,a4,-1668
	add	a0,a0,sp
	sw	zero,0(a0)
	addi	a0,a4,-1672
	addi	a4,a4,-1676
	add	a4,a4,sp
	li	a5,1
	add	a0,a0,sp
	sw	a2,0(a4)
	sw	zero,1612(sp)
	sw	a5,0(a0)
	li	a4,40
	mv	s1,a1
	beq	a3,a4,lab151
lab152: 	jal	ra,strlen
	lui	a4,0xfffff
	lui	a5,0x1
	addi	a4,a4,1676 # fffff68c <_stack+0xffef768c>
	addi	a5,a5,-1664 # 980 <bar+0x4b4>
	add	a5,a5,a4
	lui	a2,0x100
	mv	a1,a0
	add	a4,a5,sp
	mv	a3,s1
	mv	a0,s0
	mv	a2,a2
	jal	ra,foo
	cfed 7771
	addi	sp,sp,416
	lw	ra,2028(sp)
	lw	s0,2024(sp)
	lw	s1,2020(sp)
	addi	sp,sp,2032
	cfes 7975
	ret
lab151: 	lbu	a3,1(s0)
	li	a4,63
	bne	a3,a4,lab152
	lbu	a3,2(s0)
	li	a4,105
	bne	a3,a4,lab152
	lbu	a3,3(s0)
	li	a4,41
	bne	a3,a4,lab152
	lui	a4,0x1
	addi	a4,a4,-1668 # 97c <bar+0x4b0>
	add	a4,a4,sp
	sw	a5,0(a4)
	addi	s0,s0,4
	j	lab152
benchmark_body.constprop.0:
	addi	sp,sp,-48
	sw	s5,20(sp)
	lui	s5,0x100
	sw	s2,32(sp)
	sw	s4,24(sp)
	mv	s2,s5
	lui	s4,0x100
	sw	s3,28(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	li	s3,110
	addi	s4,s4,48 # 100030 <regexes>
	addi	s2,s2,64
lab154: 	jal	ra,strlen
	mv	s1,a0
	sw	zero,4(sp)
	mv	s0,s4
lab153: 	addi	a2,sp,8
	mv	a1,s1
	jal	ra,slre_match.constprop.0
	cfed 2048
	lw	a5,4(sp)
	addi	s0,s0,4
	add	a5,a0,a5
	sw	a5,4(sp)
	bne	s0,s2,lab153
	addi	s3,s3,-1
	bnez	s3,lab154
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	a0,4(sp)
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	lw	s5,20(sp)
	addi	sp,sp,48
	cfes 4377
	ret
benchmark_body.isra.0:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	blez	a0,lab155
	lui	s6,0x100
	mv	s2,s6
	lui	s5,0x100
	mv	s4,a0
	li	s3,0
	addi	s5,s5,48 # 100030 <regexes>
	addi	s2,s2,64
lab157: 	jal	ra,strlen
	mv	s1,a0
	sw	zero,4(sp)
	mv	s0,s5
lab156: 	addi	a2,sp,8
	mv	a1,s1
	jal	ra,slre_match.constprop.0
	cfed 1975
	lw	a5,4(sp)
	addi	s0,s0,4
	add	a5,a0,a5
	sw	a5,4(sp)
	bne	s0,s2,lab156
	addi	s3,s3,1
	bne	s3,s4,lab157
lab155: 	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	a5,4(sp)
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	lw	s5,20(sp)
	lw	s6,16(sp)
	addi	sp,sp,48
	cfes 4241
	ret
slre_match:
	addi	sp,sp,-2032
	lui	a5,0x1
	sw	s0,2024(sp)
	sw	s1,2020(sp)
	sw	s2,2016(sp)
	sw	ra,2028(sp)
	addi	a6,a5,-1680 # 970 <bar+0x4a4>
	addi	sp,sp,-416
	add	a6,a6,sp
	sw	zero,0(a6)
	addi	a6,a5,-1668
	add	a6,a6,sp
	sw	zero,0(a6)
	mv	s0,a0
	addi	a6,a5,-1672
	lbu	a0,0(a0)
	addi	a5,a5,-1676
	add	a5,a5,sp
	add	a6,a6,sp
	sw	a3,0(a5)
	sw	zero,1612(sp)
	sw	a4,0(a6)
	li	a5,40
	mv	s1,a1
	mv	s2,a2
	beq	a0,a5,lab158
lab159: 	jal	ra,strlen
	lui	a4,0xfffff
	lui	a5,0x1
	addi	a4,a4,1676 # fffff68c <_stack+0xffef768c>
	addi	a5,a5,-1664 # 980 <bar+0x4b4>
	add	a5,a5,a4
	mv	a1,a0
	add	a4,a5,sp
	mv	a3,s2
	mv	a2,s1
	mv	a0,s0
	jal	ra,foo
	cfed 7498
	addi	sp,sp,416
	lw	ra,2028(sp)
	lw	s0,2024(sp)
	lw	s1,2020(sp)
	lw	s2,2016(sp)
	addi	sp,sp,2032
	ret
lab158: 	lbu	a4,1(s0)
	li	a5,63
	bne	a4,a5,lab159
	lbu	a4,2(s0)
	li	a5,105
	bne	a4,a5,lab159
	lbu	a4,3(s0)
	li	a5,41
	bne	a4,a5,lab159
	lui	a4,0x1
	addi	a4,a4,-1668 # 97c <bar+0x4b0>
	li	a5,1
	add	a4,a4,sp
	sw	a5,0(a4)
	addi	s0,s0,4
	j	lab159
initialise_benchmark:
	ret
warm_caches:
	j	benchmark_body.isra.0
benchmark:
	j	benchmark_body.constprop.0
verify_benchmark:
	addi	a0,a0,-102
	seqz	a0,a0
	ret
main:
	addi	sp,sp,-32
	sw	ra,28(sp)
	jal	ra,initialise_board
	jal	ra,initialise_benchmark
	li	a0,0
	jal	ra,warm_caches
	cfed 98
	jal	ra,start_trigger
	jal	ra,benchmark
	cfed 5555
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


	.data

text:
	.2byte	0x6261
	.2byte	0x6262
	.2byte	0x6261
	.2byte	0x6261
	.2byte	0x6161
	.2byte	0x6362
	.4byte	0x61626163
	.2byte	0x6362
	.2byte	0x6361
	.2byte	0x6362
	.2byte	0x6362
	.2byte	0x6162
	.2byte	0x6262
	.2byte	0x6261
	.4byte	0x62616263
	.4byte	0x63626163
	.2byte	0x6262
	.4byte	0x61626263
	.4byte	0x00000063
regexes:
	.2byte	0x94
	.2byte	0x10
	.2byte	0x9c
	.2byte	0x10
	.2byte	0xa4
	.2byte	0x10
	.2byte	0xac
	.2byte	0x10


	.bss

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
	.2byte	0x245e
	.2byte	0x2928
	.2byte	0x5b2e
	.2byte	0x2a5d
	.4byte	0x5c7c3f2b
	.4byte	0x647353
	.2byte	0x3f28
	.2byte	0x2969
	.4byte	0x0000
	.4byte	0x0000
	.2byte	0x6128
	.2byte	0x2962
	.4byte	0x2b
	.2byte	0x6228
	.2byte	0x2b2e
	.2byte	0x2b29
	.4byte	0x0000
	.2byte	0x5b61
	.2byte	0x6261
	.2byte	0x2a5d
	.4byte	0x0000
	.2byte	0x5b28
	.2byte	0x6261
	.2byte	0x635e
	.2byte	0x5b5d
	.2byte	0x6261
	.2byte	0x635e
	.2byte	0x295d
	.4byte	0x2b00
