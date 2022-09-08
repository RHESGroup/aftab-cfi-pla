	.text
	.globl  main
	.type  main, @function

generic_FH_TUERMODUL_CTRL.part.0:
	lui	a5,0x100
	mv	a5,a5
	lbu	a4,10(a5) # 10000a <Bitlist+0xa>
	bnez	a4,lab0
	lui	a4,0x100
	li	a3,3
	sb	a3,76(a4) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
lab0: 	lbu	a4,19(a5)
	bnez	a4,lab1
	lui	a4,0x100
	li	a3,1
	sb	zero,0(a5)
	sb	a3,64(a4) # 100040 <BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state>
lab1: 	lui	a2,0x100
	lbu	a3,75(a2) # 10004b <B_FH_TUERMODUL_CTRL_next_state>
	li	a4,1
	sb	a4,11(a5)
	sb	a4,20(a5)
	li	a1,2
	beq	a3,a1,lab2
	li	a0,3
	beq	a3,a0,lab3
	beq	a3,a4,lab4
	lui	a4,0x100
	sb	zero,81(a4) # 100051 <stable>
	sb	a1,75(a2)
lab8: 	lbu	a2,74(a3) # 10004a <A_FH_TUERMODUL_CTRL_next_state>
	li	a4,1
	beq	a2,a4,lab5
	lui	a2,0x100
	sb	zero,81(a2) # 100051 <stable>
	sb	a4,74(a3)
	lui	a2,0x100
	lui	a3,0x100
	sw	zero,220(a2) # 1000dc <FH_TUERMODUL_CTRL__N>
	sb	a4,73(a3) # 100049 <WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state>
lab7: 	lbu	a4,6(a5)
	sb	a3,5(a5)
	sb	a4,7(a5)
	cfes 0x56844
	ret
lab5: 	lui	a4,0x100
	lbu	a4,80(a4) # 100050 <step>
	beq	a4,a2,lab6
	lui	a4,0x100
	lbu	a3,73(a4) # 100049 <WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state>
	beq	a3,a2,lab7
lab24: 	sb	zero,81(a3) # 100051 <stable>
	li	a3,1
	sb	a3,73(a4)
	lbu	a3,4(a5)
	lbu	a4,6(a5)
	sb	a3,5(a5)
	sb	a4,7(a5)
	cfes 0xefd03
	ret
lab4: 	lui	a4,0x100
	lw	a4,220(a4) # 1000dc <FH_TUERMODUL_CTRL__N>
	li	a3,59
	bne	a4,a3,lab8
	lui	a3,0x100
	lw	a3,212(a3) # 1000d4 <FH_TUERMODUL_CTRL__N_old>
	beq	a3,a4,lab8
	lui	a4,0x100
	sb	zero,81(a4) # 100051 <stable>
	lui	a4,0x100
	sb	a0,75(a2)
	sb	a0,72(a4) # 100048 <INITIALISIERT_FH_TUERMODUL_CTRL_next_state>
	j	lab8
lab3: 	lui	a3,0x100
	lw	a1,220(a3) # 1000dc <FH_TUERMODUL_CTRL__N>
	li	a3,60
	bge	a3,a1,lab9
	lui	a1,0x100
	lw	a1,212(a1) # 1000d4 <FH_TUERMODUL_CTRL__N_old>
	blt	a3,a1,lab9
	lui	a3,0x100
	lui	a1,0x100
	lbu	a3,147(a3) # 100093 <FH_TUERMODUL_CTRL__INREVERS1>
	lbu	a1,149(a1) # 100095 <FH_TUERMODUL_CTRL__INREVERS2>
	or	a3,a3,a1
	bnez	a3,lab9
	lui	a3,0x100
	sb	zero,81(a3) # 100051 <stable>
	lui	a3,0x100
	sb	zero,124(a3) # 10007c <FH_TUERMODUL__MFHZ_copy>
	lui	a3,0x100
	sb	zero,121(a3) # 100079 <FH_TUERMODUL__MFHA_copy>
	sb	a4,75(a2)
	j	lab8
lab9: 	lui	a4,0x100
	lbu	a4,135(a4) # 100087 <FH_TUERMODUL__BLOCK>
	bnez	a4,lab10
lab18: 	lbu	a4,72(a3) # 100048 <INITIALISIERT_FH_TUERMODUL_CTRL_next_state>
	li	a1,2
	beq	a4,a1,lab11
	li	a2,3
	beq	a4,a2,lab12
	li	a0,1
	beq	a4,a0,lab13
	lui	a4,0x100
	sb	zero,81(a4) # 100051 <stable>
	sb	a2,72(a3)
	j	lab8
lab2: 	lui	a4,0x100
	lbu	a4,135(a4) # 100087 <FH_TUERMODUL__BLOCK>
	beqz	a4,lab14
	lui	a4,0x100
	lbu	a4,133(a4) # 100085 <FH_TUERMODUL__BLOCK_old>
	bnez	a4,lab14
	lui	a4,0x100
	lbu	a4,125(a4) # 10007d <FH_TUERMODUL__MFHZ>
	beqz	a4,lab14
	lui	a4,0x100
	lw	a1,84(a4) # 100054 <time>
	lui	a3,0x100
	sb	zero,81(a3) # 100051 <stable>
	lui	a3,0x100
	sb	zero,124(a3) # 10007c <FH_TUERMODUL__MFHZ_copy>
	lui	a3,0x100
	li	a4,3
	sw	a1,224(a3) # 1000e0 <sc_FH_TUERMODUL_CTRL_2329_1>
	lui	a3,0x100
	sb	a4,75(a2)
	sb	a4,72(a3) # 100048 <INITIALISIERT_FH_TUERMODUL_CTRL_next_state>
	j	lab8
lab14: 	lui	a3,0x100
	lbu	a4,79(a3) # 10004f <NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state>
	li	a1,2
	beq	a4,a1,lab15
	li	a2,3
	beq	a4,a2,lab16
	li	a1,1
	beq	a4,a1,lab17
	lui	a4,0x100
	sb	zero,81(a4) # 100051 <stable>
	sb	a2,79(a3)
	j	lab8
lab10: 	lui	a4,0x100
	lbu	a4,133(a4) # 100085 <FH_TUERMODUL__BLOCK_old>
	bnez	a4,lab18
	lui	a4,0x100
	lbu	a4,122(a4) # 10007a <FH_TUERMODUL__MFHA>
	beqz	a4,lab19
	lui	a4,0x100
	lw	a3,84(a4) # 100054 <time>
	lui	a4,0x100
	sb	zero,81(a4) # 100051 <stable>
	lui	a4,0x100
	sb	zero,121(a4) # 100079 <FH_TUERMODUL__MFHA_copy>
	lui	a4,0x100
	sw	a3,232(a4) # 1000e8 <sc_FH_TUERMODUL_CTRL_2375_2>
lab21: 	sb	a4,75(a2)
	li	a3,3
	lui	a4,0x100
	sb	a3,79(a4) # 10004f <NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state>
	j	lab8
lab17: 	lui	a4,0x100
	lbu	a4,131(a4) # 100083 <FH_TUERMODUL__SFHZ>
	bnez	a4,lab8
	lui	a4,0x100
	sb	zero,81(a4) # 100051 <stable>
	lui	a4,0x100
	sb	zero,124(a4) # 10007c <FH_TUERMODUL__MFHZ_copy>
	sb	a2,79(a3)
	j	lab8
lab16: 	lui	a4,0x100
	lbu	a4,128(a4) # 100080 <FH_TUERMODUL__SFHA>
	bnez	a4,lab20
	lui	a4,0x100
	lbu	a4,131(a4) # 100083 <FH_TUERMODUL__SFHZ>
	beqz	a4,lab8
	lui	a2,0x100
	li	a4,1
	sb	zero,81(a2) # 100051 <stable>
	lui	a2,0x100
	sb	a4,124(a2) # 10007c <FH_TUERMODUL__MFHZ_copy>
	sb	a4,79(a3)
	j	lab8
lab15: 	lui	a4,0x100
	lbu	a4,128(a4) # 100080 <FH_TUERMODUL__SFHA>
	bnez	a4,lab8
	lui	a4,0x100
	sb	zero,81(a4) # 100051 <stable>
	lui	a4,0x100
	sb	zero,121(a4) # 100079 <FH_TUERMODUL__MFHA_copy>
	li	a4,3
	sb	a4,79(a3)
	j	lab8
lab19: 	lui	a4,0x100
	lbu	a4,125(a4) # 10007d <FH_TUERMODUL__MFHZ>
	beqz	a4,lab18
	lui	a4,0x100
	lw	a3,84(a4) # 100054 <time>
	lui	a4,0x100
	sb	zero,81(a4) # 100051 <stable>
	lui	a4,0x100
	sb	zero,124(a4) # 10007c <FH_TUERMODUL__MFHZ_copy>
	lui	a4,0x100
	sw	a3,228(a4) # 1000e4 <sc_FH_TUERMODUL_CTRL_2352_1>
	j	lab21
lab6: 	lui	a2,0x100
	lw	a2,240(a2) # 1000f0 <tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL>
	beqz	a2,lab22
	lui	a1,0x100
	lw	a1,84(a1) # 100054 <time>
	sub	a2,a1,a2
	beq	a2,a4,lab23
lab22: 	lui	a4,0x100
	lbu	a3,73(a4) # 100049 <WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state>
	li	a2,1
	bne	a3,a2,lab24
	lui	a2,0x100
	lw	a2,236(a2) # 1000ec <tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL>
	beqz	a2,lab7
	lui	a1,0x100
	lw	a1,84(a1) # 100054 <time>
	addi	a1,a1,-3
	bne	a1,a2,lab7
	lui	a2,0x100
	lui	a1,0x100
	lbu	a2,125(a2) # 10007d <FH_TUERMODUL__MFHZ>
	lbu	a1,122(a1) # 10007a <FH_TUERMODUL__MFHA>
	or	a2,a2,a1
	bnez	a2,lab7
	lui	a1,0x100
	lw	a2,220(a1) # 1000dc <FH_TUERMODUL_CTRL__N>
	blez	a2,lab7
	addi	a2,a2,-1
	lui	a0,0x100
	sb	zero,81(a0) # 100051 <stable>
	sw	a2,220(a1)
	sb	a3,73(a4)
	j	lab7
lab20: 	lui	a4,0x100
	sb	zero,81(a4) # 100051 <stable>
	li	a2,1
	lui	a4,0x100
	sb	a2,121(a4) # 100079 <FH_TUERMODUL__MFHA_copy>
	sb	a1,79(a3)
	j	lab8
lab23: 	lui	a4,0x100
	lui	a1,0x100
	lbu	a4,125(a4) # 10007d <FH_TUERMODUL__MFHZ>
	lbu	a1,122(a1) # 10007a <FH_TUERMODUL__MFHA>
	or	a4,a4,a1
	beqz	a4,lab22
	lui	a1,0x100
	lw	a4,220(a1) # 1000dc <FH_TUERMODUL_CTRL__N>
	lui	a0,0x100
	sb	zero,81(a0) # 100051 <stable>
	addi	a4,a4,1
	sw	a4,220(a1)
	lui	a4,0x100
	sb	a2,74(a3)
	sb	a2,73(a4) # 100049 <WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state>
	j	lab7
