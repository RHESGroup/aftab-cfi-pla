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
	lw	a6,324(a5) # 100144 <__clz_tab+0x108>
	lw	a5,320(a5)
	lui	s11,0x101
	sw	a6,20(sp)
	sw	a5,16(sp)
	lui	a5,0x100
	lw	a6,332(a5) # 10014c <__clz_tab+0x110>
	lw	a5,328(a5)
	lui	s5,0x101
	sw	a6,44(sp)
	sw	a5,40(sp)
	lui	a5,0x100
	addi	a5,a5,1440 # 1005a0 <ArrayA>
	sw	a5,52(sp)
	addi	a5,s11,-1056 # 100be0 <Coef>
	sw	a5,12(sp)
	lui	a5,0x2
	addi	a5,a5,-97 # 1f9f <__divdf3+0x49f>
	sw	zero,56(sp)
	addi	s5,s5,-1856 # 1008c0 <ArrayB>
	sw	a5,8(sp)
lab12: 	lw	s7,52(sp)
	li	s0,0
	li	s1,0
	mv	s4,s7
	li	s2,100
lab1: 	slli	a0,s0,0x5
	add	a0,a0,s0
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
lab2: 	lw	a2,0(s1)
	lw	a3,4(s1)
	mv	a0,a4
	mv	a1,a5
	jal	ra,__adddf3
	addi	s1,s1,8
	mv	a4,a0
	mv	a5,a1
	bne	s5,s1,lab2
	lw	a2,40(sp)
	lw	a3,44(sp)
	lui	a5,0x101
	sw	a0,-1040(a5) # 100bf0 <SumA>
	sw	a1,-1036(a5)
	jal	ra,__divdf3
	lw	s3,52(sp)
	sw	a0,28(sp)
	sw	a1,32(sp)
	li	s2,0
	li	s1,0
	mv	s6,a0
	mv	s7,a1
lab3: 	lw	a0,0(s3)
	lw	a1,4(s3)
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
lab6: 	slli	a0,s0,0x5
	add	a0,a0,s0
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
	lui	a5,0x101
	sw	s0,-1032(a5) # 100bf8 <Seed>
	li	a4,0
	mv	s0,s5
	li	a5,0
lab7: 	lw	a3,4(s0)
	lw	a2,0(s0)
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
	lui	a5,0x101
	sw	a0,-1048(a5) # 100be8 <SumB>
	sw	a1,-1044(a5)
	jal	ra,__divdf3
	sw	a0,36(sp)
	mv	s10,a1
	mv	s2,s5
	li	s1,0
	li	s0,0
	mv	s3,a0
lab8: 	lw	a0,0(s2)
	lw	a1,4(s2)
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
lab11: 	lw	a0,0(s4)
	lw	a1,4(s4)
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
	jal	ra,__DTOR_END__
	mv	s3,a0
	mv	s2,a1
	mv	a0,s7
	mv	a1,s10
	jal	ra,__DTOR_END__
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
	lui	a5,0x101
	sw	a0,-1056(a5) # 100be0 <Coef>
	sw	a1,-1052(a5)
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
	ret
lab5: 	mv	a0,s2
	mv	a1,s1
	jal	ra,__DTOR_END__
	j	lab4
lab10: 	mv	a0,s1
	mv	a1,s0
	jal	ra,__DTOR_END__
	j	lab9
benchmark_body.constprop.0:
	lui	a5,0x100
	lw	a6,324(a5) # 100144 <__clz_tab+0x108>
	lw	a5,320(a5)
	addi	sp,sp,-128
	sw	a6,20(sp)
	sw	a5,16(sp)
	lui	a5,0x100
	lw	a6,332(a5) # 10014c <__clz_tab+0x110>
	lw	a5,328(a5)
	sw	s11,76(sp)
	lui	s11,0x101
	sw	a5,48(sp)
	li	a5,13
	sw	a5,60(sp)
	lui	a5,0x100
	addi	a5,a5,1440 # 1005a0 <ArrayA>
	sw	a5,56(sp)
	addi	a5,s11,-1056 # 100be0 <Coef>
	sw	a5,24(sp)
	lui	a5,0x2
	sw	s5,100(sp)
	addi	a5,a5,-97 # 1f9f <__divdf3+0x49f>
	lui	s5,0x101
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
	addi	s5,s5,-1856 # 1008c0 <ArrayB>
	sw	a5,12(sp)
lab24: 	lw	s8,56(sp)
	li	s0,0
	li	s2,0
	mv	s1,s8
	li	s3,100
lab13: 	slli	a0,s0,0x5
	add	a0,a0,s0
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
lab14: 	lw	a2,0(s2)
	lw	a3,4(s2)
	mv	a0,a4
	mv	a1,a5
	jal	ra,__adddf3
	addi	s2,s2,8
	mv	a4,a0
	mv	a5,a1
	bne	s5,s2,lab14
	lw	a2,48(sp)
	lw	a3,52(sp)
	lui	a5,0x101
	sw	a0,-1040(a5) # 100bf0 <SumA>
	sw	a1,-1036(a5)
	jal	ra,__divdf3
	lw	s8,56(sp)
	sw	a0,32(sp)
	sw	a1,36(sp)
	li	s6,0
	li	s2,0
	mv	s3,a0
	mv	s4,a1
lab15: 	lw	a0,0(s8)
	lw	a1,4(s8)
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
lab18: 	slli	a0,s0,0x5
	add	a0,a0,s0
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
	lui	a5,0x101
	sw	s0,-1032(a5) # 100bf8 <Seed>
	li	a4,0
	mv	s0,s5
	li	a5,0
lab19: 	lw	a3,4(s0)
	lw	a2,0(s0)
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
	lui	a5,0x101
	sw	a0,-1048(a5) # 100be8 <SumB>
	sw	a1,-1044(a5)
	jal	ra,__divdf3
	sw	a0,40(sp)
	mv	s11,a1
	mv	s8,s5
	li	s6,0
	li	s0,0
	mv	s3,a0
lab20: 	lw	a0,0(s8)
	lw	a1,4(s8)
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
lab23: 	lw	a0,0(s1)
	lw	a1,4(s1)
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
	jal	ra,__DTOR_END__
	mv	s2,a0
	mv	s1,a1
	mv	a0,s3
	mv	a1,s11
	jal	ra,__DTOR_END__
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
	lui	a5,0x101
	sw	a0,-1056(a5) # 100be0 <Coef>
	sw	a1,-1052(a5)
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
	ret
lab17: 	mv	a0,s6
	mv	a1,s2
	jal	ra,__DTOR_END__
	j	lab16
lab22: 	mv	a0,s6
	mv	a1,s0
	jal	ra,__DTOR_END__
	j	lab21
initialise_benchmark:
	ret
warm_caches:
	j	benchmark_body.isra.0
benchmark:
	j	benchmark_body.constprop.0
InitSeed:
	lui	a5,0x101
	sw	zero,-1032(a5) # 100bf8 <Seed>
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
lab25: 	lw	a2,0(s0)
	lw	a3,4(s0)
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
	lw	a2,328(a5) # 100148 <__clz_tab+0x10c>
	lw	a3,332(a5)
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
lab26: 	lw	a0,0(s0)
	lw	a1,4(s0)
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
	lw	a2,328(a5) # 100148 <__clz_tab+0x10c>
	lw	a3,332(a5)
	jal	ra,__divdf3
	sw	a0,0(s7)
	sw	a1,4(s7)
	jal	ra,__DTOR_END__
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
lab27: 	lw	a0,0(s9)
	lw	a1,4(s9)
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
	jal	ra,__DTOR_END__
	mv	s1,a0
	mv	s0,a1
	mv	a0,s8
	mv	a1,s7
	jal	ra,__DTOR_END__
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
	lui	a5,0x101
	sw	a0,-1056(a5) # 100be0 <Coef>
	sw	a1,-1052(a5)
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
	lui	s6,0x101
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	lw	s0,320(a5) # 100140 <__clz_tab+0x104>
	lw	s2,-1032(s6) # 100bf8 <Seed>
	lw	s1,324(a5)
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
	addi	s3,s3,-97 # 1f9f <__divdf3+0x49f>
	li	s4,100
