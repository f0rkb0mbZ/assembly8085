# ORG 8000H
# BEGIN 8000H
	   LHLD 8050 ;dividend
	   MVI C,00 ;comparison value
	   MVI B,1A ; divisor
	   LXI D,0000 ;quotient

BACK:	   MOV A,L ;move lower byte to accumulator
	   SUB B ; subtract divisor from dividend
	   MOV L,A ;again store to lower byte
	   JNC SKIP ;if no borrow don't decrement higher byte, jump
	   DCR H ; decrement higher byte if borrow

SKIP:	   INX D ;increment quotient
	   MOV A,H ;move higher byte to accumulator
	   CMP C; check if higher byte is zero
	   JNZ BACK; if higher byte is not zero, jump back
	   MOV A,L; move lower byte to accumulator
	   CMP B; check if lower byte < divisor
	   JNC BACK; if lower byte>divisor, jump
	   SHLD 9002;store remainder
	   XCHG
	   SHLD 9000;store quotient
	   HLT
# ORG 8050H
# DB 84H, 9BH
