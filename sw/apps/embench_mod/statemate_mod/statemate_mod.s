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
lab8: 	lui	a3,0x100
	lbu	a2,74(a3) # 10004a <A_FH_TUERMODUL_CTRL_next_state>
	li	a4,1
	beq	a2,a4,lab5
	lui	a2,0x100
	sb	zero,81(a2) # 100051 <stable>
	sb	a4,74(a3)
	lui	a2,0x100
	lui	a3,0x100
	sw	zero,220(a2) # 1000dc <FH_TUERMODUL_CTRL__N>
	sb	a4,73(a3) # 100049 <WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state>
lab7: 	lbu	a3,4(a5)
	lbu	a4,6(a5)
	sb	a3,5(a5)
	sb	a4,7(a5)
	ret
lab5: 	lui	a4,0x100
	lbu	a4,80(a4) # 100050 <step>
	beq	a4,a2,lab6
	lui	a4,0x100
	lbu	a3,73(a4) # 100049 <WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state>
	beq	a3,a2,lab7
lab24: 	lui	a3,0x100
	sb	zero,81(a3) # 100051 <stable>
	li	a3,1
	sb	a3,73(a4)
	lbu	a3,4(a5)
	lbu	a4,6(a5)
	sb	a3,5(a5)
	sb	a4,7(a5)
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
lab18: 	lui	a3,0x100
	lbu	a4,72(a3) # 100048 <INITIALISIERT_FH_TUERMODUL_CTRL_next_state>
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
lab21: 	li	a4,2
	sb	a4,75(a2)
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
lab41: 	lui	a4,0x100
	sb	zero,81(a4) # 100051 <stable>
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
	bnez	a4,lab43
	lbu	a4,6(a5)
	bnez	a4,lab44
lab52: 	lui	a3,0x100
	lw	a4,232(a3) # 1000e8 <sc_FH_TUERMODUL_CTRL_2375_2>
	beqz	a4,lab45
	lui	a2,0x100
	lw	a2,84(a2) # 100054 <time>
	beq	a4,a2,lab45
	lui	a4,0x100
	sb	zero,121(a4) # 100079 <FH_TUERMODUL__MFHA_copy>
	sw	zero,232(a3)
lab45: 	lui	a3,0x100
	lw	a4,228(a3) # 1000e4 <sc_FH_TUERMODUL_CTRL_2352_1>
	beqz	a4,lab46
	lui	a2,0x100
	lw	a2,84(a2) # 100054 <time>
	beq	a4,a2,lab46
	lui	a4,0x100
	sb	zero,124(a4) # 10007c <FH_TUERMODUL__MFHZ_copy>
	sw	zero,228(a3)
lab46: 	lui	a3,0x100
	lw	a4,224(a3) # 1000e0 <sc_FH_TUERMODUL_CTRL_2329_1>
	beqz	a4,lab47
	lui	a2,0x100
	lw	a2,84(a2) # 100054 <time>
	beq	a4,a2,lab47
	lui	a4,0x100
	sb	zero,124(a4) # 10007c <FH_TUERMODUL__MFHZ_copy>
	sw	zero,224(a3)
lab47: 	lui	a3,0x100
	lw	a4,208(a3) # 1000d0 <sc_FH_TUERMODUL_CTRL_1781_10>
	beqz	a4,lab48
	lui	a2,0x100
	lw	a2,84(a2) # 100054 <time>
	beq	a4,a2,lab48
	sw	zero,208(a3)
lab48: 	lui	a3,0x100
	lw	a4,204(a3) # 1000cc <sc_FH_TUERMODUL_CTRL_1739_10>
	beqz	a4,lab49
	lui	a2,0x100
	lw	a2,84(a2) # 100054 <time>
	beq	a4,a2,lab49
	sw	zero,204(a3)
lab49: 	lbu	a5,0(a5)
	bnez	a5,lab50
	lui	a5,0x100
	lw	a4,160(a5) # 1000a0 <BLOCK_ERKENNUNG_CTRL__N>
	lui	a5,0x100
	lw	a5,152(a5) # 100098 <BLOCK_ERKENNUNG_CTRL__N_old>
	beq	a4,a5,lab51
lab50: 	lui	a5,0x100
	lw	a4,84(a5) # 100054 <time>
	lui	a5,0x100
	sw	a4,244(a5) # 1000f4 <tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy>
lab51: 	ret
lab43: 	lui	a4,0x100
	lw	a4,84(a4) # 100054 <time>
	lui	a3,0x100
	sw	a4,236(a3) # 1000ec <tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL>
lab53: 	lui	a3,0x100
	sw	a4,240(a3) # 1000f0 <tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL>
	j	lab52
lab44: 	lui	a4,0x100
	lw	a4,84(a4) # 100054 <time>
	j	lab53
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
	beqz	a5,lab54
	lui	a4,0x100
	lbu	a5,76(a4) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
	li	a2,2
	beq	a5,a2,lab55
	li	a3,3
	beq	a5,a3,lab56
	li	a2,1
	beq	a5,a2,lab57
	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	sb	a3,76(a4)
	ret
lab56: 	lui	a5,0x100
	lbu	a5,136(a5) # 100088 <FH_TUERMODUL__KL_50>
	beqz	a5,lab58
	lui	a5,0x100
	lbu	a5,144(a5) # 100090 <FH_TUERMODUL__SFHZ_ZENTRAL>
	bnez	a5,lab59
lab54: 	ret
lab55: 	lui	a5,0x100
	lbu	a5,138(a5) # 10008a <FH_TUERMODUL__SFHA_MEC>
	bnez	a5,lab60
	lui	a5,0x100
	lbu	a5,142(a5) # 10008e <FH_TUERMODUL__SFHZ_MEC>
	beqz	a5,lab61
	lui	a5,0x100
	lbu	a4,77(a5) # 10004d <MEC_KINDERSICHERUNG_CTRL_next_state>
	li	a3,1
	bne	a4,a3,lab62
	lui	a3,0x100
	lbu	a3,141(a3) # 10008d <FH_TUERMODUL__SFHZ_MEC_old>
	bnez	a3,lab63
lab79: 	lui	a3,0x100
	li	a4,1
	sb	zero,81(a3) # 100051 <stable>
	lui	a3,0x100
	sb	a4,130(a3) # 100082 <FH_TUERMODUL__SFHZ_copy>
	sb	a4,77(a5)
	ret