lab11: 	lui	a2,0x100
	lw	a2,200(a2) # 1000c8 <FH_TUERMODUL__POSITION>
	blez	a2,lab25
	lui	a0,0x100
	lbu	a2,68(a0) # 100044 <SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
	li	a1,1
	beq	a2,a1,lab26
	beq	a2,a4,lab27
	lui	a3,0x100
	sb	zero,81(a3) # 100051 <stable>
	lui	a3,0x100
	sb	a4,68(a0)
	sb	a4,70(a3) # 100046 <MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
	lui	a4,0x100
	sb	a1,17(a5)
	sb	a1,124(a4) # 10007c <FH_TUERMODUL__MFHZ_copy>
	j	lab8
lab12: 	lui	a4,0x100
	lbu	a4,131(a4) # 100083 <FH_TUERMODUL__SFHZ>
	beqz	a4,lab28
	lui	a4,0x100
	lbu	a4,129(a4) # 100081 <FH_TUERMODUL__SFHZ_old>
	bnez	a4,lab28
	lui	a4,0x100
	lw	a4,200(a4) # 1000c8 <FH_TUERMODUL__POSITION>
	blez	a4,lab28
	sb	a1,72(a3)
	lui	a3,0x100
	sb	a1,68(a3) # 100044 <SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
	lui	a3,0x100
	li	a4,1
	lui	a2,0x100
	sb	a1,70(a3) # 100046 <MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
	lui	a3,0x100
	sb	zero,81(a2) # 100051 <stable>
	sb	a4,17(a5)
	sb	a4,124(a3) # 10007c <FH_TUERMODUL__MFHZ_copy>
	j	lab8
lab13: 	lui	a0,0x100
	lw	a6,200(a0) # 1000c8 <FH_TUERMODUL__POSITION>
	li	a0,404
	bge	a0,a6,lab29
	lui	a4,0x100
	sb	zero,81(a4) # 100051 <stable>
	lui	a4,0x100
	sb	zero,121(a4) # 100079 <FH_TUERMODUL__MFHA_copy>
	sb	a2,72(a3)
	j	lab8
lab28: 	lui	a4,0x100
	lbu	a4,128(a4) # 100080 <FH_TUERMODUL__SFHA>
	beqz	a4,lab8
	lui	a4,0x100
	lbu	a4,126(a4) # 10007e <FH_TUERMODUL__SFHA_old>
	bnez	a4,lab8
	lui	a4,0x100
	lw	a2,200(a4) # 1000c8 <FH_TUERMODUL__POSITION>
	li	a4,404
	blt	a4,a2,lab8
	lui	a2,0x100
	li	a4,1
	sb	zero,81(a2) # 100051 <stable>
	lui	a2,0x100
	sb	a4,72(a3)
	sb	a4,121(a2) # 100079 <FH_TUERMODUL__MFHA_copy>
	li	a3,2
	lui	a4,0x100
	sb	a3,69(a4) # 100045 <OEFFNEN_FH_TUERMODUL_CTRL_next_state>
	j	lab8
lab25: 	lui	a4,0x100
	sb	zero,81(a4) # 100051 <stable>
	lui	a4,0x100
	sb	zero,124(a4) # 10007c <FH_TUERMODUL__MFHZ_copy>
	li	a4,3
	sb	a4,72(a3)
	j	lab8
lab29: 	lui	a0,0x100
	lbu	a2,69(a0) # 100045 <OEFFNEN_FH_TUERMODUL_CTRL_next_state>
	beq	a2,a4,lab30
	beq	a2,a1,lab31
	lui	a4,0x100
	sb	zero,81(a4) # 100051 <stable>
	sb	a1,69(a0)
	j	lab8
lab26: 	lui	a4,0x100
	lbu	a4,128(a4) # 100080 <FH_TUERMODUL__SFHA>
	beqz	a4,lab32
	lui	a4,0x100
	lbu	a4,126(a4) # 10007e <FH_TUERMODUL__SFHA_old>
	beqz	a4,lab25
lab32: 	lui	a4,0x100
	lbu	a4,131(a4) # 100083 <FH_TUERMODUL__SFHZ>
	beqz	a4,lab33
	lui	a4,0x100
	lbu	a4,129(a4) # 100081 <FH_TUERMODUL__SFHZ_old>
	beqz	a4,lab25
lab33: 	lui	a2,0x100
	lbu	a4,71(a2) # 100047 <TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
	li	a3,1
	beq	a4,a3,lab34
	li	a1,2
	beq	a4,a1,lab35
	lui	a4,0x100
	sb	zero,81(a4) # 100051 <stable>
	sb	a1,71(a2)
	sb	a3,17(a5)
	j	lab8
lab27: 	lui	a4,0x100
	lbu	a4,131(a4) # 100083 <FH_TUERMODUL__SFHZ>
	bnez	a4,lab36
	lui	a4,0x100
	lbu	a4,129(a4) # 100081 <FH_TUERMODUL__SFHZ_old>
	bnez	a4,lab25
lab36: 	lui	a2,0x100
	lbu	a3,70(a2) # 100046 <MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
	li	a4,1
	beq	a3,a4,lab37
	li	a1,2
	beq	a3,a1,lab38
	lui	a3,0x100
	sb	zero,81(a3) # 100051 <stable>
	lui	a3,0x100
	sb	a1,70(a2)
	sb	a4,17(a5)
	sb	a4,124(a3) # 10007c <FH_TUERMODUL__MFHZ_copy>
	j	lab8
lab31: 	lui	a2,0x100
	lbu	a2,131(a2) # 100083 <FH_TUERMODUL__SFHZ>
	beqz	a2,lab39
	lui	a2,0x100
	lbu	a2,129(a2) # 100081 <FH_TUERMODUL__SFHZ_old>
	bnez	a2,lab39
	lui	a3,0x100
	sb	zero,81(a3) # 100051 <stable>
	sb	a4,69(a0)
	j	lab8
lab30: 	lui	a4,0x100
	lbu	a4,131(a4) # 100083 <FH_TUERMODUL__SFHZ>
	beqz	a4,lab40
	lui	a4,0x100
	lbu	a4,129(a4) # 100081 <FH_TUERMODUL__SFHZ_old>
	bnez	a4,lab40
lab41: 	sb	zero,81(a4) # 100051 <stable>
	lui	a4,0x100
	sb	zero,121(a4) # 100079 <FH_TUERMODUL__MFHA_copy>
	li	a4,3
	sb	a4,72(a3)
	sb	zero,69(a0)
	j	lab8
lab39: 	lui	a4,0x100
	lbu	a4,128(a4) # 100080 <FH_TUERMODUL__SFHA>
	bnez	a4,lab8
	lui	a4,0x100
	lbu	a4,126(a4) # 10007e <FH_TUERMODUL__SFHA_old>
	bnez	a4,lab41
	j	lab8
lab40: 	lui	a4,0x100
	lbu	a4,128(a4) # 100080 <FH_TUERMODUL__SFHA>
	beqz	a4,lab8
	lui	a4,0x100
	lbu	a4,126(a4) # 10007e <FH_TUERMODUL__SFHA_old>
	bnez	a4,lab8
	j	lab41
lab38: 	lbu	a3,24(a5)
	beqz	a3,lab42
	lui	a3,0x100
	lw	a1,84(a3) # 100054 <time>
	lui	a3,0x100
	sb	zero,81(a3) # 100051 <stable>
	lui	a3,0x100
	sb	zero,124(a3) # 10007c <FH_TUERMODUL__MFHZ_copy>
	lui	a3,0x100
	sb	a4,146(a3) # 100092 <FH_TUERMODUL_CTRL__INREVERS1_copy>
	lui	a3,0x100
	sw	a1,204(a3) # 1000cc <sc_FH_TUERMODUL_CTRL_1739_10>
	lui	a3,0x100
	sb	a4,23(a5)
	sb	a4,70(a2)
	sb	zero,17(a5)
	sb	a4,121(a3) # 100079 <FH_TUERMODUL__MFHA_copy>
	j	lab8
lab37: 	lbu	a4,22(a5)
	sb	zero,23(a5)
	beqz	a4,lab8
	lui	a4,0x100
	sb	zero,81(a4) # 100051 <stable>
	lui	a4,0x100
	sb	zero,146(a4) # 100092 <FH_TUERMODUL_CTRL__INREVERS1_copy>
	li	a4,2
	sb	a4,70(a2)
	lui	a4,0x100
	sb	zero,121(a4) # 100079 <FH_TUERMODUL__MFHA_copy>
	lui	a4,0x100
	sb	a3,17(a5)
	sb	a3,124(a4) # 10007c <FH_TUERMODUL__MFHZ_copy>
	j	lab8
lab35: 	lbu	a4,24(a5)
	beqz	a4,lab8
	lui	a4,0x100
	lw	a1,84(a4) # 100054 <time>
	lui	a4,0x100
	sb	zero,81(a4) # 100051 <stable>
	lui	a4,0x100
	sb	a3,148(a4) # 100094 <FH_TUERMODUL_CTRL__INREVERS2_copy>
	lui	a4,0x100
	sb	zero,124(a4) # 10007c <FH_TUERMODUL__MFHZ_copy>
	lui	a4,0x100
	sw	a1,208(a4) # 1000d0 <sc_FH_TUERMODUL_CTRL_1781_10>
	lui	a4,0x100
	sb	a3,23(a5)
	sb	a3,71(a2)
	sb	zero,17(a5)
	sb	a3,121(a4) # 100079 <FH_TUERMODUL__MFHA_copy>
	j	lab8
lab34: 	lbu	a3,22(a5)
	sb	zero,23(a5)
	beqz	a3,lab8
	lui	a3,0x100
	sb	zero,81(a3) # 100051 <stable>
	lui	a3,0x100
	sb	a4,124(a3) # 10007c <FH_TUERMODUL__MFHZ_copy>
	lui	a3,0x100
	sb	zero,148(a3) # 100094 <FH_TUERMODUL_CTRL__INREVERS2_copy>
	li	a3,2
	sb	a3,71(a2)
	lui	a3,0x100
	sb	zero,121(a3) # 100079 <FH_TUERMODUL__MFHA_copy>
	sb	a4,17(a5)
	j	lab8
lab42: 	lui	a3,0x100
	lbu	a3,128(a3) # 100080 <FH_TUERMODUL__SFHA>
	beqz	a3,lab8
	lui	a3,0x100
	lbu	a3,126(a3) # 10007e <FH_TUERMODUL__SFHA_old>
	bnez	a3,lab8
	lui	a3,0x100
	sb	zero,81(a3) # 100051 <stable>
	sb	a4,68(a0)
	sb	zero,70(a2)
	j	lab8
interface:
	lui	a5,0x100
	mv	a5,a5
	lbu	a4,4(a5) # 100004 <Bitlist+0x4>
	beqz	a4,lab43
	lui	a4,0x100
	lw	a4,84(a4) # 100054 <time>
	lui	a3,0x100
	sw	a4,236(a3) # 1000ec <tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL>
lab52: 	sw	a4,240(a3) # 1000f0 <tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL>
lab51: 	lw	a4,232(a3) # 1000e8 <sc_FH_TUERMODUL_CTRL_2375_2>
	beqz	a4,lab44
	lui	a2,0x100
	lw	a2,84(a2) # 100054 <time>
	beq	a4,a2,lab44
	lui	a4,0x100
	sb	zero,121(a4) # 100079 <FH_TUERMODUL__MFHA_copy>
	sw	zero,232(a3)