lab28: 	slli	a0,s2,0x5
	add	a0,a0,s2
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
	sw	s2,-1032(s6)
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
	lui	a4,0x101
	lw	a5,-1032(a4) # 100bf8 <Seed>
	slli	a0,a5,0x5
	add	a0,a0,a5
	slli	a0,a0,0x2
	add	a0,a0,a5
	lui	a5,0x2
	addi	a5,a5,-97 # 1f9f <__divdf3+0x49f>
	addi	a0,a0,81
	rem	a0,a0,a5
	sw	a0,-1032(a4)
	ret
verify_benchmark:
	lui	a5,0x101
	lw	a2,-1040(a5) # 100bf0 <SumA>
	lw	a3,-1036(a5)
	lui	a5,0x100
	lw	a0,336(a5) # 100150 <__clz_tab+0x114>
	lw	a1,340(a5)
	addi	sp,sp,-16
	sw	s0,8(sp)
	sw	s2,4(sp)
	sw	s3,0(sp)
	sw	ra,12(sp)
	jal	ra,__subdf3
	lui	a5,0x100
	lw	s2,344(a5) # 100158 <__clz_tab+0x11c>
	lw	s3,348(a5)
	lui	s0,0x80000
	not	s0,s0
	and	a5,a1,s0
	mv	a1,a5
	mv	a2,s2
	mv	a3,s3
	jal	ra,__ledf2
	bgez	a0,lab29
	lui	a5,0x101
	lw	a2,-1048(a5) # 100be8 <SumB>
	lw	a3,-1044(a5)
	lui	a5,0x100
	lw	a0,352(a5) # 100160 <__clz_tab+0x124>
	lw	a1,356(a5)
	jal	ra,__subdf3
	and	a5,a1,s0
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ledf2
	bltz	a0,lab30
lab29: 	lw	ra,12(sp)
	lw	s0,8(sp)
	lw	s2,4(sp)
	lw	s3,0(sp)
	li	a0,0
	addi	sp,sp,16
	ret
lab30: 	lui	a5,0x101
	lw	a2,-1056(a5) # 100be0 <Coef>
	lw	a3,-1052(a5)
	lui	a5,0x100
	lw	a0,360(a5) # 100168 <__clz_tab+0x12c>
	lw	a1,364(a5)
	jal	ra,__subdf3
	and	a5,a1,s0
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ledf2
	lw	ra,12(sp)
	lw	s0,8(sp)
	lw	s2,4(sp)
	lw	s3,0(sp)
	slti	a0,a0,0
	addi	sp,sp,16
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
	bne	s1,a3,lab31
	blez	a6,lab32
	bnez	a7,lab33
	or	a3,a4,a2
	beqz	a3,lab34
	addi	a1,a6,-1
	bnez	a1,lab35
	add	a2,a0,a2
	add	a4,a5,a4
	sltu	a5,a2,a0
	add	a5,a4,a5
	mv	a0,a2
lab49: 	li	s0,1
	j	lab36
lab35: 	li	a3,2047
	bne	a6,a3,lab37
lab51: 	li	s0,2047
	j	lab38
lab33: 	li	a3,2047
	beq	s0,a3,lab38
	lui	a3,0x800
	or	a4,a4,a3
	mv	a1,a6
lab37: 	li	a3,56
	blt	a3,a1,lab39
	li	a3,31
	blt	a3,a1,lab40
	li	a6,32
	sub	a6,a6,a1
	sll	a3,a4,a6
	srl	a7,a2,a1
	sll	a6,a2,a6
	or	a3,a3,a7
	snez	a6,a6
	or	a3,a3,a6
	srl	a1,a4,a1
lab43: 	add	a3,a3,a0
	add	a1,a1,a5
	sltu	a5,a3,a0
	add	a5,a1,a5
	mv	a0,a3
lab36: 	lui	a4,0x800
	and	a4,a5,a4
	beqz	a4,lab38
	addi	s0,s0,1 # 80000001 <_stack+0x7fef0001>
	li	a4,2047
	beq	s0,a4,lab41
	lui	a4,0xff800
	addi	a4,a4,-1 # ff7fffff <_stack+0xff6effff>
	and	a5,a5,a4
	srli	a4,a0,0x1
	andi	a0,a0,1
	or	a4,a4,a0
	slli	a0,a5,0x1f
	or	a0,a0,a4
	srli	a5,a5,0x1
	j	lab38
lab40: 	addi	a3,a1,-32
	li	a7,32
	srl	a3,a4,a3
	li	a6,0
	beq	a1,a7,lab42
	li	a6,64
	sub	a6,a6,a1
	sll	a6,a4,a6
lab42: 	or	a6,a6,a2
	snez	a6,a6
	or	a3,a3,a6
lab44: 	li	a1,0
	j	lab43
lab39: 	or	a3,a4,a2
	snez	a3,a3
	j	lab44
lab32: 	beqz	a6,lab45
	sub	a1,a7,s0
	bnez	s0,lab46
	or	a3,a5,a0
	beqz	a3,lab47
	addi	a3,a1,-1
	bnez	a3,lab48
	add	a0,a0,a2
	add	a4,a5,a4
	sltu	a2,a0,a2
	add	a5,a4,a2
	j	lab49
lab48: 	li	a6,2047
	bne	a1,a6,lab50
lab52: 	mv	a5,a4
	mv	a0,a2
	j	lab51
lab46: 	li	a3,2047
	beq	a7,a3,lab52
	lui	a3,0x800
	or	a5,a5,a3
	mv	a3,a1
lab50: 	li	a1,56
	blt	a1,a3,lab53
	li	a1,31
	blt	a1,a3,lab54
	li	a6,32
	sub	a6,a6,a3
	sll	a1,a5,a6
	srl	t1,a0,a3
	sll	a6,a0,a6
	or	a1,a1,t1
	snez	a6,a6
	or	a1,a1,a6
	srl	a3,a5,a3
lab56: 	add	a0,a1,a2
	add	a3,a3,a4
	sltu	a2,a0,a2
	add	a5,a3,a2
	mv	s0,a7
	j	lab36
lab54: 	addi	a1,a3,-32 # 7fffe0 <_stack+0x6effe0>
	li	t1,32
	srl	a1,a5,a1
	li	a6,0
	beq	a3,t1,lab55
	li	a6,64
	sub	a6,a6,a3
	sll	a6,a5,a6
lab55: 	or	a6,a6,a0
	snez	a6,a6
	or	a1,a1,a6
lab57: 	li	a3,0
	j	lab56
lab53: 	or	a1,a5,a0
	snez	a1,a1
	j	lab57
lab45: 	addi	a3,s0,1
	andi	a1,a3,2046
	bnez	a1,lab58
	or	a3,a5,a0
	bnez	s0,lab59
	beqz	a3,lab60
	or	a3,a4,a2
	beqz	a3,lab38
	add	a2,a0,a2
	add	a4,a5,a4
	sltu	a5,a2,a0
	add	a5,a4,a5
	lui	a4,0x800
	and	a4,a5,a4
	mv	a0,a2
	beqz	a4,lab38
	lui	a4,0xff800
	addi	a4,a4,-1 # ff7fffff <_stack+0xff6effff>
	and	a5,a5,a4
	li	s0,1
lab38: 	andi	a4,a0,7
	beqz	a4,lab61
	andi	a4,a0,15
	li	a3,4
	beq	a4,a3,lab61
	addi	a4,a0,4
	sltu	a0,a4,a0
	add	a5,a5,a0
	mv	a0,a4
	j	lab61
lab59: 	beqz	a3,lab52
	or	a4,a4,a2
	beqz	a4,lab51
lab95: 	li	s1,0
	lui	a5,0x400
	li	a0,0
lab109: 	li	s0,2047
	j	lab61
lab58: 	li	a1,2047
	beq	a3,a1,lab62
	add	a2,a0,a2
	sltu	a0,a2,a0
	add	a4,a5,a4
	add	a4,a4,a0
	slli	a0,a4,0x1f
	srli	a2,a2,0x1
	or	a0,a0,a2
	srli	a5,a4,0x1
	mv	s0,a3
	j	lab38
