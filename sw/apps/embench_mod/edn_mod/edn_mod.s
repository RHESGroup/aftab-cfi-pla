	.text
	.globl  main
	.type  main, @function

vec_mpy1:
	addi	a3,a0,300
lab0: 	lhu	a4,0(a0)
	addi	a0,a0,2
	mul	a5,a5,a2
	addi	a1,a1,2
	srai	a5,a5,0xf
	add	a5,a5,a4
	sh	a5,-2(a0)
	bne	a3,a0,lab0
	ret
mac:
	lw	a7,0(a3)
	mv	a6,a0
	addi	t1,a1,300
	mv	a0,a2
lab1: 	lh	a5,0(a6)
	addi	a1,a1,2
	mul	a2,a4,a4
	addi	a6,a6,2
	mul	a5,a5,a4
	add	a0,a0,a2
	add	a7,a7,a5
	bne	t1,a1,lab1
	sw	a7,0(a3)
	ret
fir:
	mv	t1,a1
	mv	a6,a2
	addi	a0,a0,100
	li	a7,0
	li	t3,50
lab3: 	mv	a3,t1
	li	a2,0
lab2: 	lh	a1,0(a3)
	addi	a5,a5,2
	addi	a3,a3,2
	mul	a4,a4,a1
	add	a2,a2,a4
	bne	a0,a5,lab2
	srai	a2,a2,0xf
	sw	a2,0(a6)
	addi	a7,a7,1
	addi	a6,a6,4
	addi	a0,a0,2
	bne	a7,t3,lab3
	ret
fir_no_red_ld:
	mv	t6,a1
	mv	t4,a2
	addi	t3,a0,66
	li	t5,0
	li	t0,100
lab5: 	addi	a5,t3,-64
	mv	a6,t6
	li	a1,0
	li	a0,0
lab4: 	lh	a3,0(a5)
	lh	a4,2(a6)
	mul	t1,a7,a2
	lh	a7,2(a5)
	addi	a5,a5,4
	addi	a6,a6,4
	mul	a2,a2,a3
	add	a0,t1,a0
	mul	a3,a3,a4
	add	a1,a2,a1
	mul	a4,a7,a4
	add	a0,a3,a0
	add	a1,a4,a1
	bne	t3,a5,lab4
	srai	a0,a0,0xf
	srai	a1,a1,0xf
	sw	a0,0(t4)
	sw	a1,4(t4)
	addi	t5,t5,2
	addi	t4,t4,8
	addi	t3,t3,4
	bne	t5,t0,lab5
	ret
latsynth:
	slli	a5,a2,0x1
	addi	a5,a5,-2
	add	a4,a0,a5
	mv	a7,a0
	add	a0,a1,a5
	lh	a0,0(a0)
	lh	a4,0(a4)
	li	a6,1
	mul	a4,a4,a0
	sub	a0,a3,a4
	bge	a6,a2,lab6
	addi	a5,a5,2
	add	a4,a7,a5
	add	a1,a1,a5
	addi	a6,a7,2
lab7: 	lh	a3,-4(a4)
	addi	a4,a4,-2
	addi	a1,a1,-2
	mul	a2,a3,a5
	sub	a0,a0,a2
	srai	a2,a0,0x10
	mul	a5,a5,a2
	srai	a5,a5,0x10
	add	a5,a5,a3
	sh	a5,0(a4)
	bne	a6,a4,lab7
	sh	a2,0(a7)
	ret
lab6: 	srai	a2,a0,0x10
	sh	a2,0(a7)
	ret
iir1:
	lh	a1,0(a1)
	addi	t4,a0,400
lab8: 	lw	t3,4(a3)
	lh	a4,4(a0)
	lh	a7,6(a0)
	lh	a5,0(a0)
	mul	a4,a4,t1
	lh	a6,2(a0)
	addi	a3,a3,8
	sw	t1,-4(a3)
	addi	a0,a0,8
	mul	a7,a7,t3
	add	a4,a4,a7
	srai	a4,a4,0xf
	add	a4,a4,a1
	mul	a5,a5,t1
	sw	a4,-8(a3)
	mul	a1,a6,t3
	add	a5,a5,a1
	srai	a5,a5,0xf
	add	a1,a5,a4
	bne	a0,t4,lab8
	sw	a1,0(a2)
	ret
codebook:
	mv	a0,a4
	ret
jpegdct:
	addi	sp,sp,-96
	li	a5,6
	sw	a5,16(sp)
	li	a5,10
	sw	a5,20(sp)
	li	a5,14
	sw	a5,24(sp)
	li	a5,8
	sw	s0,92(sp)
	sw	s1,88(sp)
	sw	s2,84(sp)
	sw	s3,80(sp)
	sw	s4,76(sp)
	sw	s5,72(sp)
	sw	s6,68(sp)
	sw	s7,64(sp)
	sw	s8,60(sp)
	sw	s9,56(sp)
	sw	s10,52(sp)
	sw	s11,48(sp)
	sw	zero,12(sp)
	li	s0,2
	sw	a5,36(sp)
	sw	a0,40(sp)
lab12: 	lw	a4,36(sp)
	li	a3,1
	slli	a5,a5,0x1
	sw	a5,28(sp)
	slli	a5,s0,0x2
	sw	a5,32(sp)
	li	a5,18
	sub	s11,a5,s0
	lw	a5,12(sp)
	addi	a5,a5,13
	bne	a4,a3,lab9
	lw	a0,40(sp)
	li	t4,8
	add	t5,a0,s0
	add	t6,t5,s0
