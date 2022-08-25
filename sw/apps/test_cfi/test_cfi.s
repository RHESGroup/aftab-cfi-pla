
    .text
    .globl	main
    .type	main, @function
main:
    xor x5,x5,x5
	addi x5,x5,500
	la x7, config_words
	cflc0 0(x7)
	cflc1 4(x7)
	cflc2 8(x7)
	cflc3 12(x7)
	cflc4 16(x7)
	cflc5 20(x7)
	cflc6 24(x7)
	cflc7 28(x7)
	cflc8 32(x7)
	cflc9 36(x7)
	addi  x5,x5,-16
	cfpush  x7,12(x5)
	
	cfpop  x7,12(x5)
	cfes 0xc2367
	cfed 0x0
	cfes 0x0
	cfed 0xd423e
	cfes 0x0
	cfed 0xc0c1d
	cfes 0x0
	cfed 0xe3fac
	cfes 0x0
	cfed 0x7b653
	cfes 0x0
	cfed 0xfb653
	cfes 0x0
	cfed 0x7d2d2
	cfes 0x0
	cfed 0x7dd2
	
stop: j stop


	.data
config_words:
	.word 0xa6a59695
  	.word 0xa6a5565a
  	.word 0xa959599a
  	.word 0x5a5aaa5a
  	.word 0x56a55566
  	.word 0x659699a5
  	.word 0xa659a615
  	.word 0x99691559
  	.word 0xaa156a56
  	.word 0x16a69a56
