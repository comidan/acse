	.data
L0 : 	.WORD 0
L1 : 	.WORD 0
	.text
	READ R1 0
	SUBI R2 R1 #0
	STORE R1 L0
	SGT R2 0
	ANDB R2 R2 R2
	BEQ L4
	READ R2 0
	STORE R2 L1
	BT L3
L4 : 	LOAD R1 L0
	ADD R2 R0 R1
	STORE R2 L1
	STORE R1 L0
L3 : 	LOAD R1 L0
	WRITE R1 0
	STORE R1 L0
	LOAD R2 L1
	WRITE R2 0
	STORE R2 L1
	HALT
