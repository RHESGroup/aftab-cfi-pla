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
lab10: 	li	a0,-1
	ret
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
	sw	s10,48(sp)
	sw	s11,44(sp)
	sw	a2,4(sp)
	blez	a1,lab15
	mv	s1,a3
	bltz	a3,lab15
	mv	s5,a1
	mv	s3,a0
	mv	s0,a4
	mv	s4,a5
	li	s6,0
	li	s2,0
	li	s7,40
lab26: 	add	s9,s3,s2
	lbu	a1,0(s9)
	beq	a1,s7,lab16
	li	a5,91
	beq	a1,a5,lab17
	li	a5,92
	beq	a1,a5,lab18
	addi	a5,a1,-42
	zext.b	a5,a5
	li	a4,1
	bltu	a4,a5,lab19
lab59: 	li	s10,-2
	j	lab20
lab16: 	addi	s11,s4,1
	slli	a4,s11,0x4
	add	a4,s0,a4
	lw	a4,4(a4)
	addi	a6,a4,2
	bgtz	a6,lab21
lab31: 	li	s10,-5
lab20: 	lw	ra,92(sp)
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
	lw	s11,44(sp)
	mv	a0,s10
	lw	s10,48(sp)
	addi	sp,sp,96
	ret
lab18: 	lbu	a4,1(s9)
	li	a5,120
	beq	a4,a5,lab22
	addi	a5,s2,2
	sw	a5,8(sp)
	blt	a5,s5,lab23
lab37: 	bge	s6,s1,lab24
	lw	a5,4(sp)
	mv	a2,s0
	mv	a0,s9
	add	a1,a5,s6
	jal	ra,match_op
	mv	s10,a0
	blez	a0,lab20
	lw	s2,8(sp)
	add	s6,s6,a0
lab43: 	bge	s2,s5,lab25
	bge	s1,s6,lab26
lab25: 	mv	s10,s6
	j	lab20
lab17: 	sub	a0,s5,s2
	addi	a0,a0,-1
	li	a4,0
	li	a6,93
	li	a7,92
	li	t5,120
	bnez	a0,lab27
	j	lab28
lab30: 	add	a4,a4,a2
	bge	a4,a0,lab29
lab27: 	addi	a5,a4,1
	add	a5,s9,a5
	lbu	a3,0(a5)
	li	a2,1
	beq	a3,a6,lab29
	bne	a3,a7,lab30
	lbu	a5,1(a5)
	li	a2,2
	bne	a5,t5,lab30
	li	a2,4
	add	a4,a4,a2
	blt	a4,a0,lab27
lab29: 	blt	a0,a4,lab31
	addi	a6,a4,2
lab92: 	add	a5,a6,s2
	sw	a5,8(sp)
	bge	a5,s5,lab32
lab39: 	mv	s8,a6
lab61: 	add	s8,s2,s8
	add	s8,s3,s8
	lbu	a4,0(s8)
	li	a3,1
	addi	a5,a4,-42
	zext.b	a5,a5
	bgeu	a3,a5,lab33
	li	a5,63
	beq	a4,a5,lab34
	li	a5,91
	beq	a1,a5,lab32
	li	a5,40
	beq	a1,a5,lab35
lab60: 	li	a5,94
	beq	a1,a5,lab36
	li	a5,36
	bne	a1,a5,lab37
	beq	s1,s6,lab38
lab24: 	li	s10,-1
	j	lab20
lab21: 	add	a5,a6,s2
	sw	a5,8(sp)
	blt	a5,s5,lab39
lab95: 	lw	a5,1600(s0)
	bge	s11,a5,lab40
	lw	a5,8(sp)
	lw	a4,4(sp)
	sub	s8,s1,s6
	sub	a5,s5,a5
	sw	a5,12(sp)
	add	s9,a4,s6
	bgtz	a5,lab41
	mv	a3,s11
	mv	a2,s0
	mv	a1,s8
	mv	a0,s9
	jal	ra,doh
	mv	s10,a0
