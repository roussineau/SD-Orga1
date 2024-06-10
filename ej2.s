# Ejercicio 2

.data
s: .word 1, 2, 3
q: .word 3, 4, 5
long: .word 3

.text
main:
    la a0, s
    la a1, q
    lw a2, long
    mv t0, a0
    mv t1, a1
    mv t2, a2
while:
    beq t2, zero, fin
    lw t3, 0(t1)
    sw t3, 0(t0)
    addi t0, t0, 4
    addi t1, t1, 4
    addi t2, t2, -1
    j while
fin:
    li a7, 93
    ecall