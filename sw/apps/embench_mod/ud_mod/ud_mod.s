	.text
	.globl  main
	.type  main, @function

ludcmp.constprop.0:
	lui	a4,0x100
	addi	sp,sp,-32
	mv	a2,a4
	mv	a5,a4
	sw	s0,28(sp)
	sw	s1,24(sp)
	sw	s2,20(sp)
	sw	s3,16(sp)
	sw	s4,12(sp)
	addi	a3,a2,80
	mv	a4,a4
	li	t0,5
	li	t6,4
	li	t5,3
	li	t4,2
	li	a1,0
	li	a6,6
	li	a7,1
	li	t1,2
	li	t3,4
	li	t2,5
lab4: 	bnez	a1,lab0
	lw	s0,0(a2)
	div	a0,a0,s0
	sw	a0,80(a2)
	beq	t4,a6,lab1
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
	lw	s1,400(a2)
	lw	a0,84(a2)
	div	s0,s1,s0
	sw	s0,400(a2)
	lw	s0,0(a3)
	lw	s1,4(a4) # 100004 <a+0x4>
	mul	s0,s0,s1
	sub	a0,a0,s0
lab12: 	lw	s0,0(a3)
	lw	s1,8(a4)
	lw	a0,88(a2)
	mul	s0,s0,s1
	sub	a0,a0,s0
	sw	a0,88(a2)
	beq	t5,a6,lab3
	lw	s0,0(a3)
	lw	s1,12(a4)
	lw	a0,92(a2)
	mul	s0,s0,s1
	sub	a0,a0,s0
	sw	a0,92(a2)
	beq	t6,a6,lab3
	lw	s0,0(a3)
	lw	s1,16(a4)
	lw	a0,96(a2)
	mul	s0,s0,s1
	sub	a0,a0,s0
	sw	a0,96(a2)
	beq	t0,a6,lab3
	lw	s0,20(a4)
	lw	s1,0(a3)
	lw	a0,100(a2)
	mul	s0,s0,s1
	sub	a0,a0,s0
lab18: lab3: 	addi	a1,a1,1
	addi	a2,a2,84
	addi	t4,t4,1
	addi	t5,t5,1
	addi	t6,t6,1
	addi	t0,t0,1
	addi	a3,a3,80
	addi	a4,a4,4
	bne	a1,t2,lab4
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
	lw	s3,16(sp)
	lw	s4,12(sp)
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
	lw	s2,20(sp)
	sub	a1,a1,a6
	div	a1,a1,s1
	lw	s1,24(sp)
	mul	a7,a1,a7
	sw	a1,1684(a5)
	mul	a6,a2,s0
	sub	a2,a0,a7
	lw	s0,28(sp)
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
	addi	sp,sp,32
	ret