lab83: 	bltz	s10,lab20
	add	a6,s10,s6
lab82: 	lui	a5,0x1
	add	a5,s0,a5
	lw	a5,-1688(a5) # 968 <bar+0x4cc>
	beqz	a5,lab42
	slli	s4,s4,0x3
	add	a5,a5,s4
	sw	s9,0(a5)
	sw	s10,4(a5)
lab42: 	lw	s2,8(sp)
	mv	s6,a6
	mv	s4,s11
	j	lab43
lab33: 	lw	a5,8(sp)
	addi	a5,a5,1
	sw	a5,12(sp)
	bge	a5,s5,lab44
	add	a5,s3,a5
	lbu	a4,0(a5)
	li	a5,63
	bne	a4,a5,lab44
	lw	a5,8(sp)
	li	a4,-1
	sw	a4,20(sp)
	addi	a5,a5,2
	sub	a4,s5,a5
	sw	a5,12(sp)
	mv	s10,s6
	mv	s7,s6
	sw	a4,28(sp)
	add	s2,s3,a5
lab79: 	lw	a5,4(sp)
	sub	a3,s1,s7
	mv	a1,a6
	add	a2,a5,s7
	mv	a4,s0
	mv	a5,s4
	mv	a0,s9
	sw	a3,24(sp)
	sw	a2,16(sp)
	sw	a6,8(sp)
	jal	ra,bar
	lw	a6,8(sp)
	lw	a2,16(sp)
	lw	a3,24(sp)
	mv	s11,a0
	blez	a0,lab45
	add	s7,s7,a0
lab88: 	lw	a5,12(sp)
	blt	a5,s5,lab46
	mv	s10,s7
lab93: 	bge	s6,s10,lab47
	lbu	a5,0(s8)
lab65: 	bgez	s11,lab48
	li	a4,42
	beq	a5,a4,lab49
lab48: 	li	a4,43
	beq	a5,a4,lab50
	bne	s10,s6,lab20
	lw	a5,12(sp)
	bge	a5,s5,lab20
	lw	a5,20(sp)
	bgez	a5,lab20
	j	lab24
lab32: 	addi	s9,s2,1
	addi	s2,s2,2
	sub	a3,s5,s2
	add	s9,s3,s9
	sw	a3,12(sp)
	lw	a3,4(sp)
	lbu	a4,0(s9)
	li	a5,94
	add	a3,a3,s6
	sw	a4,24(sp)
	sw	a3,20(sp)
	beq	a4,a5,lab51
	lw	a5,12(sp)
	bltz	a5,lab24
	mv	a6,a4
lab73: 	li	a0,-1
	li	s2,0
	mv	s11,s9
	li	s10,93
	li	s8,45
lab58: 	beq	a6,s10,lab52
	bgtz	a0,lab53
	beq	a6,s8,lab54
	lbu	a4,1(s11)
	beq	a4,s8,lab55
lab74: 	lw	a1,20(sp)
	mv	a2,s0
	mv	a0,s11
	sw	a6,16(sp)
	jal	ra,match_op
	lw	a6,16(sp)
	li	a5,92
	bne	a6,a5,lab56
	lbu	a4,1(s11)
	li	a3,120
	li	a5,2
	beq	a4,a3,lab57
lab71: 	add	s2,s2,a5
lab77: 	lw	a5,12(sp)
	blt	a5,s2,lab52
	add	s11,s9,s2
	lbu	a6,0(s11)
	j	lab58
lab19: 	li	a5,63
	beq	a1,a5,lab59
	addi	a5,s2,1
	sw	a5,8(sp)
	bge	a5,s5,lab60
	li	s8,1
	li	a6,1
	j	lab61
lab44: 	li	a5,-1
	sw	a5,20(sp)
	lw	a5,12(sp)
	sw	s6,16(sp)
	mv	s10,s6
	sub	a4,s5,a5
	add	a5,s3,a5
	sw	a4,24(sp)
	sw	a5,28(sp)
