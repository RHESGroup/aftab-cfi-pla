	.text
	.globl  main
	.type  main, @function

benchmark_body.isra.0:
	addi	sp,sp,-128
	sw	ra,124(sp)
	sw	s0,120(sp)
	sw	s1,116(sp)
	sw	s2,112(sp)
	sw	s3,108(sp)
	sw	s4,104(sp)
	sw	s5,100(sp)
	sw	s6,96(sp)
	sw	s7,92(sp)
	sw	s8,88(sp)
	sw	s9,84(sp)
	sw	s10,80(sp)
	sw	s11,76(sp)
	sw	a0,60(sp)
	blez	a0,lab0
	lui	a5,0x100
	lw	a6,1676(a5) # 10068c <_bss_end+0x30>
	lw	a5,1672(a5)
	lui	s11,0x100
	sw	a6,20(sp)
	sw	a5,16(sp)
	lui	a5,0x100
	lw	a6,1684(a5) # 100694 <_bss_end+0x38>
	lw	a5,1680(a5)
	lui	s5,0x100
	sw	a6,44(sp)
	sw	a5,40(sp)
	lui	a5,0x100
	mv	a5,a5
	sw	a5,52(sp)
	addi	a5,s11,1600 # 100640 <Coef>
	sw	a5,12(sp)
	lui	a5,0x2
	addi	a5,a5,-97 # 1f9f <__DTOR_END__+0x98b>
	sw	zero,56(sp)
	addi	s5,s5,800 # 100320 <ArrayB>
	sw	a5,8(sp)
lab12: 	li	s0,0
	li	s1,0
	mv	s4,s7
	li	s2,100
lab1: 	add	a0,a0,s0
	lw	a5,8(sp)
	slli	a0,a0,0x2
	add	a0,a0,s0
	addi	a0,a0,81
	rem	s0,a0,a5
	addi	s7,s7,8
	mv	a0,s0
	jal	ra,__floatsidf
	lw	a2,16(sp)
	lw	a3,20(sp)
	jal	ra,__divdf3
	mv	s6,a0
	mv	a0,s1
	mv	s3,a1
	jal	ra,__floatsidf
	mv	a2,a0
	mv	a3,a1
	mv	a0,s6
	mv	a1,s3
	jal	ra,__adddf3
	sw	a0,-8(s7)
	sw	a1,-4(s7)
	addi	s1,s1,1
	bne	s1,s2,lab1
	lw	s1,52(sp)
	li	a4,0
	li	a5,0
lab2: 	lw	a3,4(s1)
	mv	a0,a4
	mv	a1,a5
	jal	ra,__adddf3
	addi	s1,s1,8
	mv	a4,a0
	mv	a5,a1
	bne	s5,s1,lab2
	lw	a2,40(sp)
	lw	a3,44(sp)
	lui	a5,0x100
	sw	a0,1616(a5) # 100650 <SumA>
	sw	a1,1620(a5)
	jal	ra,__divdf3
	lw	s3,52(sp)
	sw	a0,28(sp)
	sw	a1,32(sp)
	li	s2,0
	li	s1,0
	mv	s6,a0
	mv	s7,a1
lab3: 	lw	a1,4(s3)
	mv	a2,s6
	mv	a3,s7
	jal	ra,__subdf3
	mv	a2,a0
	mv	a3,a1
	jal	ra,__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s2
	mv	a1,s1
	jal	ra,__adddf3
	addi	s3,s3,8
	mv	s2,a0
	mv	s1,a1
	bne	s5,s3,lab3
	lw	a2,40(sp)
	lw	a3,44(sp)
	jal	ra,__divdf3
	li	a2,0
	li	a3,0
	mv	s2,a0
	mv	s1,a1
	jal	ra,__unorddf2
	bnez	a0,lab4
	mv	a0,s2
	mv	a1,s1
	li	a2,0
	li	a3,0
	jal	ra,__gedf2
	bltz	a0,lab5
lab4: 	mv	s6,s5
	mv	s10,s5
	li	s2,0
	li	s1,100
