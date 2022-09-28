	.text
	.globl  main
	.type  main, @function

bodies_energy.constprop.0:
	addi	sp,sp,-112
	sw	s5,84(sp)
	lui	s5,0x100
	addi	a5,s5,280 # 100118 <solar_bodies>
	lw	a2,32(a5)
	lw	a3,36(a5)
	sw	s4,88(sp)
	sw	s8,72(sp)
	lw	s4,56(a5)
	lw	s8,60(a5)
	sw	s6,80(sp)
	sw	s7,76(sp)
	lw	s6,40(a5)
	lw	s7,44(a5)
	mv	a0,a2
	mv	a1,a3
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s1,100(sp)
	sw	s2,96(sp)
	sw	s3,92(sp)
	lw	s2,48(a5)
	lw	s3,52(a5)
	sw	s11,60(sp)
	sw	s4,28(sp)
	sw	s9,68(sp)
	sw	s10,64(sp)
	sw	s8,32(sp)
	jal	ra,__muldf3
	mv	s1,a0
	mv	s0,a1
	mv	a2,s6
	mv	a3,s7
	mv	a0,s6
	mv	a1,s7
	jal	ra,__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s1
	mv	a1,s0
	jal	ra,__adddf3
	mv	s0,a1
	mv	a3,s3
	mv	s1,a0
	mv	a2,s2
	mv	a1,s3
	mv	a0,s2
	jal	ra,__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s1
	mv	a1,s0
	jal	ra,__adddf3
	mv	a2,s4
	mv	a3,s8
	jal	ra,__muldf3
	lui	s0,0x100
	lw	a2,0(s0) # 100000 <_min_stack+0xfc000>
	lw	a3,4(s0)
	li	a5,1
	sw	a5,36(sp)
	jal	ra,__muldf3
	li	a2,0
	li	a3,0
	jal	ra,__adddf3
	lw	a5,0(s0)
	lw	a6,4(s0)
	addi	s6,s5,280
	sw	a5,40(sp)
	li	a5,64
	sw	a6,44(sp)
	mv	s4,a0
	mv	s3,a1
	addi	s5,s5,280
	li	s11,1
	sw	a5,16(sp)
lab0: 	slli	s0,s11,0x6
	add	s0,s6,s0
	lw	a5,16(sp)
	lw	a2,0(s0)
	lw	a3,4(s0)
	lw	a0,0(s5)
	lw	a1,4(s5)
	add	s1,s6,a5
	addi	s11,s11,1
	jal	ra,__subdf3
	lw	a2,8(s0)
	lw	a3,12(s0)
	mv	s9,a0
	mv	s2,a1
	lw	a0,8(s5)
	lw	a1,12(s5)
	jal	ra,__subdf3
	mv	a6,a0
	lw	a2,16(s0)
	lw	a3,20(s0)
	mv	s7,a1
	lw	a0,16(s5)
	lw	a1,20(s5)
	sw	a6,8(sp)
	jal	ra,__subdf3
	mv	t1,a1
	mv	s8,a0
	mv	a2,s9
	mv	a3,s2
	mv	a0,s9
	mv	a1,s2
	mv	s2,t1
	jal	ra,__muldf3
	lw	a6,8(sp)
	mv	s10,a1
	mv	s9,a0
	mv	a2,a6
	mv	a0,a6
	mv	a3,s7
	mv	a1,s7
	jal	ra,__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s9
	mv	a1,s10
	jal	ra,__adddf3
	mv	a4,a1
	mv	a3,s2
	mv	s10,a0
	mv	a2,s8
	mv	a1,s2
	mv	a0,s8
	mv	s2,a4
	jal	ra,__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s10
	mv	a1,s2
	jal	ra,__adddf3
	jal	ra,sqrt
	mv	a5,a1
	lw	a2,56(s0)
	lw	a3,60(s0)
	mv	s2,a0
	lw	a1,32(sp)
	lw	a0,28(sp)
	mv	s0,a5
	jal	ra,__muldf3
	mv	a2,s2
	mv	a3,s0
	jal	ra,__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s4
	mv	a1,s3
	jal	ra,__subdf3
	mv	s3,a1
	li	a1,5
	lw	s2,56(s1)
	lw	s0,60(s1)
	lw	a2,32(s1)
	lw	a3,36(s1)
	lw	a6,40(s1)
	lw	a7,44(s1)
	lw	a4,48(s1)
	lw	a5,52(s1)
	mv	s4,a0
	bne	s11,a1,lab0
	mv	a0,a2
	mv	a1,a3
	sw	a4,16(sp)
	sw	a5,20(sp)
	sw	a6,8(sp)
	sw	a7,12(sp)
	jal	ra,__muldf3
	lw	a6,8(sp)
	lw	a7,12(sp)
	mv	s8,a0
	mv	a2,a6
	mv	a3,a7
	mv	a0,a6
	mv	s5,a1
	mv	a1,a7
	jal	ra,__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s8
	mv	a1,s5
	jal	ra,__adddf3
	lw	a5,20(sp)
	lw	a4,16(sp)
	mv	s8,a0
	mv	a3,a5
	mv	a2,a4
	mv	a0,a4
	mv	s5,a1
	mv	a1,a5
	jal	ra,__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s8
	mv	a1,s5
	jal	ra,__adddf3
	mv	a2,s2
	mv	a3,s0
	jal	ra,__muldf3
	lw	a2,40(sp)
	lw	a3,44(sp)
	jal	ra,__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s4
	mv	a1,s3
	jal	ra,__adddf3
	lw	a5,36(sp)
	mv	s4,a0
	mv	s3,a1
	addi	s11,a5,1
	li	a5,5
	beq	s11,a5,lab1
	slli	a5,s11,0x6
	sw	s11,36(sp)
	sw	s2,28(sp)
	sw	s0,32(sp)
	mv	s5,s1
	sw	a5,16(sp)
	j	lab0