lab44: 	lui	a3,0x100
	lw	a4,228(a3) # 1000e4 <sc_FH_TUERMODUL_CTRL_2352_1>
	beqz	a4,lab45
	lui	a2,0x100
	lw	a2,84(a2) # 100054 <time>
	beq	a4,a2,lab45
	lui	a4,0x100
	sb	zero,124(a4) # 10007c <FH_TUERMODUL__MFHZ_copy>
	sw	zero,228(a3)
lab45: 	lui	a3,0x100
	lw	a4,224(a3) # 1000e0 <sc_FH_TUERMODUL_CTRL_2329_1>
	beqz	a4,lab46
	lui	a2,0x100
	lw	a2,84(a2) # 100054 <time>
	beq	a4,a2,lab46
	lui	a4,0x100
	sb	zero,124(a4) # 10007c <FH_TUERMODUL__MFHZ_copy>
	sw	zero,224(a3)
lab46: 	lui	a3,0x100
	lw	a4,208(a3) # 1000d0 <sc_FH_TUERMODUL_CTRL_1781_10>
	beqz	a4,lab47
	lui	a2,0x100
	lw	a2,84(a2) # 100054 <time>
	beq	a4,a2,lab47
	sw	zero,208(a3)
lab47: 	lui	a3,0x100
	lw	a4,204(a3) # 1000cc <sc_FH_TUERMODUL_CTRL_1739_10>
	beqz	a4,lab48
	lui	a2,0x100
	lw	a2,84(a2) # 100054 <time>
	beq	a4,a2,lab48
	sw	zero,204(a3)
lab48: 	lbu	a5,0(a5)
	bnez	a5,lab49
	lui	a5,0x100
	lw	a4,160(a5) # 1000a0 <BLOCK_ERKENNUNG_CTRL__N>
	lui	a5,0x100
	lw	a5,152(a5) # 100098 <BLOCK_ERKENNUNG_CTRL__N_old>
	beq	a4,a5,lab50
lab49: 	lui	a5,0x100
	lw	a4,84(a5) # 100054 <time>
	lui	a5,0x100
	sw	a4,244(a5) # 1000f4 <tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy>
	ret
lab50: 	ret
lab43: 	lbu	a4,6(a5)
	beqz	a4,lab51
	lui	a4,0x100
	lw	a4,84(a4) # 100054 <time>
	j	lab52
init:
	lui	a5,0x100
	sw	zero,244(a5) # 1000f4 <tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy>
	lui	a5,0x100
	sw	zero,240(a5) # 1000f0 <tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL>
	lui	a5,0x100
	sw	zero,236(a5) # 1000ec <tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL>
	lui	a5,0x100
	sb	zero,79(a5) # 10004f <NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state>
	lui	a5,0x100
	sb	zero,78(a5) # 10004e <ZENTRAL_KINDERSICHERUNG_CTRL_next_state>
	lui	a5,0x100
	sb	zero,77(a5) # 10004d <MEC_KINDERSICHERUNG_CTRL_next_state>
	lui	a5,0x100
	sb	zero,76(a5) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
	lui	a5,0x100
	sb	zero,75(a5) # 10004b <B_FH_TUERMODUL_CTRL_next_state>
	lui	a5,0x100
	sb	zero,74(a5) # 10004a <A_FH_TUERMODUL_CTRL_next_state>
	lui	a5,0x100
	sb	zero,73(a5) # 100049 <WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state>
	lui	a5,0x100
	sb	zero,72(a5) # 100048 <INITIALISIERT_FH_TUERMODUL_CTRL_next_state>
	lui	a5,0x100
	sb	zero,71(a5) # 100047 <TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
	lui	a5,0x100
	sb	zero,70(a5) # 100046 <MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
	lui	a5,0x100
	sb	zero,69(a5) # 100045 <OEFFNEN_FH_TUERMODUL_CTRL_next_state>
	lui	a5,0x100
	sb	zero,68(a5) # 100044 <SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
	lui	a5,0x100
	sb	zero,67(a5) # 100043 <FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state>
	lui	a5,0x100
	sb	zero,66(a5) # 100042 <EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state>
	lui	a5,0x100
	sb	zero,65(a5) # 100041 <BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state>
	lui	a5,0x100
	sb	zero,64(a5) # 100040 <BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state>
	ret
generic_KINDERSICHERUNG_CTRL:
	lui	a5,0x100
	lbu	a5,10(a5) # 10000a <Bitlist+0xa>
	beqz	a5,lab53
	lui	a4,0x100
	lbu	a5,76(a4) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
	li	a2,2
	beq	a5,a2,lab54
	li	a3,3
	beq	a5,a3,lab55
	li	a2,1
	beq	a5,a2,lab56
	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	sb	a3,76(a4)
	ret
lab53: 	ret
lab54: 	lui	a5,0x100
	lbu	a5,138(a5) # 10008a <FH_TUERMODUL__SFHA_MEC>
	bnez	a5,lab57
	lui	a5,0x100
	lbu	a5,142(a5) # 10008e <FH_TUERMODUL__SFHZ_MEC>
	beqz	a5,lab58
	lui	a5,0x100
	lbu	a4,77(a5) # 10004d <MEC_KINDERSICHERUNG_CTRL_next_state>
	li	a3,1
	bne	a4,a3,lab59
	lui	a3,0x100
	lbu	a3,141(a3) # 10008d <FH_TUERMODUL__SFHZ_MEC_old>
	bnez	a3,lab60
lab75: 	li	a4,1
	sb	zero,81(a3) # 100051 <stable>
	lui	a3,0x100
	sb	a4,130(a3) # 100082 <FH_TUERMODUL__SFHZ_copy>
	sb	a4,77(a5)
	ret
lab56: 	lui	a2,0x100
	lbu	a2,140(a2) # 10008c <FH_TUERMODUL__SFHA_ZENTRAL>
	bnez	a2,lab61
	lui	a2,0x100
	lbu	a2,144(a2) # 100090 <FH_TUERMODUL__SFHZ_ZENTRAL>
	beqz	a2,lab62
	lui	a4,0x100
	lbu	a3,78(a4) # 10004e <ZENTRAL_KINDERSICHERUNG_CTRL_next_state>
	bne	a3,a5,lab59
	lui	a5,0x100
	lbu	a5,143(a5) # 10008f <FH_TUERMODUL__SFHZ_ZENTRAL_old>
	bnez	a5,lab63
lab74: 	li	a5,1
	sb	zero,81(a3) # 100051 <stable>
	lui	a3,0x100
	sb	a5,130(a3) # 100082 <FH_TUERMODUL__SFHZ_copy>
	sb	a5,78(a4)
	ret
lab55: 	lui	a5,0x100
	lbu	a5,136(a5) # 100088 <FH_TUERMODUL__KL_50>
	bnez	a5,lab64
	lui	a3,0x100
	lbu	a3,142(a3) # 10008e <FH_TUERMODUL__SFHZ_MEC>
	lui	a1,0x100
	lbu	a1,138(a1) # 10008a <FH_TUERMODUL__SFHA_MEC>
	beqz	a3,lab65
	bnez	a1,lab66
	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	li	a3,1
	lui	a5,0x100
	sb	a3,130(a5) # 100082 <FH_TUERMODUL__SFHZ_copy>
	sb	a2,76(a4)
	ret
lab64: 	lui	a3,0x100
	lbu	a3,144(a3) # 100090 <FH_TUERMODUL__SFHZ_ZENTRAL>
	lui	a2,0x100
	lbu	a2,140(a2) # 10008c <FH_TUERMODUL__SFHA_ZENTRAL>
	bnez	a3,lab67
	beqz	a2,lab53
	bnez	a5,lab53
	lui	a3,0x100
	li	a5,1
	sb	zero,81(a3) # 100051 <stable>
	lui	a3,0x100
	sb	a5,127(a3) # 10007f <FH_TUERMODUL__SFHA_copy>
	sb	a5,76(a4)
	ret
lab57: 	lui	a5,0x100
	lbu	a4,77(a5) # 10004d <MEC_KINDERSICHERUNG_CTRL_next_state>
	li	a3,1
	beq	a4,a3,lab68
lab59: 	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	ret
lab61: 	lui	a4,0x100
	lbu	a3,78(a4) # 10004e <ZENTRAL_KINDERSICHERUNG_CTRL_next_state>
	bne	a3,a5,lab59
	lui	a5,0x100
	lbu	a5,139(a5) # 10008b <FH_TUERMODUL__SFHA_ZENTRAL_old>
	bnez	a5,lab69
	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	lui	a5,0x100
	sb	a3,127(a5) # 10007f <FH_TUERMODUL__SFHA_copy>
	sb	a3,78(a4)
	ret
lab67: 	beqz	a2,lab70
	lui	a3,0x100
	li	a5,1
	sb	zero,81(a3) # 100051 <stable>
	lui	a3,0x100
	sb	a5,127(a3) # 10007f <FH_TUERMODUL__SFHA_copy>
	lui	a3,0x100
	sb	a5,130(a3) # 100082 <FH_TUERMODUL__SFHZ_copy>
	sb	a5,76(a4)
	ret
lab58: 	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	lui	a5,0x100
	sb	zero,130(a5) # 100082 <FH_TUERMODUL__SFHZ_copy>
	lui	a5,0x100
	sb	zero,127(a5) # 10007f <FH_TUERMODUL__SFHA_copy>
	li	a5,3
	sb	a5,76(a4)
	lui	a5,0x100
	sb	zero,77(a5) # 10004d <MEC_KINDERSICHERUNG_CTRL_next_state>
	ret
lab62: 	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	lui	a5,0x100
	sb	zero,130(a5) # 100082 <FH_TUERMODUL__SFHZ_copy>
	lui	a5,0x100
	sb	zero,127(a5) # 10007f <FH_TUERMODUL__SFHA_copy>
	lui	a5,0x100
	sb	a3,76(a4)
	sb	zero,78(a5) # 10004e <ZENTRAL_KINDERSICHERUNG_CTRL_next_state>
	ret
lab65: 	beqz	a1,lab64
	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	li	a3,1
	lui	a5,0x100
	sb	a3,127(a5) # 10007f <FH_TUERMODUL__SFHA_copy>
	sb	a2,76(a4)
	ret
lab68: 	lui	a3,0x100
	lbu	a3,137(a3) # 100089 <FH_TUERMODUL__SFHA_MEC_old>
	bnez	a3,lab71
	lui	a3,0x100
	sb	zero,81(a3) # 100051 <stable>
	lui	a3,0x100
	sb	a4,127(a3) # 10007f <FH_TUERMODUL__SFHA_copy>
	sb	a4,77(a5)
	ret
lab70: 	bnez	a5,lab53
	lui	a3,0x100
	li	a5,1
	sb	zero,81(a3) # 100051 <stable>
	lui	a3,0x100
	sb	a5,130(a3) # 100082 <FH_TUERMODUL__SFHZ_copy>
	sb	a5,76(a4)
	ret
lab66: 	lui	a3,0x100
	li	a5,1
	sb	zero,81(a3) # 100051 <stable>
	lui	a3,0x100
	sb	a5,130(a3) # 100082 <FH_TUERMODUL__SFHZ_copy>
	lui	a3,0x100
	sb	a5,127(a3) # 10007f <FH_TUERMODUL__SFHA_copy>
	sb	a2,76(a4)
	ret