lab10: 	lh	s6,0(a0)
	lh	s5,0(t5)
	add	s1,a0,a4
	lw	a4,28(sp)
	lh	s4,0(t6)
	lh	a2,0(s1)
	add	s2,a0,a4
	lw	a4,20(sp)
	lh	a6,0(s2)
	add	s8,a2,s6
	add	s0,a0,a4
	lw	a4,16(sp)
	add	s7,a6,s5
	sub	a2,s6,a2
	add	t2,a0,a4
	lw	a4,32(sp)
	lh	a7,0(t2)
	sub	a6,s5,a6
	add	s9,a0,a4
	lh	s3,0(s9)
	lh	a4,0(s0)
	addi	t4,t4,-1
	add	a3,s3,a7
	add	t3,a4,s4
	sw	a4,8(sp)
	lw	a4,12(sp)
	add	s10,t3,s7
	add	t1,a3,s8
	add	t0,s10,t1
	sra	t0,t0,a4
	sub	t1,t1,s10
	sh	t0,0(a0)
	sra	t1,t1,a4
	sh	t1,0(s9)
	lh	t0,20(a1)
	lh	t1,18(a1)
	sub	t3,s7,t3
	sub	a3,s8,a3
	add	s7,a3,t3
	mul	t0,s7,t0
	lw	a4,8(sp)
	sub	a7,a7,s3
	slli	t4,t4,0x10
	sub	a4,s4,a4
	add	s3,a4,a2
	add	s4,a7,a6
	add	s5,s3,s4
	slli	a7,a7,0x10
	slli	a2,a2,0x10
	mul	a3,t1,a3
	slli	t0,t0,0x10
	srli	t0,t0,0x10
	srli	a7,a7,0x10
	srli	a2,a2,0x10
	slli	s5,s5,0x10
	slli	s4,s4,0x10
	add	t1,a2,a7
	srai	s5,s5,0x10
	srai	s4,s4,0x10
	sra	a3,a3,a5
	add	a3,t0,a3
	sh	a3,0(t6)
	lh	a3,22(a1)
	slli	a4,a4,0x10
	slli	a6,a6,0x10
	mul	a3,a3,t3
	srli	a4,a4,0x10
	srli	a6,a6,0x10
	slli	s3,s3,0x10
	add	s6,a6,a4
	srai	s3,s3,0x10
	srli	t4,t4,0x10
	add	a0,a0,s11
	add	t6,t6,s11
	sra	a3,a3,a5
	add	t0,t0,a3
	sh	t0,0(s2)
	lh	s2,16(a1)
	lh	s7,4(a1)
	lh	t3,2(a1)
	lhu	t0,8(a1)
	mul	s2,s2,s5
	lh	a3,6(a1)
	lh	s5,0(a1)
	mul	t1,t1,s7
	mul	t3,t3,s4
	slli	t1,t1,0x10
	srli	t1,t1,0x10
	mul	t0,a7,t0
	add	t3,t3,s2
	slli	t3,t3,0x10
	srli	t3,t3,0x10
	add	a7,t1,t0
	add	a7,t3,a7
	slli	a7,a7,0x10
	srai	a7,a7,0x10
	sra	a7,a7,a5
	sh	a7,0(s1)
	lhu	a7,12(a1)
	mul	s6,s6,s5
	mul	a3,a3,s3
	slli	s6,s6,0x10
	srli	s6,s6,0x10
	mul	a4,a4,a7
	add	a3,a3,s2
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	add	a4,s6,a4
	add	a4,a3,a4
	slli	a4,a4,0x10
	srai	a4,a4,0x10
	sra	a4,a4,a5
	sh	a4,0(s0)
	lhu	a4,10(a1)
	mul	a6,a6,a4
	add	s6,s6,a6
	add	t3,t3,s6
	slli	t3,t3,0x10
	srai	t3,t3,0x10
	sra	t3,t3,a5
	sh	t3,0(t2)
	lhu	a4,14(a1)
	mul	a2,a2,a4
	add	t1,t1,a2
	add	a3,a3,t1
	slli	a3,a3,0x10
	srai	a3,a3,0x10
	sra	a3,a3,a5
	sh	a3,0(t5)
	add	t5,t5,s11
	bnez	t4,lab10
lab13: 	lw	s1,88(sp)
	lw	s2,84(sp)
	lw	s3,80(sp)
	lw	s4,76(sp)
	lw	s5,72(sp)
	lw	s6,68(sp)
	lw	s7,64(sp)
	lw	s8,60(sp)
	lw	s9,56(sp)
	lw	s10,52(sp)
	lw	s11,48(sp)
	addi	sp,sp,96
	ret
lab9: 	lw	a0,40(sp)
	li	t4,8
	sw	s0,44(sp)
	add	t5,a0,s0
	add	t0,t5,s0