lab1: 	lw	ra,108(sp)
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
	addi	sp,sp,-112
	sw	s10,64(sp)
	lui	s10,0x100
	addi	s10,s10,280 # 100118 <solar_bodies>
	sw	s0,104(sp)
	sw	s1,100(sp)
	lw	s0,56(s10)
	lw	s1,60(s10)
	sw	s2,96(sp)
	sw	s3,92(sp)
	lw	s2,40(s10)
	lw	s3,44(s10)
	mv	a0,s0
	mv	a2,s2
	mv	a3,s3
	mv	a1,s1
	sw	ra,108(sp)
	sw	s4,88(sp)
	sw	s5,84(sp)
	sw	s6,80(sp)
	sw	s7,76(sp)
	sw	s8,72(sp)
	sw	s9,68(sp)
	sw	s11,60(sp)
	lui	s11,0x100
	jal	ra,__muldf3
	lw	a2,8(s11) # 100008 <_min_stack+0xfc008>
	lw	a3,12(s11)
	lw	s6,120(s10)
	lw	s7,124(s10)
	jal	ra,__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s2
	mv	a1,s3
	jal	ra,__subdf3
	lw	a2,104(s10)
	lw	a3,108(s10)
	mv	s9,a0
	mv	s8,a1
	mv	a0,s6
	mv	a1,s7
	jal	ra,__muldf3
	lw	a6,48(s10)
	lw	a7,52(s10)
	lw	a2,8(s11)
	lw	a3,12(s11)
	sw	a6,32(sp)
	sw	a7,36(sp)
	jal	ra,__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s9
	mv	a1,s8
	jal	ra,__subdf3
	lw	s4,184(s10)
	lw	s5,188(s10)
	lw	a2,168(s10)
	lw	a3,172(s10)
	mv	s9,a0
	mv	s8,a1
	mv	a0,s4
	mv	a1,s5
	sw	s4,8(sp)
	sw	s5,12(sp)
	jal	ra,__muldf3
	lw	a4,32(s10)
	lw	a5,36(s10)
	lw	a2,8(s11)
	lw	a3,12(s11)
	sw	a4,24(sp)
	lw	s2,248(s10)
	lw	s3,252(s10)
	sw	a5,28(sp)
	jal	ra,__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s9
	mv	a1,s8
	jal	ra,__subdf3
	lw	a2,232(s10)
	lw	a3,236(s10)
	mv	t4,a0
	mv	t3,a1
	mv	a0,s2
	mv	a1,s3
	sw	t4,40(sp)
	sw	t3,16(sp)
	jal	ra,__muldf3
	lw	a2,8(s11)
	lw	a3,12(s11)
	li	s4,100
	li	s9,0
	jal	ra,__divdf3
	lw	t3,16(sp)
	lw	t4,40(sp)
	mv	a2,a0
	mv	a3,a1
	mv	a0,t4
	mv	a1,t3
	jal	ra,__subdf3
	lw	a6,32(sp)
	lw	a7,36(sp)
	mv	t4,a0
	mv	t3,a1
	mv	a2,a6
	mv	a3,a7
	mv	a0,s0
	mv	a1,s1
	sw	t4,44(sp)
	sw	t3,32(sp)
	sw	a6,16(sp)
	sw	a7,20(sp)
	jal	ra,__muldf3
	lw	a2,8(s11)
	lw	a3,12(s11)
	li	s8,0
	jal	ra,__divdf3
	lw	a6,16(sp)
	lw	a7,20(sp)
	mv	a2,a0
	mv	a3,a1
	mv	a0,a6
	mv	a1,a7
	jal	ra,__subdf3
	lw	a2,112(s10)
	lw	a3,116(s10)
	mv	a7,a0
	mv	a6,a1
	mv	a0,s6
	mv	a1,s7
	sw	a7,40(sp)
	sw	a6,16(sp)
	jal	ra,__muldf3
	lw	a2,8(s11)
	lw	a3,12(s11)
	jal	ra,__divdf3
	lw	a7,40(sp)
	lw	a6,16(sp)
	mv	a2,a0
	mv	a3,a1
	mv	a0,a7
	mv	a1,a6
	jal	ra,__subdf3
	mv	a7,a0
	mv	a6,a1
	lw	a2,176(s10)
	lw	a3,180(s10)
	lw	a0,8(sp)
	lw	a1,12(sp)
	sw	a7,40(sp)
	sw	a6,16(sp)
	jal	ra,__muldf3
	lw	a2,8(s11)
	lw	a3,12(s11)
	jal	ra,__divdf3
	lw	a7,40(sp)
	lw	a6,16(sp)
	mv	a2,a0
	mv	a3,a1
	mv	a0,a7
	mv	a1,a6
	jal	ra,__subdf3
	lw	a2,240(s10)
	lw	a3,244(s10)
	mv	a7,a0
	mv	a6,a1
	mv	a0,s2
	mv	a1,s3
	sw	a7,40(sp)
	sw	a6,16(sp)
	jal	ra,__muldf3
	lw	a2,8(s11)
	lw	a3,12(s11)
	jal	ra,__divdf3
	lw	a7,40(sp)
	lw	a6,16(sp)
	mv	a2,a0
	mv	a3,a1
	mv	a0,a7
	mv	a1,a6
	jal	ra,__subdf3
	lw	a4,24(sp)
	lw	a5,28(sp)
	mv	a7,a0
	mv	a6,a1
	mv	a2,s0
	mv	a3,s1
	mv	a0,a4
	mv	a1,a5
	sw	a7,40(sp)
	sw	a6,16(sp)
	jal	ra,__muldf3
	lw	a2,8(s11)
	lw	a3,12(s11)
	lw	s0,312(s10)
	lw	s1,316(s10)
	jal	ra,__divdf3
	lw	a4,24(sp)
	lw	a5,28(sp)
	mv	a2,a0
	mv	a3,a1
	mv	a0,a4
	mv	a1,a5
	jal	ra,__subdf3
	lw	a2,96(s10)
	lw	a3,100(s10)
	mv	a4,a0
	mv	a5,a1
	mv	a0,s6
	mv	a1,s7
	mv	s6,a5
	mv	s7,a4
	jal	ra,__muldf3
	lw	a2,8(s11)
	lw	a3,12(s11)
	jal	ra,__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s7
	mv	a1,s6
	jal	ra,__subdf3
	mv	a4,a0
	mv	a5,a1
	lw	a2,160(s10)
	lw	a3,164(s10)
	lw	a0,8(sp)
	lw	a1,12(sp)
	mv	s5,a4
	mv	s6,a5
	jal	ra,__muldf3
	lw	a2,8(s11)
	lw	a3,12(s11)
	jal	ra,__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s5
	mv	a1,s6
	jal	ra,__subdf3
	lw	a2,224(s10)
	lw	a3,228(s10)
	mv	a4,a0
	mv	a5,a1
	mv	a0,s2
	mv	a1,s3
	mv	s2,a5
	mv	s3,a4
	jal	ra,__muldf3
	lw	a2,8(s11)
	lw	a3,12(s11)
	jal	ra,__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s3
	mv	a1,s2
	jal	ra,__subdf3
	lw	a2,288(s10)
	lw	a3,292(s10)
	mv	s3,a0
	mv	s2,a1
	mv	a0,s0
	mv	a1,s1
	jal	ra,__muldf3
	lw	a2,8(s11)
	lw	a3,12(s11)
	jal	ra,__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s3
	mv	a1,s2
	jal	ra,__subdf3
	lw	a2,296(s10)
	lw	a3,300(s10)
	mv	a4,a0
	mv	a5,a1
	mv	a0,s0
	mv	a1,s1
	sw	a4,32(s10)
	sw	a5,36(s10)
	jal	ra,__muldf3
	lw	a2,8(s11)
	lw	a3,12(s11)
	jal	ra,__divdf3
	lw	t4,44(sp)
	lw	t3,32(sp)
	mv	a2,a0
	mv	a3,a1
	mv	a0,t4
	mv	a1,t3
	jal	ra,__subdf3
	lw	a2,304(s10)
	lw	a3,308(s10)
	mv	a4,a0
	mv	a5,a1
	mv	a0,s0
	mv	a1,s1
	sw	a4,40(s10)
	sw	a5,44(s10)
	jal	ra,__muldf3
	lw	a2,8(s11)
	lw	a3,12(s11)
	jal	ra,__divdf3
	lw	a7,40(sp)
	lw	a6,16(sp)
	mv	a2,a0
	mv	a3,a1
	mv	a0,a7
	mv	a1,a6
	jal	ra,__subdf3
	sw	a0,48(s10)
	sw	a1,52(s10)
