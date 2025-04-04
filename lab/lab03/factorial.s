.globl factorial

.data
n: .word 7

.text
main:
    la t0, n
    lw a0, 0(t0)
    jal ra, factorial

    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit

factorial:
    # YOUR CODE HERE
    addi s0,x0,0
    addi s1,x0,1
loop:
    beq s0,a0,exit
    addi s0,s0,1
    mul s2,s0,s1
    addi s1,s2,0
    j loop
exit:
    addi a0,s2,0
    jr ra
    