lab71: 	lui	a3,0x100
	lbu	a3,142(a3) # 10008e <FH_TUERMODUL__SFHZ_MEC>
	lui	a2,0x100
	lbu	a2,141(a2) # 10008d <FH_TUERMODUL__SFHZ_MEC_old>
	bnez	a3,lab72
	beqz	a2,lab53
	lui	a3,0x100
	sb	zero,81(a3) # 100051 <stable>
	lui	a3,0x100
	sb	zero,130(a3) # 100082 <FH_TUERMODUL__SFHZ_copy>
	sb	a4,77(a5)
	ret
lab69: 	lui	a5,0x100
	lbu	a5,144(a5) # 100090 <FH_TUERMODUL__SFHZ_ZENTRAL>
	lui	a2,0x100
	lbu	a2,143(a2) # 10008f <FH_TUERMODUL__SFHZ_ZENTRAL_old>
	bnez	a5,lab73
	beqz	a2,lab53
	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	lui	a5,0x100
	sb	zero,130(a5) # 100082 <FH_TUERMODUL__SFHZ_copy>
	sb	a3,78(a4)
	ret
lab63: 	lui	a5,0x100
	lbu	a5,139(a5) # 10008b <FH_TUERMODUL__SFHA_ZENTRAL_old>
	beqz	a5,lab53
	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	lui	a5,0x100
	sb	zero,127(a5) # 10007f <FH_TUERMODUL__SFHA_copy>
	sb	a3,78(a4)
	ret
lab60: 	lui	a3,0x100
	lbu	a3,137(a3) # 100089 <FH_TUERMODUL__SFHA_MEC_old>
	beqz	a3,lab53
	lui	a3,0x100
	sb	zero,81(a3) # 100051 <stable>
	lui	a3,0x100
	sb	zero,127(a3) # 10007f <FH_TUERMODUL__SFHA_copy>
	sb	a4,77(a5)
	ret
lab73: 	beqz	a2,lab74
	ret
lab72: 	beqz	a2,lab75
	ret
generic_FH_TUERMODUL_CTRL:
	lui	a5,0x100
	mv	a5,a5
	lbu	a4,13(a5) # 10000d <Bitlist+0xd>
	bnez	a4,lab76
	lbu	a4,15(a5)
	beqz	a4,lab77
	lbu	a4,14(a5)
	bnez	a4,lab77
	sb	zero,4(a5)
	sb	zero,6(a5)
	ret
lab77: 	ret
lab76: 	j	generic_FH_TUERMODUL_CTRL.part.0
generic_EINKLEMMSCHUTZ_CTRL:
	lui	a5,0x100
	mv	a5,a5
	lbu	a4,16(a5) # 100010 <Bitlist+0x10>
	beqz	a4,lab78
	lui	a3,0x100
	lbu	a4,66(a3) # 100042 <EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state>
	li	a2,1
	beq	a4,a2,lab79
	li	a1,2
	bne	a4,a1,lab80
	lui	a4,0x100
	lbu	a4,119(a4) # 100077 <FH_TUERMODUL__EKS_LEISTE_AKTIV>
	sb	zero,24(a5)
	bnez	a4,lab78
	lui	a5,0x100
	lbu	a5,118(a5) # 100076 <FH_TUERMODUL__EKS_LEISTE_AKTIV_old>
	beqz	a5,lab78
lab80: 	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	sb	a2,66(a3)
lab78: 	ret
lab79: 	lui	a4,0x100
	lbu	a4,119(a4) # 100077 <FH_TUERMODUL__EKS_LEISTE_AKTIV>
	beqz	a4,lab78
	lui	a4,0x100
	lbu	a4,118(a4) # 100076 <FH_TUERMODUL__EKS_LEISTE_AKTIV_old>
	bnez	a4,lab78
	lui	a4,0x100
	lbu	a4,131(a4) # 100083 <FH_TUERMODUL__SFHZ>
	beqz	a4,lab81
	lui	a4,0x100
	lbu	a4,128(a4) # 100080 <FH_TUERMODUL__SFHA>
	bnez	a4,lab78
lab81: 	lui	a4,0x100
	sb	zero,81(a4) # 100051 <stable>
	li	a4,1
	sb	a4,24(a5)
	li	a5,2
	sb	a5,66(a3)
	ret
generic_BLOCK_ERKENNUNG_CTRL:
	lui	a5,0x100
	mv	a5,a5
	lbu	a4,19(a5) # 100013 <Bitlist+0x13>
	bnez	a4,lab82
	lbu	a4,21(a5)
	beqz	a4,lab83
	lbu	a4,20(a5)
	bnez	a4,lab83
	sb	zero,0(a5)
	ret
lab83: 	ret
lab82: 	lui	a3,0x100
	lbu	a4,64(a3) # 100040 <BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state>
	li	a2,1
	beq	a4,a2,lab84
	li	a1,2
	beq	a4,a1,lab85
	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	sb	a2,64(a3)
	ret
lab85: 	lui	a4,0x100
	lbu	a4,122(a4) # 10007a <FH_TUERMODUL__MFHA>
	bnez	a4,lab86
	lui	a4,0x100
	lbu	a4,120(a4) # 100078 <FH_TUERMODUL__MFHA_old>
	bnez	a4,lab87
lab86: 	lui	a4,0x100
	lbu	a4,125(a4) # 10007d <FH_TUERMODUL__MFHZ>
	bnez	a4,lab88
	lui	a4,0x100
	lbu	a4,123(a4) # 10007b <FH_TUERMODUL__MFHZ_old>
	bnez	a4,lab87
lab88: 	lui	a3,0x100
	lbu	a4,65(a3) # 100041 <BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state>
	li	a2,2
	beq	a4,a2,lab89
	li	a0,3
	beq	a4,a0,lab90
	li	a1,1
	beq	a4,a1,lab91
	lui	a4,0x100
	sb	zero,81(a4) # 100051 <stable>
	lui	a4,0x100
	sw	zero,160(a4) # 1000a0 <BLOCK_ERKENNUNG_CTRL__N>
	lui	a4,0x100
	sw	a2,168(a4) # 1000a8 <BLOCK_ERKENNUNG_CTRL__I_EIN_MAX>
	sb	a0,65(a3)
	sb	a1,0(a5)
	ret
lab87: 	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	li	a5,1
	sb	a5,64(a3)
	lui	a5,0x100
	sb	zero,65(a5) # 100041 <BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state>
	ret
lab84: 	lui	a2,0x100
	lui	a1,0x100
	lw	a2,196(a2) # 1000c4 <FH_TUERMODUL__I_EIN>
	lw	a1,192(a1) # 1000c0 <FH_TUERMODUL__I_EIN_old>
	beq	a2,a1,lab83
	blez	a2,lab83
	li	a2,2
	sb	a2,64(a3)
	lui	a3,0x100
	lui	a1,0x100
	sw	zero,160(a3) # 1000a0 <BLOCK_ERKENNUNG_CTRL__N>
	lui	a3,0x100
	sw	a2,168(a3) # 1000a8 <BLOCK_ERKENNUNG_CTRL__I_EIN_MAX>
	sb	zero,81(a1) # 100051 <stable>
	lui	a3,0x100
	lui	a1,0x100
	li	a2,3
	sb	zero,134(a1) # 100086 <FH_TUERMODUL__BLOCK_copy>
	sb	a2,65(a3) # 100041 <BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state>
	sb	a4,0(a5)
	ret
lab91: 	ret
lab90: 	lui	a4,0x100
	lw	a4,160(a4) # 1000a0 <BLOCK_ERKENNUNG_CTRL__N>
	sb	zero,0(a5)
	li	a5,11
	bne	a4,a5,lab83
	lui	a5,0x100
	lw	a5,152(a5) # 100098 <BLOCK_ERKENNUNG_CTRL__N_old>
	beq	a5,a4,lab83
	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	sb	a2,65(a3)
	ret
lab89: 	lui	a5,0x100
	lw	a5,168(a5) # 1000a8 <BLOCK_ERKENNUNG_CTRL__I_EIN_MAX>
	lui	a4,0x100
	lw	a4,196(a4) # 1000c4 <FH_TUERMODUL__I_EIN>
	addi	a5,a5,-1
	blt	a4,a5,lab83
	lui	a4,0x100
	li	a5,1
	sb	zero,81(a4) # 100051 <stable>
	lui	a4,0x100
	sb	a5,134(a4) # 100086 <FH_TUERMODUL__BLOCK_copy>
	sb	a5,65(a3)
	ret
FH_DU:
	addi	sp,sp,-96
	lui	a4,0x100
	lbu	t6,104(a4) # 100068 <FH_DU__S_FH_TMBFZUCAN_old>
	sw	s0,88(sp)
	lui	a4,0x100
	lui	s0,0x100
	mv	s0,s0
	lui	a3,0x100
	lbu	a1,101(a4) # 100065 <FH_DU__S_FH_TMBFAUFDISC>
	lui	a5,0x100
	lui	a4,0x100
	lbu	a6,19(s0) # 100013 <Bitlist+0x13>
	lbu	a0,13(s0)
	lbu	a5,106(a5) # 10006a <FH_DU__S_FH_TMBFZUCAN>
	lbu	t0,102(a3) # 100066 <FH_DU__S_FH_TMBFZUDISC_old>
	sw	s8,56(sp)
	lui	a3,0x100
	lbu	s8,100(a4) # 100064 <FH_DU__S_FH_TMBFAUFDISC_old>
	lui	a2,0x100
	lui	a4,0x100
	lbu	t1,10(s0)
	lbu	a7,16(s0)
	lbu	a4,103(a4) # 100067 <FH_DU__S_FH_TMBFZUDISC>
	lbu	a3,107(a3) # 10006b <FH_DU__S_FH_TMBFAUFCAN_old>
	lbu	a2,109(a2) # 10006d <FH_DU__S_FH_TMBFAUFCAN>
	li	t4,1
	lui	t3,0x100
	sw	s1,84(sp)
	sw	s2,80(sp)
	sw	s3,76(sp)
	sw	s4,72(sp)
	sw	s5,68(sp)
	sw	s7,60(sp)
	sw	s9,52(sp)
	sw	s10,48(sp)
	sw	s11,44(sp)
	sw	t4,84(t3) # 100054 <time>
	sw	ra,92(sp)
	sw	s6,64(sp)
	li	t5,0
	lui	s1,0x100
	lui	s2,0x100
	lui	s3,0x100
	lui	s7,0x100
	lui	s11,0x100
	lui	s9,0x100
	lui	s10,0x100
	lui	s5,0x100
	lui	s4,0x100
	mv	t4,a0
	sw	a6,12(sp)
	mv	t2,a5
lab109: 	lui	a6,0x100
	li	a0,1
	lbu	a5,67(a5) # 100043 <FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state>
	addi	t5,t5,1
	sb	a0,81(a6) # 100051 <stable>
	lui	a6,0x100
	sb	t5,80(a6) # 100050 <step>
	li	a6,2
	beq	a5,a6,lab92
	li	t3,3
	beq	a5,t3,lab93
	beq	a5,a0,lab94
	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	lui	a5,0x100
	sw	zero,188(a5) # 1000bc <FH_DU__MFH>
	lui	a5,0x100
	sb	a6,67(a5) # 100043 <FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state>
lab117: 	li	a5,3
	lui	a0,0x100
	sb	a5,76(a0) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
lab95: 	bnez	a7,lab96
	li	a5,1
	lui	a0,0x100
	sb	a5,66(a0) # 100042 <EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state>
