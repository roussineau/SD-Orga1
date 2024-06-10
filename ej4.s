# Ejercicio 4

.data
array: .word 1, 3, 5, 7, 9, 11, 13, 15, 17, 19
target: .word 19
n: .word 10

.text
main:
    la a2, array
    lw a4, target
    li t0, 0
    lw t1, n
    addi t1, t1, -1
    add a0, t0, t1
    srli a0, a0, 1
    mv t2, a0
    mv a3, a2
while:
    beqz t2, evaluar
    addi a3, a3, 4
    addi t2, t2, -1
    j while
evaluar:
    lw t3, 0(a3)
    beq t3, a4, fin
    blt t3, a4, menor
    bgt t3, a4, mayor
menor:
    addi t0, a0, 1
    add a0, t0, t1
    srli a0, a0, 1
    mv t2, a0
    mv a3, a2
    j while
mayor:
    addi t1, a0, -1
    add a0, t0, t1
    srli a0, a0, 1
    mv t2, a0
    mv a3, a2
    j while
fin:
    li a7, 93
    ecall