# ORG 8000H
# BEGIN 8000H
	   LXI H,9000
	   MVI A,00
	   MVI B,01
	   MVI D,0A

L1:	   MOV M,A
	   MOV C,A
	   ADD B
	   MOV B,C
	   INX H
	   DCR D
	   JNZ L1
	   HLT
# ORG 9000H