lab96: 	lw	a5,12(sp)
	bnez	a5,lab97
	li	a5,1
	lui	a0,0x100
	sb	zero,0(s0)
	sb	a5,64(a0) # 100040 <BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state>
lab97: 	bnez	t4,lab98
	li	a0,2
	lui	a6,0x100
	sb	a0,75(a6) # 10004b <B_FH_TUERMODUL_CTRL_next_state>
	lui	a0,0x100
	li	a5,1
	sw	zero,220(a0) # 1000dc <FH_TUERMODUL_CTRL__N>
	lui	a0,0x100
	sb	a5,74(a0) # 10004a <A_FH_TUERMODUL_CTRL_next_state>
	li	a0,256
	sh	a0,4(s0)
	lui	a0,0x100
	sb	zero,6(s0)
	sb	a5,73(a0) # 100049 <WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state>
lab98: 	li	a5,1
	sb	a5,11(s0)
	sb	a5,17(s0)
	sb	a5,20(s0)
	sb	a5,14(s0)
	beq	t2,t6,lab99
	lui	a5,0x100
	lbu	a5,97(a5) # 100061 <FH_DU__DOOR_ID>
	bnez	a5,lab100
	lui	a5,0x100
	sb	t2,114(a5) # 100072 <FH_DU__S_FH_FTZU>
	beq	t0,a4,lab101
lab110: lab112: lab113: 	lui	a5,0x100
	lbu	a5,98(a5) # 100062 <FH_DU__S_FH_AUFDISC>
	lui	a3,0x100
	lbu	a3,99(a3) # 100063 <FH_DU__S_FH_ZUDISC>
	sb	a4,19(s0)
	lui	a4,0x100
	lbu	a1,12(s0)
	lbu	t5,15(s0)
	lbu	a0,18(s0)
	sb	a5,138(a4) # 10008a <FH_TUERMODUL__SFHA_MEC>
	lui	a4,0x100
	sb	a2,140(a4) # 10008c <FH_TUERMODUL__SFHA_ZENTRAL>
	lui	a4,0x100
	sb	a3,142(a4) # 10008e <FH_TUERMODUL__SFHZ_MEC>
	lui	a4,0x100
	sb	t2,144(a4) # 100090 <FH_TUERMODUL__SFHZ_ZENTRAL>
	sb	a1,10(s0)
	lui	a4,0x100
	sb	t5,13(s0)
	sb	a0,16(s0)
	lbu	a4,136(a4) # 100088 <FH_TUERMODUL__KL_50>
	beqz	a1,lab103
	lui	a1,0x100
	lbu	a1,76(a1) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
	li	a6,2
	beq	a1,a6,lab104
	li	a0,3
	beq	a1,a0,lab105
	li	a6,1
	beq	a1,a6,lab106
	lui	a1,0x100
	sb	zero,81(a1) # 100051 <stable>
	lui	a1,0x100
	sb	a0,76(a1) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
lab103: 	lui	a1,0x100
	lbu	t3,125(a1) # 10007d <FH_TUERMODUL__MFHZ>
	lui	a0,0x100
	lui	a1,0x100
	lui	t0,0x100
	lui	s8,0x100
	lui	t6,0x100
	lbu	a7,119(a0) # 100077 <FH_TUERMODUL__EKS_LEISTE_AKTIV>
	lw	a6,200(a1) # 1000c8 <FH_TUERMODUL__POSITION>
	lbu	t4,122(s8) # 10007a <FH_TUERMODUL__MFHA>
	lw	t1,196(s7) # 1000c4 <FH_TUERMODUL__I_EIN>
	lbu	a0,132(t6) # 100084 <FH_TUERMODUL__FT>
	lbu	a1,135(t0) # 100087 <FH_TUERMODUL__BLOCK>
	lui	ra,0x100
	sb	t4,90(s2) # 10005a <FH_DU__MFHA>
	sb	t3,93(s1) # 10005d <FH_DU__MFHZ>
	sw	t1,176(ra) # 1000b0 <FH_DU__I_EIN>
	sb	a7,111(s11) # 10006f <FH_DU__EKS_LEISTE_AKTIV>
	sw	a6,180(s9) # 1000b4 <FH_DU__POSITION>
	sb	a0,112(s10) # 100070 <FH_DU__FT>
	sb	a4,115(s5) # 100073 <FH_DU__KL_50>
	sb	a1,96(s4) # 100060 <FH_DU__BLOCK>
	mv	s6,t0
	beqz	t5,lab107
	jal	ra,generic_FH_TUERMODUL_CTRL.part.0
	cfed 0x7b493
	cfed 0x7b493
	lui	a4,0x100
	lbu	a2,140(a4) # 10008c <FH_TUERMODUL__SFHA_ZENTRAL>
	lui	a4,0x100
	lui	a5,0x100
	lbu	a3,142(a4) # 10008e <FH_TUERMODUL__SFHZ_MEC>
	lui	a4,0x100
	lui	a1,0x100
	lui	a0,0x100
	lw	a6,200(a5) # 1000c8 <FH_TUERMODUL__POSITION>
	lbu	t2,144(a4) # 100090 <FH_TUERMODUL__SFHZ_ZENTRAL>
	lui	t6,0x100
	lui	a5,0x100
	lui	a4,0x100
	lbu	t3,125(a1) # 10007d <FH_TUERMODUL__MFHZ>
	lbu	a7,119(a0) # 100077 <FH_TUERMODUL__EKS_LEISTE_AKTIV>
	lbu	t4,122(s8)
	lw	t1,196(s7)
	lbu	a0,132(t6) # 100084 <FH_TUERMODUL__FT>
	lbu	a5,138(a5) # 10008a <FH_TUERMODUL__SFHA_MEC>
	lbu	a4,136(a4) # 100088 <FH_TUERMODUL__KL_50>
	lbu	a1,135(s6)
lab107: 	sb	a0,112(s10)
	lui	a0,0x100
	lui	s8,0x100
	sb	a5,98(a0) # 100062 <FH_DU__S_FH_AUFDISC>
	sb	t3,93(s1)
	lui	a5,0x100
	lui	t3,0x100
	mv	s6,a5
	sb	t2,114(s8) # 100072 <FH_DU__S_FH_FTZU>
	sw	t1,176(t3) # 1000b0 <FH_DU__I_EIN>
	sb	a3,99(a5) # 100063 <FH_DU__S_FH_ZUDISC>
	sb	t4,90(s2)
	sb	a7,111(s11)
	sw	a6,180(s9)
	sb	a2,113(s3)
	sb	a4,115(s5)
	sb	a1,96(s4)
	jal	ra,generic_EINKLEMMSCHUTZ_CTRL
	lui	a4,0x100
	lui	a3,0x100
	lui	t6,0x100
	lbu	t5,122(a4) # 10007a <FH_TUERMODUL__MFHA>
	lbu	t4,125(a3) # 10007d <FH_TUERMODUL__MFHZ>
	lbu	a6,132(t6) # 100084 <FH_TUERMODUL__FT>
	lui	t0,0x100
	lui	t2,0x100
	lui	t6,0x100
	lui	a2,0x100
	lui	a3,0x100
	lui	ra,0x100
	lui	a5,0x100
	lui	a4,0x100
	lbu	t1,119(a2) # 100077 <FH_TUERMODUL__EKS_LEISTE_AKTIV>
	lw	a7,200(a3) # 1000c8 <FH_TUERMODUL__POSITION>
	lbu	a0,138(t0) # 10008a <FH_TUERMODUL__SFHA_MEC>
	lbu	a1,140(t2) # 10008c <FH_TUERMODUL__SFHA_ZENTRAL>
	lbu	a3,144(a5) # 100090 <FH_TUERMODUL__SFHZ_ZENTRAL>
	lw	t3,196(s7)
	lbu	a5,135(t6) # 100087 <FH_TUERMODUL__BLOCK>
	lbu	a2,142(ra) # 10008e <FH_TUERMODUL__SFHZ_MEC>
	lbu	a4,136(a4) # 100088 <FH_TUERMODUL__KL_50>
	sb	t4,93(s1)
	sb	a6,112(s10)
	lui	t4,0x100
	lui	a6,0x100
	sw	t3,176(t4) # 1000b0 <FH_DU__I_EIN>
	sb	a0,98(a6) # 100062 <FH_DU__S_FH_AUFDISC>
	sb	a2,99(s6)
	sb	a3,114(s8)
	sb	t5,90(s2)
	sb	t1,111(s11)
	sw	a7,180(s9)
	sb	a1,113(s3)
	sb	a4,115(s5)
	sb	a5,96(s4)
	jal	ra,generic_BLOCK_ERKENNUNG_CTRL
	lui	a2,0x100
	lbu	a5,119(a2) # 100077 <FH_TUERMODUL__EKS_LEISTE_AKTIV>
	lui	a2,0x100
	lbu	a0,132(a2) # 100084 <FH_TUERMODUL__FT>
	lui	a3,0x100
	lui	a2,0x100
	lw	a6,200(a3) # 1000c8 <FH_TUERMODUL__POSITION>
	lbu	a1,136(a2) # 100088 <FH_TUERMODUL__KL_50>
	lui	t0,0x100
	lui	a7,0x100
	lui	a2,0x100
	lbu	t6,138(t0) # 10008a <FH_TUERMODUL__SFHA_MEC>
	lbu	t5,142(a7) # 10008e <FH_TUERMODUL__SFHZ_MEC>
	lw	a2,220(a2) # 1000dc <FH_TUERMODUL_CTRL__N>
	lui	t2,0x100
	lui	a7,0x100
	lw	a4,196(s7)
	lbu	t0,140(t2) # 10008c <FH_TUERMODUL__SFHA_ZENTRAL>
	mv	s6,s8
	lbu	t2,19(s0)
	lbu	s8,144(a7) # 100090 <FH_TUERMODUL__SFHZ_ZENTRAL>
	lbu	t1,10(s0)
	lbu	t4,13(s0)
	lbu	a7,16(s0)
	lui	a3,0x100
	lw	a3,184(a3) # 1000b8 <FH_DU__MFH_copy>
	sw	a6,180(s9)
	sb	a1,115(s5)
	lui	a6,0x100
	lui	a1,0x100
	sb	t6,98(a6) # 100062 <FH_DU__S_FH_AUFDISC>
	sw	a2,212(a1) # 1000d4 <FH_TUERMODUL_CTRL__N_old>
	lui	t3,0x100
	lui	a6,0x100
	lui	a2,0x100
	sw	a4,176(t3) # 1000b0 <FH_DU__I_EIN>
	sb	t5,99(a6) # 100063 <FH_DU__S_FH_ZUDISC>
	sb	s8,114(s6)
	sw	a4,192(a2) # 1000c0 <FH_TUERMODUL__I_EIN_old>
	sw	t2,12(sp)
	sb	a5,111(s11)
	sb	a0,112(s10)
	sw	t5,16(sp)
	sb	t2,20(s0)
	lui	a2,0x100
	sb	t0,113(s3)
	sb	t1,11(s0)
	sb	t4,14(s0)
	sb	a7,17(s0)
	sw	a3,188(a2) # 1000bc <FH_DU__MFH>
	lui	a2,0x100
	sw	a4,172(a2) # 1000ac <FH_DU__I_EIN_old>
	lui	a2,0x100
	lw	a2,160(a2) # 1000a0 <BLOCK_ERKENNUNG_CTRL__N>
	lui	a1,0x100
	lbu	t5,134(a1) # 100086 <FH_TUERMODUL__BLOCK_copy>
	lui	a1,0x100
	sw	a2,28(sp)
	lbu	a2,130(a1) # 100082 <FH_TUERMODUL__SFHZ_copy>
	lui	s6,0x100
	lui	a0,0x100
	sw	a2,20(sp)
	lbu	a2,95(s6) # 10005f <FH_DU__BLOCK_copy>
	lw	s6,28(sp)
	lui	a1,0x100
	lbu	t3,127(a1) # 10007f <FH_TUERMODUL__SFHA_copy>
	sw	s6,152(a0) # 100098 <BLOCK_ERKENNUNG_CTRL__N_old>
	lui	a0,0x100
	sb	s8,143(a0) # 10008f <FH_TUERMODUL__SFHZ_ZENTRAL_old>
	lw	s8,16(sp)
	lui	a0,0x100
	lui	a1,0x100
	sb	s8,141(a0) # 10008d <FH_TUERMODUL__SFHZ_MEC_old>
	lui	a0,0x100
	sb	t0,139(a0) # 10008b <FH_TUERMODUL__SFHA_ZENTRAL_old>
	lui	a0,0x100
	sb	t6,137(a0) # 100089 <FH_TUERMODUL__SFHA_MEC_old>
	lui	a0,0x100
	lui	t6,0x100
	sb	t5,133(a0) # 100085 <FH_TUERMODUL__BLOCK_old>
	sb	t5,135(t6) # 100087 <FH_TUERMODUL__BLOCK>
	lw	t5,20(sp)
	lbu	a6,124(a1) # 10007c <FH_TUERMODUL__MFHZ_copy>
	lui	a0,0x100
	lui	a1,0x100
	lbu	a4,121(a1) # 100079 <FH_TUERMODUL__MFHA_copy>
	sb	t5,131(a0) # 100083 <FH_TUERMODUL__SFHZ>
	lui	a0,0x100
	sb	t5,129(a0) # 100081 <FH_TUERMODUL__SFHZ_old>
	lui	a0,0x100
	sb	t3,128(a0) # 100080 <FH_TUERMODUL__SFHA>
	lui	a0,0x100
	sw	a4,24(sp)
	sb	t3,126(a0) # 10007e <FH_TUERMODUL__SFHA_old>
	lui	a1,0x100
	lui	t3,0x100
	lbu	a3,109(a1) # 10006d <FH_DU__S_FH_TMBFAUFCAN>
	sb	a6,125(t3) # 10007d <FH_TUERMODUL__MFHZ>
	lui	a1,0x100
	lw	t3,24(sp)
	lbu	t2,106(a1) # 10006a <FH_DU__S_FH_TMBFZUCAN>
	lui	a0,0x100
	lui	a1,0x100
	lbu	a4,103(a1) # 100067 <FH_DU__S_FH_TMBFZUDISC>
	sb	a6,123(a0) # 10007b <FH_TUERMODUL__MFHZ_old>
	lui	a1,0x100
	lui	a6,0x100
	lui	a0,0x100
	lbu	a1,101(a1) # 100065 <FH_DU__S_FH_TMBFAUFDISC>
	sb	t3,122(a6) # 10007a <FH_TUERMODUL__MFHA>
	sb	t3,120(a0) # 100078 <FH_TUERMODUL__MFHA_old>
	lui	a0,0x100
	sb	a5,118(a0) # 100076 <FH_TUERMODUL__EKS_LEISTE_AKTIV_old>
	lui	a0,0x100
	sb	a5,110(a0) # 10006e <FH_DU__EKS_LEISTE_AKTIV_old>
	lui	a5,0x100
	sb	a3,107(a5) # 10006b <FH_DU__S_FH_TMBFAUFCAN_old>
	lui	a5,0x100
	sb	t2,104(a5) # 100068 <FH_DU__S_FH_TMBFZUCAN_old>
	lui	a5,0x100
	sb	a4,102(a5) # 100066 <FH_DU__S_FH_TMBFZUDISC_old>
	lui	a5,0x100
	sb	a1,100(a5) # 100064 <FH_DU__S_FH_TMBFAUFDISC_old>
	lui	a5,0x100
	lbu	a0,92(a5) # 10005c <FH_DU__MFHZ_copy>
	lui	a5,0x100
	lbu	a5,89(a5) # 100059 <FH_DU__MFHA_copy>
	lui	a6,0x100
	lui	t3,0x100
	sb	a2,96(s4)
	sb	a2,94(t3) # 10005e <FH_DU__BLOCK_old>
	lbu	a6,81(a6) # 100051 <stable>
	lui	a2,0x100
	sb	a0,91(a2) # 10005b <FH_DU__MFHZ_old>
	lui	a2,0x100
	sb	a0,93(s1)
	sb	a5,90(s2)
	sb	a5,88(a2) # 100058 <FH_DU__MFHA_old>
	bnez	a6,lab108
	lui	a5,0x100
	lbu	t5,80(a5) # 100050 <step>
	mv	a2,a3
	mv	t0,a4
	mv	s8,a1
	mv	t6,t2
	j	lab109