lab57: 	lui	a2,0x100
	lbu	a2,140(a2) # 10008c <FH_TUERMODUL__SFHA_ZENTRAL>
	bnez	a2,lab64
	lui	a2,0x100
	lbu	a2,144(a2) # 100090 <FH_TUERMODUL__SFHZ_ZENTRAL>
	beqz	a2,lab65
	lui	a4,0x100
	lbu	a3,78(a4) # 10004e <ZENTRAL_KINDERSICHERUNG_CTRL_next_state>
	bne	a3,a5,lab62
	lui	a5,0x100
	lbu	a5,143(a5) # 10008f <FH_TUERMODUL__SFHZ_ZENTRAL_old>
	bnez	a5,lab66
lab78: 	lui	a3,0x100
	li	a5,1
	sb	zero,81(a3) # 100051 <stable>
	lui	a3,0x100
	sb	a5,130(a3) # 100082 <FH_TUERMODUL__SFHZ_copy>
	sb	a5,78(a4)
	ret
lab60: 	lui	a5,0x100
	lbu	a4,77(a5) # 10004d <MEC_KINDERSICHERUNG_CTRL_next_state>
	li	a3,1
	beq	a4,a3,lab67
lab62: 	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	ret
lab64: 	lui	a4,0x100
	lbu	a3,78(a4) # 10004e <ZENTRAL_KINDERSICHERUNG_CTRL_next_state>
	bne	a3,a5,lab62
	lui	a5,0x100
	lbu	a5,139(a5) # 10008b <FH_TUERMODUL__SFHA_ZENTRAL_old>
	bnez	a5,lab68
	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	lui	a5,0x100
	sb	a3,127(a5) # 10007f <FH_TUERMODUL__SFHA_copy>
	sb	a3,78(a4)
	ret
lab58: 	lui	a5,0x100
	lbu	a5,142(a5) # 10008e <FH_TUERMODUL__SFHZ_MEC>
	lui	a3,0x100
	lbu	a3,138(a3) # 10008a <FH_TUERMODUL__SFHA_MEC>
	beqz	a5,lab69
	bnez	a3,lab70
	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	li	a3,1
	lui	a5,0x100
	sb	a3,130(a5) # 100082 <FH_TUERMODUL__SFHZ_copy>
	sb	a2,76(a4)
	ret
lab65: 	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	lui	a5,0x100
	sb	zero,130(a5) # 100082 <FH_TUERMODUL__SFHZ_copy>
	lui	a5,0x100
	sb	zero,127(a5) # 10007f <FH_TUERMODUL__SFHA_copy>
	lui	a5,0x100
	sb	a3,76(a4)
	sb	zero,78(a5) # 10004e <ZENTRAL_KINDERSICHERUNG_CTRL_next_state>
	ret
lab61: 	lui	a5,0x100
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
lab69: 	beqz	a3,lab71
	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	li	a3,1
	lui	a5,0x100
	sb	a3,127(a5) # 10007f <FH_TUERMODUL__SFHA_copy>
	sb	a2,76(a4)
	ret
lab59: 	lui	a5,0x100
	lbu	a5,140(a5) # 10008c <FH_TUERMODUL__SFHA_ZENTRAL>
	bnez	a5,lab72
	ret
lab67: 	lui	a3,0x100
	lbu	a3,137(a3) # 100089 <FH_TUERMODUL__SFHA_MEC_old>
	bnez	a3,lab73
	lui	a3,0x100
	sb	zero,81(a3) # 100051 <stable>
	lui	a3,0x100
	sb	a4,127(a3) # 10007f <FH_TUERMODUL__SFHA_copy>
	sb	a4,77(a5)
	ret
lab72: 	lui	a3,0x100
	li	a5,1
	sb	zero,81(a3) # 100051 <stable>
	lui	a3,0x100
	sb	a5,127(a3) # 10007f <FH_TUERMODUL__SFHA_copy>
	lui	a3,0x100
	sb	a5,130(a3) # 100082 <FH_TUERMODUL__SFHZ_copy>
	sb	a5,76(a4)
	ret
lab70: 	lui	a3,0x100
	li	a5,1
	sb	zero,81(a3) # 100051 <stable>
	lui	a3,0x100
	sb	a5,130(a3) # 100082 <FH_TUERMODUL__SFHZ_copy>
	lui	a3,0x100
	sb	a5,127(a3) # 10007f <FH_TUERMODUL__SFHA_copy>
	sb	a2,76(a4)
	ret
lab71: 	lui	a5,0x100
	lbu	a5,144(a5) # 100090 <FH_TUERMODUL__SFHZ_ZENTRAL>
	bnez	a5,lab74
	lui	a5,0x100
	lbu	a5,140(a5) # 10008c <FH_TUERMODUL__SFHA_ZENTRAL>
	bnez	a5,lab75
	ret
lab74: 	lui	a5,0x100
	lbu	a5,140(a5) # 10008c <FH_TUERMODUL__SFHA_ZENTRAL>
	bnez	a5,lab72
	lui	a3,0x100
	li	a5,1
	sb	zero,81(a3) # 100051 <stable>
	lui	a3,0x100
	sb	a5,130(a3) # 100082 <FH_TUERMODUL__SFHZ_copy>
	sb	a5,76(a4)
	ret
lab75: 	lui	a3,0x100
	li	a5,1
	sb	zero,81(a3) # 100051 <stable>
	lui	a3,0x100
	sb	a5,127(a3) # 10007f <FH_TUERMODUL__SFHA_copy>
	sb	a5,76(a4)
	ret
lab68: 	lui	a5,0x100
	lbu	a5,144(a5) # 100090 <FH_TUERMODUL__SFHZ_ZENTRAL>
	lui	a2,0x100
	lbu	a2,143(a2) # 10008f <FH_TUERMODUL__SFHZ_ZENTRAL_old>
	bnez	a5,lab76
	beqz	a2,lab54
	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	lui	a5,0x100
	sb	zero,130(a5) # 100082 <FH_TUERMODUL__SFHZ_copy>
	sb	a3,78(a4)
	ret
lab73: 	lui	a3,0x100
	lbu	a3,142(a3) # 10008e <FH_TUERMODUL__SFHZ_MEC>
	lui	a2,0x100
	lbu	a2,141(a2) # 10008d <FH_TUERMODUL__SFHZ_MEC_old>
	bnez	a3,lab77
	beqz	a2,lab54
	lui	a3,0x100
	sb	zero,81(a3) # 100051 <stable>
	lui	a3,0x100
	sb	zero,130(a3) # 100082 <FH_TUERMODUL__SFHZ_copy>
	sb	a4,77(a5)
	ret
lab66: 	lui	a5,0x100
	lbu	a5,139(a5) # 10008b <FH_TUERMODUL__SFHA_ZENTRAL_old>
	beqz	a5,lab54
	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	lui	a5,0x100
	sb	zero,127(a5) # 10007f <FH_TUERMODUL__SFHA_copy>
	sb	a3,78(a4)
	ret