lab31: 	blez	a6,lab63
	bnez	a7,lab64
	or	a3,a4,a2
	beqz	a3,lab34
	addi	a1,a6,-1
	bnez	a1,lab65
	sub	a2,a0,a2
	sub	a4,a5,a4
	sltu	a5,a0,a2
	sub	a5,a4,a5
	mv	a0,a2
lab78: 	li	s0,1
	j	lab66
lab65: 	li	a3,2047
	beq	a6,a3,lab51
lab70: 	li	a3,56
	blt	a3,a1,lab67
	li	a3,31
	blt	a3,a1,lab68
	li	a6,32
	sub	a6,a6,a1
	sll	a3,a4,a6
	srl	a7,a2,a1
	sll	a6,a2,a6
	or	a3,a3,a7
	snez	a6,a6
	or	a3,a3,a6
	srl	a1,a4,a1
lab72: 	sub	a3,a0,a3
	sub	a1,a5,a1
	sltu	a5,a0,a3
	sub	a5,a1,a5
	mv	a0,a3
lab66: 	lui	s2,0x800
	and	a4,a5,s2
	beqz	a4,lab38
	addi	s2,s2,-1 # 7fffff <_stack+0x6effff>
	and	s2,a5,s2
	mv	s3,a0
	j	lab69
lab64: 	li	a3,2047
	beq	s0,a3,lab38
	lui	a3,0x800
	or	a4,a4,a3
	mv	a1,a6
	j	lab70
lab68: 	addi	a3,a1,-32
	li	a7,32
	srl	a3,a4,a3
	li	a6,0
	beq	a1,a7,lab71
	li	a6,64
	sub	a6,a6,a1
	sll	a6,a4,a6
lab71: 	or	a6,a6,a2
	snez	a6,a6
	or	a3,a3,a6
lab73: 	li	a1,0
	j	lab72
lab67: 	or	a3,a4,a2
	snez	a3,a3
	j	lab73
lab63: 	beqz	a6,lab74
	sub	a6,a7,s0
	bnez	s0,lab75
	or	a1,a5,a0
	beqz	a1,lab76
	addi	a1,a6,-1
	bnez	a1,lab77
	sub	a0,a2,a0
	sub	a4,a4,a5
	sltu	a2,a2,a0
	sub	a5,a4,a2
	mv	s1,a3
	j	lab78
lab77: 	li	t1,2047
	bne	a6,t1,lab79
lab81: 	mv	a5,a4
	mv	a0,a2
	li	s0,2047
	j	lab80
lab75: 	li	a1,2047
	beq	a7,a1,lab81
	lui	a1,0x800
	or	a5,a5,a1
	mv	a1,a6
lab79: 	li	a6,56
	blt	a6,a1,lab82
	li	a6,31
	blt	a6,a1,lab83
	li	t1,32
	sub	t1,t1,a1
	srl	t3,a0,a1
	sll	a6,a5,t1
	sll	t1,a0,t1
	or	a6,a6,t3
	snez	t1,t1
	or	a0,a6,t1
	srl	a1,a5,a1
lab85: 	sub	a0,a2,a0
	sub	a1,a4,a1
	sltu	a2,a2,a0
	sub	a5,a1,a2
	mv	s0,a7
	mv	s1,a3
	j	lab66
lab83: 	addi	a6,a1,-32 # 7fffe0 <_stack+0x6effe0>
	li	t3,32
	srl	a6,a5,a6
	li	t1,0
	beq	a1,t3,lab84
	li	t1,64
	sub	t1,t1,a1
	sll	t1,a5,t1
lab84: 	or	t1,t1,a0
	snez	t1,t1
	or	a0,a6,t1
lab86: 	li	a1,0
	j	lab85
lab82: 	or	a0,a5,a0
	snez	a0,a0
	j	lab86
lab74: 	addi	a1,s0,1
	andi	a1,a1,2046
	bnez	a1,lab87
	or	a6,a5,a0
	or	a1,a4,a2
	bnez	s0,lab88
	bnez	a6,lab89
	beqz	a1,lab90
	mv	a5,a4
	mv	a0,a2
lab80: 	mv	s1,a3
	j	lab38
lab89: 	beqz	a1,lab38
	sub	a6,a0,a2
	sltu	a7,a0,a6
	sub	a1,a5,a4
	sub	a1,a1,a7
	lui	a7,0x800
	and	a7,a1,a7
	beqz	a7,lab91
	sub	a0,a2,a0
	sub	a4,a4,a5
	sltu	a2,a2,a0
	sub	a5,a4,a2
	j	lab80
lab91: 	or	a0,a6,a1
	beqz	a0,lab92
	mv	a5,a1
	mv	a0,a6
	j	lab38
lab88: 	bnez	a6,lab93
	beqz	a1,lab94
	mv	a5,a4
	mv	a0,a2
	mv	s1,a3
	j	lab51
lab93: 	beqz	a1,lab51
	j	lab95
lab87: 	sub	s3,a0,a2
	sltu	a1,a0,s3
	sub	s2,a5,a4
	sub	s2,s2,a1
	lui	a1,0x800
	and	a1,s2,a1
	beqz	a1,lab96
	sub	s3,a2,a0
	sub	s2,a4,a5
	sltu	a2,a2,s3
	sub	s2,s2,a2
	mv	s1,a3
lab69: 	beqz	s2,lab97
	mv	a0,s2
	jal	ra,__clzsi2
lab102: 	addi	a4,a0,-8
	li	a5,31
	blt	a5,a4,lab98
	li	a5,32
	sub	a5,a5,a4
	sll	s2,s2,a4
	srl	a5,s3,a5
	or	a5,a5,s2
	sll	a0,s3,a4
lab103: 	blt	a4,s0,lab99
	sub	a4,a4,s0
	addi	a2,a4,1
	li	a3,31
	blt	a3,a2,lab100
	li	a4,32
	sub	a4,a4,a2
	sll	a3,a5,a4
	srl	a1,a0,a2
	sll	a4,a0,a4
	or	a3,a3,a1
	snez	a4,a4
	or	a0,a3,a4
	srl	a5,a5,a2
lab105: 	li	s0,0
	j	lab38
lab96: 	or	a0,s3,s2
	bnez	a0,lab69
	li	a5,0
	li	s0,0
	j	lab101
lab97: 	mv	a0,s3
	jal	ra,__clzsi2
	addi	a0,a0,32
	j	lab102
lab98: 	addi	a5,a0,-40
	sll	a5,s3,a5
	li	a0,0
	j	lab103
lab100: 	addi	a4,a4,-31
	li	a1,32
	srl	a4,a5,a4
	li	a3,0
	beq	a2,a1,lab104
	li	a3,64
	sub	a3,a3,a2
	sll	a3,a5,a3
lab104: 	or	a3,a0,a3
	snez	a3,a3
	or	a0,a4,a3
	li	a5,0
	j	lab105
lab99: 	sub	s0,s0,a4
	lui	a4,0xff800
	addi	a4,a4,-1 # ff7fffff <_stack+0xff6effff>
	and	a5,a5,a4
	j	lab38
lab47: 	mv	a5,a4
	mv	a0,a2
	mv	s0,a1
	j	lab38
lab60: 	mv	a5,a4
	mv	a0,a2
	j	lab38
lab62: 	li	s0,2047
lab41: 	li	a5,0
	li	a0,0
lab61: 	lui	a4,0x800
	and	a4,a5,a4
	beqz	a4,lab106
	addi	s0,s0,1
	li	a4,2047
	beq	s0,a4,lab107
	lui	a4,0xff800
	addi	a4,a4,-1 # ff7fffff <_stack+0xff6effff>
	and	a5,a5,a4
lab106: 	slli	a3,a5,0x1d
	srli	a0,a0,0x3
	li	a4,2047
	or	a3,a3,a0
	srli	a5,a5,0x3
	bne	s0,a4,lab108
	or	a3,a3,a5
	li	a5,0
	beqz	a3,lab108
	lui	a5,0x80
	li	a3,0
	li	s1,0
lab108: 	slli	a4,s0,0x14
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
lab34: 	mv	s0,a6
	j	lab38