lab11: 	lh	s6,0(a0)
	lh	s5,0(t5)
	add	s1,a0,a4
	lw	a4,28(sp)
	lh	s4,0(t0)
	lh	a2,0(s1)
	add	s2,a0,a4
	lw	a4,20(sp)
	lh	a6,0(s2)
	add	s8,s6,a2
	add	s0,a0,a4
	lw	a4,16(sp)
	add	s7,s5,a6
	sub	a2,s6,a2
	add	t2,a0,a4
	lw	a4,32(sp)
	lh	a7,0(t2)
	sub	a6,s5,a6
	add	s9,a0,a4
	lh	s3,0(s9)
	lh	a4,0(s0)
	addi	t4,t4,-1
	add	a3,a7,s3
	add	t3,s4,a4
	sw	a4,8(sp)
	lw	a4,12(sp)
	add	s10,s7,t3
	add	t1,s8,a3
	add	t6,t1,s10
	sra	t6,t6,a4
	sub	t1,t1,s10
	sh	t6,0(a0)
	sra	t1,t1,a4
	sh	t1,0(s9)
	lh	t6,20(a1)
	lh	t1,18(a1)
	sub	t3,s7,t3
	sub	a3,s8,a3
	add	s7,t3,a3
	mul	t6,s7,t6
	lw	a4,8(sp)
	sub	a7,a7,s3
	slli	t4,t4,0x10
	sub	a4,s4,a4
	add	s3,a2,a4
	add	s4,a6,a7
	add	s5,s4,s3
	slli	a7,a7,0x10
	slli	a2,a2,0x10
	mul	a3,t1,a3
	slli	t6,t6,0x10
	srli	t6,t6,0x10
	srli	a7,a7,0x10
	srli	a2,a2,0x10
	slli	s5,s5,0x10
	slli	s4,s4,0x10
	add	t1,a7,a2
	srai	s5,s5,0x10
	srai	s4,s4,0x10
	sra	a3,a3,a5
	add	a3,t6,a3
	sh	a3,0(t0)
	lh	a3,22(a1)
	slli	a4,a4,0x10
	slli	a6,a6,0x10
	mul	a3,a3,t3
	srli	a4,a4,0x10
	srli	a6,a6,0x10
	slli	s3,s3,0x10
	add	s6,a4,a6
	srai	s3,s3,0x10
	srli	t4,t4,0x10
	add	a0,a0,s11
	add	t0,t0,s11
	sra	a3,a3,a5
	add	t6,t6,a3
	sh	t6,0(s2)
	lh	s2,16(a1)
	lh	s7,4(a1)
	lh	t3,2(a1)
	lhu	t6,8(a1)
	mul	s2,s5,s2
	lh	a3,6(a1)
	lh	s5,0(a1)
	mul	t1,t1,s7
	mul	t3,t3,s4
	slli	t1,t1,0x10
	srli	t1,t1,0x10
	mul	t6,a7,t6
	add	t3,t3,s2
	slli	t3,t3,0x10
	srli	t3,t3,0x10
	add	a7,t1,t6
	add	a7,t3,a7
	slli	a7,a7,0x10
	srai	a7,a7,0x10
	sra	a7,a7,a5
	sh	a7,0(s1)
	lhu	a7,12(a1)
	mul	s6,s6,s5
	mul	a3,a3,s3
	slli	s6,s6,0x10
	srli	s6,s6,0x10
	mul	a4,a4,a7
	add	a3,a3,s2
	slli	a3,a3,0x10
	srli	a3,a3,0x10
	add	a4,s6,a4
	add	a4,a3,a4
	slli	a4,a4,0x10
	srai	a4,a4,0x10
	sra	a4,a4,a5
	sh	a4,0(s0)
	lhu	a4,10(a1)
	mul	a6,a6,a4
	add	s6,s6,a6
	add	a4,t3,s6
	slli	a4,a4,0x10
	srai	a4,a4,0x10
	sra	a4,a4,a5
	sh	a4,0(t2)
	lhu	a4,14(a1)
	mul	a2,a2,a4
	add	t1,t1,a2
	add	a4,a3,t1
	slli	a4,a4,0x10
	srai	a4,a4,0x10
	sra	a4,a4,a5
	sh	a4,0(t5)
	add	t5,t5,s11
	bnez	t4,lab11
	lw	s0,44(sp)
	lw	a3,40(sp)
	lw	a4,36(sp)
	neg	a5,s0
	slli	a5,a5,0x3
	addi	a5,a5,16
	add	a5,a3,a5
	sw	a5,40(sp)
	lw	a5,24(sp)
	addi	a4,a4,-7
	slli	a4,a4,0x10
	addi	a5,a5,98
	sw	a5,24(sp)
	lw	a5,20(sp)
	srai	a4,a4,0x10
	sw	a4,36(sp)
	addi	a5,a5,70
	sw	a5,20(sp)
	lw	a5,16(sp)
	addi	s0,s0,14
	addi	a5,a5,42
	sw	a5,16(sp)
	lw	a5,12(sp)
	addi	a5,a5,3
	sw	a5,12(sp)
	li	a5,-6
	bne	a4,a5,lab12
	j	lab13
benchmark_body.constprop.0:
	addi	sp,sp,-880
	sw	s0,872(sp)
	lui	s0,0x100
	addi	a5,s0,1612 # 10064c <_end>
	sw	s1,868(sp)
	sw	s2,864(sp)
	sw	s5,852(sp)
	sw	s7,844(sp)
	lui	s5,0x100
	sw	s8,840(sp)
	sw	s9,836(sp)
	sw	s11,828(sp)
	lui	s1,0x100
	lui	s11,0x100
	lui	a0,0x100
	lui	s9,0x100
	lui	s8,0x100
	lui	s7,0x100
	lui	s2,0xb
	sw	s3,860(sp)
	sw	s4,856(sp)
	sw	s6,848(sp)
	sw	s10,832(sp)
	sw	ra,876(sp)
	addi	s10,s11,1200 # 1004b0 <b>
	sw	a5,8(sp)
	li	s0,87
	addi	s1,s1,2012 # 1007dc <_end+0x190>
	mv	a3,s5
	addi	s6,a0,800 # 100320 <a>
	addi	s9,s9,1100 # 10044c <a+0x12c>
	addi	s8,s8,1500 # 1005dc <b+0x12c>
	addi	s7,s7,1300 # 100514 <b+0x64>
	mv	s4,s5
	li	s3,50
	addi	s2,s2,-1366 # aaaa <_min_stack+0x6aaa>
	addi	s11,s11,1200
lab23: 	addi	a4,sp,16
lab14: 	lw	t4,4(a5)
	lw	a6,8(a5)
	lw	a1,12(a5)
	sw	t5,0(a4)
	sw	t4,4(a4)
	sw	a6,8(a4)
	sw	a1,12(a4)
	addi	a5,a5,16
	addi	a4,a4,16
	bne	a5,s1,lab14
	mv	a5,s1
	addi	a4,sp,416
lab15: 	lw	t4,4(a5)
	lw	a6,8(a5)
	lw	a1,12(a5)
	lui	a2,0x101
	sw	t5,0(a4)
	sw	t4,4(a4)
	sw	a6,8(a4)
	sw	a1,12(a4)
	addi	a5,a5,16
	addi	a2,a2,-1684 # 10096c <_end+0x320>
	addi	a4,a4,16
	bne	a5,a2,lab15
	addi	a6,sp,416
	addi	a1,sp,16
	addi	t6,a3,1600
	mv	a4,s6
	mv	a5,s10