lab63: 	lui	a3,0x100
	lbu	a3,137(a3) # 100089 <FH_TUERMODUL__SFHA_MEC_old>
	beqz	a3,lab54
	lui	a3,0x100
	sb	zero,81(a3) # 100051 <stable>
	lui	a3,0x100
	sb	zero,127(a3) # 10007f <FH_TUERMODUL__SFHA_copy>
	sb	a4,77(a5)
	ret
lab76: 	beqz	a2,lab78
	ret
lab77: 	beqz	a2,lab79
	ret
generic_FH_TUERMODUL_CTRL:
	lui	a5,0x100
	mv	a5,a5
	lbu	a4,13(a5) # 10000d <Bitlist+0xd>
	beqz	a4,lab80
	j	generic_FH_TUERMODUL_CTRL.part.0
lab80: 	lbu	a4,15(a5)
	beqz	a4,lab81
	lbu	a4,14(a5)
	bnez	a4,lab81
	sb	zero,4(a5)
	sb	zero,6(a5)
lab81: 	ret
generic_EINKLEMMSCHUTZ_CTRL:
	lui	a5,0x100
	mv	a5,a5
	lbu	a4,16(a5) # 100010 <Bitlist+0x10>
	beqz	a4,lab82
	lui	a3,0x100
	lbu	a4,66(a3) # 100042 <EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state>
	li	a2,1
	beq	a4,a2,lab83
	li	a1,2
	bne	a4,a1,lab84
	lui	a4,0x100
	lbu	a4,119(a4) # 100077 <FH_TUERMODUL__EKS_LEISTE_AKTIV>
	sb	zero,24(a5)
	bnez	a4,lab82
	lui	a5,0x100
	lbu	a5,118(a5) # 100076 <FH_TUERMODUL__EKS_LEISTE_AKTIV_old>
	beqz	a5,lab82
lab84: 	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	sb	a2,66(a3)
lab82: 	ret
lab83: 	lui	a4,0x100
	lbu	a4,119(a4) # 100077 <FH_TUERMODUL__EKS_LEISTE_AKTIV>
	beqz	a4,lab82
	lui	a4,0x100
	lbu	a4,118(a4) # 100076 <FH_TUERMODUL__EKS_LEISTE_AKTIV_old>
	bnez	a4,lab82
	lui	a4,0x100
	lbu	a4,131(a4) # 100083 <FH_TUERMODUL__SFHZ>
	beqz	a4,lab85
	lui	a4,0x100
	lbu	a4,128(a4) # 100080 <FH_TUERMODUL__SFHA>
	bnez	a4,lab82
lab85: 	lui	a4,0x100
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
	beqz	a4,lab86
	lui	a3,0x100
	lbu	a4,64(a3) # 100040 <BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state>
	li	a2,1
	beq	a4,a2,lab87
	li	a1,2
	bne	a4,a1,lab88
	lui	a4,0x100
	lbu	a4,122(a4) # 10007a <FH_TUERMODUL__MFHA>
	bnez	a4,lab89
	lui	a4,0x100
	lbu	a4,120(a4) # 100078 <FH_TUERMODUL__MFHA_old>
	bnez	a4,lab90
lab89: 	lui	a4,0x100
	lbu	a4,125(a4) # 10007d <FH_TUERMODUL__MFHZ>
	bnez	a4,lab91
	lui	a4,0x100
	lbu	a4,123(a4) # 10007b <FH_TUERMODUL__MFHZ_old>
	bnez	a4,lab90
lab91: 	lui	a3,0x100
	lbu	a4,65(a3) # 100041 <BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state>
	li	a2,2
	beq	a4,a2,lab92
	li	a0,3
	beq	a4,a0,lab93
	li	a1,1
	beq	a4,a1,lab94
	lui	a4,0x100
	sb	zero,81(a4) # 100051 <stable>
	lui	a4,0x100
	sw	zero,160(a4) # 1000a0 <BLOCK_ERKENNUNG_CTRL__N>
	lui	a4,0x100
	sw	a2,168(a4) # 1000a8 <BLOCK_ERKENNUNG_CTRL__I_EIN_MAX>
	sb	a0,65(a3)
	sb	a1,0(a5)
	ret
lab86: 	lbu	a4,21(a5)
	beqz	a4,lab95
	lbu	a4,20(a5)
	bnez	a4,lab95
	sb	zero,0(a5)
	ret
lab88: 	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	sb	a2,64(a3)
lab95: 	ret
lab87: 	lui	a2,0x100
	lui	a1,0x100
	lw	a2,196(a2) # 1000c4 <FH_TUERMODUL__I_EIN>
	lw	a1,192(a1) # 1000c0 <FH_TUERMODUL__I_EIN_old>
	beq	a2,a1,lab95
	blez	a2,lab95
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
lab90: 	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	li	a5,1
	sb	a5,64(a3)
	lui	a5,0x100
	sb	zero,65(a5) # 100041 <BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state>
	ret
lab94: 	ret
lab93: 	lui	a4,0x100
	lw	a4,160(a4) # 1000a0 <BLOCK_ERKENNUNG_CTRL__N>
	sb	zero,0(a5)
	li	a5,11
	bne	a4,a5,lab95
	lui	a5,0x100
	lw	a5,152(a5) # 100098 <BLOCK_ERKENNUNG_CTRL__N_old>
	beq	a5,a4,lab95
	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	sb	a2,65(a3)
	ret
lab92: 	lui	a5,0x100
	lw	a5,168(a5) # 1000a8 <BLOCK_ERKENNUNG_CTRL__I_EIN_MAX>
	lui	a4,0x100
	lw	a4,196(a4) # 1000c4 <FH_TUERMODUL__I_EIN>
	addi	a5,a5,-1
	blt	a4,a5,lab95
	lui	a4,0x100
	li	a5,1
	sb	zero,81(a4) # 100051 <stable>
	lui	a4,0x100
	sb	a5,134(a4) # 100086 <FH_TUERMODUL__BLOCK_copy>
	sb	a5,65(a3)
	ret
