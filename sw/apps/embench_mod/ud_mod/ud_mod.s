	.text
	.globl  main
	.type  main, @function

ludcmp.constprop.0:
	lui	a4,0x100
	addi	sp,sp,-16
	mv	a2,a4
	mv	a5,a4
	sw	s0,12(sp)
	sw	s1,8(sp)
	sw	s2,4(sp)
	sw	s3,0(sp)
	addi	a3,a2,80
	mv	a4,a4
	li	t0,5
	li	t6,4
	li	t5,3
	li	t3,2
	li	a1,0
	li	a7,1
	li	a6,6
	li	t1,2
	li	t4,4
	li	t2,5
lab10: 	lw	a0,80(a2)
	bnez	a1,lab0
	lw	s0,0(a2)
	div	a0,a0,s0
	sw	a0,80(a2)
	beq	t3,a6,lab1
	lw	a0,160(a2)
	div	a0,a0,s0
	sw	a0,160(a2)
	beq	t5,a6,lab2
	lw	a0,240(a2)
	div	a0,a0,s0
	sw	a0,240(a2)
	beq	t6,a6,lab2
	lw	a0,320(a2)
	div	a0,a0,s0
	sw	a0,320(a2)
	beq	t0,a6,lab2
	lw	a0,400(a2)
lab16: 	div	a0,a0,s0
	sw	a0,400(a2)