lab99: 	lui	a5,0x100
	lbu	t2,114(a5) # 100072 <FH_DU__S_FH_FTZU>
	beq	t0,a4,lab101
	lui	a5,0x100
	lbu	a5,97(a5) # 100061 <FH_DU__DOOR_ID>
	beqz	a5,lab110
lab114: 	sb	a4,106(a5) # 10006a <FH_DU__S_FH_TMBFZUCAN>
lab101: 	beq	a2,a3,lab111
	lui	a5,0x100
	lbu	a5,97(a5) # 100061 <FH_DU__DOOR_ID>
	beqz	a5,lab112
lab115: 	beq	a1,s8,lab113
lab116: 	lbu	a2,113(s3)
	sb	a1,109(a5) # 10006d <FH_DU__S_FH_TMBFAUFCAN>
	j	lab113
lab100: 	lui	a5,0x100
	lbu	t2,114(a5) # 100072 <FH_DU__S_FH_FTZU>
	bne	t0,a4,lab114
	bne	a2,a3,lab115
lab111: 	lbu	a2,113(s3)
	beq	a1,s8,lab113
	lui	a5,0x100
	lbu	a5,97(a5) # 100061 <FH_DU__DOOR_ID>
	bnez	a5,lab116
	j	lab113
lab93: 	lbu	a5,90(s2)
	bnez	a5,lab117
	lui	a5,0x100
	lbu	a5,88(a5) # 100058 <FH_DU__MFHA_old>
	beqz	a5,lab117
lab119: 	sb	zero,81(a5) # 100051 <stable>
	lui	a5,0x100
	sw	zero,188(a5) # 1000bc <FH_DU__MFH>
	lui	a0,0x100
	li	a5,2
	sb	a5,67(a0) # 100043 <FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state>
	j	lab117
lab92: 	lbu	a5,93(s1)
	beqz	a5,lab118
	lui	a5,0x100
	lbu	a5,91(a5) # 10005b <FH_DU__MFHZ_old>
	bnez	a5,lab118
	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	lui	a6,0x100
	li	a5,-100
	sw	a5,188(a6) # 1000bc <FH_DU__MFH>
	lui	a5,0x100
	sb	a0,67(a5) # 100043 <FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state>
	j	lab117
lab94: 	lbu	a5,93(s1)
	bnez	a5,lab117
	lui	a5,0x100
	lbu	a5,91(a5) # 10005b <FH_DU__MFHZ_old>
	beqz	a5,lab117
	j	lab119
lab118: 	lbu	a5,90(s2)
	beqz	a5,lab117
	lui	a5,0x100
	lbu	a5,88(a5) # 100058 <FH_DU__MFHA_old>
	bnez	a5,lab117
	lui	a5,0x100
	lui	a0,0x100
	sb	zero,81(a5) # 100051 <stable>
	li	a5,100
	sw	a5,188(a0) # 1000bc <FH_DU__MFH>
	li	a5,3
	lui	a0,0x100
	sb	a5,67(a0) # 100043 <FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state>
	j	lab117
lab106: 	bnez	a2,lab120
	bnez	t2,lab121
	lui	a1,0x100
	sb	zero,81(a1) # 100051 <stable>
	lui	a1,0x100
	sb	zero,130(a1) # 100082 <FH_TUERMODUL__SFHZ_copy>
	lui	a1,0x100
	sb	zero,127(a1) # 10007f <FH_TUERMODUL__SFHA_copy>
	lui	a1,0x100
	sb	a0,76(a1) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
	lui	a1,0x100
	sb	zero,78(a1) # 10004e <ZENTRAL_KINDERSICHERUNG_CTRL_next_state>
	j	lab103
lab105: 	bnez	a4,lab122
	bnez	a3,lab123
	beqz	a5,lab122
	lui	a1,0x100
	sb	zero,81(a1) # 100051 <stable>
	lui	a0,0x100
	li	a1,1
	sb	a1,127(a0) # 10007f <FH_TUERMODUL__SFHA_copy>
	lui	a1,0x100
	sb	a6,76(a1) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
	j	lab103
lab104: 	bnez	a5,lab124
	bnez	a3,lab125
	lui	a1,0x100
	sb	zero,81(a1) # 100051 <stable>
	lui	a1,0x100
	sb	zero,130(a1) # 100082 <FH_TUERMODUL__SFHZ_copy>
	lui	a1,0x100
	sb	zero,127(a1) # 10007f <FH_TUERMODUL__SFHA_copy>
	lui	a0,0x100
	li	a1,3
	sb	a1,76(a0) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
	lui	a1,0x100
	sb	zero,77(a1) # 10004d <MEC_KINDERSICHERUNG_CTRL_next_state>
	j	lab103
lab108: 	lw	ra,92(sp)
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
	cfes 0x1b0a2
	ret
lab102: 	lbu	a2,113(s3)
	j	lab113
lab122: 	bnez	t2,lab126
	beqz	a2,lab103
	bnez	a4,lab103
	lui	a0,0x100
	li	a1,1
	sb	zero,81(a0) # 100051 <stable>
	lui	a0,0x100
	sb	a1,127(a0) # 10007f <FH_TUERMODUL__SFHA_copy>
	lui	a0,0x100
	sb	a1,76(a0) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
	j	lab103
lab124: 	lui	a1,0x100
	lbu	a1,77(a1) # 10004d <MEC_KINDERSICHERUNG_CTRL_next_state>
	li	a0,1
	beq	a1,a0,lab127
lab128: 	sb	zero,81(a1) # 100051 <stable>
	j	lab103
lab120: 	lui	a0,0x100
	lbu	a6,78(a0) # 10004e <ZENTRAL_KINDERSICHERUNG_CTRL_next_state>
	bne	a6,a1,lab128
	lui	a1,0x100
	lbu	a1,139(a1) # 10008b <FH_TUERMODUL__SFHA_ZENTRAL_old>
	bnez	a1,lab129
	lui	a1,0x100
	sb	zero,81(a1) # 100051 <stable>
	lui	a1,0x100
	sb	a6,127(a1) # 10007f <FH_TUERMODUL__SFHA_copy>
	sb	a6,78(a0)
	j	lab103
lab126: 	bnez	a2,lab130
	bnez	a4,lab103
	lui	a0,0x100
	li	a1,1
	sb	zero,81(a0) # 100051 <stable>
	lui	a0,0x100
	sb	a1,130(a0) # 100082 <FH_TUERMODUL__SFHZ_copy>
	lui	a0,0x100
	sb	a1,76(a0) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
	j	lab103