FH_DU:
	lui	a5,0x100
	lbu	a4,106(a5) # 10006a <FH_DU__S_FH_TMBFZUCAN>
	lui	a5,0x100
	addi	sp,sp,-80
	lbu	t5,104(a5) # 100068 <FH_DU__S_FH_TMBFZUCAN_old>
	lui	a5,0x100
	sw	s0,72(sp)
	lui	a2,0x100
	lbu	a1,101(a5) # 100065 <FH_DU__S_FH_TMBFAUFDISC>
	lui	s0,0x100
	lui	a5,0x100
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	s5,52(sp)
	sw	s8,40(sp)
	sw	s9,36(sp)
	sw	s10,32(sp)
	sw	s11,28(sp)
	sw	ra,76(sp)
	sw	s6,48(sp)
	sw	s7,44(sp)
	mv	s0,s0
	lbu	t2,100(a5) # 100064 <FH_DU__S_FH_TMBFAUFDISC_old>
	lbu	t0,102(a2) # 100066 <FH_DU__S_FH_TMBFZUDISC_old>
	lui	a5,0x100
	lui	a2,0x100
	lbu	t6,107(a2) # 10006b <FH_DU__S_FH_TMBFAUFCAN_old>
	lbu	a6,19(s0) # 100013 <Bitlist+0x13>
	lbu	a0,13(s0)
	lbu	a5,109(a5) # 10006d <FH_DU__S_FH_TMBFAUFCAN>
	lui	a3,0x100
	lbu	t1,10(s0)
	lbu	a7,16(s0)
	lbu	a3,103(a3) # 100067 <FH_DU__S_FH_TMBFZUDISC>
	lui	a2,0x100
	li	t3,1
	sw	t3,84(a2) # 100054 <time>
	mv	t4,t6
	mv	t3,a6
	li	a2,0
	mv	a6,a0
	lui	s1,0x100
	mv	a0,t2
	lui	s2,0x100
	lui	s3,0x100
	lui	s10,0x100
	lui	s8,0x100
	lui	s11,0x100
	lui	s9,0x100
	lui	s5,0x100
	lui	s4,0x100
	mv	t2,a4
	mv	t6,a5
lab113: 	lui	a5,0x100
	lui	ra,0x100
	li	a4,1
	lbu	a5,67(a5) # 100043 <FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state>
	addi	a2,a2,1
	sb	a4,81(ra) # 100051 <stable>
	lui	ra,0x100
	sb	a2,80(ra) # 100050 <step>
	li	a2,2
	beq	a5,a2,lab96
	li	ra,3
	beq	a5,ra,lab97
	beq	a5,a4,lab98
	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	lui	a5,0x100
	sw	zero,188(a5) # 1000bc <FH_DU__MFH>
	lui	a5,0x100
	sb	a2,67(a5) # 100043 <FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state>
lab121: 	bnez	t1,lab99
	lui	a5,0x100
	li	a4,3
	sb	a4,76(a5) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
lab99: 	bnez	a7,lab100
	li	a5,1
	lui	a4,0x100
	sb	a5,66(a4) # 100042 <EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state>
lab100: 	bnez	t3,lab101
	li	a5,1
	lui	a4,0x100
	sb	zero,0(s0)
	sb	a5,64(a4) # 100040 <BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state>
lab101: 	bnez	a6,lab102
	li	a4,2
	lui	a2,0x100
	sb	a4,75(a2) # 10004b <B_FH_TUERMODUL_CTRL_next_state>
	lui	a4,0x100
	li	a5,1
	sw	zero,220(a4) # 1000dc <FH_TUERMODUL_CTRL__N>
	lui	a4,0x100
	sb	a5,74(a4) # 10004a <A_FH_TUERMODUL_CTRL_next_state>
	li	a4,256
	sh	a4,4(s0)
	lui	a4,0x100
	sb	zero,6(s0)
	sb	a5,73(a4) # 100049 <WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state>
lab102: 	li	a5,1
	sb	a5,11(s0)
	sb	a5,17(s0)
	sb	a5,20(s0)
	sb	a5,14(s0)
	beq	t5,t2,lab103
	lui	a5,0x100
	lbu	a5,97(a5) # 100061 <FH_DU__DOOR_ID>
	bnez	a5,lab104
	lui	a5,0x100
	sb	t2,114(a5) # 100072 <FH_DU__S_FH_FTZU>
	beq	a3,t0,lab105
lab114: 	beq	t6,t4,lab106
lab116: 	sb	t6,113(s3) # 100071 <FH_DU__S_FH_FTAUF>
lab117: 	lbu	a3,21(s0)
	lui	a5,0x100
	lbu	a5,98(a5) # 100062 <FH_DU__S_FH_AUFDISC>
	lui	a4,0x100
	lbu	a4,99(a4) # 100063 <FH_DU__S_FH_ZUDISC>
	sb	a3,19(s0)
	lui	a3,0x100
	lbu	a2,12(s0)
	lbu	t4,15(s0)
	lbu	a1,18(s0)
	sb	a5,138(a3) # 10008a <FH_TUERMODUL__SFHA_MEC>
	lui	a3,0x100
	sb	t6,140(a3) # 10008c <FH_TUERMODUL__SFHA_ZENTRAL>
	lui	a3,0x100
	sb	a4,142(a3) # 10008e <FH_TUERMODUL__SFHZ_MEC>
	lui	a3,0x100
	sb	t2,144(a3) # 100090 <FH_TUERMODUL__SFHZ_ZENTRAL>
	sb	a2,10(s0)
	lui	a3,0x100
	sb	t4,13(s0)
	sb	a1,16(s0)
	lbu	a3,136(a3) # 100088 <FH_TUERMODUL__KL_50>
	beqz	a2,lab107
	lui	a2,0x100
	lbu	a2,76(a2) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
	li	a1,2
	beq	a2,a1,lab108
	li	a0,3
	beq	a2,a0,lab109
	li	a1,1
	beq	a2,a1,lab110
	lui	a2,0x100
	sb	zero,81(a2) # 100051 <stable>
	li	a1,3
	lui	a2,0x100
	sb	a1,76(a2) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