lab2: 	jal	ra,bodies_energy.constprop.0
	mv	a2,a0
	mv	a3,a1
	mv	a0,s9
	mv	a1,s8
	jal	ra,__adddf3
	addi	s4,s4,-1
	mv	s9,a0
	mv	s8,a1
	bnez	s4,lab2
	lui	a5,0x100
	lw	a2,16(a5) # 100010 <_min_stack+0xfc010>
	lw	a3,20(a5)
	jal	ra,__adddf3
	lui	a3,0x100
	lw	a2,24(a3) # 100018 <_min_stack+0xfc018>
	slli	a5,a1,0x1
	lw	a3,28(a3)
	mv	a4,a0
	srli	a5,a5,0x1
	mv	a0,a4
	mv	a1,a5
	jal	ra,__ltdf2
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
	slti	a0,a0,0
	addi	sp,sp,112
	ret
benchmark_body.isra.0:
	addi	sp,sp,-176
	sw	ra,172(sp)
	sw	s0,168(sp)
	sw	s1,164(sp)
	sw	s2,160(sp)
	sw	s3,156(sp)
	sw	s4,152(sp)
	sw	s5,148(sp)
	sw	s6,144(sp)
	sw	s7,140(sp)
	sw	s8,136(sp)
	sw	s9,132(sp)
	sw	s10,128(sp)
	sw	s11,124(sp)
	sw	a0,16(sp)
	blez	a0,lab3
	lui	s10,0x100
	addi	s10,s10,280 # 100118 <solar_bodies>
	lw	s0,120(s10)
	lw	s1,124(s10)
	lw	a2,96(s10)
	lw	a3,100(s10)
	mv	a0,s0
	mv	a1,s1
	lui	s4,0x100
	jal	ra,__muldf3
	lw	a2,8(s4) # 100008 <_min_stack+0xfc008>
	lw	a3,12(s4)
	lw	s9,32(s10)
	lw	s8,36(s10)
	jal	ra,__divdf3
	lw	a2,104(s10)
	lw	a3,108(s10)
	mv	a4,a0
	mv	a5,a1
	mv	a0,s0
	mv	a1,s1
	sw	a4,32(sp)
	sw	a5,36(sp)
	jal	ra,__muldf3
	lw	a2,8(s4)
	lw	a3,12(s4)
	lw	s6,56(s10)
	lw	s7,60(s10)
	jal	ra,__divdf3
	lw	a2,112(s10)
	lw	a3,116(s10)
	mv	a4,a0
	mv	a5,a1
	mv	a0,s0
	mv	a1,s1
	sw	a4,40(sp)
	sw	a5,44(sp)
	jal	ra,__muldf3
	lw	a2,8(s4)
	lw	a3,12(s4)
	lw	s3,40(s10)
	lw	s2,44(s10)
	jal	ra,__divdf3
	lw	a5,188(s10)
	lw	a4,184(s10)
	lw	a2,160(s10)
	lw	a3,164(s10)
	mv	a6,a1
	sw	a0,48(sp)
	mv	a1,a5
	mv	a0,a4
	lw	s1,48(s10)
	sw	a4,8(sp)
	sw	a5,12(sp)
	sw	a6,52(sp)
	jal	ra,__muldf3
	lw	a2,8(s4)
	lw	a3,12(s4)
	sw	zero,4(sp)
	lw	s0,52(s10)
	jal	ra,__divdf3
	lw	a4,8(sp)
	lw	a5,12(sp)
	lw	a2,168(s10)
	lw	a3,172(s10)
	mv	a7,a0
	mv	a6,a1
	mv	a0,a4
	mv	a1,a5
	sw	a7,56(sp)
	sw	a6,60(sp)
	jal	ra,__muldf3
	lw	a2,8(s4)
	lw	a3,12(s4)
	jal	ra,__divdf3
	lw	a4,8(sp)
	lw	a5,12(sp)
	lw	a2,176(s10)
	lw	a3,180(s10)
	mv	a7,a0
	mv	a6,a1
	mv	a0,a4
	mv	a1,a5
	sw	a7,64(sp)
	sw	a6,68(sp)
	jal	ra,__muldf3
	lw	a2,8(s4)
	lw	a3,12(s4)
	jal	ra,__divdf3
	lw	a4,248(s10)
	lw	a5,252(s10)
	lw	a2,224(s10)
	lw	a3,228(s10)
	mv	a6,a1
	sw	a0,72(sp)
	mv	a1,a5
	mv	a0,a4
	sw	a4,8(sp)
	sw	a5,12(sp)
	sw	a6,76(sp)
	jal	ra,__muldf3
	lw	a2,8(s4)
	lw	a3,12(s4)
	jal	ra,__divdf3
	lw	a4,8(sp)
	lw	a2,232(s10)
	lw	a3,236(s10)
	lw	a5,12(sp)
	mv	a7,a0
	mv	a6,a1
	mv	a0,a4
	mv	a1,a5
	sw	a7,80(sp)
	sw	a6,84(sp)
	jal	ra,__muldf3
	lw	a2,8(s4)
	lw	a3,12(s4)
	jal	ra,__divdf3
	lw	a4,8(sp)
	lw	a5,12(sp)
	lw	a2,240(s10)
	lw	a3,244(s10)
	mv	a7,a0
	mv	a6,a1
	mv	a0,a4
	mv	a1,a5
	sw	a7,88(sp)
	sw	a6,92(sp)
	jal	ra,__muldf3
	lw	a2,8(s4)
	lw	a3,12(s4)
	jal	ra,__divdf3
	lw	a4,312(s10)
	lw	a5,316(s10)
	lw	a2,288(s10)
	lw	a3,292(s10)
	mv	a6,a1
	sw	a0,96(sp)
	mv	a1,a5
	mv	a0,a4
	sw	a4,8(sp)
	sw	a5,12(sp)
	sw	a6,100(sp)
	jal	ra,__muldf3
	lw	a2,8(s4)
	lw	a3,12(s4)
	jal	ra,__divdf3
	lw	a4,8(sp)
	lw	a5,12(sp)
	lw	a2,296(s10)
	lw	a3,300(s10)
	mv	a7,a0
	mv	a6,a1
	mv	a0,a4
	mv	a1,a5
	sw	a7,104(sp)
	sw	a6,108(sp)
	jal	ra,__muldf3
	lw	a2,8(s4)
	lw	a3,12(s4)
	jal	ra,__divdf3
	lw	a4,8(sp)
	lw	a2,304(s10)
	lw	a3,308(s10)
	lw	a5,12(sp)
	mv	a7,a0
	mv	a6,a1
	mv	a0,a4
	mv	a1,a5
	sw	a7,24(sp)
	sw	a6,28(sp)
	jal	ra,__muldf3
	lw	a2,8(s4)
	lw	a3,12(s4)
	jal	ra,__divdf3
	lw	s5,12(s4)
	lw	s4,8(s4)
	sw	a0,8(sp)
	sw	a1,20(sp)