lab125: 	lui	a1,0x100
	lbu	a1,77(a1) # 10004d <MEC_KINDERSICHERUNG_CTRL_next_state>
	li	a0,1
	bne	a1,a0,lab128
	lui	a0,0x100
	lbu	a0,141(a0) # 10008d <FH_TUERMODUL__SFHZ_MEC_old>
	bnez	a0,lab131
lab138: 	li	a1,1
	sb	zero,81(a0) # 100051 <stable>
	lui	a0,0x100
	sb	a1,130(a0) # 100082 <FH_TUERMODUL__SFHZ_copy>
	lui	a0,0x100
	sb	a1,77(a0) # 10004d <MEC_KINDERSICHERUNG_CTRL_next_state>
	j	lab103
lab123: 	beqz	a5,lab132
	lui	a0,0x100
	li	a1,1
	sb	zero,81(a0) # 100051 <stable>
	lui	a0,0x100
	sb	a1,130(a0) # 100082 <FH_TUERMODUL__SFHZ_copy>
	lui	a0,0x100
	sb	a1,127(a0) # 10007f <FH_TUERMODUL__SFHA_copy>
	lui	a1,0x100
	sb	a6,76(a1) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
	j	lab103
lab121: 	lui	a0,0x100
	lbu	a6,78(a0) # 10004e <ZENTRAL_KINDERSICHERUNG_CTRL_next_state>
	bne	a6,a1,lab128
	lui	a1,0x100
	lbu	a1,143(a1) # 10008f <FH_TUERMODUL__SFHZ_ZENTRAL_old>
	bnez	a1,lab133
lab137: 	li	a1,1
	sb	zero,81(a6) # 100051 <stable>
	lui	a6,0x100
	sb	a1,130(a6) # 100082 <FH_TUERMODUL__SFHZ_copy>
	sb	a1,78(a0)
	j	lab103
lab130: 	lui	a0,0x100
	li	a1,1
	sb	zero,81(a0) # 100051 <stable>
	lui	a0,0x100
	sb	a1,127(a0) # 10007f <FH_TUERMODUL__SFHA_copy>
	lui	a0,0x100
	sb	a1,130(a0) # 100082 <FH_TUERMODUL__SFHZ_copy>
	lui	a0,0x100
	sb	a1,76(a0) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
	j	lab103
lab127: 	lui	a0,0x100
	lbu	a0,137(a0) # 100089 <FH_TUERMODUL__SFHA_MEC_old>
	bnez	a0,lab134
	lui	a0,0x100
	sb	zero,81(a0) # 100051 <stable>
	lui	a0,0x100
	sb	a1,127(a0) # 10007f <FH_TUERMODUL__SFHA_copy>
	lui	a0,0x100
	sb	a1,77(a0) # 10004d <MEC_KINDERSICHERUNG_CTRL_next_state>
	j	lab103
lab132: 	lui	a1,0x100
	sb	zero,81(a1) # 100051 <stable>
	lui	a0,0x100
	li	a1,1
	sb	a1,130(a0) # 100082 <FH_TUERMODUL__SFHZ_copy>
	lui	a1,0x100
	sb	a6,76(a1) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
	j	lab103
lab134: 	lui	a0,0x100
	lbu	a0,141(a0) # 10008d <FH_TUERMODUL__SFHZ_MEC_old>
	bnez	a3,lab135
	beqz	a0,lab103
	lui	a0,0x100
	sb	zero,81(a0) # 100051 <stable>
	lui	a0,0x100
	sb	zero,130(a0) # 100082 <FH_TUERMODUL__SFHZ_copy>
	lui	a0,0x100
	sb	a1,77(a0) # 10004d <MEC_KINDERSICHERUNG_CTRL_next_state>
	j	lab103
lab129: 	lui	a1,0x100
	lbu	a1,143(a1) # 10008f <FH_TUERMODUL__SFHZ_ZENTRAL_old>
	bnez	t2,lab136
	beqz	a1,lab103
	lui	a1,0x100
	sb	zero,81(a1) # 100051 <stable>
	lui	a1,0x100
	sb	zero,130(a1) # 100082 <FH_TUERMODUL__SFHZ_copy>
	sb	a6,78(a0)
	j	lab103
lab131: 	lui	a0,0x100
	lbu	a0,137(a0) # 100089 <FH_TUERMODUL__SFHA_MEC_old>
	beqz	a0,lab103
	lui	a0,0x100
	sb	zero,81(a0) # 100051 <stable>
	lui	a0,0x100
	sb	zero,127(a0) # 10007f <FH_TUERMODUL__SFHA_copy>
	lui	a0,0x100
	sb	a1,77(a0) # 10004d <MEC_KINDERSICHERUNG_CTRL_next_state>
	j	lab103
lab133: 	lui	a1,0x100
	lbu	a1,139(a1) # 10008b <FH_TUERMODUL__SFHA_ZENTRAL_old>
	beqz	a1,lab103
	lui	a1,0x100
	sb	zero,81(a1) # 100051 <stable>
	lui	a1,0x100
	sb	zero,127(a1) # 10007f <FH_TUERMODUL__SFHA_copy>
	sb	a6,78(a0)
	j	lab103
lab136: 	beqz	a1,lab137
	j	lab103
lab135: 	beqz	a0,lab138
	j	lab103
benchmark_body.constprop.0:
	addi	sp,sp,-64
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s6,32(sp)
	sw	s7,28(sp)
	sw	s8,24(sp)
	sw	s9,20(sp)
	sw	s10,16(sp)
	sw	s11,12(sp)
	sw	ra,60(sp)
	li	s0,1964
	lui	s11,0x100
	lui	s10,0x100
	lui	s9,0x100
	lui	s8,0x100
	lui	s7,0x100
	lui	s6,0x100
	lui	s5,0x100
	lui	s4,0x100
	lui	s3,0x100
	lui	s2,0x100
	lui	s1,0x100
lab139: 	li	a1,0
	mv	a0,s11
	jal	ra,memset
	lui	a5,0x100
	sb	zero,72(a5) # 100048 <INITIALISIERT_FH_TUERMODUL_CTRL_next_state>
	lui	a5,0x100
	sb	zero,71(a5) # 100047 <TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
	lui	a5,0x100
	sb	zero,70(a5) # 100046 <MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
	lui	a5,0x100
	sb	zero,69(a5) # 100045 <OEFFNEN_FH_TUERMODUL_CTRL_next_state>
	lui	a5,0x100
	sb	zero,68(a5) # 100044 <SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
	lui	a5,0x100
	sb	zero,67(a5) # 100043 <FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state>
	lui	a5,0x100
	sb	zero,66(a5) # 100042 <EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state>
	lui	a5,0x100
	addi	s0,s0,-1
	sb	zero,65(a5) # 100041 <BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state>
	lui	a5,0x100
	sb	zero,64(a5) # 100040 <BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state>
	sw	zero,244(s10) # 1000f4 <tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy>
	sw	zero,240(s9) # 1000f0 <tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL>
	sw	zero,236(s8) # 1000ec <tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL>
	sb	zero,79(s7) # 10004f <NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state>
	sb	zero,78(s6) # 10004e <ZENTRAL_KINDERSICHERUNG_CTRL_next_state>
	sb	zero,77(s5) # 10004d <MEC_KINDERSICHERUNG_CTRL_next_state>
	sb	zero,76(s4) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
	sb	zero,75(s3) # 10004b <B_FH_TUERMODUL_CTRL_next_state>
	sb	zero,74(s2) # 10004a <A_FH_TUERMODUL_CTRL_next_state>
	sb	zero,73(s1) # 100049 <WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state>
	jal	ra,interface
	jal	ra,FH_DU
	cfed 0x1a1c3
	bnez	s0,lab139
	lw	ra,60(sp)
	lw	s0,56(sp)
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
	li	a0,0
	addi	sp,sp,64
	cfes 0xda8dc
	ret
benchmark_body.isra.0:
	blez	a0,lab140
	addi	sp,sp,-64
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s6,32(sp)
	sw	s7,28(sp)
	sw	s8,24(sp)
	sw	s9,20(sp)
	sw	s10,16(sp)
	sw	s11,12(sp)
	sw	ra,60(sp)
	mv	s1,a0
	li	s0,0
	lui	s11,0x100
	lui	s10,0x100
	lui	s9,0x100
	lui	s8,0x100
	lui	s7,0x100
	lui	s6,0x100
	lui	s5,0x100
	lui	s4,0x100
	lui	s3,0x100
	lui	s2,0x100
lab141: 	li	a1,0
	mv	a0,s11
	jal	ra,memset
	lui	a5,0x100
	sb	zero,73(a5) # 100049 <WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state>
	lui	a5,0x100
	sb	zero,72(a5) # 100048 <INITIALISIERT_FH_TUERMODUL_CTRL_next_state>
	lui	a5,0x100
	sb	zero,71(a5) # 100047 <TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
	lui	a5,0x100
	sb	zero,70(a5) # 100046 <MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
	lui	a5,0x100
	sb	zero,69(a5) # 100045 <OEFFNEN_FH_TUERMODUL_CTRL_next_state>
	lui	a5,0x100
	sb	zero,68(a5) # 100044 <SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
	lui	a5,0x100
	sb	zero,67(a5) # 100043 <FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state>
	lui	a5,0x100
	sb	zero,66(a5) # 100042 <EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state>
	lui	a5,0x100
	addi	s0,s0,1
	sb	zero,65(a5) # 100041 <BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state>
	lui	a5,0x100
	sb	zero,64(a5) # 100040 <BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state>
	sw	zero,244(s10) # 1000f4 <tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy>
	sw	zero,240(s9) # 1000f0 <tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL>
	sw	zero,236(s8) # 1000ec <tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL>
	sb	zero,79(s7) # 10004f <NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state>
	sb	zero,78(s6) # 10004e <ZENTRAL_KINDERSICHERUNG_CTRL_next_state>
	sb	zero,77(s5) # 10004d <MEC_KINDERSICHERUNG_CTRL_next_state>
	sb	zero,76(s4) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
	sb	zero,75(s3) # 10004b <B_FH_TUERMODUL_CTRL_next_state>
	sb	zero,74(s2) # 10004a <A_FH_TUERMODUL_CTRL_next_state>
	jal	ra,interface
	jal	ra,FH_DU
	cfed 0x5a1c3
	bne	s0,s1,lab141
	lw	ra,60(sp)
	lw	s0,56(sp)
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
	cfes 0x79890
	ret
lab140:	cfes 0xb9890
 	ret
warm_caches:
	j	benchmark_body.isra.0
benchmark:
	j	benchmark_body.constprop.0
initialise_benchmark:
	ret
verify_benchmark:
	lui	a5,0x100
	addi	sp,sp,-64
	addi	a5,a5,248 # 1000f8 <_bss_end>
	mv	a4,sp
	addi	a6,a5,64
lab142: 	lw	a1,4(a5)
	lw	a2,8(a5)
	lw	a3,12(a5)
	sw	a0,0(a4)
	sw	a1,4(a4)
	sw	a2,8(a4)
	sw	a3,12(a4)
	addi	a5,a5,16
	addi	a4,a4,16
	bne	a5,a6,lab142
	lui	a5,0x100
	mv	a5,a5
	mv	a4,sp
	addi	a1,a5,64 # 100040 <BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state>
	j	lab143
