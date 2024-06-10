# Ejercicio 3

.data
s: .word 1, 2, 3, 2, 0
q: .word 3, 4, 5, 6, 8
long: .word 5

.text
main:
    la a0, s
    la a1, q
    lw a2, long
    mv t0, a0
    mv t1, a1
    mv t2, a2
    addi t3, zero, 1
while:
    beq t2, zero, fin
    lw t4, 0(t1)
    and t5, t4, t3
    beqz t5, par
    sw zero, 0(t0)
actualizar:
    addi t0, t0, 4
    addi t1, t1, 4
    addi t2, t2, -1
    j while
par:
    sw t4, 0(t0)
    j actualizar
fin:
    li a7, 93
    ecall