lab107: 	lui	a2,0x100
	lbu	t1,125(a2) # 10007d <FH_TUERMODUL__MFHZ>
	lui	a2,0x100
	lw	a7,196(a2) # 1000c4 <FH_TUERMODUL__I_EIN>
	lui	a1,0x100
	lui	a2,0x100
	lui	t0,0x100
	lui	s6,0x100
	lui	t5,0x100
	lbu	a6,119(a1) # 100077 <FH_TUERMODUL__EKS_LEISTE_AKTIV>
	lw	a0,200(a2) # 1000c8 <FH_TUERMODUL__POSITION>
	lbu	t3,122(s6) # 10007a <FH_TUERMODUL__MFHA>
	lbu	a1,132(t5) # 100084 <FH_TUERMODUL__FT>
	lbu	a2,135(t0) # 100087 <FH_TUERMODUL__BLOCK>
	sb	t3,90(s2) # 10005a <FH_DU__MFHA>
	sb	t1,93(s1) # 10005d <FH_DU__MFHZ>
	sw	a7,176(s10) # 1000b0 <FH_DU__I_EIN>
	sb	a6,111(s8) # 10006f <FH_DU__EKS_LEISTE_AKTIV>
	sw	a0,180(s11) # 1000b4 <FH_DU__POSITION>
	sb	a1,112(s9) # 100070 <FH_DU__FT>
	sb	a3,115(s5) # 100073 <FH_DU__KL_50>
	sb	a2,96(s4) # 100060 <FH_DU__BLOCK>
	mv	s7,t0
	beqz	t4,lab111
	jal	ra,generic_FH_TUERMODUL_CTRL.part.0
	lui	a4,0x100
	lui	a5,0x100
	lui	a3,0x100
	lw	a7,196(a4) # 1000c4 <FH_TUERMODUL__I_EIN>
	lui	a4,0x100
	lui	a2,0x100
	lui	a1,0x100
	lw	a0,200(a5) # 1000c8 <FH_TUERMODUL__POSITION>
	lbu	t6,140(a4) # 10008c <FH_TUERMODUL__SFHA_ZENTRAL>
	lbu	t2,144(a3) # 100090 <FH_TUERMODUL__SFHZ_ZENTRAL>
	lui	t5,0x100
	lui	a5,0x100
	lui	a4,0x100
	lui	a3,0x100
	lbu	t1,125(a2) # 10007d <FH_TUERMODUL__MFHZ>
	lbu	a6,119(a1) # 100077 <FH_TUERMODUL__EKS_LEISTE_AKTIV>
	lbu	t3,122(s6)
	lbu	a1,132(t5) # 100084 <FH_TUERMODUL__FT>
	lbu	a5,138(a5) # 10008a <FH_TUERMODUL__SFHA_MEC>
	lbu	a4,142(a4) # 10008e <FH_TUERMODUL__SFHZ_MEC>
	lbu	a3,136(a3) # 100088 <FH_TUERMODUL__KL_50>
	lbu	a2,135(s7)