lab5: 	mv	a0,s9
	mv	a1,s8
	mv	a2,s6
	mv	a3,s7
	jal	ra,__muldf3
	mv	a2,s4
	mv	a3,s5
	jal	ra,__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s9
	mv	a1,s8
	jal	ra,__subdf3
	lw	a2,32(sp)
	lw	a3,36(sp)
	li	s11,100
	jal	ra,__subdf3
	lw	a2,56(sp)
	lw	a3,60(sp)
	jal	ra,__subdf3
	lw	a2,80(sp)
	lw	a3,84(sp)
	jal	ra,__subdf3
	lw	a2,104(sp)
	lw	a3,108(sp)
	jal	ra,__subdf3
	mv	a2,s3
	mv	a3,s2
	mv	s9,a0
	mv	s8,a1
	mv	a0,s6
	mv	a1,s7
	sw	s9,32(s10)
	sw	s8,36(s10)
	jal	ra,__muldf3
	mv	a2,s4
	mv	a3,s5
	jal	ra,__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s3
	mv	a1,s2
	jal	ra,__subdf3
	lw	a2,40(sp)
	lw	a3,44(sp)
	jal	ra,__subdf3
	lw	a2,64(sp)
	lw	a3,68(sp)
	jal	ra,__subdf3
	lw	a2,88(sp)
	lw	a3,92(sp)
	jal	ra,__subdf3
	lw	a2,24(sp)
	lw	a3,28(sp)
	jal	ra,__subdf3
	mv	a2,s1
	mv	a3,s0
	mv	s3,a0
	mv	s2,a1
	mv	a0,s6
	mv	a1,s7
	sw	s3,40(s10)
	sw	s2,44(s10)
	jal	ra,__muldf3
	mv	a2,s4
	mv	a3,s5
	jal	ra,__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s1
	mv	a1,s0
	jal	ra,__subdf3
	lw	a2,48(sp)
	lw	a3,52(sp)
	jal	ra,__subdf3
	lw	a2,72(sp)
	lw	a3,76(sp)
	jal	ra,__subdf3
	lw	a2,96(sp)
	lw	a3,100(sp)
	jal	ra,__subdf3
	lw	a2,8(sp)
	lw	a3,20(sp)
	jal	ra,__subdf3
	mv	s1,a0
	mv	s0,a1
	sw	a0,48(s10)
	sw	a1,52(s10)
