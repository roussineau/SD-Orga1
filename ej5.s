.data
n: .word 5

.text
main:
    li a0, 0
    lw a1, n
    li a2, 1
    beqz a1, fin
    beq a1, a2, fib_uno
    li t0, 1
    li t1, 0
    li t2, 1
while:
    beq t0, a1, fib_n
    add t3, t2, t1
    mv t1, t2
    mv t2, t3
    addi t0, t0, 1
    j while
fib_uno:
    addi a0, a0, 1
    j fin
fib_n:
    mv a0, t3
fin:
    li a7, 93
    ecall