lab0: 	lw	s0,0(a3)
	lw	s1,0(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	beq	a1,a7,lab5
	lw	s0,4(a3)
	lw	s1,80(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	beq	a1,t1,lab5
	lw	s0,8(a3)
	lw	s1,160(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	bne	a1,t3,lab5
	lw	s0,12(a3)
	lw	s1,240(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
lab5: 	lw	s0,0(a2)
	div	a0,a0,s0
	sw	a0,80(a2)
	beq	t4,a6,lab6
	lw	s1,80(a3)
	lw	s2,0(a4)
	lw	a0,160(a2)
	mul	s1,s1,s2
	sub	a0,a0,s1
	bgeu	a7,a1,lab7
	lw	s1,84(a3)
	lw	s2,80(a4)
	mul	s1,s1,s2
	sub	a0,a0,s1
	beq	a1,t1,lab7
	lw	s1,88(a3)
	lw	s2,160(a4)
	mul	s1,s1,s2
	sub	a0,a0,s1
	bne	a1,t3,lab7
	lw	s1,92(a3)
	lw	s2,240(a4)
	mul	s1,s1,s2
	sub	a0,a0,s1
lab7: 	div	a0,a0,s0
	sw	a0,160(a2)
	beq	t5,a6,lab8
	lw	s1,160(a3)
	lw	s2,0(a4)
	lw	a0,240(a2)
	mul	s1,s1,s2
	sub	a0,a0,s1
	bgeu	a7,a1,lab9
	lw	s1,164(a3)
	lw	s2,80(a4)
	mul	s1,s1,s2
	sub	a0,a0,s1
	beq	a1,t1,lab9
	lw	s1,168(a3)
	lw	s2,160(a4)
	mul	s1,s1,s2
	sub	a0,a0,s1
	bne	a1,t3,lab9
	lw	s1,172(a3)
	lw	s2,240(a4)
	mul	s1,s1,s2
	sub	a0,a0,s1
lab9: 	div	a0,a0,s0
	sw	a0,240(a2)
	beq	t6,a6,lab8
	lw	s1,240(a3)
	lw	s2,0(a4)
	lw	a0,320(a2)
	mul	s1,s1,s2
	sub	a0,a0,s1
	bgeu	a7,a1,lab10
	lw	s1,244(a3)
	lw	s2,80(a4)
	mul	s1,s1,s2
	sub	a0,a0,s1
	beq	a1,t1,lab10
	lw	s1,248(a3)
	lw	s2,160(a4)
	mul	s1,s1,s2
	sub	a0,a0,s1
	bne	a1,t3,lab10
	lw	s1,252(a3)
	lw	s2,240(a4)
	mul	s1,s1,s2
	sub	a0,a0,s1
lab10: 	div	a0,a0,s0
	sw	a0,320(a2)
	beq	t0,a6,lab8
	lw	s1,320(a3)
	lw	s2,0(a4)
	lw	a0,400(a2)
	mul	s1,s1,s2
	sub	a0,a0,s1
	bgeu	a7,a1,lab11
	lw	s1,324(a3)
	lw	s2,80(a4)
	mul	s1,s1,s2
	sub	a0,a0,s1
	beq	a1,t1,lab11
	lw	s1,328(a3)
	lw	s2,160(a4)
	mul	s1,s1,s2
	sub	a0,a0,s1
	bne	a1,t3,lab11
	lw	s1,332(a3)
	lw	s2,240(a4)
	mul	s1,s1,s2
	sub	a0,a0,s1
lab11: 	div	s0,a0,s0
	lw	a0,84(a2)
	sw	s0,400(a2)
	lw	s0,0(a3)
	lw	s1,4(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	beqz	a1,lab12
lab19: 	lw	s1,84(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	beq	a1,a7,lab13
	lw	s0,8(a3)
	lw	s1,164(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	beq	a1,t1,lab13
	lw	s0,12(a3)
	lw	s1,244(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	bne	a1,t3,lab13
	lw	s0,16(a3)
	lw	s1,324(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
lab13: 	sw	a0,84(a2)
	beq	t4,a6,lab3
	lw	a0,0(a3)
	lw	s1,8(a4)
	lw	s0,4(a3)
	lw	s2,88(a4)
	mul	s1,s1,a0
	lw	a0,88(a2)
	mul	s0,s0,s2
	sub	a0,a0,s1
	sub	a0,a0,s0
	bgeu	a7,a1,lab14
	lw	s0,8(a3)
	lw	s1,168(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	beq	a1,t1,lab14
	lw	s0,12(a3)
	lw	s1,248(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	bne	a1,t3,lab14
	lw	s0,16(a3)
	lw	s1,328(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
lab14: 	sw	a0,88(a2)
	beq	t5,a6,lab3
	lw	a0,0(a3)
	lw	s1,12(a4)
	lw	s0,4(a3)
	lw	s2,92(a4)
	mul	s1,s1,a0
	lw	a0,92(a2)
	mul	s0,s0,s2
	sub	a0,a0,s1
	sub	a0,a0,s0
	bgeu	a7,a1,lab15
	lw	s0,8(a3)
	lw	s1,172(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	beq	a1,t1,lab15
	lw	s0,12(a3)
	lw	s1,252(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	bne	a1,t3,lab15
	lw	s0,16(a3)
	lw	s1,332(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
lab15: 	sw	a0,92(a2)
	beq	t6,a6,lab3
	lw	a0,0(a3)
	lw	s1,16(a4)
	lw	s0,4(a3)
	lw	s2,96(a4)
	mul	s1,s1,a0
	lw	a0,96(a2)
	mul	s0,s0,s2
	sub	a0,a0,s1
	sub	a0,a0,s0
	bgeu	a7,a1,lab16
	lw	s0,8(a3)
	lw	s1,176(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	beq	a1,t1,lab17
	lw	s0,12(a3)
	lw	s1,256(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	bne	a1,t3,lab17
	lw	s0,16(a3)
	lw	s1,336(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
lab17: 	sw	a0,96(a2)
	beq	t0,a6,lab3
	lw	a0,20(a4)
	lw	s2,0(a3)
	lw	s1,4(a3)
	lw	s4,100(a4)
	lw	s0,8(a3)
	lw	s3,180(a4)
	mul	s2,s2,a0
	lw	a0,100(a2)
	mul	s1,s1,s4
	sub	a0,a0,s2
	mul	s0,s0,s3
	sub	a0,a0,s1
	sub	a0,a0,s0
	beq	a1,t1,lab18
	lw	s0,12(a3)
	lw	s1,260(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	bne	a1,t3,lab18
	lw	s0,16(a3)
	lw	s1,340(a4)
	mul	s0,s0,s1
	sub	a0,a0,s0
	j	lab18
lab8: 	lw	s0,0(a3)
	lw	s1,4(a4)
	lw	a0,84(a2)
	mul	s0,s0,s1
	sub	a0,a0,s0
	bnez	a1,lab19
	j	lab12
lab16: 	sw	a0,96(a2)
	beq	t0,a6,lab3
	lw	a0,20(a4)
	lw	s1,0(a3)
	lw	s0,4(a3)
	lw	s2,100(a4)
	mul	s1,s1,a0
	lw	a0,100(a2)
	mul	s0,s0,s2
	sub	a0,a0,s1
	sub	a0,a0,s0
	j	lab18
lab6: 	lw	s0,0(a3)
	lw	s1,4(a4)
	lw	a0,84(a2)
	mul	s0,s0,s1
	sub	a0,a0,s0
	j	lab19
lab2: 	lw	s0,0(a3)
	lw	s1,4(a4)
	lw	a0,84(a2)
	mul	s0,s0,s1
	sub	a0,a0,s0
	j	lab12
lab1: 	lw	s0,0(a3)
	lw	s1,4(a4)
	lw	a0,84(a2)
	mul	s0,s0,s1
	sub	a0,a0,s0
	sw	a0,84(a2)
	j	lab3
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
lab20: 	sw	a4,168(s0) # 1000a8 <a+0xa8>
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
	bnez	s9,lab20
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
	cfes 0x6d678
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
	blez	a0,lab21
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
lab22: 	sw	a4,168(s0) # 1000a8 <a+0xa8>
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
	bne	s10,s5,lab22
lab21: 	lw	ra,60(sp)
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
	cfes 0x254d4
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
lab23: 	lw	a0,4(a5)
	lw	a1,8(a5)
	lw	a2,12(a5)
	sw	a6,0(a4)
	sw	a0,4(a4)
	sw	a1,8(a4)
	sw	a2,12(a4)
	addi	a5,a5,16
	addi	a4,a4,16
	bne	a5,a3,lab23
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
	cfes 0x6b1a1
	ret
initialise_benchmark:
	ret
warm_caches:
	j	benchmark_body.isra.0
benchmark:
	j	benchmark_body.constprop.0
ludcmp:
	addi	sp,sp,-432
	sw	s4,412(sp)
	lui	s4,0x100
	sw	s1,424(sp)
	sw	s2,420(sp)
	sw	s3,416(sp)
	mv	s1,s4
	sw	s0,428(sp)
	sw	s5,408(sp)
	sw	s6,404(sp)
	sw	s7,400(sp)
	lw	s3,1600(s1)
	mv	t6,a1
	addi	s2,a1,-1
	blez	a1,lab24
	slli	a6,a1,0x2
	addi	t2,a1,20
	add	a6,a6,a1
	addi	t0,s1,80
	slli	t2,t2,0x2
	slli	a6,a6,0x4
	lui	s0,0x100
	add	t3,s1,t2
	add	a6,a6,t0
	mv	s4,s4
	mv	t5,t0
	mv	t1,t0
	li	s5,0
	li	a7,0
	li	t4,0
	addi	s0,s0,-4 # ffffc <_min_stack+0xfbffc>
lab32: 	blt	t6,t4,lab25
	neg	s6,t4
	slli	s6,s6,0x2
	addi	s7,s6,4
	mv	a0,t5
	sub	s6,s0,s6
	j	lab26
lab28: 	addi	a0,a0,80
	div	a3,a3,a5
	sw	a3,-80(a0)
	beq	a0,a6,lab27
lab26: 	lw	a3,0(a0)
	beqz	a7,lab28
	add	a2,a0,s7
	mv	a5,s6
lab29: 	lw	a1,0(a5)
	addi	a5,a5,80
	addi	a2,a2,4
	mul	a4,a4,a1
	sub	a3,a3,a4
	bne	a5,s4,lab29
	lw	a5,0(s4)
	addi	a0,a0,80
	div	a3,a3,a5
	sw	a3,-80(a0)
	bne	a0,a6,lab26
lab27: 	addi	s6,s4,84
	mv	a0,s6
	mv	s4,t5
	addi	s5,s5,-80
lab31: 	add	a5,s5,a0
	mv	a3,t1
lab30: 	lw	a1,0(a5)
	addi	a5,a5,80
	addi	a3,a3,4
	mul	a4,a4,a1
	sub	a2,a2,a4
	bne	a5,a0,lab30
	sw	a2,4(s4)
	addi	s4,s4,4
	addi	a0,a5,4
	bne	s4,t3,lab31
	addi	t3,s4,80
	addi	a7,a7,1
	addi	t1,t1,80
	addi	t5,t5,84
	mv	s4,s6
	addi	a6,a6,4
	bne	t6,t4,lab32
	addi	a0,sp,4
	addi	a7,t2,-80
	sw	s3,0(sp)
	addi	a6,s1,1604
	mv	t5,sp
	add	a7,a7,a0
lab34: 	mv	a5,t5
	mv	a3,t0
lab33: 	lw	a1,0(a5)
	addi	a5,a5,4
	addi	a3,a3,4
	mul	a4,a4,a1
	sub	a2,a2,a4
	bne	a0,a5,lab33
	sw	a2,0(a0)
	addi	a0,a0,4
	addi	a6,a6,4
	addi	t0,t0,80
	bne	a0,a7,lab34
	li	a5,84
	mul	a5,t4,a5
	slli	t4,t4,0x2
	addi	a4,t4,400
	add	a4,a4,sp
	lw	a4,-400(a4)
	add	t4,s1,t4
	add	a5,s1,a5
	lw	a5,0(a5)
	div	a5,a4,a5
	sw	a5,1680(t4)
lab39: 	mul	a7,s2,a7
	slli	t3,t6,0x2
	mv	a5,t3
	addi	t1,s1,1680
	addi	t3,t3,-4
	addi	a0,s1,1684
	mv	a6,t6
	add	t3,t5,t3
	add	t1,t1,a5
	add	a0,a0,a5
	addi	a7,a7,4
	add	a7,s1,a7
lab37: 	blt	t6,a6,lab35
	mv	a5,t1
	mv	a3,a7
lab36: 	lw	a1,0(a5)
	addi	a5,a5,4
	addi	a3,a3,4
	mul	a4,a4,a1
	sub	a2,a2,a4
	bne	a0,a5,lab36
lab35: 	lw	a4,-4(a7)
	addi	t1,t1,-4
	addi	a5,a6,-2
	div	a2,a2,a4
	addi	t3,t3,-4
	addi	a6,a6,-1
	addi	a7,a7,-84
	sw	a2,0(t1)
	bgez	a5,lab37
lab38: 	lw	s1,424(sp)
	lw	s2,420(sp)
	lw	s3,416(sp)
	lw	s4,412(sp)
	lw	s5,408(sp)
	lw	s6,404(sp)
	lw	s7,400(sp)
	li	a0,0
	addi	sp,sp,432
	ret
lab25: 	addi	a7,a7,1
	addi	t3,t3,80
	addi	t1,t1,80
	addi	t5,t5,84
	addi	s4,s4,84
	addi	s5,s5,-80
	addi	a6,a6,4
	j	lab32
lab24: 	li	a4,84
	mul	a4,a1,a4
	slli	a5,a1,0x2
	addi	a3,a5,400
	sw	s3,0(sp)
	add	a3,a3,sp
	lw	a3,-400(a3)
	add	a5,s1,a5
	mv	t5,sp
	add	a4,s1,a4
	lw	a4,0(a4)
	div	a4,a3,a4
	sw	a4,1680(a5)
	bltz	s2,lab38
	j	lab39
main:
	addi	sp,sp,-32
	sw	ra,28(sp)
	jal	ra,initialise_board
	jal	ra,initialise_benchmark
	li	a0,0
	jal	ra,warm_caches
	cfed 0x4619a
	jal	ra,start_trigger
	jal	ra,benchmark
	cfed 0x623b7
	sw	a0,12(sp)
	jal	ra,stop_trigger
	lw	a0,12(sp)
	jal	ra,verify_benchmark
	cfed 0x804cd
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

config_mem_words_50:
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