lab4: 	addi	s11,s11,-1
	jal	ra,bodies_energy.constprop.0
	bnez	s11,lab4
	lw	a5,4(sp)
	lw	a4,16(sp)
	addi	a5,a5,1
	sw	a5,4(sp)
	bne	a5,a4,lab5
lab3: 	lw	ra,172(sp)
	lw	s0,168(sp)
	lw	s1,164(sp)
	lw	s2,160(sp)
	lw	s3,156(sp)
	lw	s4,152(sp)
	lw	s5,148(sp)
	lw	s6,144(sp)
	lw	s7,140(sp)
	lw	s8,136(sp)
	lw	s9,132(sp)
	lw	s10,128(sp)
	lw	s11,124(sp)
	addi	sp,sp,176
	ret
offset_momentum:
	beqz	a1,lab6
	addi	sp,sp,-80
	lui	a5,0x100
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	s5,52(sp)
	sw	s8,40(sp)
	slli	a1,a1,0x6
	lw	s8,32(a0)
	lw	s5,36(a0)
	lw	s4,40(a0)
	lw	s3,44(a0)
	lw	s2,48(a0)
	lw	s1,52(a0)
	sw	s6,48(sp)
	sw	s7,44(sp)
	lw	s6,8(a5) # 100008 <_min_stack+0xfc008>
	lw	s7,12(a5)
	add	a5,a1,a0
	sw	s0,72(sp)
	sw	s9,36(sp)
	sw	ra,76(sp)
	sw	s10,32(sp)
	sw	s11,28(sp)
	mv	s9,a0
	mv	s0,a0
	sw	a5,12(sp)
lab7: 	lw	s10,56(s0)
	lw	s11,60(s0)
	lw	a2,32(s0)
	lw	a3,36(s0)
	mv	a0,s10
	mv	a1,s11
	jal	ra,__muldf3
	mv	a2,s6
	mv	a3,s7
	jal	ra,__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s8
	mv	a1,s5
	jal	ra,__subdf3
	addi	s0,s0,64
	sw	a0,32(s9)
	sw	a1,36(s9)
	lw	a2,-24(s0)
	lw	a3,-20(s0)
	mv	s8,a0
	mv	s5,a1
	mv	a0,s10
	mv	a1,s11
	jal	ra,__muldf3
	mv	a2,s6
	mv	a3,s7
	jal	ra,__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s4
	mv	a1,s3
	jal	ra,__subdf3
	sw	a0,40(s9)
	sw	a1,44(s9)
	lw	a2,-16(s0)
	lw	a3,-12(s0)
	mv	s4,a0
	mv	s3,a1
	mv	a0,s10
	mv	a1,s11
	jal	ra,__muldf3
	mv	a2,s6
	mv	a3,s7
	jal	ra,__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s2
	mv	a1,s1
	jal	ra,__subdf3
	lw	a5,12(sp)
	sw	a0,48(s9)
	sw	a1,52(s9)
	mv	s2,a0
	mv	s1,a1
	bne	a5,s0,lab7
	lw	ra,76(sp)
	lw	s0,72(sp)
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
	ret