lab16: 	lw	t4,0(a6)
	addi	a5,a5,4
	sw	t5,0(a4)
	sw	t4,-4(a5)
	addi	a6,a6,4
	addi	a4,a4,4
	addi	a1,a1,4
	bne	t6,a5,lab16
	mv	a1,s10
	mv	a4,s6
lab17: 	lhu	t4,0(a4)
	addi	a4,a4,2
	slli	a5,a6,0x1
	add	a5,a5,a6
	srai	a5,a5,0xf
	add	a5,a5,t4
	sh	a5,-2(a4)
	addi	a1,a1,2
	bne	s9,a4,lab17
	lw	t5,0(a3)
	mv	a6,s6
	mv	a5,s10
	li	t4,3
lab18: 	lh	a4,0(a6)
	addi	a5,a5,2
	mul	t6,a1,a1
	addi	a6,a6,2
	mul	a4,a4,a1
	add	t4,t4,t6
	add	t5,t5,a4
	bne	s8,a5,lab18
	lui	a5,0x100
	sw	t5,0(a3)
	sh	t4,1608(a5) # 100648 <c>
	mv	t6,s5
	mv	t5,s6
	li	t4,0
lab20: 	mv	a3,t5
	li	a1,0
lab19: 	lh	a6,0(a5)
	addi	a5,a5,2
	addi	a3,a3,2
	mul	a4,a4,a6
	add	a1,a1,a4
	bne	s7,a5,lab19
	srai	a1,a1,0xf
	sw	a1,0(t6)
	addi	t4,t4,1
	addi	t6,t6,4
	addi	t5,t5,2
	bne	t4,s3,lab20
	mv	a2,s4
	mv	a1,s10
	mv	a0,s6
	jal	ra,fir_no_red_ld
	lh	t5,998(s4)
	lh	a5,1398(s4)
	addi	a4,s4,996
	addi	a3,s4,1396
	mul	t5,t5,a5
	sub	t5,s2,t5
lab21: 	lh	a5,0(a3)
	mv	t4,a4
	addi	a4,a4,-2
	mul	a6,a1,a5
	addi	a3,a3,-2
	sub	t5,t5,a6
	srai	a6,t5,0x10
	mul	a5,a5,a6
	srai	a5,a5,0x10
	add	a5,a5,a1
	sh	a5,4(a4)
	bne	s6,t4,lab21
	lh	t6,1200(s4)
	lui	a5,0x100
	sh	a6,800(s4)
	sw	t5,1604(a5) # 100644 <d>
	mv	a3,s4
	mv	a6,s5
	mv	a1,s6
lab22: 	lw	t0,4(a6)
	lh	a5,4(a1)
	lh	t2,6(a1)
	lh	ra,0(a1)
	lh	t4,2(a1)
	mul	a5,a5,a4
	sw	a4,4(a6)
	addi	a6,a6,8
	addi	a1,a1,8
	mul	t2,t2,t0
	mul	a4,ra,a4
	add	a5,a5,t2
	srai	a5,a5,0xf
	add	a5,a5,t6
	sw	a5,-8(a6)
	mul	t4,t4,t0
	add	a4,a4,t4
	srai	a4,a4,0xf
	add	t6,a4,a5
	bne	a1,s11,lab22
	lui	a5,0x100
	mv	a0,s6
	sw	a3,12(sp)
	sw	t6,400(s4)
	sw	t5,1600(a5) # 100640 <e>
	addi	s0,s0,-1
	jal	ra,jpegdct
	lw	a3,12(sp)
	bnez	s0,lab23
	lw	ra,876(sp)
	lw	s0,872(sp)
	lw	s1,868(sp)
	lw	s2,864(sp)
	lw	s3,860(sp)
	lw	s4,856(sp)
	lw	s5,852(sp)
	lw	s6,848(sp)
	lw	s7,844(sp)
	lw	s8,840(sp)
	lw	s9,836(sp)
	lw	s10,832(sp)
	lw	s11,828(sp)
	li	a0,0
	addi	sp,sp,880
	cfes 0x295d4
	ret
benchmark_body.isra.0:
	addi	sp,sp,-880
	sw	ra,876(sp)
	sw	s0,872(sp)
	sw	s1,868(sp)
	sw	s2,864(sp)
	sw	s3,860(sp)
	sw	s4,856(sp)
	sw	s5,852(sp)
	sw	s6,848(sp)
	sw	s7,844(sp)
	sw	s8,840(sp)
	sw	s9,836(sp)
	sw	s10,832(sp)
	sw	s11,828(sp)
	sw	a0,4(sp)
	blez	a0,lab24
	lui	a5,0xb
	lui	s6,0x100
	lui	s10,0x100
	lui	s1,0x100
	lui	s2,0x100
	lui	a0,0x100
	lui	s9,0x100
	lui	s8,0x100
	lui	s0,0x100
	addi	a5,a5,-1366 # aaaa <_min_stack+0x6aaa>
	addi	s11,s10,1200 # 1004b0 <b>
	addi	s1,s1,1612 # 10064c <_end>
	li	s3,0
	addi	s2,s2,2012 # 1007dc <_end+0x190>
	mv	t6,s6
	addi	s7,a0,800 # 100320 <a>
	addi	s9,s9,1100 # 10044c <a+0x12c>
	addi	s8,s8,1500 # 1005dc <b+0x12c>
	addi	s0,s0,1300 # 100514 <b+0x64>
	mv	s5,s6
	li	s4,50
	sw	a5,8(sp)
	addi	s10,s10,1200