lab6: 	add	a0,a0,s0
	lw	a5,8(sp)
	slli	a0,a0,0x2
	add	a0,a0,s0
	addi	a0,a0,81
	rem	s0,a0,a5
	addi	s10,s10,8
	mv	a0,s0
	jal	ra,__floatsidf
	lw	a2,16(sp)
	lw	a3,20(sp)
	jal	ra,__divdf3
	mv	s7,a0
	mv	a0,s2
	mv	s3,a1
	jal	ra,__floatsidf
	mv	a2,a0
	mv	a3,a1
	mv	a0,s7
	mv	a1,s3
	jal	ra,__adddf3
	sw	a0,-8(s10)
	sw	a1,-4(s10)
	addi	s2,s2,1
	bne	s2,s1,lab6
	lui	a5,0x100
	sw	s0,1624(a5) # 100658 <Seed>
	li	a4,0
	mv	s0,s5
	li	a5,0
lab7: 	lw	a2,0(s0)
	mv	a0,a4
	mv	a1,a5
	jal	ra,__adddf3
	lw	a3,12(sp)
	addi	s0,s0,8
	mv	a4,a0
	mv	a5,a1
	bne	a3,s0,lab7
	lw	a2,40(sp)
	lw	a3,44(sp)
	lui	a5,0x100
	sw	a0,1608(a5) # 100648 <SumB>
	sw	a1,1612(a5)
	jal	ra,__divdf3
	sw	a0,36(sp)
	mv	s10,a1
	mv	s2,s5
	li	s1,0
	li	s0,0
	mv	s3,a0
lab8: 	lw	a1,4(s2)
	mv	a2,s3
	mv	a3,s10
	jal	ra,__subdf3
	mv	a2,a0
	mv	a3,a1
	jal	ra,__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s1
	mv	a1,s0
	jal	ra,__adddf3
	lw	a5,12(sp)
	addi	s2,s2,8
	mv	s1,a0
	mv	s0,a1
	bne	a5,s2,lab8
	lw	a2,40(sp)
	lw	a3,44(sp)
	jal	ra,__divdf3
	li	a2,0
	li	a3,0
	mv	s1,a0
	mv	s0,a1
	jal	ra,__unorddf2
	bnez	a0,lab9
	mv	a0,s1
	mv	a1,s0
	li	a2,0
	li	a3,0
	jal	ra,__gedf2
	bltz	a0,lab10
lab9: 	li	s7,0
	li	s11,0
	sw	s10,48(sp)
	li	s3,0
	li	s2,0
	li	s1,0
	li	s0,0
	mv	a5,s7
	mv	s10,s11
lab11: 	lw	a1,4(s4)
	lw	a2,28(sp)
	lw	a3,32(sp)
	sw	a5,24(sp)
	addi	s4,s4,8
	jal	ra,__subdf3
	mv	s7,a0
	mv	s11,a1
	lw	a0,0(s6)
	lw	a1,4(s6)
	lw	a2,36(sp)
	lw	a3,48(sp)
	addi	s6,s6,8
	jal	ra,__subdf3
	mv	s9,a0
	mv	s8,a1
	mv	a2,s9
	mv	a3,s8
	mv	a0,s7
	mv	a1,s11
	jal	ra,__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s1
	mv	a1,s0
	jal	ra,__adddf3
	mv	a2,s7
	mv	a3,s11
	mv	s1,a0
	mv	s0,a1
	mv	a0,s7
	mv	a1,s11
	jal	ra,__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s3
	mv	a1,s2
	jal	ra,__adddf3
	mv	a2,s9
	mv	a3,s8
	mv	s3,a0
	mv	s2,a1
	mv	a0,s9
	mv	a1,s8
	jal	ra,__muldf3
	lw	a5,24(sp)
	mv	a2,a0
	mv	a3,a1
	mv	a0,a5
	mv	a1,s10
	jal	ra,__adddf3
	mv	a5,a0
	mv	s10,a1
	bne	s5,s4,lab11
	mv	s7,a0
	mv	a1,s2
	mv	a0,s3
	jal	ra,sqrt
	mv	s3,a0
	mv	s2,a1
	mv	a0,s7
	mv	a1,s10
	jal	ra,sqrt
	mv	a2,a0
	mv	a3,a1
	mv	a0,s3
	mv	a1,s2
	jal	ra,__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s1
	mv	a1,s0
	jal	ra,__divdf3
	lui	a5,0x100
	sw	a0,1600(a5) # 100640 <Coef>
	sw	a1,1604(a5)
	lw	a5,56(sp)
	lw	a4,60(sp)
	addi	a5,a5,1
	sw	a5,56(sp)
	bne	a5,a4,lab12