lab6: 	ret
bodies_energy:
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
	sw	a1,36(sp)
	beqz	a1,lab8
	lui	a5,0x100
	lw	a6,4(a5) # 100004 <_min_stack+0xfc004>
	lw	a5,0(a5)
	addi	a4,a0,64
	sw	a6,44(sp)
	sw	a5,40(sp)
	slli	a5,a1,0x6
	add	a5,a0,a5
	sw	a4,28(sp)
	sw	a5,24(sp)
	sw	zero,32(sp)
	li	s7,0
	li	s6,0
	mv	s8,a4
lab11: 	lw	a5,-32(s8)
	lw	a6,-28(s8)
	lw	s4,-24(s8)
	lw	s5,-20(s8)
	mv	a2,a5
	mv	a3,a6
	mv	a0,a5
	mv	a1,a6
	sw	a5,8(sp)
	sw	a6,12(sp)
	jal	ra,__muldf3
	mv	s3,a0
	mv	s2,a1
	mv	a2,s4
	mv	a3,s5
	mv	a0,s4
	mv	a1,s5
	jal	ra,__muldf3
	lw	s0,-16(s8)
	lw	s1,-12(s8)
	mv	a2,a0
	mv	a3,a1
	mv	a0,s3
	mv	a1,s2
	jal	ra,__adddf3
	mv	a2,s0
	mv	a3,s1
	mv	s3,a0
	mv	s2,a1
	mv	a0,s0
	mv	a1,s1
	jal	ra,__muldf3
	lw	s0,-8(s8)
	lw	s1,-4(s8)
	mv	a2,a0
	mv	a3,a1
	mv	a0,s3
	mv	a1,s2
	jal	ra,__adddf3
	mv	a2,s0
	mv	a3,s1
	jal	ra,__muldf3
	lw	a2,40(sp)
	lw	a3,44(sp)
	jal	ra,__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s7
	mv	a1,s6
	jal	ra,__adddf3
	lw	a5,32(sp)
	lw	a4,36(sp)
	mv	s7,a0
	addi	a5,a5,1
	sw	a5,32(sp)
	mv	s6,a1
	beq	a4,a5,lab9
	lw	a5,-64(s8)
	lw	a6,-60(s8)
	lw	s4,-56(s8)
	lw	s5,-52(s8)
	lw	s2,-48(s8)
	lw	s3,-44(s8)
	sw	a5,16(sp)
	sw	a6,20(sp)
lab10: 	lw	a2,0(s8)
	lw	a3,4(s8)
	lw	a0,16(sp)
	lw	a1,20(sp)
	addi	s8,s8,64
	jal	ra,__subdf3
	lw	a2,-56(s8)
	lw	a3,-52(s8)
	mv	s10,a0
	mv	s9,a1
	mv	a0,s4
	mv	a1,s5
	jal	ra,__subdf3
	lw	a2,-48(s8)
	lw	a3,-44(s8)
	mv	a5,a0
	mv	s11,a1
	mv	a0,s2
	mv	a1,s3
	sw	a5,8(sp)
	jal	ra,__subdf3
	mv	t1,a0
	mv	a7,a1
	mv	a2,s10
	mv	a3,s9
	mv	a0,s10
	mv	a1,s9
	mv	s10,t1
	mv	s9,a7
	jal	ra,__muldf3
	lw	a5,8(sp)
	mv	t1,a0
	mv	a7,a1
	mv	a2,a5
	mv	a0,a5
	mv	a3,s11
	mv	a1,s11
	sw	a7,8(sp)
	mv	s11,t1
	jal	ra,__muldf3
	lw	a7,8(sp)
	mv	a2,a0
	mv	a3,a1
	mv	a0,s11
	mv	a1,a7
	jal	ra,__adddf3
	mv	a5,a1
	mv	a7,a0
	mv	a2,s10
	mv	a3,s9
	mv	a0,s10
	mv	a1,s9
	mv	s10,a7
	mv	s9,a5
	jal	ra,__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s10
	mv	a1,s9
	jal	ra,__adddf3
	jal	ra,sqrt
	lw	a2,-8(s8)
	lw	a3,-4(s8)
	mv	s10,a0
	mv	s9,a1
	mv	a0,s0
	mv	a1,s1
	jal	ra,__muldf3
	mv	a2,s10
	mv	a3,s9
	jal	ra,__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s7
	mv	a1,s6
	jal	ra,__subdf3
	lw	a5,24(sp)
	mv	s7,a0
	mv	s6,a1
	bne	a5,s8,lab10
	lw	a5,28(sp)
	addi	a5,a5,64
	sw	a5,28(sp)
	mv	s8,a5
	j	lab11
lab8: 	li	s7,0
	li	s6,0
lab9: 	lw	ra,108(sp)
	lw	s0,104(sp)
	lw	s1,100(sp)
	lw	s2,96(sp)
	lw	s3,92(sp)
	lw	s4,88(sp)
	lw	s5,84(sp)
	lw	s8,72(sp)
	lw	s9,68(sp)
	lw	s10,64(sp)
	lw	s11,60(sp)
	mv	a0,s7
	mv	a1,s6
	lw	s7,76(sp)
	lw	s6,80(sp)
	addi	sp,sp,112
	ret
initialise_benchmark:
	ret
warm_caches:
	j	benchmark_body.isra.0
benchmark:
	j	benchmark_body.constprop.0