lab76: 	mv	a5,a4
	mv	a0,a2
	mv	s0,a6
	j	lab80
lab90: 	li	a5,0
	li	a0,0
lab101: 	li	s1,0
	j	lab61
lab92: 	li	a5,0
	j	lab101
lab94: 	li	a0,0
	li	s1,0
	lui	a5,0x400
	j	lab109
lab107: 	li	a5,0
	li	a0,0
	j	lab106
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
	beqz	a6,lab110
	li	a5,2047
	beq	a6,a5,lab111
	srli	s5,a0,0x1d
	slli	s1,s1,0x3
	or	s5,s5,s1
	lui	a5,0x800
	or	s5,s5,a5
	slli	s0,a0,0x3
	addi	s2,a6,-1023
lab118: 	li	s7,0
lab122: 	srli	a5,s8,0x14
	slli	s1,s8,0xc
	andi	a5,a5,2047
	srli	s1,s1,0xc
	srli	s8,s8,0x1f
	beqz	a5,lab112
	li	a4,2047
	beq	a5,a4,lab113
	slli	s1,s1,0x3
	srli	a4,s6,0x1d
	or	a4,a4,s1
	lui	s1,0x800
	or	s1,a4,s1
	slli	t4,s6,0x3
	addi	a5,a5,-1023 # 7ffc01 <_stack+0x6efc01>
lab126: 	li	a4,0
lab130: 	sub	a6,s2,a5
	slli	a5,s7,0x2
	or	a5,a5,a4
	addi	a5,a5,-1
	li	a3,14
	xor	a2,s3,s8
	bltu	a3,a5,lab114
	lui	a3,0x100
	slli	a5,a5,0x2
	mv	a3,a3
	add	a5,a5,a3
	lw	a5,0(a5)
	jr	a5
lab110: 	or	s5,s1,a0
	beqz	s5,lab115
	beqz	s1,lab116
	mv	a0,s1
	jal	ra,__clzsi2
lab119: 	addi	a5,a0,-11
	li	a4,28
	blt	a4,a5,lab117
	li	s5,29
	addi	s0,a0,-8
	sub	s5,s5,a5
	sll	s1,s1,s0
	srl	s5,s4,s5
	or	s5,s5,s1
	sll	s0,s4,s0
lab120: 	li	a6,-1011
	sub	s2,a6,a0
	j	lab118
lab116: 	jal	ra,__clzsi2
	addi	a0,a0,32
	j	lab119
lab117: 	addi	s5,a0,-40
	sll	s5,s4,s5
	li	s0,0
	j	lab120
lab111: 	or	s5,s1,a0
	beqz	s5,lab121
	mv	s0,a0
	mv	s5,s1
	li	s2,2047
	li	s7,3
	j	lab122
lab115: 	li	s0,0
	li	s2,0
	li	s7,1
	j	lab122
lab121: 	li	s0,0
	li	s2,2047
	li	s7,2
	j	lab122
lab112: 	or	t4,s1,s6
	beqz	t4,lab123
	beqz	s1,lab124
	mv	a0,s1
	jal	ra,__clzsi2
lab127: 	addi	a4,a0,-11
	li	a5,28
	blt	a5,a4,lab125
	li	a5,29
	addi	t4,a0,-8
	sub	a5,a5,a4
	sll	s1,s1,t4
	srl	a5,s6,a5
	or	s1,a5,s1
	sll	t4,s6,t4
lab128: 	li	a5,-1011
	sub	a5,a5,a0
	j	lab126
lab124: 	mv	a0,s6
	jal	ra,__clzsi2
	addi	a0,a0,32
	j	lab127
lab125: 	addi	s1,a0,-40
	sll	s1,s6,s1
	li	t4,0
	j	lab128
lab113: 	or	t4,s1,s6
	beqz	t4,lab129
	mv	t4,s6
	li	a5,2047
	li	a4,3
	j	lab130
lab123: 	li	s1,0
	li	a5,0
	li	a4,1
	j	lab130
lab129: 	li	s1,0
	li	a5,2047
	li	a4,2
	j	lab130
lab114: 	bltu	s1,s5,lab131
	bne	s5,s1,lab132
	bltu	s0,t4,lab132
lab131: 	slli	a4,s5,0x1f
	srli	a5,s0,0x1
	slli	t5,s0,0x1f
	srli	s5,s5,0x1
	or	s0,a4,a5
lab155: 	slli	a0,s1,0x8
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
	bgeu	a5,a7,lab133
	add	a5,a5,a3
	addi	a4,t3,-1
	bltu	a5,a3,lab133
	bgeu	a5,a7,lab133
	addi	a4,t3,-2
	add	a5,a5,a3
lab133: 	sub	a5,a5,a7
	divu	t3,a5,a0
	slli	s0,s0,0x10
	srli	s0,s0,0x10
	remu	a5,a5,a0
	mul	a7,t1,t3
	slli	a5,a5,0x10
	or	s0,s0,a5
	mv	a5,t3
	bgeu	s0,a7,lab134
	add	s0,s0,a3
	addi	a5,t3,-1
	bltu	s0,a3,lab134
	bgeu	s0,a7,lab134
	addi	a5,t3,-2
	add	s0,s0,a3
lab134: 	slli	a4,a4,0x10
	lui	t2,0x10
	or	t6,a4,a5
	sub	s0,s0,a7
	addi	a7,t2,-1 # ffff <_min_stack+0x7fff>
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
	bgeu	a4,s1,lab135
	add	t4,t4,t2
lab135: 	srli	a5,a4,0x10
	add	a5,a5,t4
	lui	t4,0x10
	addi	t4,t4,-1 # ffff <_min_stack+0x7fff>
	and	a4,a4,t4
	slli	a4,a4,0x10
	and	t0,t0,t4
	add	a4,a4,t0
	bltu	s0,a5,lab136
	mv	s1,t6
	bne	s0,a5,lab137
	bgeu	t5,a4,lab137
lab136: 	add	t5,t5,a1
	sltu	t4,t5,a1
	add	t4,t4,a3
	add	s0,s0,t4
	addi	s1,t6,-1
	bltu	a3,s0,lab138
	bne	a3,s0,lab137
	bltu	t5,a1,lab137
lab138: 	bltu	s0,a5,lab139
	bne	a5,s0,lab137
	bgeu	t5,a4,lab137
lab139: 	add	t5,t5,a1
	sltu	t4,t5,a1
	add	t4,t4,a3
	addi	s1,t6,-2
	add	s0,s0,t4
lab137: 	sub	a4,t5,a4
	sub	s0,s0,a5
	sltu	a5,t5,a4
	sub	s0,s0,a5
	li	t4,-1
	beq	a3,s0,lab140
	divu	t6,s0,a0
	srli	a5,a4,0x10
	remu	s0,s0,a0
	mv	t4,t6
	mul	t5,t1,t6
	slli	s0,s0,0x10
	or	a5,a5,s0
	bgeu	a5,t5,lab141
	add	a5,a5,a3
	addi	t4,t6,-1
	bltu	a5,a3,lab141
	bgeu	a5,t5,lab141
	addi	t4,t6,-2
	add	a5,a5,a3
lab141: 	sub	a5,a5,t5
	divu	t5,a5,a0
	slli	a4,a4,0x10
	srli	a4,a4,0x10
	remu	a5,a5,a0
	mv	a0,t5
	mul	t1,t1,t5
	slli	a5,a5,0x10
	or	a4,a4,a5
	bgeu	a4,t1,lab142
	add	a4,a4,a3
	addi	a0,t5,-1
	bltu	a4,a3,lab142
	bgeu	a4,t1,lab142
	addi	a0,t5,-2
	add	a4,a4,a3
lab142: 	slli	a5,t4,0x10
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
	bgeu	a0,a7,lab143
	lui	a7,0x10
	add	t1,t1,a7
lab143: 	srli	a7,a0,0x10
	add	a7,a7,t1
	lui	t1,0x10
	addi	t1,t1,-1 # ffff <_min_stack+0x7fff>
	and	a0,a0,t1
	slli	a0,a0,0x10
	and	t4,t4,t1
	add	a0,a0,t4
	bltu	a4,a7,lab144
	bne	a4,a7,lab145
	mv	t4,a5
	beqz	a0,lab140