lab0: 	lw	ra,124(sp)
	lw	s0,120(sp)
	lw	s1,116(sp)
	lw	s2,112(sp)
	lw	s3,108(sp)
	lw	s4,104(sp)
	lw	s5,100(sp)
	lw	s6,96(sp)
	lw	s7,92(sp)
	lw	s8,88(sp)
	lw	s9,84(sp)
	lw	s10,80(sp)
	lw	s11,76(sp)
	addi	sp,sp,128
	cfes 0x07304
	ret
lab5: 	mv	a0,s2
	mv	a1,s1
	jal	ra,sqrt
	j	lab4
lab10: 	mv	a0,s1
	mv	a1,s0
	jal	ra,sqrt
	j	lab9
benchmark_body.constprop.0:
	lui	a5,0x100
	lw	a6,1676(a5) # 10068c <_bss_end+0x30>
	lw	a5,1672(a5)
	addi	sp,sp,-128
	sw	a6,20(sp)
	sw	a5,16(sp)
	lui	a5,0x100
	lw	a6,1684(a5) # 100694 <_bss_end+0x38>
	lw	a5,1680(a5)
	sw	s11,76(sp)
	lui	s11,0x100
	sw	a5,48(sp)
	li	a5,13
	sw	a5,60(sp)
	lui	a5,0x100
	mv	a5,a5
	sw	a5,56(sp)
	addi	a5,s11,1600 # 100640 <Coef>
	sw	a5,24(sp)
	lui	a5,0x2
	sw	s5,100(sp)
	addi	a5,a5,-97 # 1f9f <__DTOR_END__+0x98b>
	lui	s5,0x100
	sw	ra,124(sp)
	sw	s0,120(sp)
	sw	s1,116(sp)
	sw	s2,112(sp)
	sw	s3,108(sp)
	sw	s4,104(sp)
	sw	s6,96(sp)
	sw	s7,92(sp)
	sw	s8,88(sp)
	sw	s9,84(sp)
	sw	s10,80(sp)
	sw	a6,52(sp)
	addi	s5,s5,800 # 100320 <ArrayB>
	sw	a5,12(sp)
lab24: 	li	s0,0
	li	s2,0
	mv	s1,s8
	li	s3,100
lab13: 	add	a0,a0,s0
	lw	a5,12(sp)
	slli	a0,a0,0x2
	add	a0,a0,s0
	addi	a0,a0,81
	rem	s0,a0,a5
	addi	s8,s8,8
	mv	a0,s0
	jal	ra,__floatsidf
	lw	a2,16(sp)
	lw	a3,20(sp)
	jal	ra,__divdf3
	mv	s6,a0
	mv	a0,s2
	mv	s4,a1
	jal	ra,__floatsidf
	mv	a2,a0
	mv	a3,a1
	mv	a0,s6
	mv	a1,s4
	jal	ra,__adddf3
	sw	a0,-8(s8)
	sw	a1,-4(s8)
	addi	s2,s2,1
	bne	s2,s3,lab13
	lw	s2,56(sp)
	li	a4,0
	li	a5,0
lab14: 	lw	a3,4(s2)
	mv	a0,a4
	mv	a1,a5
	jal	ra,__adddf3
	addi	s2,s2,8
	mv	a4,a0
	mv	a5,a1
	bne	s5,s2,lab14
	lw	a2,48(sp)
	lw	a3,52(sp)
	lui	a5,0x100
	sw	a0,1616(a5) # 100650 <SumA>
	sw	a1,1620(a5)
	jal	ra,__divdf3
	lw	s8,56(sp)
	sw	a0,32(sp)
	sw	a1,36(sp)
	li	s6,0
	li	s2,0
	mv	s3,a0
	mv	s4,a1