lab64: 	lw	a5,4(sp)
	sub	s7,s1,s10
	mv	a1,a6
	add	s2,a5,s10
	mv	a4,s0
	mv	a5,s4
	mv	a3,s7
	mv	a2,s2
	mv	a0,s9
	sw	a6,8(sp)
	jal	ra,bar
	lw	a6,8(sp)
	mv	s11,a0
	blez	a0,lab62
	add	s10,s10,a0
lab66: 	lw	a5,12(sp)
	blt	a5,s5,lab63
	sw	s10,16(sp)
lab69: 	bgtz	s11,lab64
lab70: 	lbu	a5,0(s8)
	lw	s10,16(sp)
	j	lab65
lab62: 	lbu	a5,0(s8)
	li	a4,43
	bne	a5,a4,lab66
	bnez	a0,lab67
	lw	a5,12(sp)
	blt	a5,s5,lab68
	li	a5,43
	blt	s6,s10,lab48
lab50: 	bne	s6,s10,lab20
	j	lab24
lab63: 	lw	a5,4(sp)
	sub	s7,s1,s10
	add	s2,a5,s10
lab68: 	lw	a1,24(sp)
	lw	a0,28(sp)
	mv	a5,s4
	mv	a4,s0
	mv	a3,s7
	mv	a2,s2
	sw	a6,8(sp)
	jal	ra,bar
	sw	a0,20(sp)
	lw	a6,8(sp)
	bltz	a0,lab69
	add	a5,a0,s10
	sw	a5,16(sp)
	bgtz	s11,lab64
	j	lab70
lab36: 	bnez	s6,lab24
lab38: 	lw	a5,8(sp)
	bge	a5,s5,lab25
	mv	s2,a5
	j	lab26
lab22: 	addi	a5,s2,4
	sw	a5,8(sp)
	bge	a5,s5,lab37
	li	s8,4
	li	a6,4
	j	lab61
lab57: 	li	a5,4
	j	lab71
lab51: 	lw	a5,12(sp)
	addi	a5,a5,-1
	mv	a4,a5
	sw	a5,12(sp)
	addi	a5,s9,1
	bltz	a4,lab72
	lbu	a6,1(s9)
	mv	s9,a5
	j	lab73
lab54: 	lw	a1,20(sp)
	mv	a2,s0
	mv	a0,s11
	jal	ra,match_op
	li	a5,1
	j	lab71
lab55: 	lbu	a4,2(s11)
	beq	a4,s10,lab74
	beqz	a4,lab74
	lui	a5,0x1
	add	a5,s0,a5
	lw	a0,-1680(a5) # 970 <bar+0x4d4>
	lw	a5,20(sp)
	lbu	a5,0(a5)
	beqz	a0,lab75
	li	a0,0
	bltu	a5,a6,lab76
	sltu	a5,a4,a5
	xori	a0,a5,1
lab76: 	addi	s2,s2,3
	j	lab77
lab53: 	lw	a4,24(sp)
	li	a5,94
	beq	a4,a5,lab24
lab72: 	lw	s2,8(sp)
	addi	s6,s6,1
	j	lab43
lab56: 	li	a5,1
	j	lab71
lab52: 	lw	a4,24(sp)
	li	a5,94
	beq	a4,a5,lab78
	bgtz	a0,lab72
	li	s10,-1
	j	lab20
lab47: 	bgtz	s11,lab79
	sw	s10,16(sp)
	j	lab70
lab15: 	li	s10,0
	j	lab20
lab41: 	add	a4,a6,s2
	add	a5,s3,a4
	li	s2,0
	sw	a5,20(sp)
lab81: 	sub	a1,s8,s2
	mv	a3,s11
	mv	a2,s0
	mv	a0,s9
	jal	ra,doh
	mv	s10,a0
	bgez	a0,lab80
	addi	s2,s2,1
	bge	s8,s2,lab81
	j	lab20