lab111: 	sb	a1,112(s9)
	lui	a1,0x100
	lui	t4,0x100
	sb	a5,98(a1) # 100062 <FH_DU__S_FH_AUFDISC>
	lui	a5,0x100
	sb	t2,114(t4) # 100072 <FH_DU__S_FH_FTZU>
	sb	a4,99(a5) # 100063 <FH_DU__S_FH_ZUDISC>
	sb	t6,113(s3)
	sb	t3,90(s2)
	sb	t1,93(s1)
	sw	a7,176(s10)
	sb	a6,111(s8)
	sw	a0,180(s11)
	sb	a3,115(s5)
	sb	a2,96(s4)
	jal	ra,generic_EINKLEMMSCHUTZ_CTRL
	lui	t6,0x100
	lbu	a6,132(t6) # 100084 <FH_TUERMODUL__FT>
	lui	t0,0x100
	lui	t2,0x100
	lui	a4,0x100
	lui	a3,0x100
	lui	a5,0x100
	lbu	t5,122(a4) # 10007a <FH_TUERMODUL__MFHA>
	lbu	t4,125(a3) # 10007d <FH_TUERMODUL__MFHZ>
	lw	t3,196(a5) # 1000c4 <FH_TUERMODUL__I_EIN>
	lbu	a0,138(t0) # 10008a <FH_TUERMODUL__SFHA_MEC>
	lbu	a1,140(t2) # 10008c <FH_TUERMODUL__SFHA_ZENTRAL>
	lui	a5,0x100
	lui	t6,0x100
	lui	a2,0x100
	lui	a3,0x100
	lui	ra,0x100
	lui	a4,0x100
	lbu	t1,119(a2) # 100077 <FH_TUERMODUL__EKS_LEISTE_AKTIV>
	lw	a7,200(a3) # 1000c8 <FH_TUERMODUL__POSITION>
	lbu	a2,142(ra) # 10008e <FH_TUERMODUL__SFHZ_MEC>
	lbu	a3,144(a5) # 100090 <FH_TUERMODUL__SFHZ_ZENTRAL>
	mv	s7,a5
	mv	s6,a4
	lbu	a5,135(t6) # 100087 <FH_TUERMODUL__BLOCK>
	lbu	a4,136(a4) # 100088 <FH_TUERMODUL__KL_50>
	sb	a6,112(s9)
	lui	a6,0x100
	sb	a0,98(a6) # 100062 <FH_DU__S_FH_AUFDISC>
	sb	a1,113(s3)
	lui	a0,0x100
	lui	a1,0x100
	sb	a2,99(a1) # 100063 <FH_DU__S_FH_ZUDISC>
	sb	a3,114(a0) # 100072 <FH_DU__S_FH_FTZU>
	sb	t5,90(s2)
	sb	t4,93(s1)
	sw	t3,176(s10)
	sb	t1,111(s8)
	sw	a7,180(s11)
	sb	a4,115(s5)
	sb	a5,96(s4)
	jal	ra,generic_BLOCK_ERKENNUNG_CTRL
	lui	a5,0x100
	lui	a2,0x100
	lui	t0,0x100
	lui	a7,0x100
	lw	a4,196(a5) # 1000c4 <FH_TUERMODUL__I_EIN>
	lbu	t5,138(t0) # 10008a <FH_TUERMODUL__SFHA_MEC>
	lbu	a5,119(a2) # 100077 <FH_TUERMODUL__EKS_LEISTE_AKTIV>
	lbu	t0,142(a7) # 10008e <FH_TUERMODUL__SFHZ_MEC>
	lui	a2,0x100
	lbu	a7,144(s7)
	lbu	a0,132(a2) # 100084 <FH_TUERMODUL__FT>
	lbu	a1,136(s6)
	lui	a2,0x100
	lw	a2,220(a2) # 1000dc <FH_TUERMODUL_CTRL__N>
	lui	a3,0x100
	lui	t2,0x100
	lbu	t2,140(t2) # 10008c <FH_TUERMODUL__SFHA_ZENTRAL>
	lw	t4,200(a3) # 1000c8 <FH_TUERMODUL__POSITION>
	mv	s7,a7
	lbu	t1,10(s0)
	lbu	a6,13(s0)
	lbu	a7,16(s0)
	lbu	t3,19(s0)
	lui	s6,0x100
	lw	a3,184(s6) # 1000b8 <FH_DU__MFH_copy>
	lui	t6,0x100
	sb	a1,115(s5)
	lui	a1,0x100
	sb	t5,98(t6) # 100062 <FH_DU__S_FH_AUFDISC>
	sw	a2,212(a1) # 1000d4 <FH_TUERMODUL_CTRL__N_old>
	sb	a0,112(s9)
	lui	t6,0x100
	lui	a0,0x100
	lui	a2,0x100
	sb	t0,99(t6) # 100063 <FH_DU__S_FH_ZUDISC>
	sb	s7,114(a0) # 100072 <FH_DU__S_FH_FTZU>
	sw	a4,192(a2) # 1000c0 <FH_TUERMODUL__I_EIN_old>
	sw	a4,176(s10)
	sb	a5,111(s8)
	sw	t4,180(s11)
	sw	t2,0(sp)
	sb	t2,113(s3)
	sw	s7,4(sp)
	lui	a2,0x100
	sb	t1,11(s0)
	sb	a6,14(s0)
	sb	a7,17(s0)
	sb	t3,20(s0)
	sw	a3,188(a2) # 1000bc <FH_DU__MFH>
	lui	a2,0x100
	sw	a4,172(a2) # 1000ac <FH_DU__I_EIN_old>
	lui	a2,0x100
	lw	a2,160(a2) # 1000a0 <BLOCK_ERKENNUNG_CTRL__N>
	lui	s7,0x100
	lui	a1,0x100
	mv	s6,a2
	sw	s6,152(s7) # 100098 <BLOCK_ERKENNUNG_CTRL__N_old>
	lw	s6,4(sp)
	lui	s7,0x100
	lui	a2,0x100
	sb	s6,143(s7) # 10008f <FH_TUERMODUL__SFHZ_ZENTRAL_old>
	lui	s6,0x100
	lbu	t4,134(a2) # 100086 <FH_TUERMODUL__BLOCK_copy>
	sb	t0,141(s6) # 10008d <FH_TUERMODUL__SFHZ_MEC_old>
	lui	a2,0x100
	lw	t0,0(sp)
	lbu	a2,130(a2) # 100082 <FH_TUERMODUL__SFHZ_copy>
	lui	s6,0x100
	sb	t0,139(s6) # 10008b <FH_TUERMODUL__SFHA_ZENTRAL_old>
	lui	t0,0x100
	sw	a2,8(sp)
	sb	t5,137(t0) # 100089 <FH_TUERMODUL__SFHA_MEC_old>
	lui	t5,0x100
	lbu	a1,127(a1) # 10007f <FH_TUERMODUL__SFHA_copy>
	sb	t4,135(t5) # 100087 <FH_TUERMODUL__BLOCK>
	lw	t5,8(sp)
	lui	t0,0x100
	sb	t4,133(t0) # 100085 <FH_TUERMODUL__BLOCK_old>
	lui	a4,0x100
	lui	t0,0x100
	lbu	a0,124(a4) # 10007c <FH_TUERMODUL__MFHZ_copy>
	sw	a1,12(sp)
	sb	t5,131(t0) # 100083 <FH_TUERMODUL__SFHZ>
	lui	a4,0x100
	lui	t0,0x100
	lbu	a2,121(a4) # 100079 <FH_TUERMODUL__MFHA_copy>
	sb	t5,129(t0) # 100081 <FH_TUERMODUL__SFHZ_old>
	lui	a4,0x100
	lw	t5,12(sp)
	lbu	t6,109(a4) # 10006d <FH_DU__S_FH_TMBFAUFCAN>
	lui	t4,0x100
	lui	a4,0x100
	lbu	t2,106(a4) # 10006a <FH_DU__S_FH_TMBFZUCAN>
	sb	a0,125(t4) # 10007d <FH_TUERMODUL__MFHZ>
	lui	a4,0x100
	lui	t0,0x100
	lui	t4,0x100
	lbu	a3,103(a4) # 100067 <FH_DU__S_FH_TMBFZUDISC>
	sb	a0,123(t4) # 10007b <FH_TUERMODUL__MFHZ_old>
	lui	a4,0x100
	sb	t5,128(t0) # 100080 <FH_TUERMODUL__SFHA>
	lui	a0,0x100
	lui	t0,0x100
	lbu	a1,101(a4) # 100065 <FH_DU__S_FH_TMBFAUFDISC>
	sb	a2,122(a0) # 10007a <FH_TUERMODUL__MFHA>
	lui	a4,0x100
	lui	a0,0x100
	sb	t5,126(t0) # 10007e <FH_TUERMODUL__SFHA_old>
	lbu	a4,95(a4) # 10005f <FH_DU__BLOCK_copy>
	sb	a2,120(a0) # 100078 <FH_TUERMODUL__MFHA_old>
	lui	a2,0x100
	sb	a5,118(a2) # 100076 <FH_TUERMODUL__EKS_LEISTE_AKTIV_old>
	lui	a2,0x100
	sb	a5,110(a2) # 10006e <FH_DU__EKS_LEISTE_AKTIV_old>
	lui	a5,0x100
	sb	t6,107(a5) # 10006b <FH_DU__S_FH_TMBFAUFCAN_old>
	lui	a5,0x100
	sb	t2,104(a5) # 100068 <FH_DU__S_FH_TMBFZUCAN_old>
	lui	a5,0x100
	sb	a3,102(a5) # 100066 <FH_DU__S_FH_TMBFZUDISC_old>
	lui	a5,0x100
	sb	a1,100(a5) # 100064 <FH_DU__S_FH_TMBFAUFDISC_old>
	lui	a5,0x100
	lbu	a2,92(a5) # 10005c <FH_DU__MFHZ_copy>
	lui	a5,0x100
	lbu	a5,89(a5) # 100059 <FH_DU__MFHA_copy>
	lui	a0,0x100
	lui	t4,0x100
	sb	a4,96(s4)
	sb	a4,94(t4) # 10005e <FH_DU__BLOCK_old>
	lbu	a0,81(a0) # 100051 <stable>
	lui	a4,0x100
	sb	a2,91(a4) # 10005b <FH_DU__MFHZ_old>
	lui	a4,0x100
	sb	a2,93(s1)
	sb	a5,90(s2)
	sb	a5,88(a4) # 100058 <FH_DU__MFHA_old>
	bnez	a0,lab112
	lui	a5,0x100
	lbu	a2,80(a5) # 100050 <step>
	mv	t4,t6
	mv	t0,a3
	mv	a0,a1
	mv	t5,t2
	j	lab113
lab103: 	lui	a5,0x100
	lbu	t2,114(a5) # 100072 <FH_DU__S_FH_FTZU>
	beq	a3,t0,lab105
	lui	a5,0x100
	lbu	a5,97(a5) # 100061 <FH_DU__DOOR_ID>
	beqz	a5,lab114
lab118: 	lui	a5,0x100
	sb	a3,106(a5) # 10006a <FH_DU__S_FH_TMBFZUCAN>
lab105: 	beq	t6,t4,lab115
	lui	a5,0x100
	lbu	a5,97(a5) # 100061 <FH_DU__DOOR_ID>
	beqz	a5,lab116
lab119: 	lbu	t6,113(s3)
	beq	a1,a0,lab117
lab120: 	lui	a5,0x100
	lbu	t6,113(s3)
	sb	a1,109(a5) # 10006d <FH_DU__S_FH_TMBFAUFCAN>
	j	lab117
