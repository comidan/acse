	.data
L0 : 	.WORD 0
L1 : 	.WORD 0
L2 : 	.WORD 0
	.text
	ADDI R1 R0 #0
	SHLI R1 R1 #16
	ADDI R1 R1 #3
	WRITE R1 0
	STORE R1 L1
	HALT
