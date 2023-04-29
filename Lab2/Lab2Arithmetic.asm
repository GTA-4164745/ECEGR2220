.data 

A: .word 15
B: .word 10
C: .word 5
D: .word 2
E: .word 18
F: .word -3
Z: .word 0

finalMsg: 	.ascii "final Z value"

.text
 
 
main:

lw a0, A    # a0 gets A
lw a1, B    # a1 gets B
lw a2, C    # a2 gets C
lw a3, D    # a3 gets D
lw a4, E    # a4 gets E
lw a5, F    # a5 gets F


sub a1, a0, a1     # A-B
mul a3, a2, a3     # C * D
sub a5, a4, a5     # E - F
div a2, a0, a2     # A / C

add a1, a3, a1     # t1 gets (A - B) + (C * D)
sub a2, a5, a2     # t2 gets (E - F) - (A / C)
add a6, a1, a2     # a6 gets ( t1 + t2)

sw a6, Z, t0



li  a7, 4 			# print prompt string
la  a0, finalMsg
    ecall
    
li  a7, 1 			# print integer
lw  a0, Z 
ecall
    
li a7,10
lw t1, Z
ecall