lab104: 	lui	a5,0x100
	lbu	t2,114(a5) # 100072 <FH_DU__S_FH_FTZU>
	bne	a3,t0,lab118
	bne	t6,t4,lab119
lab115: 	lbu	t6,113(s3)
	beq	a1,a0,lab117
	lui	a5,0x100
	lbu	a5,97(a5) # 100061 <FH_DU__DOOR_ID>
	bnez	a5,lab120
	j	lab117
lab97: 	lbu	a5,90(s2)
	bnez	a5,lab121
	lui	a5,0x100
	lbu	a5,88(a5) # 100058 <FH_DU__MFHA_old>
	beqz	a5,lab121
lab123: 	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	lui	a5,0x100
	sw	zero,188(a5) # 1000bc <FH_DU__MFH>
	lui	a4,0x100
	li	a5,2
	sb	a5,67(a4) # 100043 <FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state>
	j	lab121
lab96: 	lbu	a5,93(s1)
	beqz	a5,lab122
	lui	a5,0x100
	lbu	a5,91(a5) # 10005b <FH_DU__MFHZ_old>
	bnez	a5,lab122
	lui	a5,0x100
	sb	zero,81(a5) # 100051 <stable>
	lui	a2,0x100
	li	a5,-100
	sw	a5,188(a2) # 1000bc <FH_DU__MFH>
	lui	a5,0x100
	sb	a4,67(a5) # 100043 <FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state>
	j	lab121
lab98: 	lbu	a5,93(s1)
	bnez	a5,lab121
	lui	a5,0x100
	lbu	a5,91(a5) # 10005b <FH_DU__MFHZ_old>
	beqz	a5,lab121
	j	lab123
lab122: 	lbu	a5,90(s2)
	beqz	a5,lab121
	lui	a5,0x100
	lbu	a5,88(a5) # 100058 <FH_DU__MFHA_old>
	bnez	a5,lab121
	lui	a5,0x100
	lui	a4,0x100
	sb	zero,81(a5) # 100051 <stable>
	li	a5,100
	sw	a5,188(a4) # 1000bc <FH_DU__MFH>
	li	a5,3
	lui	a4,0x100
	sb	a5,67(a4) # 100043 <FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state>
	j	lab121
lab110: 	bnez	t6,lab124
	bnez	t2,lab125
	lui	a2,0x100
	sb	zero,81(a2) # 100051 <stable>
	lui	a2,0x100
	sb	zero,130(a2) # 100082 <FH_TUERMODUL__SFHZ_copy>
	lui	a2,0x100
	sb	zero,127(a2) # 10007f <FH_TUERMODUL__SFHA_copy>
	li	a1,3
	lui	a2,0x100
	sb	a1,76(a2) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
	lui	a2,0x100
	sb	zero,78(a2) # 10004e <ZENTRAL_KINDERSICHERUNG_CTRL_next_state>
	j	lab107
lab109: 	beqz	a3,lab126
	beqz	t2,lab107
	beqz	t6,lab107
lab141: 	lui	a1,0x100
	li	a2,1
	sb	zero,81(a1) # 100051 <stable>
	lui	a1,0x100
	sb	a2,127(a1) # 10007f <FH_TUERMODUL__SFHA_copy>
	lui	a1,0x100
	sb	a2,130(a1) # 100082 <FH_TUERMODUL__SFHZ_copy>
	lui	a1,0x100
	sb	a2,76(a1) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
	j	lab107
lab108: 	bnez	a5,lab127
	bnez	a4,lab128
	lui	a2,0x100
	sb	zero,81(a2) # 100051 <stable>
	lui	a2,0x100
	sb	zero,130(a2) # 100082 <FH_TUERMODUL__SFHZ_copy>
	lui	a2,0x100
	sb	zero,127(a2) # 10007f <FH_TUERMODUL__SFHA_copy>
	lui	a1,0x100
	li	a2,3
	sb	a2,76(a1) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
	lui	a2,0x100
	sb	zero,77(a2) # 10004d <MEC_KINDERSICHERUNG_CTRL_next_state>
	j	lab107
lab112: 	lw	ra,76(sp)
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
lab106: 	lbu	t6,113(s3)
	j	lab117
lab127: 	lui	a2,0x100
	lbu	a1,77(a2) # 10004d <MEC_KINDERSICHERUNG_CTRL_next_state>
	li	a0,1
	beq	a1,a0,lab129
lab130: 	lui	a2,0x100
	sb	zero,81(a2) # 100051 <stable>
	j	lab107
lab124: 	lui	a1,0x100
	lbu	a0,78(a1) # 10004e <ZENTRAL_KINDERSICHERUNG_CTRL_next_state>
	bne	a0,a2,lab130
	lui	a2,0x100
	lbu	a2,139(a2) # 10008b <FH_TUERMODUL__SFHA_ZENTRAL_old>
	bnez	a2,lab131
	lui	a2,0x100
	sb	zero,81(a2) # 100051 <stable>
	lui	a2,0x100
	sb	a0,127(a2) # 10007f <FH_TUERMODUL__SFHA_copy>
	sb	a0,78(a1)
	j	lab107
lab126: 	bnez	a4,lab132
	bnez	a5,lab133
	bnez	t2,lab134
	beqz	t6,lab107
	lui	a1,0x100
	li	a2,1
	sb	zero,81(a1) # 100051 <stable>
	lui	a1,0x100
	sb	a2,127(a1) # 10007f <FH_TUERMODUL__SFHA_copy>
	lui	a1,0x100
	sb	a2,76(a1) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
	j	lab107
lab132: 	beqz	a5,lab135
	lui	a0,0x100
	li	a2,1
	sb	zero,81(a0) # 100051 <stable>
	lui	a0,0x100
	sb	a2,130(a0) # 100082 <FH_TUERMODUL__SFHZ_copy>
	lui	a0,0x100
	sb	a2,127(a0) # 10007f <FH_TUERMODUL__SFHA_copy>
	lui	a2,0x100
	sb	a1,76(a2) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
	j	lab107
lab128: 	lui	a2,0x100
	lbu	a1,77(a2) # 10004d <MEC_KINDERSICHERUNG_CTRL_next_state>
	li	a0,1
	bne	a1,a0,lab130
	lui	a0,0x100
	lbu	a0,141(a0) # 10008d <FH_TUERMODUL__SFHZ_MEC_old>
	bnez	a0,lab136
lab143: 	lui	a0,0x100
	li	a1,1
	sb	zero,81(a0) # 100051 <stable>
	lui	a0,0x100
	sb	a1,130(a0) # 100082 <FH_TUERMODUL__SFHZ_copy>
	sb	a1,77(a2)
	j	lab107