lab80: 	lw	a2,4(sp)
	add	a6,a0,s6
	lw	a1,12(sp)
	lw	a0,20(sp)
	sub	a3,s1,a6
	add	a2,a2,a6
	mv	a5,s11
	mv	a4,s0
	sw	a6,16(sp)
	jal	ra,bar
	lw	a6,16(sp)
	addi	s2,s2,1
	bgez	a0,lab82
	bge	s8,s2,lab81
	j	lab83
lab75: 	mv	a2,a5
	lui	a5,0x100
	addi	a5,a5,73 # 100049 <_ctype_+0x1>
	add	a1,a5,a2
	lbu	a1,0(a1)
	li	a7,1
	andi	a1,a1,3
	bne	a1,a7,lab84
	addi	a2,a2,32
lab84: 	add	a1,a5,a6
	lbu	a1,0(a1)
	li	a7,1
	andi	a1,a1,3
	beq	a1,a7,lab85
lab87: 	blt	a2,a6,lab76
	add	a5,a5,a4
	lbu	a5,0(a5)
	li	a1,1
	andi	a5,a5,3
	bne	a5,a1,lab86
	addi	a4,a4,32
lab86: 	slt	a5,a4,a2
	xori	a0,a5,1
	addi	s2,s2,3
	j	lab77
lab85: 	addi	a6,a6,32
	j	lab87
lab89: 	sw	s10,16(sp)
lab67: 	lw	s10,16(sp)
	bne	s6,s10,lab20
	j	lab24
lab45: 	lbu	a5,0(s8)
	li	a4,43
	bne	a5,a4,lab88
	bnez	a0,lab89
	lw	a5,12(sp)
	blt	a5,s5,lab90
	bge	s6,s7,lab91
	li	a5,43
	mv	s10,s7
	j	lab48
lab34: 	lw	a5,4(sp)
	sub	a3,s1,s6
	mv	a1,a6
	add	a2,a5,s6
	mv	a4,s0
	mv	a5,s4
	mv	a0,s9
	sw	a6,8(sp)
	jal	ra,bar
	not	a5,a0
	lw	a6,8(sp)
	srai	a5,a5,0x1f
	and	a0,a0,a5
	addi	s2,s2,1
	add	s6,s6,a0
	add	s2,s2,a6
	j	lab43
lab28: 	li	a6,2
	j	lab92
lab78: 	blez	a0,lab72
	j	lab24
lab46: 	lw	a5,4(sp)
	sub	a3,s1,s7
	add	a2,a5,s7
lab90: 	lw	a1,28(sp)
	mv	a5,s4
	mv	a4,s0
	mv	a0,s2
	sw	a6,8(sp)
	jal	ra,bar
	sw	a0,20(sp)
	lw	a6,8(sp)
	bltz	a0,lab93
	add	s10,a0,s7
	j	lab93
lab49: 	lw	a0,12(sp)
	lw	a2,4(sp)
	mv	a5,s4
	sub	a1,s5,a0
	mv	a4,s0
	sub	a3,s1,s6
	add	a2,a2,s6
	add	a0,s3,a0
	jal	ra,bar
	sw	a0,20(sp)
	blez	a0,lab94
	add	s10,a0,s6
	j	lab20
lab94: 	lbu	a5,0(s8)
	j	lab48
lab40: 	li	s10,-4
	j	lab20
lab91: 	mv	s10,s7
	bne	s6,s10,lab20
	j	lab24
lab35: 	addi	s11,s4,1
	j	lab95
lab23: 	li	a6,2
	j	lab39