lab15: 	lw	a1,4(s8)
	mv	a2,s3
	mv	a3,s4
	jal	ra,__subdf3
	mv	a2,a0
	mv	a3,a1
	jal	ra,__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s6
	mv	a1,s2
	jal	ra,__adddf3
	addi	s8,s8,8
	mv	s6,a0
	mv	s2,a1
	bne	s5,s8,lab15
	lw	a2,48(sp)
	lw	a3,52(sp)
	jal	ra,__divdf3
	li	a2,0
	li	a3,0
	mv	s6,a0
	mv	s2,a1
	jal	ra,__unorddf2
	bnez	a0,lab16
	mv	a0,s6
	mv	a1,s2
	li	a2,0
	li	a3,0
	jal	ra,__gedf2
	bltz	a0,lab17
lab16: 	mv	s2,s5
	mv	s11,s5
	li	s8,0
	li	s6,100
lab18: 	add	a0,a0,s0
	lw	a5,12(sp)
	slli	a0,a0,0x2
	add	a0,a0,s0
	addi	a0,a0,81
	rem	s0,a0,a5
	addi	s11,s11,8
	mv	a0,s0
	jal	ra,__floatsidf
	lw	a2,16(sp)
	lw	a3,20(sp)
	jal	ra,__divdf3
	mv	s4,a0
	mv	a0,s8
	mv	s3,a1
	jal	ra,__floatsidf
	mv	a2,a0
	mv	a3,a1
	mv	a0,s4
	mv	a1,s3
	jal	ra,__adddf3
	sw	a0,-8(s11)
	sw	a1,-4(s11)
	addi	s8,s8,1
	bne	s8,s6,lab18
	lui	a5,0x100
	sw	s0,1624(a5) # 100658 <Seed>
	li	a4,0
	mv	s0,s5
	li	a5,0
lab19: 	lw	a2,0(s0)
	mv	a0,a4
	mv	a1,a5
	jal	ra,__adddf3
	lw	a3,24(sp)
	addi	s0,s0,8
	mv	a4,a0
	mv	a5,a1
	bne	a3,s0,lab19
	lw	a2,48(sp)
	lw	a3,52(sp)
	lui	a5,0x100
	sw	a0,1608(a5) # 100648 <SumB>
	sw	a1,1612(a5)
	jal	ra,__divdf3
	sw	a0,40(sp)
	mv	s11,a1
	mv	s8,s5
	li	s6,0
	li	s0,0
	mv	s3,a0
lab20: 	lw	a1,4(s8)
	mv	a2,s3
	mv	a3,s11
	jal	ra,__subdf3
	mv	a2,a0
	mv	a3,a1
	jal	ra,__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s6
	mv	a1,s0
	jal	ra,__adddf3
	lw	a5,24(sp)
	addi	s8,s8,8
	mv	s6,a0
	mv	s0,a1
	bne	a5,s8,lab20
	lw	a2,48(sp)
	lw	a3,52(sp)
	jal	ra,__divdf3
	li	a2,0
	li	a3,0
	mv	s6,a0
	mv	s0,a1
	jal	ra,__unorddf2
	bnez	a0,lab21
	mv	a0,s6
	mv	a1,s0
	li	a2,0
	li	a3,0
	jal	ra,__gedf2
	bltz	a0,lab22
lab21: 	li	s3,0
	li	s7,0
	sw	s11,44(sp)
	li	s9,0
	li	s8,0
	li	s6,0
	li	s0,0
	mv	a5,s3
	mv	s11,s7