lab34: 	addi	a4,sp,16
lab25: 	lw	a1,4(a5)
	lw	a2,8(a5)
	lw	a3,12(a5)
	sw	a0,0(a4)
	sw	a1,4(a4)
	sw	a2,8(a4)
	sw	a3,12(a4)
	addi	a5,a5,16
	addi	a4,a4,16
	bne	a5,s2,lab25
	mv	a5,s2
	addi	a4,sp,416
lab26: 	lw	a0,0(a5)
	lw	a1,4(a5)
	lw	a2,8(a5)
	sw	a3,12(a4)
	lui	a3,0x101
	sw	a0,0(a4)
	sw	a1,4(a4)
	sw	a2,8(a4)
	addi	a5,a5,16
	addi	a3,a3,-1684 # 10096c <_end+0x320>
	addi	a4,a4,16
	bne	a5,a3,lab26
	addi	a2,sp,416
	addi	a3,sp,16
	addi	a6,t6,1600
	mv	a4,s7
	mv	a5,s11
lab27: 	lw	a1,0(a2)
	addi	a5,a5,4
	sw	a0,0(a4)
	sw	a1,-4(a5)
	addi	a2,a2,4
	addi	a4,a4,4
	addi	a3,a3,4
	bne	a6,a5,lab27
	mv	a3,s11
	mv	a4,s7
lab28: 	lhu	a1,0(a4)
	addi	a4,a4,2
	slli	a5,a2,0x1
	add	a5,a5,a2
	srai	a5,a5,0xf
	add	a5,a5,a1
	sh	a5,-2(a4)
	addi	a3,a3,2
	bne	s9,a4,lab28
	lw	a0,0(t6)
	mv	a2,s7
	mv	a5,s11
	li	a1,3
lab29: 	lh	a4,0(a2)
	addi	a5,a5,2
	mul	a6,a3,a3
	addi	a2,a2,2
	mul	a4,a4,a3
	add	a1,a1,a6
	add	a0,a0,a4
	bne	s8,a5,lab29
	lui	a5,0x100
	sw	a0,0(t6)
	sh	a1,1608(a5) # 100648 <c>
	mv	a7,s6
	mv	a6,s7
	li	a0,0
lab31: 	mv	a3,a6
	li	a2,0
lab30: 	lh	a1,0(a5)
	addi	a5,a5,2
	addi	a3,a3,2
	mul	a4,a4,a1
	add	a2,a2,a4
	bne	s0,a5,lab30
	srai	a2,a2,0xf
	sw	a2,0(a7)
	addi	a0,a0,1
	addi	a7,a7,4
	addi	a6,a6,2
	bne	a0,s4,lab31
	mv	a2,s5
	mv	a1,s11
	mv	a0,s7
	jal	ra,fir_no_red_ld
	lh	a5,1398(s5) # 100576 <b+0xc6>
	lh	a6,998(s5)
	addi	a4,s5,996
	addi	a3,s5,1396
	mul	a6,a6,a5
	lw	a5,8(sp)
	sub	a6,a5,a6
lab32: 	lh	a5,0(a3)
	mv	a0,a4
	addi	a4,a4,-2
	mul	a1,a2,a5
	addi	a3,a3,-2
	sub	a6,a6,a1
	srai	a1,a6,0x10
	mul	a5,a5,a1
	srai	a5,a5,0x10
	add	a5,a5,a2
	sh	a5,4(a4)
	bne	a0,s7,lab32
	lh	a5,1200(s5)
	lui	a4,0x100
	sh	a1,800(s5)
	sw	a6,1604(a4) # 100644 <d>
	mv	t6,s5
	mv	a1,s6
	mv	a2,s7
	mv	a3,a5
lab33: 	lw	t1,4(a1)
	lh	a4,4(a2)
	lh	a7,6(a2)
	lh	a5,0(a2)
	mul	a4,a4,t3
	lh	a0,2(a2)
	sw	t3,4(a1)
	addi	a1,a1,8
	addi	a2,a2,8
	mul	a7,a7,t1
	add	a4,a4,a7
	srai	a4,a4,0xf
	add	a4,a4,a3
	mul	a5,a5,t3
	sw	a4,-8(a1)
	mul	a3,a0,t1
	add	a5,a5,a3
	srai	a5,a5,0xf
	add	a3,a5,a4
	bne	a2,s10,lab33
	lui	a5,0x100
	mv	a1,s10
	mv	a0,s7
	sw	t6,12(sp)
	sw	a6,1600(a5) # 100640 <e>
	sw	a3,400(s5)
	jal	ra,jpegdct
	lw	a5,4(sp)
	addi	s3,s3,1
	lw	t6,12(sp)
	bne	s3,a5,lab34
lab24: 	lw	ra,876(sp)
	lw	s0,872(sp)
	lw	s1,868(sp)
	lw	s2,864(sp)
	lw	s3,860(sp)
	lw	s4,856(sp)
	lw	s5,852(sp)
	lw	s6,848(sp)
	lw	s7,844(sp)
	lw	s8,840(sp)
	lw	s9,836(sp)
	lw	s10,832(sp)
	lw	s11,828(sp)
	addi	sp,sp,880
	cfes 0x53aba
	ret
initialise_benchmark:
	ret
warm_caches:
	j	benchmark_body.isra.0
benchmark:
	j	benchmark_body.constprop.0
verify_benchmark:
	lui	a4,0x100
	addi	sp,sp,-816
	addi	a4,a4,1612 # 10064c <_end>
	addi	a5,a4,800
	sw	ra,812(sp)
	mv	a3,sp
	addi	a4,a4,1600
lab35: 	lw	a0,4(a5)
	lw	a1,8(a5)
	lw	a2,12(a5)
	sw	a6,0(a3)
	sw	a0,4(a3)
	sw	a1,8(a3)
	sw	a2,12(a3)
	addi	a5,a5,16
	addi	a3,a3,16
	bne	a5,a4,lab35
	lui	a0,0x100
	li	a2,800
	mv	a1,sp
	mv	a0,a0
	jal	ra,memcmp
	bnez	a0,lab36
	lui	a5,0x100
	lh	a4,1608(a5) # 100648 <c>
	lui	a5,0x3
	addi	a5,a5,-2045 # 2803 <__DTOR_END__+0x13ab>
	beq	a4,a5,lab37