lab144: 	add	a4,a3,a4
	addi	t4,a5,-1
	bltu	a4,a3,lab146
	bltu	a4,a7,lab147
	bne	a4,a7,lab148
	bgeu	a1,a0,lab149
lab147: 	addi	t4,a5,-2
	slli	a5,a1,0x1
	sltu	a1,a5,a1
	add	a1,a1,a3
	add	a4,a4,a1
	mv	a1,a5
lab146: 	bne	a4,a7,lab150
lab149: 	beq	a0,a1,lab140
lab150: 	ori	t4,t4,1
lab140: 	addi	a5,a6,1023
	blez	a5,lab151
	andi	a4,t4,7
	beqz	a4,lab152
	andi	a4,t4,15
	li	a3,4
	beq	a4,a3,lab152
	addi	a4,t4,4
	sltu	t4,a4,t4
	add	s1,s1,t4
	mv	t4,a4
lab152: 	lui	a4,0x1000
	and	a4,s1,a4
	beqz	a4,lab153
	lui	a5,0xff000
	addi	a5,a5,-1 # feffffff <_stack+0xfeeeffff>
	and	s1,s1,a5
	addi	a5,a6,1024
lab153: 	li	a4,2046
	blt	a4,a5,lab154
	srli	t4,t4,0x3
	slli	a4,s1,0x1d
	or	a4,a4,t4
	srli	a0,s1,0x3
lab158: 	lui	a3,0x7ff00
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
lab132: 	addi	a6,a6,-1
	li	t5,0
	j	lab155
	mv	a2,s3
	mv	s1,s5
	mv	t4,s0
	mv	a4,s7
lab159: 	li	a5,3
	beq	a4,a5,lab156
	li	a5,1
	beq	a4,a5,lab157
	li	a5,2
	bne	a4,a5,lab140
lab154: 	li	a0,0
	li	a4,0
	li	a5,2047
	j	lab158
	mv	a2,s8
	j	lab159
	lui	s1,0x80
	li	t4,0
	li	a2,0
	li	a4,3
	j	lab159
lab151: 	li	a0,1
	sub	a0,a0,a5
	li	a4,56
	blt	a4,a0,lab157
	li	a4,31
	blt	a4,a0,lab160
	addi	a6,a6,1054
	sll	a5,s1,a6
	srl	a4,t4,a0
	sll	a6,t4,a6
	or	a5,a5,a4
	snez	a6,a6
	or	a5,a5,a6
	srl	a0,s1,a0
lab164: 	andi	a4,a5,7
	beqz	a4,lab161
	andi	a4,a5,15
	li	a3,4
	beq	a4,a3,lab161
	addi	a4,a5,4
	sltu	a5,a4,a5
	add	a0,a0,a5
	mv	a5,a4
lab161: 	lui	a4,0x800
	and	a4,a0,a4
	bnez	a4,lab162
	slli	a4,a0,0x1d
	srli	a5,a5,0x3
	or	a4,a4,a5
	srli	a0,a0,0x3
lab165: 	li	a5,0
	j	lab158
lab160: 	li	a4,-31
	sub	a5,a4,a5
	li	a3,32
	srl	a5,s1,a5
	li	a4,0
	beq	a0,a3,lab163
	addi	a4,a6,1086
	sll	a4,s1,a4
lab163: 	or	a4,a4,t4
	snez	a4,a4
	or	a5,a5,a4
	li	a0,0
	j	lab164
lab157: 	li	a0,0
	li	a4,0
	j	lab165
lab156: 	lui	a0,0x80
	li	a4,0
	li	a5,2047
	li	a2,0
	j	lab158
lab162: 	li	a0,0
	li	a4,0
	li	a5,1
	j	lab158
lab148: 	mv	a5,t4
lab145: 	mv	t4,a5
	j	lab150
__gedf2:
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
	bne	a6,t4,lab166
	or	t4,a7,a5
	beqz	t4,lab167
lab169: 	li	a0,-2
	ret
lab166: 	bne	a1,t4,lab168
lab183: 	or	t4,a4,a2
	bnez	t4,lab169
lab168: 	bnez	a6,lab170
	or	a5,a7,a5
	seqz	a5,a5
	bnez	a1,lab171
lab185: 	or	a2,a4,a2
	beqz	a2,lab172
lab171: 	bnez	a5,lab173
lab184: 	bne	a0,a3,lab174
	bge	a1,a6,lab175
lab174: 	beqz	a0,lab176
lab179: 	li	a0,-1
	ret
lab173: 	li	a0,-1
	beqz	a3,lab177
	mv	a0,a3
	ret
lab175: 	bge	a6,a1,lab178
lab181: 	beqz	a0,lab179
lab177: 	ret
lab178: 	bltu	a4,a7,lab174
	bne	a7,a4,lab180
	bltu	t3,t1,lab174
	bltu	t1,t3,lab181
lab182: 	li	a0,0
	ret
lab176: 	li	a0,1
	ret
lab172: 	bnez	a5,lab182
	j	lab174
lab180: 	bltu	a7,a4,lab181
	j	lab182
lab167: 	beq	a1,a6,lab183
lab170: 	bnez	a1,lab184
	li	a5,0
	j	lab185
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
	bne	a6,t4,lab186
	or	t4,a7,a5
	beqz	t4,lab187
lab189: 	li	a0,2
	ret
lab186: 	bne	a1,t4,lab188
lab203: 	or	t4,a4,a2
	bnez	t4,lab189
lab188: 	bnez	a6,lab190
	or	a5,a7,a5
	seqz	a5,a5
	bnez	a1,lab191
lab205: 	or	a2,a4,a2
	beqz	a2,lab192
lab191: 	bnez	a5,lab193
lab204: 	bne	a0,a3,lab194
	bge	a1,a6,lab195
lab194: 	beqz	a0,lab196
lab199: 	li	a0,-1
	ret
lab193: 	li	a0,-1
	beqz	a3,lab197
	mv	a0,a3
	ret
lab195: 	bge	a6,a1,lab198
lab201: 	beqz	a0,lab199
lab197: 	ret
lab198: 	bltu	a4,a7,lab194
	bne	a7,a4,lab200
	bltu	t3,t1,lab194
	bltu	t1,t3,lab201
lab202: 	li	a0,0
	ret
lab196: 	li	a0,1
	ret
lab192: 	bnez	a5,lab202
	j	lab194
lab200: 	bltu	a7,a4,lab201
	j	lab202
lab187: 	beq	a1,a6,lab203
lab190: 	bnez	a1,lab204
	li	a5,0
	j	lab205
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
	beqz	s3,lab206
	li	a5,2047
	beq	s3,a5,lab207
	slli	s1,s1,0x3
	srli	a5,a0,0x1d
	or	a5,a5,s1
	lui	s1,0x800
	or	s1,a5,s1
	slli	s2,a0,0x3
	addi	s3,s3,-1023
lab225: 	li	s6,0
lab229: 	srli	a4,s5,0x14
	slli	s0,s5,0xc
	andi	a4,a4,2047
	srli	s0,s0,0xc
	srli	s5,s5,0x1f
	beqz	a4,lab208
	li	a5,2047
	beq	a4,a5,lab209
	slli	s0,s0,0x3
	srli	a5,s7,0x1d
	or	a5,a5,s0
	lui	s0,0x800
	or	s0,a5,s0
	addi	a4,a4,-1023
	slli	a5,s7,0x3
lab233: 	li	a0,0
lab237: 	add	s3,s3,a4
	slli	a4,s6,0x2
	or	a4,a4,a0
	li	a3,10
	xor	a2,s4,s5
	addi	a1,s3,1
	blt	a3,a4,lab210
	li	a3,2
	blt	a3,a4,lab211
	addi	a4,a4,-1
	li	a3,1
	bgeu	a3,a4,lab212
lab240: 	lui	t3,0x10
	addi	t1,t3,-1 # ffff <_min_stack+0x7fff>
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
	bgeu	a4,t5,lab213
	add	a7,a7,t3