lab23: 	lw	a1,4(s1)
	lw	a2,32(sp)
	lw	a3,36(sp)
	sw	a5,28(sp)
	addi	s1,s1,8
	jal	ra,__subdf3
	mv	s3,a0
	mv	s7,a1
	lw	a0,0(s2)
	lw	a1,4(s2)
	lw	a2,40(sp)
	lw	a3,44(sp)
	addi	s2,s2,8
	jal	ra,__subdf3
	mv	s10,a0
	mv	s4,a1
	mv	a2,s10
	mv	a3,s4
	mv	a0,s3
	mv	a1,s7
	jal	ra,__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s6
	mv	a1,s0
	jal	ra,__adddf3
	mv	a2,s3
	mv	a3,s7
	mv	s6,a0
	mv	s0,a1
	mv	a0,s3
	mv	a1,s7
	jal	ra,__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s9
	mv	a1,s8
	jal	ra,__adddf3
	mv	a2,s10
	mv	a3,s4
	mv	s9,a0
	mv	s8,a1
	mv	a0,s10
	mv	a1,s4
	jal	ra,__muldf3
	lw	a5,28(sp)
	mv	a2,a0
	mv	a3,a1
	mv	a0,a5
	mv	a1,s11
	jal	ra,__adddf3
	mv	a5,a0
	mv	s11,a1
	bne	s1,s5,lab23
	mv	s3,a0
	mv	a1,s8
	mv	a0,s9
	jal	ra,sqrt
	mv	s2,a0
	mv	s1,a1
	mv	a0,s3
	mv	a1,s11
	jal	ra,sqrt
	mv	a2,a0
	mv	a3,a1
	mv	a0,s2
	mv	a1,s1
	jal	ra,__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s6
	mv	a1,s0
	jal	ra,__divdf3
	lui	a5,0x100
	sw	a0,1600(a5) # 100640 <Coef>
	sw	a1,1604(a5)
	lw	a5,60(sp)
	addi	a5,a5,-1
	sw	a5,60(sp)
	bnez	a5,lab24
	lw	ra,124(sp)
	lw	s0,120(sp)
	lw	s1,116(sp)
	lw	s2,112(sp)
	lw	s3,108(sp)
	lw	s4,104(sp)
	lw	s5,100(sp)
	lw	s6,96(sp)
	lw	s7,92(sp)
	lw	s8,88(sp)
	lw	s9,84(sp)
	lw	s10,80(sp)
	lw	s11,76(sp)
	li	a0,0
	addi	sp,sp,128
	cfes 0x5e25e
	ret
lab17: 	mv	a0,s6
	mv	a1,s2
	jal	ra,sqrt
	j	lab16
lab22: 	mv	a0,s6
	mv	a1,s0
	jal	ra,sqrt
	j	lab21
initialise_benchmark:
	ret
warm_caches:
	j	benchmark_body.isra.0
benchmark:
	j	benchmark_body.constprop.0
InitSeed:
	lui	a5,0x100
	sw	zero,1624(a5) # 100658 <Seed>
	ret
Calc_Sum_Mean:
	addi	sp,sp,-32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	mv	s1,a1
	mv	s0,a0
	mv	s3,a2
	sw	zero,0(a1)
	sw	zero,4(a1)
	addi	s2,a0,800
	li	a4,0
	li	a5,0
lab25: 	lw	a3,4(s0)
	mv	a0,a4
	mv	a1,a5
	jal	ra,__adddf3
	sw	a0,0(s1)
	sw	a1,4(s1)
	addi	s0,s0,8
	mv	a4,a0
	mv	a5,a1
	bne	s2,s0,lab25
	lui	a5,0x100
	lw	a2,1680(a5) # 100690 <_bss_end+0x34>
	lw	a3,1684(a5)
	jal	ra,__divdf3
	lw	ra,28(sp)
	lw	s0,24(sp)
	sw	a0,0(s3)
	sw	a1,4(s3)
	lw	s1,20(sp)
	lw	s2,16(sp)
	lw	s3,12(sp)
	addi	sp,sp,32
	ret
Square:
	addi	sp,sp,-16
	mv	a2,a0
	mv	a3,a1
	sw	ra,12(sp)
	jal	ra,__muldf3
	lw	ra,12(sp)
	addi	sp,sp,16
	ret
Calc_Var_Stddev:
	addi	sp,sp,-48
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	ra,44(sp)
	mv	s0,a0
	mv	s4,a1
	mv	s3,a2
	mv	s7,a3
	mv	s6,a4
	addi	s5,a0,800
	li	s2,0
	li	s1,0