verify_benchmark:
	beqz	a0,lab12
	addi	sp,sp,-32
	sw	s0,24(sp)
	lui	s0,0x100
	addi	s0,s0,280 # 100118 <solar_bodies>
	sw	s4,8(sp)
	lw	a5,4(s0)
	lui	s4,0x100
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	lw	s2,24(s4) # 100018 <_min_stack+0xfc018>
	lw	s3,28(s4)
	lui	s1,0x80000
	not	s1,s1
	lw	a0,0(s0)
	and	a5,a5,s1
	mv	a1,a5
	mv	a2,s2
	mv	a3,s3
	sw	ra,28(sp)
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,32(a5) # 100020 <_min_stack+0xfc020>
	lw	a3,36(a5)
	lw	a0,32(s0)
	lw	a1,36(s0)
	jal	ra,__adddf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lw	a5,12(s0)
	lw	a0,8(s0)
	mv	a2,s2
	and	a5,a5,s1
	mv	a1,a5
	mv	a3,s3
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,40(a5) # 100028 <_min_stack+0xfc028>
	lw	a3,44(a5)
	lw	a0,40(s0)
	lw	a1,44(s0)
	jal	ra,__adddf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lw	a5,20(s0)
	lw	a0,16(s0)
	mv	a2,s2
	and	a5,a5,s1
	mv	a1,a5
	mv	a3,s3
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,48(a5) # 100030 <_min_stack+0xfc030>
	lw	a3,52(a5)
	lw	a0,48(s0)
	lw	a1,52(s0)
	jal	ra,__subdf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,8(a5) # 100008 <_min_stack+0xfc008>
	lw	a3,12(a5)
	lw	a0,56(s0)
	lw	a1,60(s0)
	jal	ra,__subdf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,56(a5) # 100038 <_min_stack+0xfc038>
	lw	a3,60(a5)
	lw	a0,64(s0)
	lw	a1,68(s0)
	jal	ra,__subdf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,64(a5) # 100040 <_min_stack+0xfc040>
	lw	a3,68(a5)
	lw	a0,96(s0)
	lw	a1,100(s0)
	jal	ra,__subdf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,72(a5) # 100048 <_min_stack+0xfc048>
	lw	a3,76(a5)
	lw	a0,72(s0)
	lw	a1,76(s0)
	lui	s1,0x80000
	not	s1,s1
	jal	ra,__adddf3
	and	a5,a1,s1
	mv	a1,a5
	mv	a2,s2
	mv	a3,s3
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,80(a5) # 100050 <_min_stack+0xfc050>
	lw	a3,84(a5)
	lw	a0,104(s0)
	lw	a1,108(s0)
	jal	ra,__subdf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,88(a5) # 100058 <_min_stack+0xfc058>
	lw	a3,92(a5)
	lw	a0,80(s0)
	lw	a1,84(s0)
	jal	ra,__adddf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,96(a5) # 100060 <_min_stack+0xfc060>
	lw	a3,100(a5)
	lw	a0,112(s0)
	lw	a1,116(s0)
	jal	ra,__adddf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,104(a5) # 100068 <_min_stack+0xfc068>
	lw	a3,108(a5)
	lw	a0,120(s0)
	lw	a1,124(s0)
	jal	ra,__subdf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,112(a5) # 100070 <_min_stack+0xfc070>
	lw	a3,116(a5)
	lw	a0,128(s0)
	lw	a1,132(s0)
	jal	ra,__subdf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,120(a5) # 100078 <_min_stack+0xfc078>
	lw	a3,124(a5)
	lw	a0,160(s0)
	lw	a1,164(s0)
	jal	ra,__adddf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,128(a5) # 100080 <_min_stack+0xfc080>
	lw	a3,132(a5)
	lw	a0,136(s0)
	lw	a1,140(s0)
	jal	ra,__subdf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,136(a5) # 100088 <_min_stack+0xfc088>
	lw	a3,140(a5)
	lw	a0,168(s0)
	lw	a1,172(s0)
	jal	ra,__subdf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,144(a5) # 100090 <_min_stack+0xfc090>
	lw	a3,148(a5)
	lw	a0,144(s0)
	lw	a1,148(s0)
	jal	ra,__adddf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,152(a5) # 100098 <_min_stack+0xfc098>
	lw	a3,156(a5)
	lw	a0,176(s0)
	lw	a1,180(s0)
	lui	s1,0x80000
	not	s1,s1
	jal	ra,__subdf3
	and	a5,a1,s1
	mv	a1,a5
	mv	a2,s2
	mv	a3,s3
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,160(a5) # 1000a0 <_min_stack+0xfc0a0>
	lw	a3,164(a5)
	lw	a0,184(s0)
	lw	a1,188(s0)
	jal	ra,__subdf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,168(a5) # 1000a8 <_min_stack+0xfc0a8>
	lw	a3,172(a5)
	lw	a0,192(s0)
	lw	a1,196(s0)
	jal	ra,__subdf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,176(a5) # 1000b0 <_min_stack+0xfc0b0>
	lw	a3,180(a5)
	lw	a0,224(s0)
	lw	a1,228(s0)
	jal	ra,__subdf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,184(a5) # 1000b8 <_min_stack+0xfc0b8>
	lw	a3,188(a5)
	lw	a0,200(s0)
	lw	a1,204(s0)
	jal	ra,__adddf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,192(a5) # 1000c0 <_min_stack+0xfc0c0>
	lw	a3,196(a5)
	lw	a0,232(s0)
	lw	a1,236(s0)
	jal	ra,__subdf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,200(a5) # 1000c8 <_min_stack+0xfc0c8>
	lw	a3,204(a5)
	lw	a0,208(s0)
	lw	a1,212(s0)
	jal	ra,__adddf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,208(a5) # 1000d0 <_min_stack+0xfc0d0>
	lw	a3,212(a5)
	lw	a0,240(s0)
	lw	a1,244(s0)
	jal	ra,__adddf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,216(a5) # 1000d8 <_min_stack+0xfc0d8>
	lw	a3,220(a5)
	lw	a0,248(s0)
	lw	a1,252(s0)
	jal	ra,__subdf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,224(a5) # 1000e0 <_min_stack+0xfc0e0>
	lw	a3,228(a5)
	lw	a0,256(s0)
	lw	a1,260(s0)
	jal	ra,__subdf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,240(a5) # 1000f0 <_min_stack+0xfc0f0>
	lw	a3,244(a5)
	lw	a0,288(s0)
	lw	a1,292(s0)
	lui	s1,0x80000
	not	s1,s1
	jal	ra,__subdf3
	and	a5,a1,s1
	mv	a1,a5
	mv	a2,s2
	mv	a3,s3
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,248(a5) # 1000f8 <_min_stack+0xfc0f8>
	lw	a3,252(a5)
	lw	a0,264(s0)
	lw	a1,268(s0)
	jal	ra,__adddf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,256(a5) # 100100 <_min_stack+0xfc100>
	lw	a3,260(a5)
	lw	a0,296(s0)
	lw	a1,300(s0)
	jal	ra,__subdf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,264(a5) # 100108 <_min_stack+0xfc108>
	lw	a3,268(a5)
	lw	a0,272(s0)
	lw	a1,276(s0)
	jal	ra,__subdf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,272(a5) # 100110 <_min_stack+0xfc110>
	lw	a3,276(a5)
	lw	a0,304(s0)
	lw	a1,308(s0)
	jal	ra,__adddf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	bgez	a0,lab13
	lui	a5,0x100
	lw	a2,232(a5) # 1000e8 <_min_stack+0xfc0e8>
	lw	a3,236(a5)
	lw	a0,312(s0)
	lw	a1,316(s0)
	jal	ra,__subdf3
	and	a5,a1,s1
	mv	a2,s2
	mv	a3,s3
	mv	a1,a5
	jal	ra,__ltdf2
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	lw	s2,16(sp)
	lw	s3,12(sp)
	lw	s4,8(sp)
	slti	a0,a0,0
	addi	sp,sp,32
	ret