lab213: 	and	a3,a4,t1
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
	bgeu	a4,t1,lab214
	lui	t1,0x10
	add	a6,a6,t1
lab214: 	lui	s2,0x10
	addi	t6,s2,-1 # ffff <_min_stack+0x7fff>
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
	bgeu	a4,a6,lab215
	add	s1,s1,s2
lab215: 	srli	t4,a4,0x10
	add	t4,t4,s1
	lui	s1,0x10
	addi	a0,s1,-1 # ffff <_min_stack+0x7fff>
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
	bgeu	t6,a0,lab216
	add	a6,a6,s1
lab216: 	lui	a0,0x10
	addi	a0,a0,-1 # ffff <_min_stack+0x7fff>
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
	beqz	a4,lab217
	srli	a4,a5,0x1
	andi	a5,a5,1
	or	a4,a4,a5
	slli	a5,s0,0x1f
	or	a5,a4,a5
	srli	s0,s0,0x1
lab242: 	addi	a3,a1,1023 # 8003ff <_stack+0x6f03ff>
	blez	a3,lab218
	andi	a4,a5,7
	beqz	a4,lab219
	andi	a4,a5,15
	li	a0,4
	beq	a4,a0,lab219
	addi	a4,a5,4
	sltu	a5,a4,a5
	add	s0,s0,a5
	mv	a5,a4
lab219: 	lui	a4,0x1000
	and	a4,s0,a4
	beqz	a4,lab220
	lui	a4,0xff000
	addi	a4,a4,-1 # feffffff <_stack+0xfeeeffff>
	and	s0,s0,a4
	addi	a3,a1,1024
lab220: 	li	a4,2046
	blt	a4,a3,lab221
	slli	a4,s0,0x1d
	srli	a5,a5,0x3
	or	a4,a4,a5
	srli	s0,s0,0x3
lab251: 	lui	a5,0x7ff00
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
lab206: 	or	s2,s1,a0
	beqz	s2,lab222
	beqz	s1,lab223
	mv	a0,s1
	jal	ra,__clzsi2
lab226: 	addi	a4,a0,-11
	li	a5,28
	blt	a5,a4,lab224
	li	a5,29
	addi	s2,a0,-8
	sub	a5,a5,a4
	sll	s1,s1,s2
	srl	a5,s0,a5
	or	s1,a5,s1
	sll	s2,s0,s2
lab227: 	li	s3,-1011
	sub	s3,s3,a0
	j	lab225
lab223: 	jal	ra,__clzsi2
	addi	a0,a0,32
	j	lab226
lab224: 	addi	s1,a0,-40
	sll	s1,s0,s1
	li	s2,0
	j	lab227
lab207: 	or	s2,s1,a0
	beqz	s2,lab228
	mv	s2,a0
	li	s3,2047
	li	s6,3
	j	lab229
lab222: 	li	s1,0
	li	s3,0
	li	s6,1
	j	lab229
lab228: 	li	s1,0
	li	s3,2047
	li	s6,2
	j	lab229
lab208: 	or	a5,s0,s7
	beqz	a5,lab230
	beqz	s0,lab231
	mv	a0,s0
	jal	ra,__clzsi2
lab234: 	addi	a3,a0,-11
	li	a5,28
	blt	a5,a3,lab232
	li	a4,29
	addi	a5,a0,-8
	sub	a4,a4,a3
	sll	s0,s0,a5
	srl	a4,s7,a4
	or	s0,a4,s0
	sll	a5,s7,a5
lab235: 	li	a4,-1011
	sub	a4,a4,a0
	j	lab233
lab231: 	mv	a0,s7
	jal	ra,__clzsi2
	addi	a0,a0,32
	j	lab234
lab232: 	addi	s0,a0,-40
	sll	s0,s7,s0
	li	a5,0
	j	lab235
lab209: 	or	a5,s0,s7
	beqz	a5,lab236
	mv	a5,s7
	li	a4,2047
	li	a0,3
	j	lab237
lab230: 	li	s0,0
	li	a4,0
	li	a0,1
	j	lab237
lab236: 	li	s0,0
	li	a4,2047
	li	a0,2
	j	lab237
lab211: 	li	a3,1
	sll	a3,a3,a4
	andi	a4,a3,1328
	bnez	a4,lab238
	andi	a6,a3,576
	bnez	a6,lab239
	andi	a3,a3,136
	beqz	a3,lab240
lab245: 	mv	a2,s5
lab212: 	li	a4,2
	beq	a0,a4,lab221
lab246: 	li	a4,3
	beq	a0,a4,lab241
	li	a4,1
	bne	a0,a4,lab242
lab247: 	li	s0,0
	li	a4,0
	j	lab243
lab210: 	li	a3,15
	beq	a4,a3,lab244
	li	a3,11
	beq	a4,a3,lab245
	mv	a2,s4
lab238: 	mv	s0,s1
	mv	a5,s2
	mv	a0,s6
	j	lab212
lab244: 	lui	s0,0x80
	li	a5,0
	li	a2,0
	li	a0,3
	j	lab246
lab217: 	mv	a1,s3
	j	lab242
lab218: 	li	a0,1
	sub	a0,a0,a3
	li	a4,56
	blt	a4,a0,lab247
	li	a4,31
	blt	a4,a0,lab248
	addi	a1,a1,1054
	sll	a4,s0,a1
	srl	a3,a5,a0
	sll	a1,a5,a1
	or	a4,a4,a3
	snez	a1,a1
	or	a5,a4,a1
	srl	s0,s0,a0
lab253: 	andi	a4,a5,7
	beqz	a4,lab249
	andi	a4,a5,15
	li	a3,4
	beq	a4,a3,lab249
	addi	a4,a5,4 # 7ff00004 <_stack+0x7fdf0004>
	sltu	a5,a4,a5
	add	s0,s0,a5
	mv	a5,a4
lab249: 	lui	a4,0x800
	and	a4,s0,a4
	bnez	a4,lab250
	slli	a4,s0,0x1d
	srli	a5,a5,0x3
	or	a4,a4,a5
	srli	s0,s0,0x3
lab243: 	li	a3,0
	j	lab251
lab248: 	li	a4,-31
	sub	a4,a4,a3
	li	a6,32
	srl	a4,s0,a4
	li	a3,0
	beq	a0,a6,lab252
	addi	a1,a1,1086
	sll	a3,s0,a1
lab252: 	or	a3,a3,a5
	snez	a3,a3
	or	a5,a4,a3
	li	s0,0
	j	lab253
lab239: 	lui	s0,0x80
lab254: 	li	a3,2047
	li	a2,0
	j	lab251
lab241: 	lui	s0,0x80
	li	a4,0
	j	lab254
lab221: 	li	s0,0
	li	a4,0
	li	a3,2047
	j	lab251
lab250: 	li	s0,0
	li	a4,0
	li	a3,1
	j	lab251
__subdf3:
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
	bne	a7,a1,lab255
	or	a1,a4,a2
	bnez	a1,lab256
lab255: 	xori	a3,a3,1
lab256: 	sub	a6,s0,a7
	bne	a3,s1,lab257
	blez	a6,lab258
	bnez	a7,lab259
	or	a3,a4,a2
	beqz	a3,lab260
	addi	a1,a6,-1
	bnez	a1,lab261
	add	a2,a0,a2
	add	a4,a5,a4
	sltu	a5,a2,a0
	add	a5,a4,a5
	mv	a0,a2
lab275: 	li	s0,1
	j	lab262
lab261: 	li	a3,2047
	bne	a6,a3,lab263
lab277: 	li	s0,2047
	j	lab264
lab259: 	li	a3,2047
	beq	s0,a3,lab264
	lui	a3,0x800
	or	a4,a4,a3
	mv	a1,a6
lab263: 	li	a3,56
	blt	a3,a1,lab265
	li	a3,31
	blt	a3,a1,lab266
	li	a6,32
	sub	a6,a6,a1
	sll	a3,a4,a6
	srl	a7,a2,a1
	sll	a6,a2,a6
	or	a3,a3,a7
	snez	a6,a6
	or	a3,a3,a6
	srl	a1,a4,a1