doh:
	addi	sp,sp,-48
	sw	s1,36(sp)
	slli	s1,a3,0x4
	add	s1,a2,s1
	sw	s3,28(sp)
	lw	s3,12(s1)
	sw	s2,32(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	mv	a5,a3
	mv	a4,a2
	lw	s2,0(s1)
	mv	a2,a0
	mv	a3,a1
	beqz	s3,lab96
	lw	a7,8(s1)
	mv	a0,s2
	li	s0,0
lab100: 	add	a7,s0,a7
	addi	a7,a7,200
	slli	a7,a7,0x3
	add	a7,a4,a7
	lw	a1,8(a7)
	sw	a5,12(sp)
	sw	a4,8(sp)
	sub	a1,a1,a0
	sw	a3,4(sp)
	sw	a2,0(sp)
	jal	ra,bar
	bgtz	a0,lab97
	addi	t1,s0,1
	bge	s0,s3,lab97
	lw	a7,8(s1)
	lw	a4,8(sp)
	lw	a2,0(sp)
	add	a6,t1,a7
	addi	a6,a6,199
	slli	a6,a6,0x3
	add	a6,a4,a6
	lw	a0,8(a6)
	lw	a3,4(sp)
	lw	a5,12(sp)
	addi	a0,a0,1
	bne	t1,s3,lab98
	lw	a6,4(s1)
	add	a6,s2,a6
	sub	a1,a6,a0
	mv	s2,a0
lab99: 	lw	s0,40(sp)
	lw	ra,44(sp)
	lw	s1,36(sp)
	lw	s3,28(sp)
	mv	a0,s2
	lw	s2,32(sp)
	addi	sp,sp,48
	j	bar
lab96: 	lw	a1,4(s1)
	j	lab99
lab98: 	mv	s0,t1
	j	lab100
lab97: 	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	addi	sp,sp,48
	ret
foo:
	addi	sp,sp,-96
	sw	s1,84(sp)
	sw	s2,80(sp)
	sw	s8,56(sp)
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s3,76(sp)
	sw	s4,72(sp)
	sw	s5,68(sp)
	sw	s6,64(sp)
	sw	s7,60(sp)
	sw	s9,52(sp)
	sw	s10,48(sp)
	sw	s11,44(sp)
	li	a5,1
	sw	a0,0(a4)
	sw	a1,4(a4)
	sw	a5,1600(a4)
	sw	a2,20(sp)
	mv	s8,a4
	mv	s1,a0
	mv	s2,a3
	beqz	a1,lab101
	addi	a5,a1,-1
	sw	a5,16(sp)
	addi	a5,a1,-3
	sw	a5,24(sp)
	lui	a5,0x100
	lui	a7,0x1
	addi	a5,a5,73 # 100049 <_ctype_+0x1>
	mv	s6,a1
	li	s7,0
	li	s9,0
	li	a2,91
	li	s10,92
	li	t5,124
	li	t6,40
	li	s0,-1
	li	s4,99
	add	s3,a4,a7
	li	s5,120
	sw	a5,28(sp)
	li	s11,93
lab107: 	add	a0,s1,s9
	lbu	a5,0(a0)
	beq	a5,a2,lab102
	beq	a5,s10,lab103
	bne	a5,t5,lab104
	lw	a5,-1692(s3)
	blt	s4,a5,lab105
	lw	a1,1600(s8)
	addi	a1,a1,-1
	slli	a6,a1,0x4
	add	a6,s8,a6
	lw	a6,4(a6)
	beq	a6,s0,lab106
	mv	a1,s7
lab106: 	slli	a6,a5,0x3
	add	a6,s8,a6
	sw	a1,1604(a6)
	sw	a0,1608(a6)
	addi	a5,a5,1
	sw	a5,-1692(s3)
	addi	s9,s9,1
lab131: 	blt	s9,s6,lab107
lab132: 	bnez	s7,lab108
	lui	a5,0x1
	add	a5,s8,a5
	lw	a0,-1692(a5) # 964 <bar+0x4c8>
	lw	t1,1600(s8)
	lw	s1,0(s8)
	blez	a0,lab109
lab148: 	li	a7,0
	slli	a5,a0,0x3
	addi	a1,s8,-8
	mv	a4,s8
	addi	a7,a7,1 # 1001 <foo+0x255>
	add	a1,a1,a5
	mv	a5,a4
	bge	a7,a0,lab110
lab112: 	lw	a2,1612(a5)
	lw	a3,1604(a4)
	bge	a2,a3,lab111
	sw	a2,1604(a4)
	lw	a6,1616(a5)
	lw	a2,1608(a4)
	sw	a6,1608(a4)
	sw	a3,1612(a5)
	sw	a2,1616(a5)
lab111: 	addi	a5,a5,8
	bne	a5,a1,lab112
lab113: 	addi	a4,a4,8
	addi	a7,a7,1
	mv	a5,a4
	blt	a7,a0,lab112
lab110: 	bne	a7,a0,lab113
lab109: 	blez	t1,lab114
lab149: 	li	a3,0
	sw	zero,12(s8)
	sw	a3,8(s8)
	addi	a2,s8,12
	li	a1,0
	bge	a3,a0,lab115
lab119: 	slli	a4,a3,0x3
	add	a4,s8,a4
	j	lab116
lab118: 	lw	a5,0(a2)
	addi	a3,a3,1
	addi	a5,a5,1
	sw	a5,0(a2)
	beq	a3,a0,lab117
lab116: 	lw	a5,1604(a4)
	addi	a4,a4,8
	beq	a5,a1,lab118
lab117: 	addi	a1,a1,1
	beq	t1,a1,lab114
	sw	zero,16(a2)
	sw	a3,12(a2)
	addi	a2,a2,16
	blt	a3,a0,lab119
lab115: 	addi	a1,a1,1
	slli	a5,a1,0x4
	add	a5,s8,a5
	beq	t1,a1,lab114
lab120: 	sw	zero,12(a5)
	sw	a3,8(a5)
	addi	a1,a1,1
	addi	a5,a5,16
	blt	a1,t1,lab120
lab114: 	lbu	s6,0(s1)
	li	s4,0
	li	s5,94
	bltz	s2,lab121
	lw	a5,20(sp)
	lw	s9,12(s8)
	sub	a3,s2,s4
	add	a2,a5,s4
	beqz	s9,lab122
lab144: 	mv	a0,s1
	li	s7,0
lab146: 	lw	s0,8(s8)
	li	a5,0
	mv	a4,s8
	add	a1,s0,s7
	addi	a1,a1,200
	slli	a1,a1,0x3
	add	a1,s8,a1
	lw	a1,8(a1)
	sw	a3,16(sp)
	sw	a2,12(sp)
	sub	a1,a1,a0
	jal	ra,bar
	lw	a2,12(sp)
	lw	a3,16(sp)
	bgtz	a0,lab123
	addi	a4,s7,1
	add	a5,s0,a4
	addi	a5,a5,199
	slli	a5,a5,0x3
	add	a5,s8,a5
	bge	s7,s9,lab124
	lw	a0,8(a5)
	addi	a0,a0,1
	bne	s9,a4,lab125
	lw	a1,4(s8)
	add	a1,s1,a1
	sub	a1,a1,a0
lab145: 	li	a5,0
	mv	a4,s8
	jal	ra,bar
	blez	a0,lab124
lab123: 	add	a0,a0,s4
	j	lab126
lab102: 	sub	t0,s6,s9
	addi	t0,t0,-1
	li	a5,0
	bnez	t0,lab127
	j	lab128
lab130: 	add	a5,a5,t2
	bge	a5,t0,lab129
lab127: 	addi	a6,a5,1
	add	a6,a0,a6
	lbu	a1,0(a6)
	li	t2,1
	beq	a1,s11,lab129
	bne	a1,s10,lab130
	lbu	a1,1(a6)
	li	t2,2
	bne	a1,s5,lab130
	li	t2,4
	add	a5,a5,t2
	blt	a5,t0,lab127
lab129: 	blt	t0,a5,lab131
	addi	a5,a5,2
lab141: 	add	s9,s9,a5
lab147: 	blt	s9,s6,lab107
	j	lab132
lab104: 	bne	a5,t6,lab133
	lw	a1,1600(s8)
	blt	s4,a1,lab134
	slli	a5,a1,0x4
	addi	s9,s9,1
	add	a5,s8,a5
	add	a0,s1,s9
	sw	a0,0(a5)
	sw	s0,4(a5)
	lw	a5,-1684(s3)
	addi	a0,a1,1
	sw	a0,1600(s8)
	addi	s7,s7,1
	blez	a5,lab131
	bge	a5,a1,lab131
	li	a0,-7
	j	lab126
lab103: 	lbu	a1,1(a0)
	li	a5,2
	beq	a1,s5,lab135
lab142: 	lw	a4,16(sp)
	bge	s9,a4,lab136
	lbu	a1,1(a0)
	beq	a1,s5,lab137
	sw	a5,12(sp)
	lui	a5,0x100
	addi	a0,a5,84 # 100054 <_bss_end>
	jal	ra,strchr
	beqz	a0,lab136
	lw	a5,12(sp)
	li	a2,91
	li	t5,124
	add	s9,s9,a5
	li	t6,40
	blt	s9,s6,lab107
	j	lab132
lab133: 	li	a4,41
	bne	a5,a4,lab138
	lw	a5,1600(s8)
	addi	a5,a5,-1
	slli	a5,a5,0x4
	add	a1,s8,a5
	lw	a1,4(a1)
	beq	a1,s0,lab139
	slli	a5,s7,0x4
lab139: 	add	a5,s8,a5
	lw	a1,0(a5)
	addi	s7,s7,-1
	sub	a1,a0,a1
	sw	a1,4(a5)
	beq	s7,s0,lab108
	beqz	s9,lab140
	lbu	a5,-1(a0)
	beq	a5,t6,lab121
lab138: 	addi	s9,s9,1
	blt	s9,s6,lab107
	j	lab132
lab137: 	lw	a4,24(sp)
	bge	s9,a4,lab136
	lbu	a1,2(a0)
	lw	a4,28(sp)
	add	a1,a1,a4
	lbu	a1,0(a1)
	andi	a1,a1,68
	beqz	a1,lab136
	lbu	a1,3(a0)
	add	a1,a1,a4
	lbu	a1,0(a1)
	andi	a1,a1,68
	bnez	a1,lab141
lab136: 	li	a0,-6
lab126: 	lw	ra,92(sp)
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
	addi	sp,sp,96
	ret
lab135: 	li	a5,4
	j	lab142
lab140: 	li	s9,1
	blt	s9,s6,lab107
	j	lab132
lab124: 	beqz	a0,lab143
	beq	s6,s5,lab126
	addi	s4,s4,1
	blt	s2,s4,lab126
	lw	a5,20(sp)
	lw	s9,12(s8)
	sub	a3,s2,s4
	add	a2,a5,s4
	bnez	s9,lab144
lab122: 	lw	a1,4(s8)
	mv	a0,s1
	j	lab145
lab125: 	mv	s7,a4
	j	lab146
lab128: 	li	a5,2
	add	s9,s9,a5
	j	lab147
lab105: 	li	a0,-8
	j	lab126
lab134: 	li	a0,-9
	j	lab126
lab108: 	li	a0,-3
	j	lab126
lab121: 	li	a0,-1
	j	lab126
lab143: 	mv	a0,s4
	j	lab126
lab101: 	lui	a5,0x1
	add	a5,a4,a5
	lw	a0,-1692(a5) # 964 <bar+0x4c8>
	li	t1,1
	bgtz	a0,lab148
	j	lab149
slre_match.constprop.0:
	addi	sp,sp,-2032
	sw	s0,2024(sp)
	sw	s1,2020(sp)
	sw	ra,2028(sp)
	lui	a4,0x1
	addi	sp,sp,-416
	lbu	a3,0(a0)
	mv	s0,a0
	addi	a0,a4,-1680 # 970 <bar+0x4d4>
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
	beq	a3,a4,lab150
lab151: 	mv	a0,s0
	jal	ra,strlen
	lui	a4,0xfffff
	lui	a5,0x1
	addi	a4,a4,1676 # fffff68c <_stack+0xffef768c>
	addi	a5,a5,-1664 # 980 <bar+0x4e4>
	add	a5,a5,a4
	lui	a2,0x100
	mv	a1,a0
	add	a4,a5,sp
	mv	a3,s1
	mv	a0,s0
	mv	a2,a2
	jal	ra,foo
	addi	sp,sp,416
	lw	ra,2028(sp)
	lw	s0,2024(sp)
	lw	s1,2020(sp)
	addi	sp,sp,2032
	ret
lab150: 	lbu	a3,1(s0)
	li	a4,63
	bne	a3,a4,lab151
	lbu	a3,2(s0)
	li	a4,105
	bne	a3,a4,lab151
	lbu	a3,3(s0)
	li	a4,41
	bne	a3,a4,lab151
	lui	a4,0x1
	addi	a4,a4,-1668 # 97c <bar+0x4e0>
	add	a4,a4,sp
	sw	a5,0(a4)
	addi	s0,s0,4
	j	lab151
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
lab153: 	mv	a0,s5
	jal	ra,strlen
	mv	s1,a0
	sw	zero,4(sp)
	mv	s0,s4
lab152: 	lw	a0,0(s0)
	addi	a2,sp,8
	mv	a1,s1
	jal	ra,slre_match.constprop.0
	lw	a5,4(sp)
	addi	s0,s0,4
	add	a5,a0,a5
	sw	a5,4(sp)
	bne	s0,s2,lab152
	addi	s3,s3,-1
	bnez	s3,lab153
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	a0,4(sp)
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	lw	s5,20(sp)
	addi	sp,sp,48
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
	blez	a0,lab154
	lui	s6,0x100
	mv	s2,s6
	lui	s5,0x100
	mv	s4,a0
	li	s3,0
	addi	s5,s5,48 # 100030 <regexes>
	addi	s2,s2,64
lab156: 	mv	a0,s6
	jal	ra,strlen
	mv	s1,a0
	sw	zero,4(sp)
	mv	s0,s5
lab155: 	lw	a0,0(s0)
	addi	a2,sp,8
	mv	a1,s1
	jal	ra,slre_match.constprop.0
	lw	a5,4(sp)
	addi	s0,s0,4
	add	a5,a0,a5
	sw	a5,4(sp)
	bne	s0,s2,lab155
	addi	s3,s3,1
	bne	s3,s4,lab156
lab154: 	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	a5,4(sp)
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	lw	s5,20(sp)
	lw	s6,16(sp)
	addi	sp,sp,48
	ret
slre_match:
	addi	sp,sp,-2032
	lui	a5,0x1
	sw	s0,2024(sp)
	sw	s1,2020(sp)
	sw	s2,2016(sp)
	sw	ra,2028(sp)
	addi	a6,a5,-1680 # 970 <bar+0x4d4>
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
	beq	a0,a5,lab157
lab158: 	mv	a0,s0
	jal	ra,strlen
	lui	a4,0xfffff
	lui	a5,0x1
	addi	a4,a4,1676 # fffff68c <_stack+0xffef768c>
	addi	a5,a5,-1664 # 980 <bar+0x4e4>
	add	a5,a5,a4
	mv	a1,a0
	add	a4,a5,sp
	mv	a3,s2
	mv	a2,s1
	mv	a0,s0
	jal	ra,foo
	addi	sp,sp,416
	lw	ra,2028(sp)
	lw	s0,2024(sp)
	lw	s1,2020(sp)
	lw	s2,2016(sp)
	addi	sp,sp,2032
	ret
lab157: 	lbu	a4,1(s0)
	li	a5,63
	bne	a4,a5,lab158
	lbu	a4,2(s0)
	li	a5,105
	bne	a4,a5,lab158
	lbu	a4,3(s0)
	li	a5,41
	bne	a4,a5,lab158
	lui	a4,0x1
	addi	a4,a4,-1668 # 97c <bar+0x4e0>
	li	a5,1
	add	a4,a4,sp
	sw	a5,0(a4)
	addi	s0,s0,4
	j	lab158
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
	.2byte	0x6c
	.2byte	0x10
	.2byte	0x74
	.2byte	0x10
	.2byte	0x7c
	.2byte	0x10
	.2byte	0x84
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

start_rodata:
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