lab13: 	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	lw	s2,16(sp)
	lw	s3,12(sp)
	lw	s4,8(sp)
	li	a0,0
	addi	sp,sp,32
	ret
lab12: 	li	a0,0
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


	.data

solar_bodies:
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x45de
	.2byte	0xc9be
	.2byte	0xbd3c
	.4byte	0xd92c4043
	.2byte	0x343c
	.2byte	0x5da0
	.4byte	0xdb7c4013
	.byte	0x1f, 0xc0, 0xab, 0x90, 0xf2, 0xbf
	.2byte	0xebf0
	.2byte	0x6c25
	.2byte	0x86f9
	.2byte	0xbfba
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0xccbc
	.4byte	0x67069b93
	.4byte	0x949b3fe3
	.2byte	0xf57d
	.2byte	0x7ef2
	.2byte	0x4006
	.2byte	0x715
	.2byte	0x9a5a
	.4byte	0xbf99d2d7
	.2byte	0x33d8
	.4byte	0x4c95d9ab
	.4byte	0xca673fa3
	.2byte	0xc332
	.2byte	0xafcd
	.2byte	0x4020
	.2byte	0x1b0
	.2byte	0x31de
	.4byte	0x40107fcb
	.2byte	0x467c
	.4byte	0xd353e1eb
	.2byte	0xbfd9
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x9442
	.4byte	0x2c21b887
	.2byte	0xbff0
	.4byte	0xbf1f8f13
	.2byte	0x35e9
	.2byte	0x3ffd
	.2byte	0x23b4
	.2byte	0x5f11
	.2byte	0x3c48
	.2byte	0x3f81
	.4byte	0x0d07c637
	.2byte	0x1d49
	.4byte	0xd9cf3f87
	.4byte	0xc9eacea7
	.2byte	0x4029
	.2byte	0x667e
	.2byte	0xd626
	.2byte	0x38e8
	.2byte	0xc02e
	.2byte	0x7da0
	.2byte	0xbe25
	.4byte	0xbfcc9557
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.4byte	0xa9911bef
	.2byte	0x531c
	.2byte	0x3ff1
	.2byte	0xbbc5
	.2byte	0x3e54
	.2byte	0xcc7f
	.4byte	0x3e7c3feb
	.2byte	0xfaf2
	.4byte	0xbf862f6b
	.4byte	0x9cf41eb3
	.2byte	0x3dd2
	.2byte	0x3f5c
	.2byte	0x572a
	.2byte	0xa905
	.4byte	0x402ec267
	.2byte	0xa220
	.2byte	0x33c8
	.2byte	0xeb58
	.2byte	0xc039
	.2byte	0xe540
	.4byte	0xf1f393ab
	.2byte	0x3fc6
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0x0000
	.2byte	0xbc4a
	.2byte	0x1659
	.2byte	0x54b6
	.4byte	0xfba33fef
	.2byte	0x31c4
	.2byte	0x7c6
	.4byte	0x65f63fe3
	.2byte	0x5876
	.2byte	0xcb88
	.2byte	0xbfa1
	.2byte	0x99ac
	.4byte	0xa8f35317
	.2byte	0x3f60