lab269: 	add	a3,a3,a0
	add	a1,a1,a5
	sltu	a5,a3,a0
	add	a5,a1,a5
	mv	a0,a3
lab262: 	lui	a4,0x800
	and	a4,a5,a4
	beqz	a4,lab264
	addi	s0,s0,1 # 80001 <_min_stack+0x78001>
	li	a4,2047
	beq	s0,a4,lab267
	lui	a4,0xff800
	addi	a4,a4,-1 # ff7fffff <_stack+0xff6effff>
	and	a5,a5,a4
	srli	a4,a0,0x1
	andi	a0,a0,1
	or	a4,a4,a0
	slli	a0,a5,0x1f
	or	a0,a0,a4
	srli	a5,a5,0x1
	j	lab264
lab266: 	addi	a3,a1,-32
	li	a7,32
	srl	a3,a4,a3
	li	a6,0
	beq	a1,a7,lab268
	li	a6,64
	sub	a6,a6,a1
	sll	a6,a4,a6
lab268: 	or	a6,a6,a2
	snez	a6,a6
	or	a3,a3,a6
lab270: 	li	a1,0
	j	lab269
lab265: 	or	a3,a4,a2
	snez	a3,a3
	j	lab270
lab258: 	beqz	a6,lab271
	sub	a1,a7,s0
	bnez	s0,lab272
	or	a3,a5,a0
	beqz	a3,lab273
	addi	a3,a1,-1
	bnez	a3,lab274
	add	a0,a0,a2
	add	a4,a5,a4
	sltu	a2,a0,a2
	add	a5,a4,a2
	j	lab275
lab274: 	li	a6,2047
	bne	a1,a6,lab276
lab278: 	mv	a5,a4
	mv	a0,a2
	j	lab277
lab272: 	li	a3,2047
	beq	a7,a3,lab278
	lui	a3,0x800
	or	a5,a5,a3
	mv	a3,a1
lab276: 	li	a1,56
	blt	a1,a3,lab279
	li	a1,31
	blt	a1,a3,lab280
	li	a6,32
	sub	a6,a6,a3
	sll	a1,a5,a6
	srl	t1,a0,a3
	sll	a6,a0,a6
	or	a1,a1,t1
	snez	a6,a6
	or	a1,a1,a6
	srl	a3,a5,a3
lab282: 	add	a0,a1,a2
	add	a3,a3,a4
	sltu	a2,a0,a2
	add	a5,a3,a2
	mv	s0,a7
	j	lab262
lab280: 	addi	a1,a3,-32 # 7fffe0 <_stack+0x6effe0>
	li	t1,32
	srl	a1,a5,a1
	li	a6,0
	beq	a3,t1,lab281
	li	a6,64
	sub	a6,a6,a3
	sll	a6,a5,a6
lab281: 	or	a6,a6,a0
	snez	a6,a6
	or	a1,a1,a6
lab283: 	li	a3,0
	j	lab282
lab279: 	or	a1,a5,a0
	snez	a1,a1
	j	lab283
lab271: 	addi	a3,s0,1
	andi	a1,a3,2046
	bnez	a1,lab284
	or	a3,a5,a0
	bnez	s0,lab285
	beqz	a3,lab286
	or	a3,a4,a2
	beqz	a3,lab264
	add	a2,a0,a2
	add	a4,a5,a4
	sltu	a5,a2,a0
	add	a5,a4,a5
	lui	a4,0x800
	and	a4,a5,a4
	mv	a0,a2
	beqz	a4,lab264
	lui	a4,0xff800
	addi	a4,a4,-1 # ff7fffff <_stack+0xff6effff>
	and	a5,a5,a4
	li	s0,1
lab264: 	andi	a4,a0,7
	beqz	a4,lab287
	andi	a4,a0,15
	li	a3,4
	beq	a4,a3,lab287
	addi	a4,a0,4
	sltu	a0,a4,a0
	add	a5,a5,a0
	mv	a0,a4
	j	lab287
lab285: 	beqz	a3,lab278
	or	a4,a4,a2
	beqz	a4,lab277
lab321: 	li	s1,0
	lui	a5,0x400
	li	a0,0
lab335: 	li	s0,2047
	j	lab287
lab284: 	li	a1,2047
	beq	a3,a1,lab288
	add	a2,a0,a2
	sltu	a0,a2,a0
	add	a4,a5,a4
	add	a4,a4,a0
	slli	a0,a4,0x1f
	srli	a2,a2,0x1
	or	a0,a0,a2
	srli	a5,a4,0x1
	mv	s0,a3
	j	lab264
lab257: 	blez	a6,lab289
	bnez	a7,lab290
	or	a3,a4,a2
	beqz	a3,lab260
	addi	a1,a6,-1
	bnez	a1,lab291
	sub	a2,a0,a2
	sub	a4,a5,a4
	sltu	a5,a0,a2
	sub	a5,a4,a5
	mv	a0,a2
lab304: 	li	s0,1
	j	lab292
lab291: 	li	a3,2047
	beq	a6,a3,lab277
lab296: 	li	a3,56
	blt	a3,a1,lab293
	li	a3,31
	blt	a3,a1,lab294
	li	a6,32
	sub	a6,a6,a1
	sll	a3,a4,a6
	srl	a7,a2,a1
	sll	a6,a2,a6
	or	a3,a3,a7
	snez	a6,a6
	or	a3,a3,a6
	srl	a1,a4,a1
lab298: 	sub	a3,a0,a3
	sub	a1,a5,a1
	sltu	a5,a0,a3
	sub	a5,a1,a5
	mv	a0,a3
lab292: 	lui	s2,0x800
	and	a4,a5,s2
	beqz	a4,lab264
	addi	s2,s2,-1 # 7fffff <_stack+0x6effff>
	and	s2,a5,s2
	mv	s3,a0
	j	lab295
lab290: 	li	a3,2047
	beq	s0,a3,lab264
	lui	a3,0x800
	or	a4,a4,a3
	mv	a1,a6
	j	lab296
lab294: 	addi	a3,a1,-32
	li	a7,32
	srl	a3,a4,a3
	li	a6,0
	beq	a1,a7,lab297
	li	a6,64
	sub	a6,a6,a1
	sll	a6,a4,a6
lab297: 	or	a6,a6,a2
	snez	a6,a6
	or	a3,a3,a6
lab299: 	li	a1,0
	j	lab298
lab293: 	or	a3,a4,a2
	snez	a3,a3
	j	lab299
lab289: 	beqz	a6,lab300
	sub	a6,a7,s0
	bnez	s0,lab301
	or	a1,a5,a0
	beqz	a1,lab302
	addi	a1,a6,-1
	bnez	a1,lab303
	sub	a0,a2,a0
	sub	a4,a4,a5
	sltu	a2,a2,a0
	sub	a5,a4,a2
	mv	s1,a3
	j	lab304
lab303: 	li	t1,2047
	bne	a6,t1,lab305
lab307: 	mv	a5,a4
	mv	a0,a2
	li	s0,2047
	j	lab306
lab301: 	li	a1,2047
	beq	a7,a1,lab307
	lui	a1,0x800
	or	a5,a5,a1
	mv	a1,a6
lab305: 	li	a6,56
	blt	a6,a1,lab308
	li	a6,31
	blt	a6,a1,lab309
	li	t1,32
	sub	t1,t1,a1
	srl	t3,a0,a1
	sll	a6,a5,t1
	sll	t1,a0,t1
	or	a6,a6,t3
	snez	t1,t1
	or	a0,a6,t1
	srl	a1,a5,a1
lab311: 	sub	a0,a2,a0
	sub	a1,a4,a1
	sltu	a2,a2,a0
	sub	a5,a1,a2
	mv	s0,a7
	mv	s1,a3
	j	lab292
lab309: 	addi	a6,a1,-32 # 7fffe0 <_stack+0x6effe0>
	li	t3,32
	srl	a6,a5,a6
	li	t1,0
	beq	a1,t3,lab310
	li	t1,64
	sub	t1,t1,a1
	sll	t1,a5,t1
lab310: 	or	t1,t1,a0
	snez	t1,t1
	or	a0,a6,t1
lab312: 	li	a1,0
	j	lab311