lab12: 	lw	s0,0(a3)
	lw	s1,4(a4) # 100004 <a+0x4>
	lw	a0,84(a2)
	mul	s0,s0,s1
	sub	a0,a0,s0
	beqz	a1,lab3
	lw	s0,4(a3)
	lw	s1,84(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	beq	a1,a7,lab4
	lw	s0,8(a3)
	lw	s1,164(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	beq	a1,t1,lab4
	lw	s0,12(a3)
	lw	s1,244(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	bne	a1,t4,lab4
	lw	s0,16(a3)
	lw	s1,324(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
lab4: 	sw	a0,84(a2)
	beq	t3,a6,lab5
	lw	a0,0(a3)
	lw	s1,8(a4)
	lw	s0,4(a3)
	lw	s2,88(a4)
	mul	s1,s1,a0
	lw	a0,88(a2)
	mul	s0,s0,s2
	sub	a0,a0,s1
	sub	a0,a0,s0
	bgeu	a7,a1,lab6
	lw	s0,8(a3)
	lw	s1,168(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	bgeu	t1,a1,lab6
	lw	s0,12(a3)
	lw	s1,248(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	bne	a1,t4,lab6
	lw	s0,16(a3)
	lw	s1,328(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
lab6: 	sw	a0,88(a2)
	beq	t5,a6,lab5
	lw	a0,0(a3)
	lw	s1,12(a4)
	lw	s0,4(a3)
	lw	s2,92(a4)
	mul	s1,s1,a0
	lw	a0,92(a2)
	mul	s0,s0,s2
	sub	a0,a0,s1
	sub	a0,a0,s0
	bgeu	a7,a1,lab7
	lw	s0,8(a3)
	lw	s1,172(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	bgeu	t1,a1,lab7
	lw	s0,12(a3)
	lw	s1,252(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	bne	a1,t4,lab7
	lw	s0,16(a3)
	lw	s1,332(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
lab7: 	sw	a0,92(a2)
	beq	t6,a6,lab5
	lw	a0,0(a3)
	lw	s1,16(a4)
	lw	s0,4(a3)
	lw	s2,96(a4)
	mul	s1,s1,a0
	lw	a0,96(a2)
	mul	s0,s0,s2
	sub	a0,a0,s1
	sub	a0,a0,s0
	bgeu	a7,a1,lab8
	lw	s0,8(a3)
	lw	s1,176(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	bgeu	t1,a1,lab8
	lw	s0,12(a3)
	lw	s1,256(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	bne	a1,t4,lab8
	lw	s0,16(a3)
	lw	s1,336(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
lab8: 	sw	a0,96(a2)
	beq	t0,a6,lab5
	lw	a0,0(a3)
	lw	s1,20(a4)
	lw	s0,100(a4)
	lw	s2,4(a3)
	mul	s1,s1,a0
	lw	a0,100(a2)
	mul	s0,s0,s2
	sub	a0,a0,s1
	sub	a0,a0,s0
	bgeu	a7,a1,lab9
	lw	s0,180(a4)
	lw	s1,8(a3)
	mul	s0,s0,s1
	sub	a0,a0,s0
	bgeu	t1,a1,lab9
	lw	s0,12(a3)
	lw	s1,260(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	bne	a1,t4,lab9
	lw	s0,16(a3)
	lw	s1,340(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
lab9: 	sw	a0,100(a2)
lab5: 	addi	a1,a1,1
	addi	a2,a2,84
	addi	t3,t3,1
	addi	t5,t5,1
	addi	t6,t6,1
	addi	t0,t0,1
	addi	a3,a3,80
	addi	a4,a4,4
	bne	a1,t2,lab10
	lw	a0,1600(a5)
	lw	a4,80(a5)
	lw	a6,1604(a5)
	lw	a7,160(a5)
	mul	a4,a0,a4
	lw	s1,164(a5)
	lw	s0,240(a5)
	lw	a1,1608(a5)
	lw	a2,1612(a5)
	lw	s2,320(a5)
	lw	a3,1616(a5)
	lw	t2,404(a5)
	lw	t0,408(a5)
	lw	t6,412(a5)
	sub	a6,a6,a4
	mul	a7,a0,a7
	lw	t5,416(a5)
	lw	a4,1620(a5)
	lw	t4,340(a5)
	lw	t3,256(a5)
	lw	t1,260(a5)
	lw	s3,176(a5)
	mul	s1,a6,s1
	sub	a1,a1,a7
	lw	a7,172(a5)
	mul	s0,a0,s0
	sub	a1,a1,s1
	lw	s1,244(a5)
	sub	a2,a2,s0
	lw	s0,248(a5)
	mul	s1,a6,s1
	mul	s0,a1,s0
	sub	a2,a2,s1
	sub	a2,a2,s0
	lw	s0,324(a5)
	mul	s2,a0,s2
	mul	s1,a6,s0
	lw	s0,328(a5)
	sub	a3,a3,s2
	mul	s0,a1,s0
	sub	a3,a3,s1
	lw	s1,332(a5)
	mul	s1,a2,s1
	sub	a3,a3,s0
	lw	s0,400(a5)
	mul	s0,a0,s0
	sub	a3,a3,s1
	mul	t2,a6,t2
	sub	a4,a4,s0
	mul	t0,a1,t0
	sub	a4,a4,t2
	mul	t6,a2,t6
	sub	a4,a4,t0
	mul	t5,a3,t5
	sub	a4,a4,t6
	sub	a4,a4,t5
	lw	t5,420(a5)
	div	a4,a4,t5
	mul	t4,a4,t4
	sw	a4,1700(a5)
	sub	a3,a3,t4
	lw	t4,336(a5)
	mul	t1,a4,t1
	div	a3,a3,t4
	mul	t3,a3,t3
	sw	a3,1696(a5)
	sub	a2,a2,t3
	sub	a2,a2,t1
	lw	t1,252(a5)
	mul	s3,a3,s3
	div	t1,a2,t1
	mul	a2,t1,a7
	sw	t1,1692(a5)
	lw	s2,92(a5)
	lw	t2,96(a5)
	lw	t4,100(a5)
	lw	s1,84(a5)
	lw	a7,4(a5)
	lw	s0,8(a5)
	lw	t0,12(a5)
	lw	t6,16(a5)
	sub	a2,a1,a2
	lw	a1,180(a5)
	sub	a2,a2,s3
	mul	s2,t1,s2
	lw	t5,20(a5)
	lw	t3,0(a5)
	lw	s3,0(sp)
	mul	a1,a4,a1
	sub	a2,a2,a1
	lw	a1,168(a5)
	mul	t2,a3,t2
	div	a2,a2,a1
	lw	a1,88(a5)
	mul	a1,a2,a1
	sw	a2,1688(a5)
	sub	a1,a6,a1
	mul	a6,a4,t4
	sub	a1,a1,s2
	sub	a1,a1,t2
	lw	s2,4(sp)
	sub	a1,a1,a6
	div	a1,a1,s1
	lw	s1,8(sp)
	mul	a7,a1,a7
	sw	a1,1684(a5)
	mul	a6,a2,s0
	sub	a2,a0,a7
	lw	s0,12(sp)
	li	a0,0
	mul	a1,t1,t0
	sub	a2,a2,a6
	mul	a3,a3,t6
	sub	a2,a2,a1
	mul	a1,a4,t5
	sub	a4,a2,a3
	sub	a4,a4,a1
	div	a4,a4,t3
	sw	a4,1680(a5)
	addi	sp,sp,16
	ret
lab0: 	lw	s0,0(a3)
	lw	s1,0(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	bgeu	a7,a1,lab11
	lw	s0,4(a3)
	lw	s1,80(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	bgeu	t1,a1,lab11
	lw	s0,8(a3)
	lw	s1,160(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	bne	a1,t4,lab11
	lw	s0,12(a3)
	lw	s1,240(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
lab11: 	lw	s0,0(a2)
	div	a0,a0,s0
	sw	a0,80(a2)
	beq	t3,a6,lab12
	lw	s1,80(a3)
	lw	s2,0(a4)
	lw	a0,160(a2)
	mul	s1,s1,s2
	sub	a0,a0,s1
	bgeu	a7,a1,lab13
	lw	s1,84(a3)
	lw	s2,80(a4)
	mul	s1,s1,s2
	sub	a0,a0,s1
	bgeu	t1,a1,lab13
	lw	s1,88(a3)
	lw	s2,160(a4)
	mul	s1,s1,s2
	sub	a0,a0,s1
	bne	a1,t4,lab13
	lw	s1,92(a3)
	lw	s2,240(a4)
	mul	s1,s1,s2
	sub	a0,a0,s1
lab13: 	div	a0,a0,s0
	sw	a0,160(a2)
	beq	t5,a6,lab12
	lw	s1,160(a3)
	lw	s2,0(a4)
	lw	a0,240(a2)
	mul	s1,s1,s2
	sub	a0,a0,s1
	bgeu	a7,a1,lab14
	lw	s1,164(a3)
	lw	s2,80(a4)
	mul	s1,s1,s2
	sub	a0,a0,s1
	bgeu	t1,a1,lab14
	lw	s1,168(a3)
	lw	s2,160(a4)
	mul	s1,s1,s2
	sub	a0,a0,s1
	bne	a1,t4,lab14
	lw	s1,172(a3)
	lw	s2,240(a4)
	mul	s1,s1,s2
	sub	a0,a0,s1
lab14: 	div	a0,a0,s0
	sw	a0,240(a2)
	beq	t6,a6,lab12
	lw	s1,240(a3)
	lw	s2,0(a4)
	lw	a0,320(a2)
	mul	s1,s1,s2
	sub	a0,a0,s1
	bgeu	a7,a1,lab15
	lw	s1,244(a3)
	lw	s2,80(a4)
	mul	s1,s1,s2
	sub	a0,a0,s1
	bgeu	t1,a1,lab15
	lw	s1,248(a3)
	lw	s2,160(a4)
	mul	s1,s1,s2
	sub	a0,a0,s1
	bne	a1,t4,lab15
	lw	s1,252(a3)
	lw	s2,240(a4)
	mul	s1,s1,s2
	sub	a0,a0,s1
lab15: 	div	a0,a0,s0
	sw	a0,320(a2)
	beq	t0,a6,lab12
	lw	s1,320(a3)
	lw	s2,0(a4)
	lw	a0,400(a2)
	mul	s1,s1,s2
	sub	a0,a0,s1
	bgeu	a7,a1,lab16
	lw	s1,324(a3)
	lw	s2,80(a4)
	mul	s1,s1,s2
	sub	a0,a0,s1
	bgeu	t1,a1,lab16
	lw	s1,328(a3)
	lw	s2,160(a4)
	mul	s1,s1,s2
	sub	a0,a0,s1
	bne	a1,t4,lab16
	lw	s1,332(a3)
	lw	s2,240(a4)
	mul	s1,s1,s2
	sub	a0,a0,s1
	j	lab16
lab2: 	lw	s0,0(a3)
	lw	s1,4(a4)
	lw	a0,84(a2)
	mul	s0,s0,s1
	sub	a0,a0,s0
lab3: 	sw	a0,84(a2)
	li	s0,6
	beq	t3,s0,lab5
	lw	s1,0(a3)
	lw	s2,8(a4)
	lw	a0,88(a2)
	mul	s1,s1,s2
	sub	a0,a0,s1
	sw	a0,88(a2)
	beq	t5,s0,lab5
	lw	s1,12(a4)
	lw	s2,0(a3)
	lw	a0,92(a2)
	mul	s1,s1,s2
	sub	a0,a0,s1
	sw	a0,92(a2)
	beq	t6,s0,lab5
	lw	s1,16(a4)
	lw	s2,0(a3)
	lw	a0,96(a2)
	mul	s1,s1,s2
	sub	a0,a0,s1
	sw	a0,96(a2)
	beq	t0,s0,lab5
	lw	s0,20(a4)
	lw	s1,0(a3)
	lw	a0,100(a2)
	mul	s0,s0,s1
	sub	a0,a0,s0
	j	lab9
lab1: 	lw	s0,0(a3)
	lw	s1,4(a4)
	lw	a0,84(a2)
	mul	s0,s0,s1
	sub	a0,a0,s0
	sw	a0,84(a2)
	j	lab5
benchmark_body.constprop.0:
	addi	sp,sp,-48
	sw	s0,40(sp)
	lui	s0,0x100
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	sw	s9,4(sp)
	sw	s10,0(sp)
	sw	ra,44(sp)
	li	s9,1478
	mv	s0,s0
	lui	s6,0x100
	li	s5,4
	li	s10,3
	li	s4,5
	li	s3,6
	li	s1,7
	li	s8,29
	li	s2,8
	li	s7,37
lab17: 	li	a4,12
	sw	a4,168(s0) # 1000a8 <a+0xa8>
	li	a4,45
	sw	a4,1608(s0)
	li	a4,16
	li	a5,9
	li	a3,10
	sw	a4,252(s0)
	li	a4,53
	sw	a5,180(s0)
	sw	a5,256(s0)
	sw	a3,260(s0)
	sw	a4,1612(s0)
	sw	a5,332(s0)
	li	a2,20
	sw	s5,0(s0)
	sw	s10,4(s0)
	sw	s5,8(s0)
	sw	s4,12(s0)
	sw	s3,16(s0)
	sw	s1,20(s0)
	sw	s8,1600(s0)
	sw	s10,80(s0)
	sw	s2,84(s0)
	sw	s4,88(s0)
	sw	s3,92(s0)
	sw	s1,96(s0)
	sw	s2,100(s0)
	sw	s7,1604(s0)
	sw	s5,160(s0)
	sw	s4,164(s0)
	sw	s1,172(s0)
	sw	s2,176(s0)
	sw	s4,240(s0)
	sw	s3,244(s0)
	sw	s1,248(s0)
	sw	s3,320(s0)
	sw	s1,324(s0)
	sw	s2,328(s0)
	sw	a2,336(s0)
	sw	a5,408(s0)
	li	a5,24
	li	a4,11
	li	a2,61
	sw	a5,420(s0)
	li	a5,69
	sw	a4,340(s0)
	sw	a2,1616(s0)
	sw	s1,400(s0)
	sw	s2,404(s0)
	sw	a3,412(s0)
	sw	a4,416(s0)
	sw	a5,1620(s0)
	jal	ra,ludcmp.constprop.0
	sw	a0,1760(s6) # 1006e0 <chkerr>
	addi	s9,s9,-1
	bnez	s9,lab17
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	a0,1760(s6)
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
benchmark_body.isra.0:
	addi	sp,sp,-64
	sw	s6,32(sp)
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s7,28(sp)
	sw	s8,24(sp)
	sw	s9,20(sp)
	sw	s10,16(sp)
	sw	s11,12(sp)
	lui	s6,0x100
	blez	a0,lab18
	lui	s0,0x100
	mv	s5,a0
	li	s10,0
	mv	s0,s0
	lui	s6,0x100
	li	s9,4
	li	s11,3
	li	s4,5
	li	s3,6
	li	s1,7
	li	s8,29
	li	s2,8
	li	s7,37
lab19: 	li	a4,12
	sw	a4,168(s0) # 1000a8 <a+0xa8>
	li	a4,45
	sw	a4,1608(s0)
	li	a4,16
	li	a5,9
	li	a3,10
	sw	a4,252(s0)
	li	a4,53
	sw	a5,180(s0)
	sw	a5,256(s0)
	sw	a3,260(s0)
	sw	a4,1612(s0)
	sw	a5,332(s0)
	li	a2,20
	sw	s9,0(s0)
	sw	s11,4(s0)
	sw	s9,8(s0)
	sw	s4,12(s0)
	sw	s3,16(s0)
	sw	s1,20(s0)
	sw	s8,1600(s0)
	sw	s11,80(s0)
	sw	s2,84(s0)
	sw	s4,88(s0)
	sw	s3,92(s0)
	sw	s1,96(s0)
	sw	s2,100(s0)
	sw	s7,1604(s0)
	sw	s9,160(s0)
	sw	s4,164(s0)
	sw	s1,172(s0)
	sw	s2,176(s0)
	sw	s4,240(s0)
	sw	s3,244(s0)
	sw	s1,248(s0)
	sw	s3,320(s0)
	sw	s1,324(s0)
	sw	s2,328(s0)
	sw	a2,336(s0)
	sw	a5,408(s0)
	li	a5,24
	li	a4,11
	li	a2,61
	sw	a5,420(s0)
	li	a5,69
	sw	a4,340(s0)
	sw	a2,1616(s0)
	sw	s1,400(s0)
	sw	s2,404(s0)
	sw	a3,412(s0)
	sw	a4,416(s0)
	sw	a5,1620(s0)
	jal	ra,ludcmp.constprop.0
	sw	a0,1760(s6) # 1006e0 <chkerr>
	addi	s10,s10,1
	bne	s10,s5,lab19
lab18: 	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	a5,1760(s6)
	lw	s1,52(sp)
	lw	s2,48(sp)
	lw	s3,44(sp)
	lw	s4,40(sp)
	lw	s5,36(sp)
	lw	s6,32(sp)
	lw	s7,28(sp)
	lw	s8,24(sp)
	lw	s9,20(sp)
	lw	s10,16(sp)
	lw	s11,12(sp)
	addi	sp,sp,64
	ret
verify_benchmark:
	lui	a5,0x100
	addi	sp,sp,-96
	addi	a5,a5,1764 # 1006e4 <_bss_end>
	sw	s0,88(sp)
	sw	ra,92(sp)
	mv	s0,a0
	mv	a4,sp
	addi	a3,a5,80
lab20: 	lw	a6,0(a5)
	lw	a0,4(a5)
	lw	a1,8(a5)
	lw	a2,12(a5)
	sw	a6,0(a4)
	sw	a0,4(a4)
	sw	a1,8(a4)
	sw	a2,12(a4)
	addi	a5,a5,16
	addi	a4,a4,16
	bne	a5,a3,lab20
	lui	a0,0x100
	mv	a1,sp
	li	a2,80
	addi	a0,a0,1680 # 100690 <x>
	jal	ra,memcmp
	lw	ra,92(sp)
	or	a0,a0,s0
	lw	s0,88(sp)
	seqz	a0,a0
	addi	sp,sp,96
	ret
initialise_benchmark:
	ret
warm_caches:
	j	benchmark_body.isra.0
benchmark:
	j	benchmark_body.constprop.0
ludcmp:
	addi	sp,sp,-448
	sw	s5,424(sp)
	lui	s5,0x100
	sw	s0,444(sp)
	sw	s4,428(sp)
	mv	t5,s5
	sw	s1,440(sp)
	sw	s2,436(sp)
	sw	s3,432(sp)
	sw	s6,420(sp)
	sw	s7,416(sp)
	sw	s8,412(sp)
	lw	s4,1600(t5)
	mv	s0,a1
	blez	a1,lab21
	slli	a6,a1,0x2
	addi	s3,a1,20
	add	a6,a6,a1
	li	s1,0
	addi	t2,t5,80
	slli	s3,s3,0x2
	slli	a6,a6,0x4
	lui	s2,0x100
	addi	t4,s1,1
	mv	t6,a1
	add	t3,t5,s3
	add	a6,a6,t2
	mv	s5,s5
	mv	t0,t2
	mv	t1,t2
	li	s6,0
	li	a7,0
	addi	s2,s2,-4 # ffffc <_min_stack+0xfbffc>
	blt	s0,t4,lab22
lab30: 	neg	s7,t4
	slli	s7,s7,0x2
	addi	s8,s7,4
	mv	a0,t0
	sub	s7,s2,s7
	j	lab23
lab25: 	lw	a5,0(s5) # 100000 <a>
	addi	a0,a0,80
	div	a3,a3,a5
	sw	a3,-80(a0)
	beq	a0,a6,lab24
lab23: 	lw	a3,0(a0)
	beqz	a7,lab25
	add	a2,a0,s8
	mv	a5,s7
lab26: 	lw	a4,0(a2)
	lw	a1,0(a5)
	addi	a5,a5,80
	addi	a2,a2,4
	mul	a4,a4,a1
	sub	a3,a3,a4
	bne	a5,s5,lab26
	lw	a5,0(s5)
	addi	a0,a0,80
	div	a3,a3,a5
	sw	a3,-80(a0)
	bne	a0,a6,lab23
lab24: 	addi	s7,s5,84
	mv	a0,s7
	mv	s5,t0
	addi	s6,s6,-80
lab28: 	lw	a2,4(s5)
	add	a5,s6,a0
	mv	a3,t1
lab27: 	lw	a4,0(a3)
	lw	a1,0(a5)
	addi	a5,a5,80
	addi	a3,a3,4
	mul	a4,a4,a1
	sub	a2,a2,a4
	bne	a5,a0,lab27
	sw	a2,4(s5)
	addi	s5,s5,4
	addi	a0,a5,4
	bne	s5,t3,lab28
	addi	t3,s5,80
	addi	a7,a7,1
	addi	t1,t1,80
	addi	t0,t0,84
	mv	s5,s7
	addi	a6,a6,4
	beq	s0,t4,lab29
	mv	s1,t4
lab31: 	addi	t4,s1,1
	bge	s0,t4,lab30
lab22: 	addi	a7,a7,1
	addi	t3,t3,80
	addi	t1,t1,80
	addi	t0,t0,84
	addi	s5,s5,84
	addi	s6,s6,-80
	addi	a6,a6,4
	mv	s1,t4
	j	lab31
lab29: 	addi	a0,sp,4
	addi	t1,s3,-80
	sw	s4,0(sp)
	addi	a6,t5,1604
	add	a7,a0,t1
lab33: 	lw	a2,0(a6)
	mv	a5,sp
	mv	a3,t2
lab32: 	lw	a4,0(a3)
	lw	a1,0(a5)
	addi	a5,a5,4
	addi	a3,a3,4
	mul	a4,a4,a1
	sub	a2,a2,a4
	bne	a0,a5,lab32
	sw	a2,0(a0)
	addi	a0,a0,4
	addi	a6,a6,4
	addi	t2,t2,80
	bne	a0,a7,lab33
	li	a1,84
	mul	a2,t4,a1
	slli	a5,t4,0x2
	addi	a4,a5,400
	add	a4,a4,sp
	lw	a3,-400(a4)
	add	a4,t5,a5
	addi	a7,t5,1680
	addi	a0,t5,1684
	addi	s3,s3,-84
	add	a6,sp,s3
	add	a5,t5,a2
	lw	a2,0(a5)
	mul	a5,s1,a1
	add	a7,a7,t1
	add	a0,a0,t1
	div	a3,a3,a2
	addi	a5,a5,4
	add	t5,t5,a5
	sw	a3,1680(a4)
lab36: 	lw	a2,0(a6)
	blt	t4,t6,lab34
	mv	a5,a7
	mv	a3,t5
lab35: 	lw	a4,0(a3)
	lw	a1,0(a5)
	addi	a5,a5,4
	addi	a3,a3,4
	mul	a4,a4,a1
	sub	a2,a2,a4
	bne	a0,a5,lab35
lab34: 	lw	a5,-4(t5)
	addi	a7,a7,-4
	addi	t6,t6,-1
	div	a2,a2,a5
	addi	a6,a6,-4
	addi	t5,t5,-84
	sw	a2,0(a7)
	bnez	t6,lab36
lab37: 	lw	s0,444(sp)
	lw	s1,440(sp)
	lw	s2,436(sp)
	lw	s3,432(sp)
	lw	s4,428(sp)
	lw	s5,424(sp)
	lw	s6,420(sp)
	lw	s7,416(sp)
	lw	s8,412(sp)
	li	a0,0
	addi	sp,sp,448
	ret
lab21: 	li	a5,84
	mul	a5,a1,a5
	slli	s0,a1,0x2
	addi	a4,s0,400
	sw	s4,0(sp)
	add	a4,a4,sp
	lw	a4,-400(a4)
	add	s0,t5,s0
	add	a5,t5,a5
	lw	a5,0(a5)
	div	a5,a4,a5
	sw	a5,1680(s0)
	j	lab37
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
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
b:
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
x:
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
chkerr:
	.4byte	0x0000
	.4byte	0x0000


	.section .rodata

start_rodata:
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.2byte	0x1
	.4byte	0x0000
	.2byte	0x1
	.4byte	0x0000
	.2byte	0x1
	.4byte	0x0000
	.2byte	0x2
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