lab125: 	lui	a1,0x100
	lbu	a0,78(a1) # 10004e <ZENTRAL_KINDERSICHERUNG_CTRL_next_state>
	bne	a0,a2,lab130
	lui	a2,0x100
	lbu	a2,143(a2) # 10008f <FH_TUERMODUL__SFHZ_ZENTRAL_old>
	bnez	a2,lab137
lab142: 	lui	a0,0x100
	li	a2,1
	sb	zero,81(a0) # 100051 <stable>
	lui	a0,0x100
	sb	a2,130(a0) # 100082 <FH_TUERMODUL__SFHZ_copy>
	sb	a2,78(a1)
	j	lab107
lab129: 	lui	a0,0x100
	lbu	a0,137(a0) # 100089 <FH_TUERMODUL__SFHA_MEC_old>
	bnez	a0,lab138
	lui	a0,0x100
	sb	zero,81(a0) # 100051 <stable>
	lui	a0,0x100
	sb	a1,127(a0) # 10007f <FH_TUERMODUL__SFHA_copy>
	sb	a1,77(a2)
	j	lab107
lab135: 	lui	a2,0x100
	sb	zero,81(a2) # 100051 <stable>
	lui	a0,0x100
	li	a2,1
	sb	a2,130(a0) # 100082 <FH_TUERMODUL__SFHZ_copy>
	lui	a2,0x100
	sb	a1,76(a2) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
	j	lab107
lab138: 	lui	a0,0x100
	lbu	a0,141(a0) # 10008d <FH_TUERMODUL__SFHZ_MEC_old>
	bnez	a4,lab139
	beqz	a0,lab107
	lui	a0,0x100
	sb	zero,81(a0) # 100051 <stable>
	lui	a0,0x100
	sb	zero,130(a0) # 100082 <FH_TUERMODUL__SFHZ_copy>
	sb	a1,77(a2)
	j	lab107
lab131: 	lui	a2,0x100
	lbu	a2,143(a2) # 10008f <FH_TUERMODUL__SFHZ_ZENTRAL_old>
	bnez	t2,lab140
	beqz	a2,lab107
	lui	a2,0x100
	sb	zero,81(a2) # 100051 <stable>
	lui	a2,0x100
	sb	zero,130(a2) # 100082 <FH_TUERMODUL__SFHZ_copy>
	sb	a0,78(a1)
	j	lab107
lab133: 	lui	a2,0x100
	sb	zero,81(a2) # 100051 <stable>
	lui	a0,0x100
	li	a2,1
	sb	a2,127(a0) # 10007f <FH_TUERMODUL__SFHA_copy>
	lui	a2,0x100
	sb	a1,76(a2) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
	j	lab107
lab134: 	bnez	t6,lab141
	lui	a1,0x100
	li	a2,1
	sb	zero,81(a1) # 100051 <stable>
	lui	a1,0x100
	sb	a2,130(a1) # 100082 <FH_TUERMODUL__SFHZ_copy>
	lui	a1,0x100
	sb	a2,76(a1) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
	j	lab107
lab136: 	lui	a0,0x100
	lbu	a0,137(a0) # 100089 <FH_TUERMODUL__SFHA_MEC_old>
	beqz	a0,lab107
	lui	a0,0x100
	sb	zero,81(a0) # 100051 <stable>
	lui	a0,0x100
	sb	zero,127(a0) # 10007f <FH_TUERMODUL__SFHA_copy>
	sb	a1,77(a2)
	j	lab107
lab137: 	lui	a2,0x100
	lbu	a2,139(a2) # 10008b <FH_TUERMODUL__SFHA_ZENTRAL_old>
	beqz	a2,lab107
	lui	a2,0x100
	sb	zero,81(a2) # 100051 <stable>
	lui	a2,0x100
	sb	zero,127(a2) # 10007f <FH_TUERMODUL__SFHA_copy>
	sb	a0,78(a1)
	j	lab107
lab140: 	bnez	a2,lab107
	j	lab142
lab139: 	bnez	a0,lab107
	j	lab143
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
lab144: 	li	a2,64
	li	a1,0
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
	bnez	s0,lab144
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
	ret
benchmark_body.isra.0:
	blez	a0,lab145
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
lab146: 	li	a2,64
	li	a1,0
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
	bne	s0,s1,lab146
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
	ret
lab145: 	ret
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
lab147: 	lw	a0,0(a5)
	lw	a1,4(a5)
	lw	a2,8(a5)
	lw	a3,12(a5)
	sw	a0,0(a4)
	sw	a1,4(a4)
	sw	a2,8(a4)
	sw	a3,12(a4)
	addi	a5,a5,16
	addi	a4,a4,16
	bne	a5,a6,lab147
	lui	a5,0x100
	mv	a5,a5
	mv	a4,sp
	addi	a1,a5,64 # 100040 <BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state>
	j	lab148
lab150: 	beq	a5,a1,lab149
lab148: 	lbu	a2,0(a5)
	lbu	a3,0(a4)
	addi	a5,a5,1
	addi	a4,a4,1
	beq	a2,a3,lab150
lab152: 	li	a0,0
lab151: 	addi	sp,sp,64
	ret
lab149: 	lui	a4,0x100
	lui	a5,0x100
	lw	a3,240(a4) # 1000f0 <tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL>
	lw	a5,244(a5) # 1000f4 <tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy>
	lui	a4,0x100
	lw	a4,236(a4) # 1000ec <tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL>
	or	a5,a5,a3
	li	a0,0
	or	a5,a5,a4
	bnez	a5,lab151
	lui	a5,0x100
	lbu	a4,76(a5) # 10004c <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
	li	a5,3
	bne	a4,a5,lab151
	lui	a5,0x100
	lbu	a4,75(a5) # 10004b <B_FH_TUERMODUL_CTRL_next_state>
	li	a5,2
	bne	a4,a5,lab151
	lui	a5,0x100
	lbu	a3,74(a5) # 10004a <A_FH_TUERMODUL_CTRL_next_state>
	li	a5,1
	bne	a3,a5,lab151
	lui	a5,0x100
	lbu	a5,73(a5) # 100049 <WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state>
	bne	a5,a3,lab151
	lui	a3,0x100
	lbu	a3,67(a3) # 100043 <FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state>
	bne	a3,a4,lab151
	lui	a4,0x100
	lbu	a4,66(a4) # 100042 <EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state>
	bne	a4,a5,lab151
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
	bnez	a5,lab152
	lui	a5,0x100
	lbu	a0,64(a5) # 100040 <BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state>
	addi	a0,a0,-1
	seqz	a0,a0
	j	lab151
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

start_rodata:
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