lab26: 	lw	a1,4(s0)
	mv	a2,s4
	mv	a3,s3
	jal	ra,__subdf3
	mv	a2,a0
	mv	a3,a1
	jal	ra,__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s2
	mv	a1,s1
	jal	ra,__adddf3
	addi	s0,s0,8
	mv	s2,a0
	mv	s1,a1
	bne	s5,s0,lab26
	lui	a5,0x100
	lw	a2,1680(a5) # 100690 <_bss_end+0x34>
	lw	a3,1684(a5)
	jal	ra,__divdf3
	sw	a0,0(s7)
	sw	a1,4(s7)
	jal	ra,sqrt
	lw	ra,44(sp)
	lw	s0,40(sp)
	sw	a0,0(s6)
	sw	a1,4(s6)
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	lw	s5,20(sp)
	lw	s6,16(sp)
	lw	s7,12(sp)
	addi	sp,sp,48
	ret
Calc_LinCorrCoef:
	addi	sp,sp,-96
	sw	a5,28(sp)
	addi	a5,a0,800
	sw	s2,80(sp)
	sw	s3,76(sp)
	sw	s4,72(sp)
	sw	s5,68(sp)
	sw	s6,64(sp)
	sw	s7,60(sp)
	sw	s8,56(sp)
	sw	s9,52(sp)
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	sw	s10,48(sp)
	sw	s11,44(sp)
	mv	s9,a0
	sw	a2,16(sp)
	sw	a3,20(sp)
	sw	a4,24(sp)
	mv	s6,a1
	sw	a5,12(sp)
	li	s8,0
	li	s7,0
	li	s5,0
	li	s4,0
	li	s3,0
	li	s2,0
lab27: 	lw	a1,4(s9)
	lw	a2,16(sp)
	lw	a3,20(sp)
	addi	s9,s9,8
	addi	s6,s6,8
	jal	ra,__subdf3
	mv	s11,a0
	mv	s10,a1
	lw	a2,24(sp)
	lw	a3,28(sp)
	lw	a0,-8(s6)
	lw	a1,-4(s6)
	jal	ra,__subdf3
	mv	s1,a0
	mv	s0,a1
	mv	a2,s1
	mv	a3,s0
	mv	a0,s11
	mv	a1,s10
	jal	ra,__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s3
	mv	a1,s2
	jal	ra,__adddf3
	mv	a2,s11
	mv	a3,s10
	mv	s3,a0
	mv	s2,a1
	mv	a0,s11
	mv	a1,s10
	jal	ra,__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s5
	mv	a1,s4
	jal	ra,__adddf3
	mv	a2,s1
	mv	a3,s0
	mv	s5,a0
	mv	s4,a1
	mv	a0,s1
	mv	a1,s0
	jal	ra,__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s8
	mv	a1,s7
	jal	ra,__adddf3
	lw	a5,12(sp)
	mv	s8,a0
	mv	s7,a1
	bne	a5,s9,lab27
	mv	a0,s5
	mv	a1,s4
	jal	ra,sqrt
	mv	s1,a0
	mv	s0,a1
	mv	a0,s8
	mv	a1,s7
	jal	ra,sqrt
	mv	a2,a0
	mv	a3,a1
	mv	a0,s1
	mv	a1,s0
	jal	ra,__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s3
	mv	a1,s2
	jal	ra,__divdf3
	lw	ra,92(sp)
	lw	s0,88(sp)
	lui	a5,0x100
	sw	a0,1600(a5) # 100640 <Coef>
	sw	a1,1604(a5)
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
Initialize:
	addi	sp,sp,-48
	lui	a5,0x100
	sw	s6,16(sp)
	lui	s6,0x100
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	lw	s0,1672(a5) # 100688 <_bss_end+0x2c>
	lw	s2,1624(s6) # 100658 <Seed>
	lw	s1,1676(a5)
	sw	s3,28(sp)
	lui	s3,0x2
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s7,12(sp)
	sw	s9,4(sp)
	sw	ra,44(sp)
	sw	s8,8(sp)
	sw	s10,0(sp)
	mv	s5,a0
	mv	s9,a0
	li	s7,0
	addi	s3,s3,-97 # 1f9f <__DTOR_END__+0x98b>
	li	s4,100
