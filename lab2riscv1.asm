#lab2(1)

        .data # Data declaration section
Z: .word 

        .globl main
main:
     # initialize variables
     li a0, 15  # A=15
     li a1, 10  # B=10
     li a2, 5  # C=5
     li a3, 2  # D=2
     li t0, 18  #E=18
     li t1, -3  #F=-3
     
     # calculate expression
     sub t2, a0, a1   # A-B
     mul t3, a2, a3   #C*D
     sub t4, t0, t1   #E-F
     div t5, a0, a2   #A/C
     sub t6, t2, t5   #(A-B) - (A/C)
     add t7, t6, t3   #(A-B) + (c*D)
     add t8, t7, t4   #(A-B) + (C*D) + (E-F)
     
     #store result in memory
     sw t8, z
     
     # exit program
     li a0, 0   #return 0 to indicate success
     ecall      #system call to exit program
     
     