lab38: 	addi	sp,sp,816
	cfes 0x8184d
	ret
lab36: 	lw	ra,812(sp)
	li	a0,0
	addi	sp,sp,816
	cfes 0xc184d
	ret
lab37: 	lui	a5,0x100
	lw	a4,1604(a5) # 100644 <d>
	lui	a5,0xe5a96
	addi	a5,a5,-1558 # e5a959ea <_stack+0xe598d9ea>
	bne	a4,a5,lab38
	lui	a5,0x100
	lw	a0,1600(a5) # 100640 <e>
	lui	a5,0x1a56a
	addi	a5,a5,1558 # 1a56a616 <_stack+0x1a462616>
	add	a0,a0,a5
	seqz	a0,a0
	j	lab38
main:
	addi	sp,sp,-32
	sw	ra,28(sp)
	jal	ra,initialise_board
	jal	ra,initialise_benchmark
	li	a0,0
	jal	ra,warm_caches
	cfed 0x2869d
	jal	ra,start_trigger
	jal	ra,benchmark
	cfed 0x12b83
	sw	a0,12(sp)
	jal	ra,stop_trigger
	lw	a0,12(sp)
	jal	ra,verify_benchmark
	cfed 0x3a90a
	cfed 0x3a90a
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


	.bss

_end_2:
	.4byte	0x0000


	.section .rodata