lab145: lab143: 	lbu	a2,0(a5)
	lbu	a3,0(a4)
	addi	a5,a5,1
	addi	a4,a4,1
	beq	a2,a3,lab145
lab147: lab146: 	ret
lab144: 	lui	a4,0x100
	lui	a5,0x100
	lw	a3,240(a4) # 1000f0 <tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL>
	lw	a5,244(a5) # 1000f4 <tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy>
	lui	a4,0x100
	lw	a4,236(a4) # 1000ec <tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL>
	or	a5,a5,a3
	li	a0,0
	or	a5,a5,a4
	bnez	a5,lab146
	lui	a5,0x100
	lbu	a4,76(a5) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
	li	a5,3
	bne	a4,a5,lab146
	lui	a5,0x100
	lbu	a4,75(a5) # 10004b <B_FH_TUERMODUL_CTRL_next_state>
	li	a5,2
	bne	a4,a5,lab146
	lui	a5,0x100
	lbu	a3,74(a5) # 10004a <A_FH_TUERMODUL_CTRL_next_state>
	li	a5,1
	bne	a3,a5,lab146
	lui	a5,0x100
	lbu	a5,73(a5) # 100049 <WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state>
	bne	a5,a3,lab146
	lui	a3,0x100
	lbu	a3,67(a3) # 100043 <FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state>
	bne	a3,a4,lab146
	lui	a4,0x100
	lbu	a4,66(a4) # 100042 <EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state>
	bne	a4,a5,lab146
	lui	a4,0x100
	lui	a5,0x100
	lbu	a1,78(a4) # 10004e <ZENTRAL_KINDERSICHERUNG_CTRL_next_state>
	lbu	a5,79(a5) # 10004f <NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state>
	lui	a4,0x100
	lbu	a2,77(a4) # 10004d <MEC_KINDERSICHERUNG_CTRL_next_state>
	lui	a4,0x100
	lbu	a3,72(a4) # 100048 <INITIALISIERT_FH_TUERMODUL_CTRL_next_state>
	lui	a4,0x100
	lbu	a4,71(a4) # 100047 <TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
	or	a5,a5,a1
	lui	a1,0x100
	or	a5,a5,a2
	lbu	a1,70(a1) # 100046 <MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
	lui	a2,0x100
	or	a5,a5,a3
	lbu	a2,69(a2) # 100045 <OEFFNEN_FH_TUERMODUL_CTRL_next_state>
	lui	a3,0x100
	or	a5,a5,a4
	lbu	a3,68(a3) # 100044 <SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
	lui	a4,0x100
	lbu	a4,65(a4) # 100041 <BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state>
	or	a5,a5,a1
	or	a5,a5,a2
	or	a5,a5,a3
	or	a5,a5,a4
	bnez	a5,lab147
	lui	a5,0x100
	lbu	a0,64(a5) # 100040 <BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state>
	addi	a0,a0,-1
	seqz	a0,a0
	j	lab146
main:
	addi	sp,sp,-32
	sw	ra,28(sp)
	jal	ra,initialise_board
	jal	ra,initialise_benchmark
	li	a0,0
	jal	ra,warm_caches
	cfed 0x3b9d5
	cfed 0x3b9d5
	jal	ra,start_trigger
	jal	ra,benchmark
	cfed 0x108ba
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

Bitlist:
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state:
	.4byte	0x
BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state:
	.4byte	0x
EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state:
	.4byte	0x
FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state:
	.4byte	0x
SCHLIESSEN_FH_TUERMODUL_CTRL_next_state:
	.4byte	0x
OEFFNEN_FH_TUERMODUL_CTRL_next_state:
	.4byte	0x
MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state:
	.4byte	0x
TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state:
	.4byte	0x
INITIALISIERT_FH_TUERMODUL_CTRL_next_state:
	.4byte	0x
WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state:
	.4byte	0x
A_FH_TUERMODUL_CTRL_next_state:
	.4byte	0x
B_FH_TUERMODUL_CTRL_next_state:
	.4byte	0x
KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state:
	.4byte	0x
MEC_KINDERSICHERUNG_CTRL_next_state:
	.4byte	0x
ZENTRAL_KINDERSICHERUNG_CTRL_next_state:
	.4byte	0x
NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state:
	.4byte	0x
step:
	.4byte	0x
stable:
	.4byte	0x0000
	.4byte	0x
time:
	.4byte	0x0000
	.4byte	0x0000
FH_DU__MFHA_old:
	.4byte	0x
FH_DU__MFHA_copy:
	.4byte	0x
FH_DU__MFHA:
	.4byte	0x
FH_DU__MFHZ_old:
	.4byte	0x
FH_DU__MFHZ_copy:
	.4byte	0x
FH_DU__MFHZ:
	.4byte	0x
FH_DU__BLOCK_old:
	.4byte	0x
FH_DU__BLOCK_copy:
	.4byte	0x
FH_DU__BLOCK:
	.4byte	0x
FH_DU__DOOR_ID:
	.4byte	0x
FH_DU__S_FH_AUFDISC:
	.4byte	0x
FH_DU__S_FH_ZUDISC:
	.4byte	0x
FH_DU__S_FH_TMBFAUFDISC_old:
	.4byte	0x
FH_DU__S_FH_TMBFAUFDISC:
	.4byte	0x
FH_DU__S_FH_TMBFZUDISC_old:
	.4byte	0x
FH_DU__S_FH_TMBFZUDISC:
	.4byte	0x
FH_DU__S_FH_TMBFZUCAN_old:
	.4byte	0x
FH_DU__S_FH_TMBFZUCAN_copy:
	.4byte	0x
FH_DU__S_FH_TMBFZUCAN:
	.4byte	0x
FH_DU__S_FH_TMBFAUFCAN_old:
	.4byte	0x
FH_DU__S_FH_TMBFAUFCAN_copy:
	.4byte	0x
FH_DU__S_FH_TMBFAUFCAN:
	.4byte	0x
FH_DU__EKS_LEISTE_AKTIV_old:
	.4byte	0x
FH_DU__EKS_LEISTE_AKTIV:
	.4byte	0x
FH_DU__FT:
	.4byte	0x
FH_DU__S_FH_FTAUF:
	.4byte	0x
FH_DU__S_FH_FTZU:
	.4byte	0x
FH_DU__KL_50:
	.4byte	0x
FH_TUERMODUL__COM_CLOSE:
	.4byte	0x
FH_TUERMODUL__COM_OPEN:
	.4byte	0x
FH_TUERMODUL__EKS_LEISTE_AKTIV_old:
	.4byte	0x
FH_TUERMODUL__EKS_LEISTE_AKTIV:
	.4byte	0x
FH_TUERMODUL__MFHA_old:
	.4byte	0x
FH_TUERMODUL__MFHA_copy:
	.4byte	0x
FH_TUERMODUL__MFHA:
	.4byte	0x
FH_TUERMODUL__MFHZ_old:
	.4byte	0x
FH_TUERMODUL__MFHZ_copy:
	.4byte	0x
FH_TUERMODUL__MFHZ:
	.4byte	0x
FH_TUERMODUL__SFHA_old:
	.4byte	0x
FH_TUERMODUL__SFHA_copy:
	.4byte	0x
FH_TUERMODUL__SFHA:
	.4byte	0x
FH_TUERMODUL__SFHZ_old:
	.4byte	0x
FH_TUERMODUL__SFHZ_copy:
	.4byte	0x
FH_TUERMODUL__SFHZ:
	.4byte	0x
FH_TUERMODUL__FT:
	.4byte	0x
FH_TUERMODUL__BLOCK_old:
	.4byte	0x
FH_TUERMODUL__BLOCK_copy:
	.4byte	0x
FH_TUERMODUL__BLOCK:
	.4byte	0x
FH_TUERMODUL__KL_50:
	.4byte	0x
FH_TUERMODUL__SFHA_MEC_old:
	.4byte	0x
FH_TUERMODUL__SFHA_MEC:
	.4byte	0x
FH_TUERMODUL__SFHA_ZENTRAL_old:
	.4byte	0x
FH_TUERMODUL__SFHA_ZENTRAL:
	.4byte	0x
FH_TUERMODUL__SFHZ_MEC_old:
	.4byte	0x
FH_TUERMODUL__SFHZ_MEC:
	.4byte	0x
FH_TUERMODUL__SFHZ_ZENTRAL_old:
	.4byte	0x
FH_TUERMODUL__SFHZ_ZENTRAL:
	.4byte	0x
FH_TUERMODUL_CTRL__FT:
	.4byte	0x
FH_TUERMODUL_CTRL__INREVERS1_copy:
	.4byte	0x
FH_TUERMODUL_CTRL__INREVERS1:
	.4byte	0x
FH_TUERMODUL_CTRL__INREVERS2_copy:
	.4byte	0x
FH_TUERMODUL_CTRL__INREVERS2:
	.4byte	0x0000
	.4byte	0x
BLOCK_ERKENNUNG_CTRL__N_old:
	.4byte	0x0000
	.4byte	0x0000
BLOCK_ERKENNUNG_CTRL__N_copy:
	.4byte	0x0000
	.4byte	0x0000
BLOCK_ERKENNUNG_CTRL__N:
	.4byte	0x0000
	.4byte	0x0000
BLOCK_ERKENNUNG_CTRL__I_EIN_MAX_copy:
	.4byte	0x0000
	.4byte	0x0000
BLOCK_ERKENNUNG_CTRL__I_EIN_MAX:
	.4byte	0x0000
	.4byte	0x0000
FH_DU__I_EIN_old:
	.4byte	0x0000
	.4byte	0x0000
FH_DU__I_EIN:
	.4byte	0x0000
	.4byte	0x0000
FH_DU__POSITION:
	.4byte	0x0000
	.4byte	0x0000
FH_DU__MFH_copy:
	.4byte	0x0000
	.4byte	0x0000
FH_DU__MFH:
	.4byte	0x0000
	.4byte	0x0000
FH_TUERMODUL__I_EIN_old:
	.4byte	0x0000
	.4byte	0x0000
FH_TUERMODUL__I_EIN:
	.4byte	0x0000
	.4byte	0x0000
FH_TUERMODUL__POSITION:
	.4byte	0x0000
	.4byte	0x0000
sc_FH_TUERMODUL_CTRL_1739_10:
	.4byte	0x0000
	.4byte	0x0000
sc_FH_TUERMODUL_CTRL_1781_10:
	.4byte	0x0000
	.4byte	0x0000
FH_TUERMODUL_CTRL__N_old:
	.4byte	0x0000
	.4byte	0x0000
FH_TUERMODUL_CTRL__N_copy:
	.4byte	0x0000
	.4byte	0x0000
FH_TUERMODUL_CTRL__N:
	.4byte	0x0000
	.4byte	0x0000
sc_FH_TUERMODUL_CTRL_2329_1:
	.4byte	0x0000
	.4byte	0x0000
sc_FH_TUERMODUL_CTRL_2352_1:
	.4byte	0x0000
	.4byte	0x0000
sc_FH_TUERMODUL_CTRL_2375_2:
	.4byte	0x0000
	.4byte	0x0000
tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL:
	.4byte	0x0000
	.4byte	0x0000
tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL:
	.4byte	0x0000
	.4byte	0x0000
tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy:
	.4byte	0x0000
	.4byte	0x0000


	.section .rodata

config_mem_words_40:
	.4byte	0x0000
	.4byte	0x0000
	.2byte	0x100
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
	.4byte	0x0000
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
