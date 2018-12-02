# ORG 8000H
# BEGIN 8000H
	   MVI A,07
	   MVI B,05
	   MVI C,00
	   MOV D,B

L1:	   SUB B
	   INR C
	   DCR D
	   JNZ L1
	   MOV A,C
	   STA 9000
	   HLT
# ORG 9000H
