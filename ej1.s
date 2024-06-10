.data
long: .word 8
arr: .word 3, 1, 2, 4, 1, 5, 9, 2

.text
main:
    lw a0, arr # k = arr[0]
    lw a2, long # a2 = long
    lw a3, arr # a3 = arr[0]
    la a4, arr # a4 = direccion 0(a4)    
    add t0, zero, zero # i = 0
while:
    beq t0, a2, fin # if (i==long) salta a fin
    addi t0, t0, 1 # i++
    addi a4, a4, 4  # a4 = 4(a4)
    lw a3, 4(a4) # a4 = arr[i+1]
    blt a0, a3, actualizar # if (k<arr[i+1]) salta a actualizar
    j while # salto incondicional
actualizar:
    mv a0, a3 # k = arr[i+1]
    j while # salto incondicional
fin:
    li a7, 93
    ecall