lab28: 	add	a0,a0,s2
	slli	a0,a0,0x2
	add	a0,a0,s2
	addi	a0,a0,81
	rem	s2,a0,s3
	addi	s9,s9,8
	mv	a0,s2
	jal	ra,__floatsidf
	mv	a2,s0
	mv	a3,s1
	jal	ra,__divdf3
	mv	s10,a0
	mv	a0,s7
	mv	s8,a1
	jal	ra,__floatsidf
	mv	a2,a0
	mv	a3,a1
	mv	a0,s10
	mv	a1,s8
	jal	ra,__adddf3
	sw	a0,-8(s9)
	sw	a1,-4(s9)
	addi	s7,s7,1
	bne	s7,s4,lab28
	lw	ra,44(sp)
	lw	s0,40(sp)
	sw	s2,1624(s6)
	sw	a0,792(s5)
	sw	a1,796(s5)
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	lw	s5,20(sp)
	lw	s6,16(sp)
	lw	s7,12(sp)
	lw	s8,8(sp)
	lw	s9,4(sp)
	lw	s10,0(sp)
	addi	sp,sp,48
	ret
RandomInteger:
	lui	a4,0x100
	lw	a5,1624(a4) # 100658 <Seed>
	slli	a0,a5,0x5
	add	a0,a0,a5
	slli	a0,a0,0x2
	add	a0,a0,a5
	lui	a5,0x2
	addi	a5,a5,-97 # 1f9f <__DTOR_END__+0x98b>
	addi	a0,a0,81
	rem	a0,a0,a5
	sw	a0,1624(a4)
	ret
verify_benchmark:
	lui	a5,0x100
	lw	a2,1616(a5) # 100650 <SumA>
	lw	a3,1620(a5)
	lui	a5,0x100
	lw	a0,1688(a5) # 100698 <_bss_end+0x3c>
	lw	a1,1692(a5)
	addi	sp,sp,-16
	sw	s0,8(sp)
	sw	s2,4(sp)
	sw	s3,0(sp)
	sw	ra,12(sp)
	jal	ra,__subdf3
	lui	a5,0x100
	lw	s2,1696(a5) # 1006a0 <_bss_end+0x44>
	lw	s3,1700(a5)
	lui	s0,0x80000
	not	s0,s0
	and	a5,a1,s0
	mv	a1,a5
	mv	a2,s2
	mv	a3,s3
	jal	ra,__ltdf2
	bgez	a0,lab29
	lui	a5,0x100
	lw	a2,1608(a5) # 100648 <SumB>
	lw	a3,1612(a5)
	lui	a5,0x100
	lw	a0,1704(a5) # 1006a8 <_bss_end+0x4c>
	lw	a1,1708(a5)
	jal	ra,__subdf3
	and	a5,a1,s0
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bltz	a0,lab30
lab29: 	lw	ra,12(sp)
	lw	s0,8(sp)
	lw	s2,4(sp)
	lw	s3,0(sp)
	li	a0,0
	addi	sp,sp,16
	cfes 0x80ba6
	ret
lab30: 	lui	a5,0x100
	lw	a2,1600(a5) # 100640 <Coef>
	lw	a3,1604(a5)
	lui	a5,0x100
	lw	a0,1712(a5) # 1006b0 <_bss_end+0x54>
	lw	a1,1716(a5)
	jal	ra,__subdf3
	and	a5,a1,s0
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	lw	ra,12(sp)
	lw	s0,8(sp)
	lw	s2,4(sp)
	lw	s3,0(sp)
	slti	a0,a0,0
	addi	sp,sp,16
	cfes 0xc0ba6
	ret
main:
	addi	sp,sp,-32
	sw	ra,28(sp)
	jal	ra,initialise_board
	jal	ra,initialise_benchmark
	li	a0,0
	jal	ra,warm_caches
	cfed 0x3326b
	jal	ra,start_trigger
	jal	ra,benchmark
	cfed 0x1c311
	sw	a0,12(sp)
	jal	ra,stop_trigger
	lw	a0,12(sp)
	jal	ra,verify_benchmark
	cfed 0x399c9
	cfed 0x399c9
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

ArrayA:
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
ArrayB:
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
Coef:
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
SumB:
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
SumA:
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
Seed:
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
