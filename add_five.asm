# ORG 8000H
# BEGIN 8000H
	   MVI B,05
	   LXI H,8050
	   MVI A,00
	   MVI C,00

LOOP:	   ADD M
	   INX H
	   JNC NEXT
	   INR C

NEXT:	   DCR B
	   JNZ LOOP
	   STA 9000
	   MOV A,C
	   STA 9001
	   HLT
# ORG 8050H
# DB FEH, 07H,02H,06H,01H