config_mem_words_640:
	.4byte	0x0000
	.2byte	0x7ff
	.2byte	0xc00
	.2byte	0x800
	.2byte	0x200
	.2byte	0xf800
	.2byte	0xf300
	.2byte	0x400
	.4byte	0x0000
	.2byte	0x7ff
	.2byte	0xc00
	.2byte	0x800
	.2byte	0x200
	.2byte	0xf800
	.2byte	0xf300
	.2byte	0x400
	.4byte	0x0000
	.2byte	0x7ff
	.2byte	0xc00
	.2byte	0x800
	.2byte	0x200
	.2byte	0xf800
	.2byte	0xf300
	.2byte	0x400
	.4byte	0x0000
	.2byte	0x7ff
	.2byte	0xc00
	.2byte	0x800
	.2byte	0x200
	.2byte	0xf800
	.2byte	0xf300
	.2byte	0x400
	.4byte	0x0000
	.2byte	0x7ff
	.2byte	0xc00
	.2byte	0x800
	.2byte	0x200
	.2byte	0xf800
	.2byte	0xf300
	.2byte	0x400
	.4byte	0x0000
	.2byte	0x7ff
	.2byte	0xc00
	.2byte	0x800
	.2byte	0x200
	.2byte	0xf800
	.2byte	0xf300
	.2byte	0x400
	.4byte	0x0000
	.2byte	0x7ff
	.2byte	0xc00
	.2byte	0x800
	.2byte	0x200
	.2byte	0xf800
	.2byte	0xf300
	.2byte	0x400
	.4byte	0x0000
	.2byte	0x7ff
	.2byte	0xc00
	.2byte	0x800
	.2byte	0x200
	.2byte	0xf800
	.2byte	0xf300
	.2byte	0x400
	.4byte	0x0000
	.2byte	0x7ff
	.2byte	0xc00
	.2byte	0x800
	.2byte	0x200
	.2byte	0xf800
	.2byte	0xf300
	.2byte	0x400
	.4byte	0x0000
	.2byte	0x7ff
	.2byte	0xc00
	.2byte	0x800
	.2byte	0x200
	.2byte	0xf800
	.2byte	0xf300
	.2byte	0x400
	.4byte	0x0000
	.2byte	0x7ff
	.2byte	0xc00
	.2byte	0x800
	.2byte	0x200
	.2byte	0xf800
	.2byte	0xf300
	.2byte	0x400
	.4byte	0x0000
	.2byte	0x7ff
	.2byte	0xc00
	.2byte	0x800
	.2byte	0x200
	.2byte	0xf800
	.2byte	0xf300
	.2byte	0x400
	.4byte	0x0000
	.2byte	0x7ff
	.2byte	0xc00
	.2byte	0x800
	.2byte	0x200
	.2byte	0xf800
	.2byte	0xf300
	.2byte	0x400
	.4byte	0x0000
	.2byte	0x7ff
	.2byte	0xc00
	.2byte	0x800
	.2byte	0x200
	.2byte	0xf800
	.2byte	0xf300
	.2byte	0x400
	.4byte	0x0000
	.2byte	0x7ff
	.2byte	0xc00
	.2byte	0x800
	.2byte	0x200
	.2byte	0xf800
	.2byte	0xf300
	.2byte	0x400
	.4byte	0x0000
	.2byte	0x7ff
	.2byte	0xc00
	.2byte	0x800
	.2byte	0x200
	.2byte	0xf800
	.2byte	0xf300
	.2byte	0x400
	.4byte	0x0000
	.2byte	0x7ff
	.2byte	0xc00
	.2byte	0x800
	.2byte	0x200
	.2byte	0xf800
	.2byte	0xf300
	.2byte	0x400
	.4byte	0x0000
	.2byte	0x7ff
	.2byte	0xc00
	.2byte	0x800
	.2byte	0x200
	.2byte	0xf800
	.2byte	0xf300
	.2byte	0x400
	.4byte	0x0000
	.2byte	0x7ff
	.2byte	0xc00
	.2byte	0x800
	.2byte	0x200
	.2byte	0xf800
	.2byte	0xf300
	.2byte	0x400
	.4byte	0x0000
	.2byte	0x7ff
	.2byte	0xc00
	.2byte	0x800
	.2byte	0x200
	.2byte	0xf800
	.2byte	0xf300
	.2byte	0x400
	.4byte	0x0000
	.2byte	0x7ff
	.2byte	0xc00
	.2byte	0x800
	.2byte	0x200
	.2byte	0xf800
	.2byte	0xf300
	.2byte	0x400
	.4byte	0x0000
	.2byte	0x7ff
	.2byte	0xc00
	.2byte	0x800
	.2byte	0x200
	.2byte	0xf800
	.2byte	0xf300
	.2byte	0x400
	.4byte	0x0000
	.2byte	0x7ff
	.2byte	0xc00
	.2byte	0x800
	.2byte	0x200
	.2byte	0xf800
	.2byte	0xf300
	.2byte	0x400
	.4byte	0x0000
	.2byte	0x7ff
	.2byte	0xc00
	.2byte	0x800
	.2byte	0x200
	.2byte	0xf800
	.2byte	0xf300
	.2byte	0x400
	.4byte	0x0000
	.2byte	0x7ff
	.2byte	0xc00
	.2byte	0x800
	.2byte	0x200
	.2byte	0xf800
	.2byte	0xf300
	.2byte	0x400
	.2byte	0xc60
	.2byte	0xc40
	.2byte	0xc20
	.2byte	0xc00
	.2byte	0xf600
	.2byte	0xf400
	.2byte	0xf200
	.2byte	0xf000
	.2byte	0xc60
	.2byte	0xc40
	.2byte	0xc20
	.2byte	0xc00
	.2byte	0xf600
	.2byte	0xf400
	.2byte	0xf200
	.2byte	0xf000
	.2byte	0xc60
	.2byte	0xc40
	.2byte	0xc20
	.2byte	0xc00
	.2byte	0xf600
	.2byte	0xf400
	.2byte	0xf200
	.2byte	0xf000
	.2byte	0xc60
	.2byte	0xc40
	.2byte	0xc20
	.2byte	0xc00
	.2byte	0xf600
	.2byte	0xf400
	.2byte	0xf200
	.2byte	0xf000
	.2byte	0xc60
	.2byte	0xc40
	.2byte	0xc20
	.2byte	0xc00
	.2byte	0xf600
	.2byte	0xf400
	.2byte	0xf200
	.2byte	0xf000
	.2byte	0xc60
	.2byte	0xc40
	.2byte	0xc20
	.2byte	0xc00
	.2byte	0xf600
	.2byte	0xf400
	.2byte	0xf200
	.2byte	0xf000
	.2byte	0xc60
	.2byte	0xc40
	.2byte	0xc20
	.2byte	0xc00
	.2byte	0xf600
	.2byte	0xf400
	.2byte	0xf200
	.2byte	0xf000
	.2byte	0xc60
	.2byte	0xc40
	.2byte	0xc20
	.2byte	0xc00
	.2byte	0xf600
	.2byte	0xf400
	.2byte	0xf200
	.2byte	0xf000
	.2byte	0xc60
	.2byte	0xc40
	.2byte	0xc20
	.2byte	0xc00
	.2byte	0xf600
	.2byte	0xf400
	.2byte	0xf200
	.2byte	0xf000
	.2byte	0xc60
	.2byte	0xc40
	.2byte	0xc20
	.2byte	0xc00
	.2byte	0xf600
	.2byte	0xf400
	.2byte	0xf200
	.2byte	0xf000
	.2byte	0xc60
	.2byte	0xc40
	.2byte	0xc20
	.2byte	0xc00
	.2byte	0xf600
	.2byte	0xf400
	.2byte	0xf200
	.2byte	0xf000
	.2byte	0xc60
	.2byte	0xc40
	.2byte	0xc20
	.2byte	0xc00
	.2byte	0xf600
	.2byte	0xf400
	.2byte	0xf200
	.2byte	0xf000
	.2byte	0xc60
	.2byte	0xc40
	.2byte	0xc20
	.2byte	0xc00
	.2byte	0xf600
	.2byte	0xf400
	.2byte	0xf200
	.2byte	0xf000
	.2byte	0xc60
	.2byte	0xc40
	.2byte	0xc20
	.2byte	0xc00
	.2byte	0xf600
	.2byte	0xf400
	.2byte	0xf200
	.2byte	0xf000
	.2byte	0xc60
	.2byte	0xc40
	.2byte	0xc20
	.2byte	0xc00
	.2byte	0xf600
	.2byte	0xf400
	.2byte	0xf200
	.2byte	0xf000
	.2byte	0xc60
	.2byte	0xc40
	.2byte	0xc20
	.2byte	0xc00
	.2byte	0xf600
	.2byte	0xf400
	.2byte	0xf200
	.2byte	0xf000
	.2byte	0xc60
	.2byte	0xc40
	.2byte	0xc20
	.2byte	0xc00
	.2byte	0xf600
	.2byte	0xf400
	.2byte	0xf200
	.2byte	0xf000
	.2byte	0xc60
	.2byte	0xc40
	.2byte	0xc20
	.2byte	0xc00
	.2byte	0xf600
	.2byte	0xf400
	.2byte	0xf200
	.2byte	0xf000
	.2byte	0xc60
	.2byte	0xc40
	.2byte	0xc20
	.2byte	0xc00
	.2byte	0xf600
	.2byte	0xf400
	.2byte	0xf200
	.2byte	0xf000
	.2byte	0xc60
	.2byte	0xc40
	.2byte	0xc20
	.2byte	0xc00
	.2byte	0xf600
	.2byte	0xf400
	.2byte	0xf200
	.2byte	0xf000
	.2byte	0xc60
	.2byte	0xc40
	.2byte	0xc20
	.2byte	0xc00
	.2byte	0xf600
	.2byte	0xf400
	.2byte	0xf200
	.2byte	0xf000
	.2byte	0xc60
	.2byte	0xc40
	.2byte	0xc20
	.2byte	0xc00
	.2byte	0xf600
	.2byte	0xf400
	.2byte	0xf200
	.2byte	0xf000
	.2byte	0xc60
	.2byte	0xc40
	.2byte	0xc20
	.2byte	0xc00
	.2byte	0xf600
	.2byte	0xf400
	.2byte	0xf200
	.2byte	0xf000
	.2byte	0xc60
	.2byte	0xc40
	.2byte	0xc20
	.2byte	0xc00
	.2byte	0xf600
	.2byte	0xf400
	.2byte	0xf200
	.2byte	0xf000
	.2byte	0xc60
	.2byte	0xc40
	.2byte	0xc20
	.2byte	0xc00
	.2byte	0xf600
	.2byte	0xf400
	.2byte	0xf200
	.2byte	0xf000
	.2byte	0xeb0
	.4byte	0x0000
	.2byte	0x10ad
	.4byte	0x0000
	.2byte	0xc36
	.4byte	0x0000
	.2byte	0x406
	.4byte	0x0000
	.2byte	0x995
	.4byte	0x0000
	.4byte	0xffffee07
	.2byte	0x7bd
	.4byte	0x0000
	.2byte	0xfbe0
	.2byte	0xffff
	.2byte	0xa3d
	.4byte	0x0000
	.2byte	0x10ad
	.4byte	0x0000
	.2byte	0xbf2
	.4byte	0x0000
	.2byte	0x406
	.4byte	0x0000
	.2byte	0x94a
	.4byte	0x0000
	.4byte	0xffffee07
	.2byte	0x76e
	.4byte	0x0000
	.2byte	0xfbe0
	.2byte	0xffff
	.2byte	0x9f4
	.4byte	0x0000
	.2byte	0x10ad
	.4byte	0x0000
	.2byte	0xbac
	.4byte	0x0000
	.2byte	0x406
	.4byte	0x0000
	.2byte	0x8fc
	.4byte	0x0000
	.4byte	0xffffee07
	.2byte	0x71e
	.4byte	0x0000
	.2byte	0xfbe0
	.2byte	0xffff
	.2byte	0x9aa
	.4byte	0x0000
	.2byte	0x10ad
	.4byte	0x0000
	.2byte	0xb65
	.4byte	0x0000
	.2byte	0x406
	.4byte	0x0000
	.2byte	0x8ac
	.4byte	0x0000
	.4byte	0xffffee07
	.2byte	0x6ca
	.4byte	0x0000
	.2byte	0xfbe0
	.2byte	0xffff
	.2byte	0x95e
	.4byte	0x0000
	.2byte	0x10ad
	.4byte	0x0000
	.2byte	0xb1c
	.4byte	0x0000
	.2byte	0x406
	.4byte	0x0000
	.2byte	0x85c
	.4byte	0x0000
	.4byte	0xffffee07
	.4byte	0x677
	.2byte	0xfbe0
	.2byte	0xffff
	.2byte	0x911
	.4byte	0x0000
	.2byte	0x10ad
	.4byte	0x0000
	.2byte	0xad2
	.4byte	0x0000
	.2byte	0x406
	.4byte	0x0000
	.2byte	0x80a
	.4byte	0x0000
	.4byte	0xffffee07
	.2byte	0x621
	.4byte	0x0000
	.2byte	0xfbe0
	.2byte	0xffff
	.2byte	0x8c2
	.4byte	0x0000
	.2byte	0x10ad
	.4byte	0x0000
	.2byte	0x868
	.4byte	0x0000
	.2byte	0x406
	.4byte	0x0000
	.4byte	0x00000693
	.4byte	0xffffee07
	.4byte	0x65b
	.2byte	0xfbe0
	.2byte	0xffff
	.2byte	0x7ee
	.4byte	0x0000
	.2byte	0x10ad
	.4byte	0x0000
	.2byte	0x820
	.4byte	0x0000
	.2byte	0x406
	.4byte	0x0000
	.4byte	0x64b
	.4byte	0xffffee07
	.4byte	0x00000613
	.2byte	0xfbe0
	.2byte	0xffff
	.2byte	0x7a6
	.4byte	0x0000
	.2byte	0x10ad
	.4byte	0x0000
	.2byte	0x7d8
	.4byte	0x0000
	.2byte	0x406
	.4byte	0x0000
	.4byte	0x00000603
	.4byte	0xffffee07
	.4byte	0x5cb
	.2byte	0xfbe0
	.2byte	0xffff
	.2byte	0x75e
	.4byte	0x0000
	.2byte	0x10ad
	.4byte	0x0000
	.4byte	0x78f
	.2byte	0x406
	.4byte	0x0000
	.2byte	0x5ba
	.4byte	0x0000
	.4byte	0xffffee07
	.2byte	0x582
	.4byte	0x0000
	.2byte	0xfbe0
	.2byte	0xffff
	.2byte	0x715
	.4byte	0x0000
	.2byte	0x10ad
	.4byte	0x0000
	.2byte	0x746
	.4byte	0x0000
	.2byte	0x406
	.4byte	0x0000
	.2byte	0x571
	.4byte	0x0000
	.4byte	0xffffee07
	.2byte	0x539
	.4byte	0x0000
	.2byte	0xfbe0
	.2byte	0xffff
	.2byte	0x6cc
	.4byte	0x0000
	.2byte	0x10ad
	.4byte	0x0000
	.2byte	0x6fd
	.4byte	0x0000
	.2byte	0x406
	.4byte	0x0000
	.2byte	0x528
	.4byte	0x0000
	.4byte	0xffffee07
	.2byte	0x4f0
	.4byte	0x0000
	.2byte	0xfbe0
	.2byte	0xffff
	.4byte	0x00000683
	.2byte	0x10ad
	.4byte	0x0000
	.2byte	0x6b4
	.4byte	0x0000
	.2byte	0x406
	.4byte	0x0000
	.2byte	0x7b0
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
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