lab308: 	or	a0,a5,a0
	snez	a0,a0
	j	lab312
lab300: 	addi	a1,s0,1
	andi	a1,a1,2046
	bnez	a1,lab313
	or	a1,a4,a2
	or	a6,a5,a0
	bnez	s0,lab314
	bnez	a6,lab315
	beqz	a1,lab316
	mv	a5,a4
	mv	a0,a2
lab306: 	mv	s1,a3
	j	lab264
lab315: 	beqz	a1,lab264
	sub	a6,a0,a2
	sltu	a7,a0,a6
	sub	a1,a5,a4
	sub	a1,a1,a7
	lui	a7,0x800
	and	a7,a1,a7
	beqz	a7,lab317
	sub	a0,a2,a0
	sub	a4,a4,a5
	sltu	a2,a2,a0
	sub	a5,a4,a2
	j	lab306
lab317: 	or	a0,a6,a1
	beqz	a0,lab318
	mv	a5,a1
	mv	a0,a6
	j	lab264
lab314: 	bnez	a6,lab319
	beqz	a1,lab320
	mv	a5,a4
	mv	a0,a2
	mv	s1,a3
	j	lab277
lab319: 	beqz	a1,lab277
	j	lab321
lab313: 	sub	s3,a0,a2
	sltu	a1,a0,s3
	sub	s2,a5,a4
	sub	s2,s2,a1
	lui	a1,0x800
	and	a1,s2,a1
	beqz	a1,lab322
	sub	s3,a2,a0
	sub	s2,a4,a5
	sltu	a2,a2,s3
	sub	s2,s2,a2
	mv	s1,a3
lab295: 	beqz	s2,lab323
	mv	a0,s2
	jal	ra,__clzsi2
lab328: 	addi	a4,a0,-8
	li	a5,31
	blt	a5,a4,lab324
	li	a5,32
	sub	a5,a5,a4
	sll	s2,s2,a4
	srl	a5,s3,a5
	or	a5,a5,s2
	sll	a0,s3,a4
lab329: 	blt	a4,s0,lab325
	sub	a4,a4,s0
	addi	a2,a4,1
	li	a3,31
	blt	a3,a2,lab326
	li	a4,32
	sub	a4,a4,a2
	sll	a3,a5,a4
	srl	a1,a0,a2
	sll	a4,a0,a4
	or	a3,a3,a1
	snez	a4,a4
	or	a0,a3,a4
	srl	a5,a5,a2
lab331: 	li	s0,0
	j	lab264
lab322: 	or	a0,s3,s2
	bnez	a0,lab295
	li	a5,0
	li	s0,0
	j	lab327
lab323: 	mv	a0,s3
	jal	ra,__clzsi2
	addi	a0,a0,32
	j	lab328
lab324: 	addi	a5,a0,-40
	sll	a5,s3,a5
	li	a0,0
	j	lab329
lab326: 	addi	a4,a4,-31
	li	a1,32
	srl	a4,a5,a4
	li	a3,0
	beq	a2,a1,lab330
	li	a3,64
	sub	a3,a3,a2
	sll	a3,a5,a3
lab330: 	or	a3,a0,a3
	snez	a3,a3
	or	a0,a4,a3
	li	a5,0
	j	lab331
lab325: 	sub	s0,s0,a4
	lui	a4,0xff800
	addi	a4,a4,-1 # ff7fffff <_stack+0xff6effff>
	and	a5,a5,a4
	j	lab264
lab273: 	mv	a5,a4
	mv	a0,a2
	mv	s0,a1
	j	lab264
lab286: 	mv	a5,a4
	mv	a0,a2
	j	lab264
lab288: 	li	s0,2047
lab267: 	li	a5,0
	li	a0,0
lab287: 	lui	a4,0x800
	and	a4,a5,a4
	beqz	a4,lab332
	addi	s0,s0,1
	li	a4,2047
	beq	s0,a4,lab333
	lui	a4,0xff800
	addi	a4,a4,-1 # ff7fffff <_stack+0xff6effff>
	and	a5,a5,a4
lab332: 	slli	a3,a5,0x1d
	srli	a0,a0,0x3
	li	a4,2047
	or	a3,a3,a0
	srli	a5,a5,0x3
	bne	s0,a4,lab334
	or	a3,a3,a5
	li	a5,0
	beqz	a3,lab334
	lui	a5,0x80
	li	a3,0
	li	s1,0
lab334: 	slli	a4,s0,0x14
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
lab260: 	mv	s0,a6
	j	lab264
lab302: 	mv	a5,a4
	mv	a0,a2
	mv	s0,a6
	j	lab306
lab316: 	li	a5,0
	li	a0,0
lab327: 	li	s1,0
	j	lab287
lab318: 	li	a5,0
	j	lab327
lab320: 	li	a0,0
	li	s1,0
	lui	a5,0x400
	j	lab335
lab333: 	li	a5,0
	li	a0,0
	j	lab332
__unorddf2:
	lui	a5,0x100
	addi	a5,a5,-1 # fffff <_min_stack+0xf7fff>
	and	a4,a5,a1
	srli	a1,a1,0x14
	and	a5,a5,a3
	andi	a1,a1,2047
	srli	a3,a3,0x14
	li	a6,2047
	andi	a3,a3,2047
	bne	a1,a6,lab336
	or	a4,a4,a0
	li	a0,1
	bnez	a4,lab337
lab336: 	li	a4,2047
	li	a0,0
	bne	a3,a4,lab337
	or	a5,a5,a2
	snez	a0,a5
lab337: 	ret
__floatsidf:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	beqz	a0,lab338
	srai	a5,a0,0x1f
	xor	s0,a5,a0
	sub	s0,s0,a5
	srli	s1,a0,0x1f
	mv	a0,s0
	jal	ra,__clzsi2
	li	a4,1054
	li	a5,10
	sub	a4,a4,a0
	blt	a5,a0,lab339
	li	a5,11
	sub	a5,a5,a0
	addi	a0,a0,21
	srl	a5,s0,a5
	sll	s0,s0,a0
	mv	a0,s1
lab340: 	slli	a5,a5,0xc
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
lab339: 	addi	a0,a0,-11
	sll	a5,s0,a0
	mv	a0,s1
lab341: 	li	s0,0
	j	lab340
lab338: 	li	a4,0
	li	a5,0
	j	lab341
__clzsi2:
	lui	a5,0x10
	bgeu	a0,a5,lab342
	sltiu	a5,a0,256
	xori	a5,a5,1
	slli	a5,a5,0x3
lab343: 	lui	a4,0x100
	li	a3,32
	sub	a3,a3,a5
	srl	a0,a0,a5
	addi	a5,a4,60 # 10003c <__clz_tab>
	add	a5,a5,a0
	lbu	a0,0(a5) # 10000 <_min_stack+0x8000>
	sub	a0,a3,a0
	ret
lab342: 	lui	a4,0x1000
	li	a5,16
	bltu	a0,a4,lab343
	li	a5,24
	j	lab343
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

__clz_tab_3c:
	.2byte	0x20c0
	.2byte	0x0000
	.2byte	0x21a0
	.2byte	0x0000
	.2byte	0x20d0
	.2byte	0x0000
	.2byte	0x21a0
	.2byte	0x0000
	.2byte	0x21ac
	.2byte	0x0000
	.2byte	0x21a0
	.2byte	0x0000
	.2byte	0x20d0
	.2byte	0x0000
	.2byte	0x20c0
	.2byte	0x0000
	.2byte	0x20c0
	.2byte	0x0000
	.2byte	0x21ac
	.2byte	0x0000
	.2byte	0x20d0
	.2byte	0x0000
	.2byte	0x2098
	.2byte	0x0000
	.2byte	0x2098
	.2byte	0x0000
	.2byte	0x2098
	.2byte	0x0000
	.2byte	0x20d8
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


	.data

impure_data:
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x45c
	.2byte	0x10
	.2byte	0x4c4
	.2byte	0x10
	.2byte	0x52c
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

ArrayA:
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
ArrayB:
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
Coef:
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
SumB:
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
SumA:
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
Seed:
	.2byte	0x0000
	.2byte	0x0000
